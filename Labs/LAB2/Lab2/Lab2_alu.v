module ALU(
    alu_out,
    instruction,
    inputA,
    inputB,
    clk,
    reset
);

//==== i/o definition ====
output [7:0] alu_out;
input  [7:0] inputA,inputB;
input  [3:0] instruction;
input        clk,reset;

//==== reg/wire definition ====
reg [7:0] alu_out,X,reg_A,reg_B;
wire [7:0] inputB_inv;
reg [3:0] reg_ins;
wire [7:0] sum;

//==== sequential circuit ====
always@( posedge clk or negedge reset ) begin
    if(~reset) begin
        alu_out <= 0;
        reg_A <= 0;
        reg_B <= 0;
        reg_ins <= 0;
    end
    else begin
        alu_out <= X;
        reg_A <= inputA;
        reg_B <= inputB;
        reg_ins <= instruction;
    end
end


assign inputB_inv = ~reg_B;
always@( reg_A or reg_B or reg_ins or inputB_inv or sum ) begin 
    case(reg_ins)
        4'b0000: X = reg_A+reg_B;    
        4'b0001: X = reg_A-reg_B;                 
        4'b0010: X = inputB_inv;            
        4'b0011: X = reg_A&reg_B;
        4'b0100: X = reg_A|reg_B;     
        default: X = reg_A^reg_B;            
  endcase
end

endmodule
