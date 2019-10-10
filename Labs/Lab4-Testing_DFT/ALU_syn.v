
module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  XOR3X1 U2_7 ( .A(A[7]), .B(n2), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n8), .CI(n1), .CO(carry[2]), .S(DIFF[1]) );
  OR2X1 U1 ( .A(A[0]), .B(n9), .Y(n1) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n8) );
  CLKINVX1 U4 ( .A(B[6]), .Y(n3) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[4]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n2) );
  XNOR2X1 U10 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU ( alu_out, instruction, inputA, inputB, clk, reset );
  output [7:0] alu_out;
  input [3:0] instruction;
  input [7:0] inputA;
  input [7:0] inputB;
  input clk, reset;
  wire   N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n122, n123, n124, n125;
  wire   [7:0] reg_A;
  wire   [7:0] reg_B;
  wire   [3:0] reg_ins;
  wire   [7:0] X;

  ALU_DW01_sub_0 sub_43 ( .A(reg_A), .B(reg_B), .CI(1'b0), .DIFF({N54, N53, 
        N52, N51, N50, N49, N48, N47}) );
  ALU_DW01_add_0 add_42 ( .A(reg_A), .B(reg_B), .CI(1'b0), .SUM({N46, N45, N44, 
        N43, N42, N41, N40, N39}) );
  DFFRX1 \reg_ins_reg[0]  ( .D(instruction[0]), .CK(clk), .RN(n123), .Q(
        reg_ins[0]), .QN(n102) );
  DFFRX1 \reg_ins_reg[1]  ( .D(instruction[1]), .CK(clk), .RN(n123), .Q(
        reg_ins[1]) );
  DFFRX1 \reg_ins_reg[2]  ( .D(instruction[2]), .CK(clk), .RN(n123), .Q(
        reg_ins[2]), .QN(n92) );
  DFFRX1 \reg_A_reg[7]  ( .D(inputA[7]), .CK(clk), .RN(n123), .Q(reg_A[7]), 
        .QN(n103) );
  DFFRX1 \reg_A_reg[6]  ( .D(inputA[6]), .CK(clk), .RN(n123), .Q(reg_A[6]), 
        .QN(n104) );
  DFFRX1 \reg_B_reg[7]  ( .D(inputB[7]), .CK(clk), .RN(n122), .Q(reg_B[7]), 
        .QN(n93) );
  DFFRX1 \reg_B_reg[6]  ( .D(inputB[6]), .CK(clk), .RN(n122), .Q(reg_B[6]), 
        .QN(n95) );
  DFFRX1 \reg_B_reg[0]  ( .D(inputB[0]), .CK(clk), .RN(n122), .Q(reg_B[0]), 
        .QN(n94) );
  DFFRX1 \reg_A_reg[5]  ( .D(inputA[5]), .CK(clk), .RN(n123), .Q(reg_A[5]), 
        .QN(n105) );
  DFFRX1 \reg_A_reg[4]  ( .D(inputA[4]), .CK(clk), .RN(n123), .Q(reg_A[4]), 
        .QN(n106) );
  DFFRX1 \reg_A_reg[3]  ( .D(inputA[3]), .CK(clk), .RN(n124), .Q(reg_A[3]), 
        .QN(n107) );
  DFFRX1 \reg_A_reg[2]  ( .D(inputA[2]), .CK(clk), .RN(n124), .Q(reg_A[2]), 
        .QN(n108) );
  DFFRX1 \reg_A_reg[1]  ( .D(inputA[1]), .CK(clk), .RN(n124), .Q(reg_A[1]), 
        .QN(n109) );
  DFFRX1 \reg_B_reg[5]  ( .D(inputB[5]), .CK(clk), .RN(n122), .Q(reg_B[5]), 
        .QN(n96) );
  DFFRX1 \reg_B_reg[4]  ( .D(inputB[4]), .CK(clk), .RN(n122), .Q(reg_B[4]), 
        .QN(n97) );
  DFFRX1 \reg_B_reg[3]  ( .D(inputB[3]), .CK(clk), .RN(n122), .Q(reg_B[3]), 
        .QN(n98) );
  DFFRX1 \reg_B_reg[2]  ( .D(inputB[2]), .CK(clk), .RN(n122), .Q(reg_B[2]), 
        .QN(n99) );
  DFFRX1 \reg_B_reg[1]  ( .D(inputB[1]), .CK(clk), .RN(n122), .Q(reg_B[1]), 
        .QN(n100) );
  DFFRX1 \reg_A_reg[0]  ( .D(inputA[0]), .CK(clk), .RN(n124), .Q(reg_A[0]), 
        .QN(n101) );
  DFFRX1 \reg_ins_reg[3]  ( .D(instruction[3]), .CK(clk), .RN(n123), .Q(
        reg_ins[3]), .QN(n111) );
  DFFRX1 \alu_out_reg[1]  ( .D(X[1]), .CK(clk), .RN(n124), .Q(alu_out[1]) );
  DFFRX1 \alu_out_reg[2]  ( .D(X[2]), .CK(clk), .RN(n124), .Q(alu_out[2]) );
  DFFRX1 \alu_out_reg[3]  ( .D(X[3]), .CK(clk), .RN(n124), .Q(alu_out[3]) );
  DFFRX1 \alu_out_reg[4]  ( .D(X[4]), .CK(clk), .RN(n124), .Q(alu_out[4]) );
  DFFRX1 \alu_out_reg[5]  ( .D(X[5]), .CK(clk), .RN(reset), .Q(alu_out[5]) );
  DFFRX1 \alu_out_reg[6]  ( .D(X[6]), .CK(clk), .RN(reset), .Q(alu_out[6]) );
  DFFRX1 \alu_out_reg[7]  ( .D(X[7]), .CK(clk), .RN(reset), .Q(alu_out[7]) );
  DFFRX1 \alu_out_reg[0]  ( .D(X[0]), .CK(clk), .RN(reset), .Q(alu_out[0]) );
  CLKBUFX3 U71 ( .A(n56), .Y(n110) );
  CLKINVX1 U72 ( .A(n111), .Y(n112) );
  NOR2X1 U73 ( .A(reg_ins[3]), .B(reg_ins[2]), .Y(n56) );
  CLKINVX1 U74 ( .A(n56), .Y(n125) );
  AND2X2 U75 ( .A(n90), .B(n92), .Y(n59) );
  OAI21XL U76 ( .A0(reg_ins[3]), .A1(n53), .B0(n54), .Y(X[7]) );
  AOI32X1 U77 ( .A0(n125), .A1(n93), .A2(reg_A[7]), .B0(reg_B[7]), .B1(n55), 
        .Y(n54) );
  AOI221XL U78 ( .A0(N54), .A1(n58), .B0(N46), .B1(n59), .C0(n60), .Y(n53) );
  OAI21XL U79 ( .A0(reg_A[7]), .A1(n56), .B0(n57), .Y(n55) );
  OAI21XL U80 ( .A0(reg_ins[3]), .A1(n63), .B0(n64), .Y(X[6]) );
  AOI32X1 U81 ( .A0(n125), .A1(n95), .A2(reg_A[6]), .B0(reg_B[6]), .B1(n65), 
        .Y(n64) );
  AOI221XL U82 ( .A0(N53), .A1(n58), .B0(N45), .B1(n59), .C0(n66), .Y(n63) );
  OAI21XL U83 ( .A0(reg_A[6]), .A1(n56), .B0(n57), .Y(n65) );
  OAI21XL U84 ( .A0(reg_ins[3]), .A1(n67), .B0(n68), .Y(X[5]) );
  AOI32X1 U85 ( .A0(n125), .A1(n96), .A2(reg_A[5]), .B0(reg_B[5]), .B1(n69), 
        .Y(n68) );
  AOI221XL U86 ( .A0(N52), .A1(n58), .B0(N44), .B1(n59), .C0(n70), .Y(n67) );
  OAI21XL U87 ( .A0(reg_A[5]), .A1(n56), .B0(n57), .Y(n69) );
  OAI21XL U88 ( .A0(reg_ins[3]), .A1(n71), .B0(n72), .Y(X[4]) );
  AOI32X1 U89 ( .A0(n125), .A1(n97), .A2(reg_A[4]), .B0(reg_B[4]), .B1(n73), 
        .Y(n72) );
  AOI221XL U90 ( .A0(N51), .A1(n58), .B0(N43), .B1(n59), .C0(n74), .Y(n71) );
  OAI21XL U91 ( .A0(reg_A[4]), .A1(n56), .B0(n57), .Y(n73) );
  OAI21XL U92 ( .A0(reg_ins[3]), .A1(n75), .B0(n76), .Y(X[3]) );
  AOI32X1 U93 ( .A0(n125), .A1(n98), .A2(reg_A[3]), .B0(reg_B[3]), .B1(n77), 
        .Y(n76) );
  AOI221XL U94 ( .A0(N50), .A1(n58), .B0(N42), .B1(n59), .C0(n78), .Y(n75) );
  OAI21XL U95 ( .A0(reg_A[3]), .A1(n56), .B0(n57), .Y(n77) );
  NAND3X1 U96 ( .A(reg_ins[0]), .B(n92), .C(reg_ins[1]), .Y(n61) );
  NOR3X1 U97 ( .A(reg_ins[1]), .B(reg_ins[2]), .C(n102), .Y(n58) );
  NAND3X1 U98 ( .A(n102), .B(n92), .C(reg_ins[1]), .Y(n62) );
  NAND3BX1 U99 ( .AN(reg_ins[3]), .B(reg_ins[2]), .C(n90), .Y(n57) );
  OAI32X1 U100 ( .A0(n94), .A1(n61), .A2(n101), .B0(reg_B[0]), .B1(n62), .Y(
        n91) );
  OAI32X1 U101 ( .A0(n95), .A1(n61), .A2(n104), .B0(reg_B[6]), .B1(n62), .Y(
        n66) );
  OAI32X1 U102 ( .A0(n96), .A1(n61), .A2(n105), .B0(reg_B[5]), .B1(n62), .Y(
        n70) );
  OAI32X1 U103 ( .A0(n97), .A1(n61), .A2(n106), .B0(reg_B[4]), .B1(n62), .Y(
        n74) );
  OAI32X1 U104 ( .A0(n98), .A1(n61), .A2(n107), .B0(reg_B[3]), .B1(n62), .Y(
        n78) );
  OAI32X1 U105 ( .A0(n99), .A1(n61), .A2(n108), .B0(reg_B[2]), .B1(n62), .Y(
        n82) );
  OAI32X1 U106 ( .A0(n100), .A1(n61), .A2(n109), .B0(reg_B[1]), .B1(n62), .Y(
        n86) );
  OAI32X1 U107 ( .A0(n61), .A1(n103), .A2(n93), .B0(reg_B[7]), .B1(n62), .Y(
        n60) );
  NOR2X1 U108 ( .A(reg_ins[1]), .B(reg_ins[0]), .Y(n90) );
  OAI21XL U109 ( .A0(reg_ins[3]), .A1(n87), .B0(n88), .Y(X[0]) );
  AOI32X1 U110 ( .A0(n125), .A1(n94), .A2(reg_A[0]), .B0(reg_B[0]), .B1(n89), 
        .Y(n88) );
  AOI221XL U111 ( .A0(N47), .A1(n58), .B0(N39), .B1(n59), .C0(n91), .Y(n87) );
  OAI21XL U112 ( .A0(reg_A[0]), .A1(n56), .B0(n57), .Y(n89) );
  OAI21XL U113 ( .A0(n112), .A1(n79), .B0(n80), .Y(X[2]) );
  AOI32X1 U114 ( .A0(n125), .A1(n99), .A2(reg_A[2]), .B0(reg_B[2]), .B1(n81), 
        .Y(n80) );
  AOI221XL U115 ( .A0(N49), .A1(n58), .B0(N41), .B1(n59), .C0(n82), .Y(n79) );
  OAI21XL U116 ( .A0(reg_A[2]), .A1(n110), .B0(n57), .Y(n81) );
  OAI21XL U117 ( .A0(n112), .A1(n83), .B0(n84), .Y(X[1]) );
  AOI32X1 U118 ( .A0(n125), .A1(n100), .A2(reg_A[1]), .B0(reg_B[1]), .B1(n85), 
        .Y(n84) );
  AOI221XL U119 ( .A0(N48), .A1(n58), .B0(N40), .B1(n59), .C0(n86), .Y(n83) );
  OAI21XL U120 ( .A0(reg_A[1]), .A1(n110), .B0(n57), .Y(n85) );
  CLKBUFX3 U121 ( .A(reset), .Y(n124) );
  CLKBUFX3 U122 ( .A(reset), .Y(n123) );
  CLKBUFX3 U123 ( .A(reset), .Y(n122) );
endmodule

