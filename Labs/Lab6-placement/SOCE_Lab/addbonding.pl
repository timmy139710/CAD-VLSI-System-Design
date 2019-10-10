#! /usr/bin/perl 
######################################################################
#   Calculate bonding pads location from placed def   
#   Generate ECO file for SOC Encounter
#   Version 1.1
#                                         Nian Shyang Chang 050830
######################################################################

if (@ARGV != 1) {
    print <<USAGE_doc;

**********************************************************************
**     Before using this program, you must prepare an IO pad list file 
** named io_tpz.list. This file list all the io pads in IO library.
** You can find it in the design kit library. 
**     This program will generate two files for adding bonding pads 
** for the routed design. One, named bondPads.eco, contain the bonding 
** pads to be added. Another, named bondPads.cmd, which load bondPads.eco
** into SOC Encounter and place the bonding pads fitly . To execute it , 
** type "source bondPads.cmd" in SOC Encounter terminal. 
**********************************************************************

    Usage: $0 routed_def 

USAGE_doc

    exit(1);
}      

my $defName = shift;
    # $innerBPad $outerBpad $chipLeft $chipRight $chipUp $chipDown $designName
    # $ioPadLength $secendPinOffset $unitdm are used as global var
my ($ioPadHash,$innerBPad,$outerBPad,$startBound) = readIOPadList("io_tpz.list");
my ($leftPads,$rightPads,$upPads,$downPads,$chipLeft,$chipRight,$chipUp,
    $chipDown,$designName,$unitdm)=readDEF($defName,$ioPadHash);

print "\nOverwrite files bondPads.eco and bondPads.cmd......\n\n";
my $linearPlace = isLinearPlace($leftPads, $rightPads, $upPads , $downPads);
if ($linearPlace){
    printDefInLinear($designName, $leftPads, $rightPads, $upPads, $downPads);
}else{
    my $stagerValid =isStaggerValid($leftPads, $rightPads, $upPads , $downPads,
                                    $startBound);
    if (!$stagerValid) {
        print("Error!! Can not place $innerBPad->{name} in this design, change smaller bonding pad\n");
        exit(0);
    }
    printDefInStagger($designName,$leftPads,$rightPads,$upPads,$downPads,$startBound);
}

close (routedDef);
print "Create finish, you can execute it at SOC Encounter terminal: \n";
print "Encounter> source bondPads.cmd\n\n";
exit(0);

#=========     main program end ==========
sub readIOPadList(){
    my ($padListFile) = @_;
    open (ioPadList, $padListFile)|| die ("Error: Failed to open io_tpz.list\n");
    my %ioPadHash = ();
    my %BPadHash = ();
    my %innerBPad = ();
    my %outerBPad = ();
    my %startBound = ();
    while (<ioPadList>){
        chomp;
        s/#.*$//;
        next if(/^[\s\t]*$/);
        ($keyword,$value1,$value2)=split(/[\s\t]+/);
        if ($keyword =~ /IO_Pad_Length/i) {
            $ioPadLength = $value1;
        }elsif($keyword =~  /Secend_Pin_Offset/i){
            $secendPinOffset= $value1;
        }elsif($keyword =~ /\w+_Length/i){
            $BPadHash{$keyword} = $value1;
        }elsif($keyword =~ /\w+_Offset/i){
            $BPadHash{$keyword} = $value1;
        }elsif($keyword =~ /\w+_Width/i){
            $BPadHash{$keyword} = $value1;
        }elsif($keyword =~ /Inner_Bond_Name/i){
            $innerBPad{name} = $value1;
        }elsif($keyword =~ /Outer_Bond_Name/i){
            $outerBPad{name} = $value1;
        }elsif($keyword =~ /South_Left_Start/i){
            $startBound{south} = $value1;
        }elsif($keyword =~ /North_Left_Start/i){
            $startBound{north} = $value1;
        }elsif($keyword =~ /West_Down_Start/i){
            $startBound{west} = $value1;
        }elsif($keyword =~ /East_Down_Start/i){
            $startBound{east} = $value1;
        }elsif($keyword =~ /\w+/){
            $ioPadHash{$keyword} = {width=>$value1,pinLoc=>$value2};
        }
    }
    close(ioPadList);

    # extract bonding pad parameter
    $innerBPad{length} = getBPadPar($innerBPad{name}."_Length",\%BPadHash);
    $outerBPad{length} = getBPadPar($outerBPad{name}."_Length",\%BPadHash);
    $innerBPad{width} = getBPadPar($innerBPad{name}."_Width",\%BPadHash);
    $outerBPad{width} = getBPadPar($outerBPad{name}."_Width",\%BPadHash);
    $innerBPad{offset} = getBPadPar($innerBPad{name}."_Offset",\%BPadHash);
    $outerBPad{offset} = getBPadPar($outerBPad{name}."_Offset",\%BPadHash);
    return(\%ioPadHash,\%innerBPad,\%outerBPad,\%startBound);
}

sub readDEF(){
    my ($defName,$ioPadHash) = @_;
    open (routedDef, $defName) || die ("Error: Failed to open $defName\n");
    my @leftPads = ();
    my @rightPads = ();
    my @upPads = ();
    my @downPads = ();
    my $componentSection=0;
    my $componentLine = "";
    my $unit_distance_microns = 0;
    while (<routedDef>){
        chomp;
        if(/^DIEAREA/i){
            s/[();]//g;
            ($keywork, $chipLeft, $chipDown, $chipRight, $chipUp)= split(/\s+/);
        }
        if(/^UNITS DISTANCE MICRONS/i){
            s/\s+/ /g;
            $unit_distance_microns = (split(/\s/))[3]; 
            &adjustUnitDistanceMicron($unit_distance_microns);
        }
        if(/^DESIGN\s+(\w+)\s+\;/i){
            $designName = $1;
        }
        $componentSection = 0 if(/^END COMPONENTS/i);
        if($componentSection == 1){
            $componentLine = $componentLine.$_;
            if(/\;\s*$/){
                print "Err! def error at $.\n" if($componentLine !~ /^\s*\-/);

                my @terms = split(/\s\+\s/,$componentLine);
                my ($instance, $cell, $status, $locX, $locY, $direction);
                foreach my $term (@terms){
                    if($term =~ /\B- /){
                        my $dash;
                       ($dash,$instance,$cell) = split(/ /,$term);
                    }elsif($term =~ /(FIXED|PLACED)/){
                        $term =~ s/[();]//g;
                        $term =~ s/\s+/ /g;
                        ($status,$locX,$locY,$direction) = split(/\s+/,$term);
                    }else{

                    }
                }
                #print ("$instance,$cell,$status,$locX,$locY,$direction\n");

                if (defined $ioPadHash->{$cell}){
                    if(($status !~ /PLACED/i) && ($status !~ /FIXED/i)){
                        print "Error!! $. : $cell must be PLACED or FIXED\n"; 
                    }
                    my $isPlace1=($ioPadHash->{$cell}->{pinLoc}==1) || 
                                 (($ioPadHash->{$cell}->{pinLoc} eq "10") &&
                                     ($direction =~ /\b(FW|W|FS|N)\b/)) ||
                                 (($ioPadHash->{$cell}->{pinLoc} eq "01") &&
                                     ($direction =~ /\b(E|FE|S|FN)\b/))||
                                 ($ioPadHash->{$cell}->{pinLoc} eq "11");
                    # $isPlace1 = 1. pin_loc eq 1
                    #             2. pin_loc eq 10 && ori eq (FW | W | FS | N)
                    #             3. pin_loc eq 01 && ori eq (E | FE | S | FN)
                    #             4. pin_loc == 11
                    my $isPlace2=(($ioPadHash->{$cell}->{pinLoc} eq "10") &&
                                     ($direction =~ /\b(E|FE|S|FN)\b/)) ||
                                 (($ioPadHash->{$cell}->{pinLoc} eq "01") &&
                                     ($direction =~ /\b(FW|W|FS|N)\b/)) ||
                                 ($ioPadHash->{$cell}->{pinLoc} eq "11");
                    # $isPlace2 = 1. pin_loc eq 10 && ori eq (E | FE | S | FN)
                    #             2. pin_loc eq 01 && ori eq (FW | W | FS | N)
                    #             3. pin_loc == 11
                    if (($locX == $chipLeft) && 
                        (($direction eq "FW") || ($direction eq "E"))){ 
                        my $tmp = {type=>$cell,X=>$locX,Y=> $locY,
                                   dir=> $direction , isPlace=>$isPlace1};
                        push (@leftPads , $tmp);
                        if($ioPadHash->{$cell}->{width} == 2){
                            my $tmp = {type=>$cell,X=>$locX,
                                       Y=>$locY+$secendPinOffset,dir=>$direction,
                                       isPlace=>$isPlace2};
                            push (@leftPads , $tmp);
                        }
                    }elsif (($locX == $chipRight - $ioPadLength) && 
                        (($direction eq "FE") || ($direction eq "W"))){ 
                        my $tmp = {type=>$cell,X=>$locX, Y=>$locY, 
                                   dir=>$direction , isPlace=>$isPlace1};
                        push (@rightPads , $tmp);
                        if($ioPadHash->{$cell}->{width} == 2){
                            my $tmp = {type=>$cell,X=>$locX,
                                       Y=>$locY+$secendPinOffset,dir=>$direction,
                                       isPlace=> $isPlace2};
                            push (@rightPads , $tmp);
                        }
                    }elsif (($locY == $chipUp - $ioPadLength) && 
                        (($direction eq "FS") || ($direction eq "S"))){ 
                        my $tmp = {type=>$cell,X=>$locX, Y=>$locY, 
                                   dir=>$direction , isPlace=>$isPlace1};
                        push (@upPads , $tmp);
                        if($ioPadHash->{$cell}->{width} == 2){
                            my $tmp = {type=>$cell,X=>$locX+$secendPinOffset, 
                                       Y=>$locY,dir=>$direction,
                                       isPlace=>$isPlace2};
                            push (@upPads , $tmp);
                        }
                    }elsif (($locY == $chipDown) && 
                        (($direction eq "FN") || ($direction eq "N"))){ 
                        my $tmp = {type=>$cell,X=>$locX,Y=> $locY,
                                   dir=> $direction , isPlace=>$isPlace1};
                        push (@downPads , $tmp);
                        if($ioPadHash->{$cell}->{width} == 2){
                            my $tmp = {type=>$cell,X=>$locX+$secendPinOffset,
                                       Y=>$locY,dir=> $direction , 
                                       isPlace=>$isPlace2};
                            push (@downPads , $tmp);
                        }
                    }else{
                        print "Warning !! $.: IO PAD not on the chip boundary or direction error. \n";
                        print ("$instance,$cell($locX,$locY)$direction,$isPlace2\n");
                    }
                }
                $componentLine = "";
            }
        } # if componentSection
        $componentSection = 1 if(/^COMPONENTS/i);
    } # while route.def
    my @sortedLeftPads = sort{$a->{Y} <=> $b->{Y}} @leftPads;
    my @sortedRightPads = sort{$a->{Y} <=> $b->{Y}} @rightPads;
    my @sortedUpPads = sort{$a->{X} <=> $b->{X}} @upPads;
    my @sortedDownPads = sort{$a->{X} <=> $b->{X}} @downPads;
    if ($unit_distance_microns ==0){
        printf ("Error, Can't find UNIT DISTANCE MICRONS in def, set to 1000\n");
        $unit_distance_microns=1000;
    }
    return(\@sortedLeftPads,\@sortedRightPads,\@sortedUpPads,\@sortedDownPads,
            $chipLeft,$chipRight,$chipUp,$chipDown,$designName,
            $unit_distance_microns);
}

sub isLinearPlace()
{
    my($leftPads, $rightPads ,$upPads , $downPads) = @_;
    my $loc = -9999999;
    foreach my $pad(@$leftPads){
        if($pad->{isPlace}==1){ 
            return (0) if (($pad->{Y} - $loc)<$innerBPad->{width});
            $loc = $pad->{Y};
        }
    }
    $loc = -9999999;
    foreach my $pad(@$rightPads){
        if($pad->{isPlace}==1){ 
            return (0) if (($pad->{Y} - $loc)<$innerBPad->{width});
            $loc = $pad->{Y};
        }
    }
    $loc = -9999999;
    foreach my $pad(@$upPads){
        if($pad->{isPlace}==1){ 
            return (0) if (($pad->{X} - $loc)<$innerBPad->{width});
            $loc = $pad->{X};
        }
    }
    $loc = -9999999;
    foreach my $pad(@$downPads){
        if($pad->{isPlace}==1){ 
            return (0) if (($pad->{X} - $loc)<$innerBPad->{width});
            $loc = $pad->{X};
        }
    }
    return (1);
}

sub isStaggerValid()
{
    my($leftPads, $rightPads ,$upPads , $downPads, $startBound) = @_;

    my ($innerPad,$outerPad)=(-9999999,-9999999);
    my $period = ($startBound->{west} =~ /Inner/i)?1:0; 
    foreach $pad (@$leftPads){
        $period = 1 - $period;
        if ( $period==0 ){
            if($pad->{isPlace}==1){
                return(0) if (($pad->{Y} - $innerPad) < $innerBPad->{width});
                $innerPad=$pad->{Y};
            }
        }else{
            if($pad->{isPlace}==1){
                return(0) if (($pad->{Y} - $outerPad) < $outerBPad->{width});
                $outerPad=$pad->{Y};
            }
        }
    }

    $period = ($startBound->{east} =~ /Inner/i)?1:0; 
    ($innerPad,$outerPad)=(-9999999,-9999999);
    foreach $pad (@$rightPads){
        $period = 1 - $period;
        if ( $period==0 ){
            if($pad->{isPlace}==1){
                return(0) if (($pad->{Y} - $innerPad) < $innerBPad->{width});
                $innerPad=$pad->{Y};
            }
        }else{
            if($pad->{isPlace}==1){
                return(0) if (($pad->{Y} - $outerPad) < $outerBPad->{width});
                $outerPad=$pad->{Y};
            }
        }
    }
    $period = ($startBound->{north} =~ /Inner/i)?1:0; 
    ($innerPad,$outerPad)=(-9999999,-9999999);
    foreach $pad (@$upPads){
        $period = 1 - $period;
        if ($period==0){
            if($pad->{isPlace}==1){
                return(0) if (($pad->{X} - $innerPad) < $innerBPad->{width});
                $innerPad=$pad->{X};
            }
        }else{
            if($pad->{isPlace}==1){
                return(0) if (($pad->{X} - $outerPad) < $outerBPad->{width});
                $outerPad=$pad->{X};
            }
        }
    }
    $period = ($startBound->{south} =~ /Inner/i)?1:0; 
    ($innerPad,$outerPad)=(-9999999,-9999999);
    foreach $pad (@$downPads){
        $period = 1 - $period;
        if ($period==0){
            if($pad->{isPlace}==1){
                return(0) if (($pad->{X} - $innerPad) < $innerBPad->{width});
                $innerPad=$pad->{X};
            }
        }else{
            if($pad->{isPlace}==1){
                return(0) if (($pad->{X} - $outerPad) < $outerBPad->{width});
                $outerPad=$pad->{X};
            }
        }
    }
    return (1);
}

sub printDefInLinear()
{
    my ($designName, $leftPads, $rightPads ,$upPads , $downPads) = @_;
    open (ecofile,">bondPads.eco")||die("Error: Failed to open bondPads.eco\n");
    open (cmdfile,">bondPads.cmd")||die("Error: Failed to open bondPads.cmd\n");
    print "Placed bonding pad in linear mod.....\n\n";
    # print headder
    print ecofile "FORMATVERSION 2\n";
    print cmdfile "loadECO bondPads.eco\n";

    my $innerCompNum= 0;
    foreach $pad (@$leftPads){
        my $padLocX = ($pad->{X} - $innerBPad->{length})/$unitdm;
        my $padLocY = ($pad->{Y} - $innerBPad->{offset})/$unitdm;
        my $dir = &compass2dir($pad->{dir});
        if($pad->{isPlace}){
            $innerCompNum++;
            print ecofile "ADDINST InnerBPad$innerCompNum $innerBPad->{name}\n";
            print cmdfile "placeInstance InnerBPad$innerCompNum $padLocX $padLocY $dir\n";
        }
    }
    foreach $pad (@$rightPads){
        my $padLocX = ($pad->{X} + $ioPadLength)/$unitdm;
        my $padLocY = ($pad->{Y} - $innerBPad->{offset})/$unitdm;
        my $dir = &compass2dir($pad->{dir});
        if($pad->{isPlace}){
            $innerCompNum++;
            print ecofile "ADDINST InnerBPad$innerCompNum $innerBPad->{name}\n";
            print cmdfile "placeInstance InnerBPad$innerCompNum $padLocX $padLocY $dir\n";
        }
    }
    foreach $pad (@$upPads){
        my $padLocX = ($pad->{X} - $innerBPad->{offset})/$unitdm;
        my $padLocY = ($pad->{Y} + $ioPadLength)/$unitdm;
        my $dir = &compass2dir($pad->{dir});
        if($pad->{isPlace}){
            $innerCompNum++;
            print ecofile "ADDINST InnerBPad$innerCompNum $innerBPad->{name}\n";
            print cmdfile "placeInstance InnerBPad$innerCompNum $padLocX $padLocY $dir\n";
        }
    }
    foreach $pad (@$downPads){
        my $padLocX = ($pad->{X} - $innerBPad->{offset})/$unitdm;
        my $padLocY = ($pad->{Y} - $innerBPad->{length})/$unitdm;
        my $dir = &compass2dir($pad->{dir});
        if($pad->{isPlace}){
            $innerCompNum++;
            print ecofile "ADDINST InnerBPad$innerCompNum $innerBPad->{name}\n";
            print cmdfile "placeInstance InnerBPad$innerCompNum $padLocX $padLocY $dir\n";
        }
    }
    close(ecofile);
    close(cmdfile);
}

sub printDefInStagger()
{
    my ($designName,$leftPads,$rightPads,$upPads,$downPads,$startBound) = @_;
    open (ecofile,">bondPads.eco")||die("Error: Failed to open bondPads.eco\n");
    open (cmdfile,">bondPads.cmd")||die("Error: Failed to open bondPads.cmd\n");
    # print headder
    print ecofile "FORMATVERSION 2\n";
    print cmdfile "loadECO bondPads.eco\n"; 

    print "Placed bonding pad in stagger mod.....\n\n";
    my ($components, $newComp);
    my $countNum =0;
    my $compNum =0;
    foreach $pad (@$leftPads){
        my $innerXoffset = -$innerBPad->{length};
        my $innerYoffset = -$innerBPad->{offset};
        my $outerXoffset = -$outerBPad->{length};
        my $outerYoffset = -$outerBPad->{offset};
        ($compNum,$countNum, $compEco,$compCmd)=calculateLoc($compNum,$countNum, $pad, $innerXoffset, $innerYoffset, $outerXoffset, $outerYoffset, $startBound->{west},"W");
        print ecofile "$compEco";
        print cmdfile "$compCmd";
    }
    $countNum =0;
    $compNum =0;
    foreach $pad (@$rightPads){
        my $innerXoffset = $ioPadLength;
        my $innerYoffset = -$innerBPad->{offset};
        my $outerXoffset = $ioPadLength;
        my $outerYoffset = -$outerBPad->{offset};
        ($compNum,$countNum, $compEco,$compCmd)=calculateLoc($compNum,$countNum,$pad, $innerXoffset, $innerYoffset, $outerXoffset, $outerYoffset, $startBound->{east},"E");
        print ecofile "$compEco";
        print cmdfile "$compCmd";
    }
    $countNum =0;
    $compNum =0;
    foreach $pad (@$upPads){
        my $innerXoffset = -$innerBPad->{offset};
        my $innerYoffset = $ioPadLength;
        my $outerXoffset = -$outerBPad->{offset};
        my $outerYoffset = $ioPadLength;
        ($compNum,$countNum,$compEco,$compCmd)=calculateLoc($compNum,$countNum,$pad, $innerXoffset, $innerYoffset, $outerXoffset, $outerYoffset, $startBound->{north},"N");
        print ecofile "$compEco";
        print cmdfile "$compCmd";
    }
    $countNum =0;
    $compNum =0;
    foreach $pad (@$downPads){
        my $innerXoffset = -$innerBPad->{offset};
        my $innerYoffset = -$innerBPad->{length};
        my $outerXoffset = -$outerBPad->{offset};
        my $outerYoffset = -$outerBPad->{length};
        ($compNum,$countNum,$compEco,$compCmd)=calculateLoc($compNum,$countNum,$pad, $innerXoffset, $innerYoffset, $outerXoffset, $outerYoffset, $startBound->{south},"S");
        print ecofile "$compEco";
        print cmdfile "$compCmd";
    }
    
    close(ecofile);
    close(cmdfile);
}

sub adjustUnitDistanceMicron()
{
    my $unitdm= shift;
    $innerBPad->{"length"} = $innerBPad->{"length"} *$unitdm/1000;
    $innerBPad->{"width"} = $innerBPad->{"width"} *$unitdm/1000;
    $innerBPad->{"offset"} = $innerBPad->{"offset"} *$unitdm/1000;
    $outerBPad->{"length"} = $outerBPad->{"length"} *$unitdm/1000;
    $outerBPad->{"width"} = $outerBPad->{"width"} *$unitdm/1000;
    $outerBPad->{"offset"} = $outerBPad->{"offset"} *$unitdm/1000;
    $ioPadLength = $ioPadLength *$unitdm/1000;
    $secendPinOffset= $secendPinOffset*$unitdm/1000;
}

sub calculateLoc()
{
    my ($compNum, $countNum, $pad, $innerXOffset, $innerYOffset,
        $outerXOffset, $outerYOffset, $start,$loc)=@_;
    my ($padLocX , $padLocY , $bondName);
    my $compEco;
    my $compCmd;
    $countNum++;
    if($pad->{isPlace}){
        my $period = $countNum%2;
        if ( ($period == 1 && $start=~/I/i) ||
             ($period == 0 && $start=~/O/i)  ){
            $padLocX = ($pad->{X} + $innerXOffset)/$unitdm;
            $padLocY = ($pad->{Y} + $innerYOffset)/$unitdm;
            $bondName = $innerBPad->{name};
        } else{
            $padLocX = ($pad->{X} + $outerXOffset)/$unitdm;
            $padLocY = ($pad->{Y} + $outerYOffset)/$unitdm;
            $bondName = $outerBPad->{name};
        }
        my $dir = &compass2dir($pad->{dir});
        $compNum++;
        $compEco ="ADDINST boundPad$loc$compNum $bondName\n";
        $compCmd ="placeInstance boundPad$loc$compNum $padLocX $padLocY $dir\n";
    }
    return ($compNum,$countNum,$compEco,$compCmd);
}

sub compass2dir()
{
    my $compass=uc(shift);
    my %com2dir = (
        "N" => "R0",
        "W" => "R90",
        "S" => "R180",
        "E" => "R270",
        "FS" => "MX",
        "FW" => "MX90",
        "FN" => "MY",
        "FE" => "MY90"
    );
    if (defined $com2dir{$compass}){
        return($com2dir{$compass});
    }else{
        printf("Undefined direction : $compass\n");
        return("$compass");
    }
}

sub getBPadPar()
{
    my ($BPadPar ,$BPadHash) = @_;
    if (defined($BPadHash->{$BPadPar})){
        return($BPadHash->{$BPadPar});
    }else{
       print "Error!! , $BPadPar not defined\n";
    }
}
