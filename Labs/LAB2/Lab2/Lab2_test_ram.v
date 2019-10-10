`timescale 1ns/100fs

module test_ram;
reg [5:0] Addr;
reg [7:0] I;
reg WEB,OEB,CEB,clk;
wire [7:0] O;

integer i,j,outfile,pat_error;

HSs13n_512x8 my_ram(.A(Addr),
                   .D(I),
                   .CLK(~clk),
                   .CEN(CEB),
                   .WEN(WEB),
                   .Q(O) );

always #10 clk=~clk;                      //cycle time is 20ns

initial begin
  $fsdbDumpfile("Lab2_ram.fsdb"); 
  $fsdbDumpvars;  
  outfile=$fopen("ram_out.txt");          //open one file for writing
  if(!outfile) begin
    $display("Can not write file!");
    $finish;
  end

  pat_error=0;

  clk=1'b1;CEB=1'b1;WEB=1'b1;OEB=1'b0;I=0;Addr=0;
  #5 // Memory Write
     for(i=0;i<64;i=i+1)
     begin
         CEB=1'b0;WEB=1'b0;OEB=1'b0;Addr=i[5:0];
         j=i*i;
         I=j[7:0];
         #20 ;                          
     end
     
     // Memory Read
     for(i=0;i<64;i=i+1)
     begin
         CEB=1'b0;WEB=1'b1;OEB=1'b0;Addr=i[5:0];
         #20 j=i*i;
             if(O[7:0] !== j[7:0]) 
             begin
               $fdisplay(outfile,"Memory content of Address %b should be %b. But your output is %b.",Addr,j[7:0],O);
               pat_error=pat_error+1;
             end                           
     end

          
     if(!pat_error)
       $display("\nCongratulations!! Your RAM Controller is correct!!\n");
     else
       $display("\nYour RAM Controller has %d errors. \nPlease read ram_out.txt for details.\n",pat_error);
  #10 $finish;
  


end

endmodule