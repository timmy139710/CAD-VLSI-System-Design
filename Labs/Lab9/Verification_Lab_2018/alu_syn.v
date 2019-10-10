
module ALU ( alu_out, instruction, inputA, inputB, clk, reset );
  output [3:0] alu_out;
  input [3:0] inputA;
  input [3:0] inputB;
  input instruction, clk, reset;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  wire   [3:0] X;

  DFFRX1 \alu_out_reg[3]  ( .D(X[3]), .CK(clk), .RN(reset), .Q(alu_out[3]) );
  DFFRX1 \alu_out_reg[2]  ( .D(X[2]), .CK(clk), .RN(reset), .Q(alu_out[2]) );
  DFFRX1 \alu_out_reg[1]  ( .D(X[1]), .CK(clk), .RN(reset), .Q(alu_out[1]) );
  DFFRX1 \alu_out_reg[0]  ( .D(X[0]), .CK(clk), .RN(reset), .Q(alu_out[0]) );
  OAI21XL U59 ( .A0(n51), .A1(n52), .B0(n53), .Y(n44) );
  OAI21XL U60 ( .A0(n35), .A1(n34), .B0(n49), .Y(n42) );
  AO21X1 U61 ( .A0(n34), .A1(n35), .B0(inputB[1]), .Y(n49) );
  CLKINVX1 U62 ( .A(n50), .Y(n35) );
  CLKINVX1 U63 ( .A(inputA[1]), .Y(n34) );
  NAND2X1 U64 ( .A(inputB[0]), .B(n36), .Y(n50) );
  NAND2X1 U65 ( .A(inputA[0]), .B(inputB[0]), .Y(n52) );
  NAND2X1 U66 ( .A(inputB[1]), .B(inputA[1]), .Y(n53) );
  CLKINVX1 U67 ( .A(instruction), .Y(n33) );
  OAI22XL U68 ( .A0(instruction), .A1(n46), .B0(n47), .B1(n33), .Y(X[2]) );
  XNOR2X1 U69 ( .A(n44), .B(n48), .Y(n46) );
  XOR2X1 U70 ( .A(n48), .B(n42), .Y(n47) );
  XOR2X1 U71 ( .A(inputB[2]), .B(inputA[2]), .Y(n48) );
  OAI22XL U72 ( .A0(instruction), .A1(n37), .B0(n38), .B1(n33), .Y(X[3]) );
  XNOR2X1 U73 ( .A(n43), .B(n40), .Y(n37) );
  XOR2X1 U74 ( .A(n39), .B(n40), .Y(n38) );
  XOR2X1 U75 ( .A(inputB[3]), .B(inputA[3]), .Y(n40) );
  OAI22XL U76 ( .A0(n54), .A1(n33), .B0(instruction), .B1(n55), .Y(X[1]) );
  XNOR2X1 U77 ( .A(n56), .B(n50), .Y(n54) );
  XNOR2X1 U78 ( .A(n56), .B(n52), .Y(n55) );
  NAND2BX1 U79 ( .AN(n51), .B(n53), .Y(n56) );
  OAI2BB2XL U80 ( .B0(inputB[2]), .B1(n41), .A0N(n42), .A1N(inputA[2]), .Y(n39) );
  NOR2X1 U81 ( .A(inputA[2]), .B(n42), .Y(n41) );
  NOR2X1 U82 ( .A(inputA[1]), .B(inputB[1]), .Y(n51) );
  OAI2BB1X1 U83 ( .A0N(n44), .A1N(inputA[2]), .B0(n45), .Y(n43) );
  OAI21XL U84 ( .A0(inputA[2]), .A1(n44), .B0(inputB[2]), .Y(n45) );
  OAI21XL U85 ( .A0(inputB[0]), .A1(n36), .B0(n50), .Y(X[0]) );
  CLKINVX1 U86 ( .A(inputA[0]), .Y(n36) );
endmodule

