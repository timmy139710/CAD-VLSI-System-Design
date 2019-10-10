
module ALU_DW01_addsub_8_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   \carry[7] , \carry[6] , \carry[5] , \carry[4] , \carry[3] ,
         \carry[2] , \carry[1] , \carry[0] ;
  wire   [7:0] B_AS;

  ADDFX2 U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(\carry[2] ), .S(SUM[2]), .CO(
        \carry[3] ) );
  ADDFX2 U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(\carry[4] ), .S(SUM[4]), .CO(
        \carry[5] ) );
  ADDFX2 U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(\carry[6] ), .S(SUM[6]), .CO(
        \carry[7] ) );
  ADDFX2 U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(\carry[1] ), .S(SUM[1]), .CO(
        \carry[2] ) );
  ADDFX2 U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(\carry[3] ), .S(SUM[3]), .CO(
        \carry[4] ) );
  ADDFX2 U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(\carry[5] ), .S(SUM[5]), .CO(
        \carry[6] ) );
  XOR3X2 U1_7 ( .A(A[7]), .B(B_AS[7]), .C(\carry[7] ), .Y(SUM[7]) );
  XOR2X1 U4 ( .A(B[7]), .B(ADD_SUB), .Y(B_AS[7]) );
  XOR2X1 U5 ( .A(B[6]), .B(ADD_SUB), .Y(B_AS[6]) );
  XOR2X1 U6 ( .A(B[5]), .B(ADD_SUB), .Y(B_AS[5]) );
  XOR2X1 U7 ( .A(B[4]), .B(ADD_SUB), .Y(B_AS[4]) );
  XOR2X1 U8 ( .A(B[3]), .B(\carry[0] ), .Y(B_AS[3]) );
  XOR2X1 U9 ( .A(B[2]), .B(\carry[0] ), .Y(B_AS[2]) );
  ADDFX2 U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(\carry[0] ), .S(SUM[0]), .CO(
        \carry[1] ) );
  XOR2X1 U10 ( .A(B[1]), .B(\carry[0] ), .Y(B_AS[1]) );
  XOR2X1 U11 ( .A(B[0]), .B(\carry[0] ), .Y(B_AS[0]) );
  BUFX2 U12 ( .A(ADD_SUB), .Y(\carry[0] ) );
endmodule


module ALU ( alu_out, instruction, inputA, inputB, clk, reset );
  output [7:0] alu_out;
  input [3:0] instruction;
  input [7:0] inputA;
  input [7:0] inputB;
  input clk, reset;
  wire   add_sub, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121;
  wire   [7:0] reg_A;
  wire   [7:0] reg_B;
  wire   [7:0] sum;
  wire   [3:0] reg_ins;
  wire   [7:0] X;

  INVX2 U3 ( .A(n53), .Y(n120) );
  AND2X1 U4 ( .A(n95), .B(n70), .Y(n94) );
  AND2X1 U5 ( .A(n69), .B(n70), .Y(n68) );
  AND2X1 U6 ( .A(n107), .B(n70), .Y(n106) );
  AND2X1 U7 ( .A(n89), .B(n70), .Y(n88) );
  AND2X1 U8 ( .A(n101), .B(n70), .Y(n100) );
  MX2X2 U9 ( .S0(reg_B[7]), .B(n71), .A(n121), .Y(n69) );
  MX2X2 U10 ( .S0(reg_B[3]), .B(n71), .A(n121), .Y(n95) );
  MX2X2 U11 ( .S0(reg_B[1]), .B(n71), .A(n121), .Y(n107) );
  AND2X1 U12 ( .A(n83), .B(n119), .Y(n82) );
  MX2X2 U13 ( .S0(reg_B[4]), .B(n71), .A(n56), .Y(n89) );
  AND2X1 U14 ( .A(n113), .B(n119), .Y(n112) );
  MX2X2 U15 ( .S0(reg_B[2]), .B(n71), .A(n120), .Y(n101) );
  AND2X1 U16 ( .A(n77), .B(n119), .Y(n76) );
  BUFX2 U17 ( .A(n71), .Y(n118) );
  OR4X2 U18 ( .A(reg_ins[0]), .B(n114), .C(reg_ins[3]), .D(reg_ins[1]), .Y(n70) );
  MX2X2 U19 ( .S0(reg_A[3]), .B(n94), .A(n93), .Y(n91) );
  MX2X2 U20 ( .S0(reg_A[7]), .B(n68), .A(n67), .Y(n64) );
  MX2X2 U21 ( .S0(reg_A[1]), .B(n106), .A(n105), .Y(n103) );
  MX2X2 U22 ( .S0(reg_B[5]), .B(n118), .A(n121), .Y(n83) );
  MX2X2 U23 ( .S0(reg_A[5]), .B(n82), .A(n81), .Y(n79) );
  MX2X2 U24 ( .S0(reg_A[4]), .B(n88), .A(n87), .Y(n85) );
  MX2X2 U25 ( .S0(reg_A[0]), .B(n112), .A(n111), .Y(n109) );
  MX2X2 U26 ( .S0(reg_A[2]), .B(n100), .A(n99), .Y(n97) );
  MX2X2 U27 ( .S0(reg_B[6]), .B(n118), .A(n120), .Y(n77) );
  MX2X2 U28 ( .S0(reg_A[6]), .B(n76), .A(n75), .Y(n73) );
  OR4X2 U29 ( .A(n115), .B(n116), .C(reg_ins[3]), .D(reg_ins[2]), .Y(n71) );
  BUFX2 U30 ( .A(n70), .Y(n119) );
  OR2XL U31 ( .A(reg_ins[2]), .B(reg_ins[3]), .Y(n53) );
  BUFX2 U32 ( .A(n63), .Y(n54) );
  OAI211X1 U33 ( .A0(reg_B[5]), .A1(n63), .B0(n79), .C0(n80), .Y(X[5]) );
  OAI211X1 U34 ( .A0(reg_B[4]), .A1(n63), .B0(n85), .C0(n86), .Y(X[4]) );
  OAI211X1 U35 ( .A0(reg_B[3]), .A1(n63), .B0(n91), .C0(n92), .Y(X[3]) );
  OAI211X1 U36 ( .A0(reg_B[2]), .A1(n54), .B0(n97), .C0(n98), .Y(X[2]) );
  OAI211X1 U37 ( .A0(reg_B[7]), .A1(n63), .B0(n64), .C0(n65), .Y(X[7]) );
  OAI211X1 U38 ( .A0(reg_B[1]), .A1(n54), .B0(n103), .C0(n104), .Y(X[1]) );
  OAI211X1 U39 ( .A0(reg_B[0]), .A1(n54), .B0(n109), .C0(n110), .Y(X[0]) );
  OAI211X1 U40 ( .A0(reg_B[6]), .A1(n63), .B0(n73), .C0(n74), .Y(X[6]) );
  OR4X2 U41 ( .A(reg_ins[0]), .B(n116), .C(reg_ins[3]), .D(reg_ins[2]), .Y(n63) );
  INVX2 U42 ( .A(n62), .Y(n55) );
  NAND2X1 U43 ( .A(sum[5]), .B(n66), .Y(n80) );
  NAND2X1 U44 ( .A(sum[4]), .B(n66), .Y(n86) );
  NAND2X1 U45 ( .A(sum[3]), .B(n66), .Y(n92) );
  NAND2X1 U46 ( .A(sum[2]), .B(n66), .Y(n98) );
  NAND2X1 U47 ( .A(sum[7]), .B(n66), .Y(n65) );
  NAND2X1 U48 ( .A(sum[1]), .B(n55), .Y(n104) );
  NAND2X1 U49 ( .A(sum[0]), .B(n55), .Y(n110) );
  NAND2X1 U50 ( .A(sum[6]), .B(n66), .Y(n74) );
  OR3X2 U51 ( .A(reg_ins[3]), .B(reg_ins[2]), .C(reg_ins[1]), .Y(n62) );
  INVX2 U52 ( .A(n62), .Y(n66) );
  INVX2 U53 ( .A(n53), .Y(n56) );
  OR2X1 U54 ( .A(n56), .B(n117), .Y(n111) );
  OR2X1 U55 ( .A(n56), .B(n108), .Y(n105) );
  OR2X1 U56 ( .A(n56), .B(n72), .Y(n67) );
  OR2X1 U57 ( .A(n120), .B(n78), .Y(n75) );
  OR2X1 U58 ( .A(n120), .B(n102), .Y(n99) );
  OR2X1 U59 ( .A(n120), .B(n84), .Y(n81) );
  OR2X1 U60 ( .A(n120), .B(n90), .Y(n87) );
  OR2X1 U61 ( .A(n56), .B(n96), .Y(n93) );
  MX2X2 U62 ( .S0(reg_B[0]), .B(n118), .A(n56), .Y(n113) );
  INVX2 U63 ( .A(n53), .Y(n121) );
  BUFX2 U64 ( .A(reset), .Y(n57) );
  BUFX2 U65 ( .A(reset), .Y(n58) );
  BUFX2 U66 ( .A(reset), .Y(n59) );
  BUFX2 U67 ( .A(n58), .Y(n60) );
  BUFX2 U68 ( .A(n58), .Y(n61) );
  DFFRX1 reg_B_reg_1_ ( .D(inputB[1]), .CK(clk), .RN(n57), .Q(reg_B[1]), .QN(
        n108) );
  DFFRX1 reg_A_reg_3_ ( .D(inputA[3]), .CK(clk), .RN(n59), .Q(reg_A[3]) );
  DFFRX1 reg_A_reg_2_ ( .D(inputA[2]), .CK(clk), .RN(n58), .Q(reg_A[2]) );
  DFFRX1 reg_A_reg_1_ ( .D(inputA[1]), .CK(clk), .RN(n57), .Q(reg_A[1]) );
  DFFRX1 reg_A_reg_0_ ( .D(inputA[0]), .CK(clk), .RN(n57), .Q(reg_A[0]) );
  DFFRX1 reg_B_reg_7_ ( .D(inputB[7]), .CK(clk), .RN(n60), .Q(reg_B[7]), .QN(
        n72) );
  DFFRX1 reg_B_reg_0_ ( .D(inputB[0]), .CK(clk), .RN(n59), .Q(reg_B[0]), .QN(
        n117) );
  DFFRX1 reg_A_reg_5_ ( .D(inputA[5]), .CK(clk), .RN(n61), .Q(reg_A[5]) );
  DFFRX1 reg_A_reg_6_ ( .D(inputA[6]), .CK(clk), .RN(n61), .Q(reg_A[6]) );
  DFFRX1 reg_A_reg_7_ ( .D(inputA[7]), .CK(clk), .RN(n60), .Q(reg_A[7]) );
  DFFRX1 alu_out_reg_0_ ( .D(X[0]), .CK(clk), .RN(reset), .Q(alu_out[0]) );
  DFFRX1 alu_out_reg_1_ ( .D(X[1]), .CK(clk), .RN(n57), .Q(alu_out[1]) );
  DFFRX1 alu_out_reg_2_ ( .D(X[2]), .CK(clk), .RN(n58), .Q(alu_out[2]) );
  DFFRX1 alu_out_reg_3_ ( .D(X[3]), .CK(clk), .RN(n59), .Q(alu_out[3]) );
  DFFRX1 reg_A_reg_4_ ( .D(inputA[4]), .CK(clk), .RN(n60), .Q(reg_A[4]) );
  DFFRX1 alu_out_reg_4_ ( .D(X[4]), .CK(clk), .RN(n60), .Q(alu_out[4]) );
  DFFRX1 alu_out_reg_5_ ( .D(X[5]), .CK(clk), .RN(n61), .Q(alu_out[5]) );
  DFFRX1 alu_out_reg_6_ ( .D(X[6]), .CK(clk), .RN(n61), .Q(alu_out[6]) );
  DFFRX1 alu_out_reg_7_ ( .D(X[7]), .CK(clk), .RN(n60), .Q(alu_out[7]) );
  DFFRX1 reg_ins_reg_0_ ( .D(instruction[0]), .CK(clk), .RN(reset), .Q(
        reg_ins[0]), .QN(n115) );
  DFFRX1 reg_ins_reg_1_ ( .D(instruction[1]), .CK(clk), .RN(n57), .Q(
        reg_ins[1]), .QN(n116) );
  DFFRX1 reg_ins_reg_2_ ( .D(instruction[2]), .CK(clk), .RN(n58), .Q(
        reg_ins[2]), .QN(n114) );
  DFFRX1 reg_ins_reg_3_ ( .D(instruction[3]), .CK(clk), .RN(n59), .Q(
        reg_ins[3]) );
  DFFRX1 reg_B_reg_6_ ( .D(inputB[6]), .CK(clk), .RN(n61), .Q(reg_B[6]), .QN(
        n78) );
  DFFRX1 reg_B_reg_5_ ( .D(inputB[5]), .CK(clk), .RN(n61), .Q(reg_B[5]), .QN(
        n84) );
  DFFRX1 reg_B_reg_4_ ( .D(inputB[4]), .CK(clk), .RN(n60), .Q(reg_B[4]), .QN(
        n90) );
  DFFRX1 reg_B_reg_3_ ( .D(inputB[3]), .CK(clk), .RN(n59), .Q(reg_B[3]), .QN(
        n96) );
  DFFRX1 reg_B_reg_2_ ( .D(inputB[2]), .CK(clk), .RN(n58), .Q(reg_B[2]), .QN(
        n102) );
  OR2X1 U69 ( .A(reg_ins[0]), .B(n62), .Y(add_sub) );
  ALU_DW01_addsub_8_0 addsub ( .A(reg_A), .B(reg_B), .CI(1'b0), .ADD_SUB(
        add_sub), .SUM(sum) );
endmodule

