module ALU(alu_out,instruction,inputA,inputB,clk,reset);
output [3:0] alu_out;
input [3:0] inputA,inputB;
input instruction;
input clk,reset;

reg [3:0] alu_out;
reg [3:0] X;

always@(posedge clk or negedge reset)
begin
  if(!reset)
    alu_out <= 0;
  else
    alu_out <= X;
end

always@(inputA or inputB or instruction)
begin
  if(!instruction)
    X=inputA+inputB;
  else
    X=inputA-inputB;
end

endmodule
