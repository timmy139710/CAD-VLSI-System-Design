`timescale 1ns/100ps

module test_alu;
reg [7:0] inputA,inputB,true_out;
reg clk,reset;
reg [3:0] instruction;
wire [7:0] alu_out;

integer i,j,outfile,pat_error;

  ALU my_alu(alu_out,instruction,inputA,inputB,clk,reset);

always #5 clk=~clk;                      //cycle time is 10ns

initial begin
  //$sdf_annotate("Lab2_alu_s.sdf",my_alu);
  //$fsdbDumpfile("Lab2_alu.fsdb"); 
  //$fsdbDumpvars;  
  outfile=$fopen("alu_out.txt");          //open one file for writing
  if(!outfile) begin
    $display("Can not write file!");
    $finish;
  end

  pat_error=0;

  reset=1'b1;clk=1'b1;inputA=0;inputB=0;instruction=0;
  #2 reset=1'b0;                            // system reset
  #3 reset=1'b1;
     // test for instruction 0: Add
     instruction=0;
     for(i=0;i<256;i=i+1)
     begin
       for(j=0;j<256;j=j+1)
       begin
         inputA=i[7:0];inputB=j[7:0];
         #20  true_out=inputA+inputB;
             if(alu_out !== true_out[7:0]) 
             begin
               $fdisplay(outfile,"%b + %b should be %b. But your output is %b.",inputA,inputB,true_out,alu_out);
               pat_error=pat_error+1;
             end                           
       end
     end
     
     // test for instruction 1: Sub
     instruction=4'b0001;
     for(i=0;i<256;i=i+1)
     begin
       for(j=0;j<256;j=j+1)
       begin
         inputA=i[7:0];inputB=j[7:0];
         #20 true_out=inputA-inputB;
             if(alu_out !== true_out[7:0]) 
             begin
               $fdisplay(outfile,"%b - %b should be %b. But your output is %b.",inputA,inputB,true_out,alu_out);
               pat_error=pat_error+1;
             end                           
       end
     end

     // test for instruction 2: Not
     instruction=4'b0010;
       for(j=0;j<256;j=j+1)
       begin
         inputB=j[7:0];
         #20 true_out=~inputB;
             if(alu_out !== true_out[7:0]) 
             begin
               $fdisplay(outfile,"~ %b should be %b. But your output is %b.",inputB,true_out,alu_out);
               pat_error=pat_error+1;
             end                           
       end
  
     // test for instruction 3: And
     instruction=4'b0011;
     for(i=0;i<256;i=i+1)
     begin
       for(j=0;j<256;j=j+1)
       begin
         inputA=i[7:0];inputB=j[7:0];
         #20 true_out=inputA&inputB;
             if(alu_out !== true_out[7:0]) 
             begin
               $fdisplay(outfile,"%b & %b should be %b. But your output is %b.",inputA,inputB,true_out,alu_out);
               pat_error=pat_error+1;
             end                           
       end
     end  

     // test for instruction 4: Or
     instruction=4'b0100;
     for(i=0;i<256;i=i+1)
     begin
       for(j=0;j<256;j=j+1)
       begin
         inputA=i[7:0];inputB=j[7:0];
         #20 true_out=inputA|inputB;
             if(alu_out !== true_out[7:0]) 
             begin
               $fdisplay(outfile,"%b | %b should be %b. But your output is %b.",inputA,inputB,true_out,alu_out);
               pat_error=pat_error+1;
             end                           
       end
     end

     // test for instruction 5: Xor
     instruction=4'b0101;
     for(i=0;i<256;i=i+1)
     begin
       for(j=0;j<256;j=j+1)
       begin
         inputA=i[7:0];inputB=j[7:0];
         #20 true_out=inputA^inputB;
             if(alu_out !== true_out[7:0]) 
             begin
               $fdisplay(outfile,"%b ^ %b should be %b. But your output is %b.",inputA,inputB,true_out,alu_out);
               pat_error=pat_error+1;
             end                           
       end
     end
          
     if(!pat_error)
       $display("\nCongratulations!! Your Verilog Code is correct!!\n");
     else
       $display("\nYour Verilog Code has %d errors. \nPlease read alu_out.txt for details.\n",pat_error);
  #10 $finish;
  


end

endmodule
