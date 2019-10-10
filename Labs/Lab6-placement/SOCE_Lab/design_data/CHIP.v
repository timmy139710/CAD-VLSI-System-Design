

module ST_MAG_RF2SH64x16_test_1 ( Tclk, BistMode, S0, S1, S2, S3, S4, test_se, 
        test_si, test_so );
  output [5:0] S0;
  input Tclk, BistMode, S1, S4, test_se, test_si;
  output S2, S3, test_so;
  wire   N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n150, n160, n170,
         n190, n240, n260, n28, n30, n32, n34, n250;
  BUFX2 ASSIGN1 ( .Y(test_so), .A(n13));

  NOR2BX1 U9 ( .AN(n170), .B(S1), .Y(n5) );
  AND2X2 U10 ( .A(S1), .B(n170), .Y(n6) );
  NAND2BX1 U11 ( .AN(S4), .B(BistMode), .Y(n2) );
  AND2X2 U12 ( .A(S4), .B(BistMode), .Y(n170) );
  OAI21XL U13 ( .A0(n2), .A1(n3), .B0(n4), .Y(n240) );
  AOI22X1 U14 ( .A0(N19), .A1(n5), .B0(N25), .B1(n6), .Y(n4) );
  OAI21XL U15 ( .A0(n2), .A1(n7), .B0(n8), .Y(n260) );
  AOI22X1 U16 ( .A0(N18), .A1(n5), .B0(N24), .B1(n6), .Y(n8) );
  OAI21XL U17 ( .A0(n2), .A1(n9), .B0(n10), .Y(n28) );
  AOI22X1 U18 ( .A0(N17), .A1(n5), .B0(N23), .B1(n6), .Y(n10) );
  OAI21XL U19 ( .A0(n2), .A1(n11), .B0(n12), .Y(n30) );
  AOI22X1 U20 ( .A0(N16), .A1(n5), .B0(N22), .B1(n6), .Y(n12) );
  OAI21XL U21 ( .A0(n2), .A1(n13), .B0(n14), .Y(n32) );
  AOI22X1 U22 ( .A0(N20), .A1(n5), .B0(N26), .B1(n6), .Y(n14) );
  OAI21XL U23 ( .A0(n2), .A1(n150), .B0(n160), .Y(n34) );
  AOI22X1 U24 ( .A0(N15), .A1(n5), .B0(N21), .B1(n6), .Y(n160) );
  NOR4X1 U25 ( .A(n190), .B(n150), .C(n11), .D(n13), .Y(S2) );
  NAND3X1 U26 ( .A(S0[3]), .B(S0[4]), .C(S0[2]), .Y(n190) );
  NOR4BX1 U27 ( .AN(n250), .B(S0[0]), .C(S0[2]), .D(S0[1]), .Y(S3) );
  AND3X2 U28 ( .A(n3), .B(n13), .C(n7), .Y(n250) );
  SDFFNSRXL S5_reg_5_ ( .D(n32), .SI(n3), .SE(test_se), .CKN(Tclk), .SN(1'b1), 
        .RN(1'b1), .Q(S0[5]), .QN(n13) );
  SDFFNSRXL S5_reg_4_ ( .D(n240), .SI(n7), .SE(test_se), .CKN(Tclk), .SN(1'b1), 
        .RN(1'b1), .Q(S0[4]), .QN(n3) );
  SDFFNSRXL S5_reg_3_ ( .D(n260), .SI(n9), .SE(test_se), .CKN(Tclk), .SN(1'b1), 
        .RN(1'b1), .Q(S0[3]), .QN(n7) );
  SDFFNSRXL S5_reg_2_ ( .D(n28), .SI(n11), .SE(test_se), .CKN(Tclk), .SN(1'b1), 
        .RN(1'b1), .Q(S0[2]), .QN(n9) );
  SDFFNSRXL S5_reg_1_ ( .D(n30), .SI(n150), .SE(test_se), .CKN(Tclk), .SN(1'b1), .RN(1'b1), .Q(S0[1]), .QN(n11) );
  SDFFNSRXL S5_reg_0_ ( .D(n34), .SI(test_si), .SE(test_se), .CKN(Tclk), .SN(
        1'b1), .RN(1'b1), .Q(S0[0]), .QN(n150) );
  ST_MAG_RF2SH64x16_DW01_inc_0 add_40 ( .A(S0), .SUM({N26, N25, N24, N23, N22, 
        N21}) );
  ST_MAG_RF2SH64x16_DW01_dec_0 sub_39 ( .A(S0), .SUM({N20, N19, N18, N17, N16, 
        N15}) );
endmodule


module bdeg_DW_mult_tc_0_test_1 ( bdeg1mult_g_CLK, \a[17] , \a[16] , \a[15] , 
        \a[14] , \a[13] , \a[12] , \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , 
        \a[6] , \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] , \product[28] , 
        \product[27] , \product[26] , \product[25] , \product[24] , 
        \product[23] , \product[22] , \product[21] , \product[20] , 
        \product[19] , \product[18] , \product[17] , \product[16] , 
        \product[15] , \product[14] , \product[13] , \product[12] , 
        \product[11] , \product[10] , \product[9] , test_se, test_si, test_so
 );
  input bdeg1mult_g_CLK, \a[17] , \a[16] , \a[15] , \a[14] , \a[13] , \a[12] ,
         \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , \a[6] , \a[5] , \a[4] ,
         \a[3] , \a[2] , \a[1] , \a[0] , test_se, test_si;
  output \product[28] , \product[27] , \product[26] , \product[25] ,
         \product[24] , \product[23] , \product[22] , \product[21] ,
         \product[20] , \product[19] , \product[18] , \product[17] ,
         \product[16] , \product[15] , \product[14] , \product[13] ,
         \product[12] , \product[11] , \product[10] , \product[9] , test_so;
  wire   n22, n26, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, net11288, n168, n170, n172, n174, n176,
         n178, n180, n182, n184, n186, n188, n190, n192, n194, n196, n198,
         n200, n202, n204, n206, n208, n210, n212, n214, n216, n218, n220,
         n222, n224, n226, n228, n230, n232, n233, n234, n235, n236, n237,
         n238, n239, n240;
  BUFX2 ASSIGN2 ( .Y(n59), .A(\a[12] ));
  BUFX2 ASSIGN3 ( .Y(n63), .A(\a[8] ));
  BUFX2 ASSIGN4 ( .Y(n68), .A(\a[10] ));
  BUFX2 ASSIGN5 ( .Y(n73), .A(\a[11] ));
  BUFX2 ASSIGN6 ( .Y(net11288), .A(\a[17] ));
  BUFX2 ASSIGN7 ( .Y(test_so), .A(n168));

  ADDHXL U22 ( .A(n62), .B(n180), .CO(n31), .S(n30) );
  ADDHXL U23 ( .A(n22), .B(n184), .CO(n33), .S(n32) );
  ADDFXL U24 ( .A(n168), .B(n172), .CI(n31), .CO(n35), .S(n34) );
  CMPR42X1 U25 ( .A(n67), .B(n172), .C(n176), .D(n188), .ICI(n33), .S(n36), 
        .ICO(n38), .CO(n37) );
  CMPR42X1 U26 ( .A(n72), .B(n176), .C(n180), .D(n192), .ICI(n38), .S(n39), 
        .ICO(n41), .CO(n40) );
  CMPR42X1 U27 ( .A(n58), .B(n180), .C(n184), .D(n196), .ICI(n41), .S(n42), 
        .ICO(n44), .CO(n43) );
  CMPR42X1 U28 ( .A(n26), .B(n184), .C(n188), .D(n200), .ICI(n44), .S(n45), 
        .ICO(n47), .CO(n46) );
  CMPR42X1 U29 ( .A(n80), .B(n188), .C(n192), .D(n204), .ICI(n47), .S(n48), 
        .ICO(n50), .CO(n49) );
  CMPR42X1 U30 ( .A(n83), .B(n192), .C(n196), .D(n208), .ICI(n50), .S(n51), 
        .ICO(n53), .CO(n52) );
  CMPR42X1 U32 ( .A(\a[16] ), .B(n196), .C(n212), .D(n62), .ICI(n53), .S(n55), 
        .ICO(n57), .CO(n56) );
  ADDFXL U34 ( .A(n58), .B(n204), .CI(n57), .CO(n61), .S(n60) );
  CMPR42X1 U36 ( .A(n204), .B(n216), .C(n208), .D(n220), .ICI(n62), .S(n64), 
        .ICO(n66), .CO(n65) );
  CMPR42X1 U38 ( .A(n224), .B(n200), .C(n212), .D(n67), .ICI(n66), .S(n69), 
        .ICO(n71), .CO(n70) );
  CMPR42X1 U40 ( .A(n228), .B(n208), .C(n216), .D(n72), .ICI(n71), .S(n74), 
        .ICO(n76), .CO(n75) );
  CMPR42X1 U41 ( .A(n29), .B(n212), .C(n216), .D(n220), .ICI(n76), .S(n77), 
        .ICO(n79), .CO(n78) );
  ADDFXL U43 ( .A(n80), .B(n220), .CI(n79), .CO(n82), .S(n81) );
  ADDFXL U54 ( .A(n34), .B(n32), .CI(n92), .CO(n93), .S(\product[9] ) );
  ADDFXL U55 ( .A(n36), .B(n35), .CI(n93), .CO(n94), .S(\product[10] ) );
  ADDFXL U56 ( .A(n39), .B(n37), .CI(n94), .CO(n95), .S(\product[11] ) );
  ADDFXL U57 ( .A(n42), .B(n40), .CI(n95), .CO(n96), .S(\product[12] ) );
  ADDFXL U58 ( .A(n45), .B(n43), .CI(n96), .CO(n97), .S(\product[13] ) );
  ADDFXL U59 ( .A(n48), .B(n46), .CI(n97), .CO(n98), .S(\product[14] ) );
  ADDFXL U60 ( .A(n51), .B(n49), .CI(n98), .CO(n99), .S(\product[15] ) );
  ADDFXL U61 ( .A(n55), .B(n52), .CI(n99), .CO(n100), .S(\product[16] ) );
  ADDFXL U62 ( .A(n56), .B(n60), .CI(n100), .CO(n101), .S(\product[17] ) );
  ADDFXL U63 ( .A(n64), .B(n61), .CI(n101), .CO(n102), .S(\product[18] ) );
  ADDFXL U64 ( .A(n69), .B(n65), .CI(n102), .CO(n103), .S(\product[19] ) );
  ADDFXL U65 ( .A(n74), .B(n70), .CI(n103), .CO(n104), .S(\product[20] ) );
  ADDFXL U66 ( .A(n75), .B(n77), .CI(n104), .CO(n105), .S(\product[21] ) );
  ADDFXL U67 ( .A(n78), .B(n81), .CI(n105), .CO(n106), .S(\product[22] ) );
  ADDFXL U68 ( .A(n82), .B(n83), .CI(n106), .CO(n107), .S(\product[23] ) );
  ADDFXL U69 ( .A(n224), .B(n29), .CI(n107), .CO(n108), .S(\product[24] ) );
  ADDFXL U70 ( .A(n228), .B(n29), .CI(n108), .CO(n109), .S(\product[25] ) );
  CLKINVX1 U111 ( .A(n109), .Y(\product[26] ) );
  OAI222XL U112 ( .A0(n232), .A1(n233), .B0(n232), .B1(n234), .C0(n234), .C1(
        n233), .Y(n92) );
  CLKINVX1 U113 ( .A(n30), .Y(n233) );
  AOI222XL U114 ( .A0(n235), .A1(n176), .B0(n236), .B1(n235), .C0(n236), .C1(
        n176), .Y(n232) );
  CLKINVX1 U115 ( .A(n196), .Y(n236) );
  OAI222XL U116 ( .A0(n237), .A1(n238), .B0(n192), .B1(n237), .C0(n192), .C1(
        n238), .Y(n235) );
  OA21XL U117 ( .A0(n188), .A1(n234), .B0(n239), .Y(n237) );
  NAND3BX1 U118 ( .AN(n176), .B(n238), .C(n240), .Y(n239) );
  NOR3X1 U119 ( .A(n180), .B(n188), .C(n184), .Y(n240) );
  CLKINVX1 U120 ( .A(n172), .Y(n238) );
  CLKINVX1 U122 ( .A(net11288), .Y(n29) );
  CLKINVX1 U123 ( .A(n228), .Y(n83) );
  CLKINVX1 U124 ( .A(n224), .Y(n80) );
  CLKINVX1 U125 ( .A(n220), .Y(n26) );
  CLKINVX1 U126 ( .A(n216), .Y(n58) );
  CLKINVX1 U127 ( .A(n212), .Y(n72) );
  CLKINVX1 U128 ( .A(n208), .Y(n67) );
  CLKINVX1 U129 ( .A(n204), .Y(n22) );
  CLKINVX1 U130 ( .A(n200), .Y(n62) );
  CLKBUFX2 U79 ( .A(\product[26] ), .Y(\product[28] ) );
  CLKBUFX3 U80 ( .A(\product[26] ), .Y(\product[27] ) );
  SDFFQXL CLK1_r_REG20_S10 ( .D(\a[6] ), .SI(n236), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n194) );
  SDFFQXL CLK1_r_REG18_S10 ( .D(\a[7] ), .SI(n62), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n198) );
  SDFFQXL CLK1_r_REG16_S10 ( .D(n63), .SI(n22), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n202) );
  SDFFQXL CLK1_r_REG14_S10 ( .D(\a[9] ), .SI(n67), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n206) );
  SDFFQXL CLK1_r_REG12_S10 ( .D(n68), .SI(n72), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n210) );
  SDFFQXL CLK1_r_REG10_S10 ( .D(n73), .SI(n58), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n214) );
  SDFFQXL CLK1_r_REG8_S10 ( .D(n59), .SI(n26), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n218) );
  SDFFQXL CLK1_r_REG6_S10 ( .D(\a[13] ), .SI(n80), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n222) );
  SDFFQXL CLK1_r_REG4_S10 ( .D(\a[14] ), .SI(n83), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n226) );
  SDFFQXL CLK1_r_REG2_S10 ( .D(\a[15] ), .SI(test_si), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n230) );
  SDFFQXL CLK1_r_REG32_S11 ( .D(\a[0] ), .SI(n238), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n170) );
  SDFFQXL CLK1_r_REG22_S10 ( .D(\a[5] ), .SI(n192), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n190) );
  SDFFQXL CLK1_r_REG28_S10 ( .D(\a[2] ), .SI(n180), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n178) );
  SDFFQXL CLK1_r_REG24_S10 ( .D(\a[4] ), .SI(n188), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n186) );
  SDFFQXL CLK1_r_REG26_S10 ( .D(\a[3] ), .SI(n184), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n182) );
  SDFFQXL CLK1_r_REG30_S11 ( .D(\a[1] ), .SI(n176), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n174) );
  SDFFQXL CLK1_r_REG31_S12 ( .D(n174), .SI(n174), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n172) );
  SDFFQXL CLK1_r_REG29_S11 ( .D(n178), .SI(n178), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n176) );
  SDFFQXL CLK1_r_REG27_S11 ( .D(n182), .SI(n182), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n180) );
  SDFFQXL CLK1_r_REG25_S11 ( .D(n186), .SI(n186), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n184) );
  SDFFQXL CLK1_r_REG23_S11 ( .D(n190), .SI(n190), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n188) );
  SDFFQXL CLK1_r_REG21_S11 ( .D(n194), .SI(n194), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n192) );
  SDFFQXL CLK1_r_REG19_S11 ( .D(n198), .SI(n198), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n196) );
  SDFFQXL CLK1_r_REG17_S11 ( .D(n202), .SI(n202), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n200) );
  SDFFQXL CLK1_r_REG15_S11 ( .D(n206), .SI(n206), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n204) );
  SDFFQXL CLK1_r_REG13_S11 ( .D(n210), .SI(n210), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n208) );
  SDFFQXL CLK1_r_REG11_S11 ( .D(n214), .SI(n214), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n212) );
  SDFFQXL CLK1_r_REG9_S11 ( .D(n218), .SI(n218), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n216) );
  SDFFQXL CLK1_r_REG7_S11 ( .D(n222), .SI(n222), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n220) );
  SDFFQXL CLK1_r_REG5_S11 ( .D(n226), .SI(n226), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n224) );
  SDFFQXL CLK1_r_REG3_S11 ( .D(n230), .SI(n230), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n228) );
  SDFFXL CLK1_r_REG33_S12 ( .D(n170), .SI(n170), .SE(test_se), .CK(
        bdeg1mult_g_CLK), .Q(n168), .QN(n234) );
endmodule


module bdeg_DW02_mult_3_stage_0_test_1 ( A, CLK, test_se, test_si, test_so, 
        \PRODUCT[28] , \PRODUCT[27] , \PRODUCT[26] , \PRODUCT[25] , 
        \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , \PRODUCT[21] , 
        \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , \PRODUCT[17] , 
        \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , \PRODUCT[13] , 
        \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] , \PRODUCT[9]  );
  input [16:0] A;
  input CLK, test_se, test_si;
  output test_so, \PRODUCT[28] , \PRODUCT[27] , \PRODUCT[26] , \PRODUCT[25] ,
         \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , \PRODUCT[21] ,
         \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , \PRODUCT[17] ,
         \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , \PRODUCT[13] ,
         \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] , \PRODUCT[9] ;
  wire   A_extended_17, n2, n4;
  BUFX2 ASSIGN8 ( .Y(A_extended_17), .A(A[16]));

  SDFFQXL CLK1_r_REG0_S1 ( .D(A_extended_17), .SI(test_si), .SE(test_se), .CK(
        CLK), .Q(n4) );
  SDFFQXL CLK1_r_REG1_S2 ( .D(n4), .SI(n4), .SE(test_se), .CK(CLK), .Q(n2) );
  bdeg_DW_mult_tc_0_test_1 mult_98 ( .bdeg1mult_g_CLK(CLK), .\a[17] (n2), 
        .\a[16] (n2), .\a[15] (A[15]), .\a[14] (A[14]), .\a[13] (A[13]), 
        .\a[12] (A[12]), .\a[11] (A[11]), .\a[10] (A[10]), .\a[9] (A[9]), 
        .\a[8] (A[8]), .\a[7] (A[7]), .\a[6] (A[6]), .\a[5] (A[5]), .\a[4] (
        A[4]), .\a[3] (A[3]), .\a[2] (A[2]), .\a[1] (A[1]), .\a[0] (A[0]), 
        .\product[28] (\PRODUCT[28] ), .\product[27] (\PRODUCT[27] ), 
        .\product[26] (\PRODUCT[26] ), .\product[25] (\PRODUCT[25] ), 
        .\product[24] (\PRODUCT[24] ), .\product[23] (\PRODUCT[23] ), 
        .\product[22] (\PRODUCT[22] ), .\product[21] (\PRODUCT[21] ), 
        .\product[20] (\PRODUCT[20] ), .\product[19] (\PRODUCT[19] ), 
        .\product[18] (\PRODUCT[18] ), .\product[17] (\PRODUCT[17] ), 
        .\product[16] (\PRODUCT[16] ), .\product[15] (\PRODUCT[15] ), 
        .\product[14] (\PRODUCT[14] ), .\product[13] (\PRODUCT[13] ), 
        .\product[12] (\PRODUCT[12] ), .\product[11] (\PRODUCT[11] ), 
        .\product[10] (\PRODUCT[10] ), .\product[9] (\PRODUCT[9] ), .test_se(
        test_se), .test_si(n2), .test_so(test_so) );
endmodule


module bdeg_DW_mult_tc_1_test_1 ( bdeg1mult_e_CLK, \a[17] , \a[16] , \a[15] , 
        \a[14] , \a[13] , \a[12] , \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , 
        \a[6] , \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] , \product[29] , 
        \product[28] , \product[27] , \product[26] , \product[25] , 
        \product[24] , \product[23] , \product[22] , \product[21] , 
        \product[20] , \product[19] , \product[18] , \product[17] , 
        \product[16] , \product[15] , \product[14] , \product[13] , 
        \product[12] , \product[11] , \product[10] , test_se, test_si, test_so
 );
  input bdeg1mult_e_CLK, \a[17] , \a[16] , \a[15] , \a[14] , \a[13] , \a[12] ,
         \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , \a[6] , \a[5] , \a[4] ,
         \a[3] , \a[2] , \a[1] , \a[0] , test_se, test_si;
  output \product[29] , \product[28] , \product[27] , \product[26] ,
         \product[25] , \product[24] , \product[23] , \product[22] ,
         \product[21] , \product[20] , \product[19] , \product[18] ,
         \product[17] , \product[16] , \product[15] , \product[14] ,
         \product[13] , \product[12] , \product[11] , \product[10] , test_so;
  wire   n11, n12, n13, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n32, n33, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n101, n102, n105, n106, n107, n108, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, net11472, n202, n204, n206, n208, n210, n212,
         n214, n216, n218, n220, n222, n224, n226, n228, n230, n232, n234,
         n236, n238, n240, n242, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254;
  BUFX2 ASSIGN9 ( .Y(n11), .A(\a[10] ));
  BUFX2 ASSIGN10 ( .Y(n12), .A(\a[11] ));
  BUFX2 ASSIGN11 (.Y(n13), .A(\a[12] )); 
  BUFX2 ASSIGN12 (.Y(n15), .A(\a[14] )); 
  BUFX2 ASSIGN13 (.Y(n16), .A(\a[15] )); 
  BUFX2 ASSIGN14 (.Y(net11472), .A(\a[17] )); 
  BUFX2 ASSIGN15 (.Y(test_so), .A(n242));

  ADDFXL U25 ( .A(n18), .B(n24), .CI(n210), .CO(n37), .S(n36) );
  ADDFXL U26 ( .A(n19), .B(n25), .CI(n212), .CO(n39), .S(n38) );
  ADDHXL U27 ( .A(n26), .B(n20), .CO(n41), .S(n40) );
  ADDFXL U28 ( .A(n202), .B(n214), .CI(n40), .CO(n43), .S(n42) );
  CMPR42X1 U29 ( .A(n27), .B(n21), .C(n204), .D(n216), .ICI(n41), .S(n44), 
        .ICO(n46), .CO(n45) );
  CMPR42X1 U30 ( .A(n28), .B(n22), .C(n206), .D(n218), .ICI(n46), .S(n47), 
        .ICO(n49), .CO(n48) );
  ADDHXL U31 ( .A(n29), .B(n23), .CO(n51), .S(n50) );
  CMPR42X1 U32 ( .A(n220), .B(n202), .C(n208), .D(n50), .ICI(n49), .S(n52), 
        .ICO(n54), .CO(n53) );
  ADDFXL U33 ( .A(n204), .B(n30), .CI(n51), .CO(n56), .S(n55) );
  CMPR42X1 U34 ( .A(n24), .B(n210), .C(n222), .D(n54), .ICI(n55), .S(n57), 
        .ICO(n59), .CO(n58) );
  ADDFXL U35 ( .A(n206), .B(n99), .CI(n212), .CO(n61), .S(n60) );
  CMPR42X1 U36 ( .A(n25), .B(n224), .C(n59), .D(n56), .ICI(n60), .S(n62), 
        .ICO(n64), .CO(n63) );
  ADDFXL U37 ( .A(n208), .B(n32), .CI(n214), .CO(n66), .S(n65) );
  CMPR42X1 U38 ( .A(n26), .B(n226), .C(n64), .D(n61), .ICI(n65), .S(n67), 
        .ICO(n69), .CO(n68) );
  ADDFXL U39 ( .A(n216), .B(n222), .CI(n210), .CO(n71), .S(n70) );
  CMPR42X1 U40 ( .A(\a[16] ), .B(n228), .C(n70), .D(n66), .ICI(n69), .S(n72), 
        .ICO(n74), .CO(n73) );
  ADDFXL U41 ( .A(n27), .B(n224), .CI(n212), .CO(n76), .S(n75) );
  CMPR42X1 U42 ( .A(n232), .B(n218), .C(n75), .D(n71), .ICI(n74), .S(n77), 
        .ICO(n79), .CO(n78) );
  ADDFXL U43 ( .A(n28), .B(n226), .CI(n214), .CO(n81), .S(n80) );
  CMPR42X1 U44 ( .A(n236), .B(n220), .C(n76), .D(n80), .ICI(n79), .S(n82), 
        .ICO(n84), .CO(n83) );
  ADDFXL U45 ( .A(n222), .B(n29), .CI(n216), .CO(n86), .S(n85) );
  CMPR42X1 U46 ( .A(n33), .B(n30), .C(n81), .D(n85), .ICI(n84), .S(n87), .ICO(
        n89), .CO(n88) );
  CMPR42X1 U47 ( .A(n232), .B(n224), .C(n218), .D(n86), .ICI(n89), .S(n90), 
        .ICO(n92), .CO(n91) );
  CMPR42X1 U48 ( .A(n236), .B(n99), .C(n220), .D(n226), .ICI(n92), .S(n93), 
        .ICO(n95), .CO(n94) );
  CMPR42X1 U49 ( .A(n32), .B(n222), .C(n228), .D(\a[16] ), .ICI(n95), .S(n96), 
        .ICO(n98), .CO(n97) );
  ADDFXL U52 ( .A(n99), .B(n224), .CI(n98), .CO(n102), .S(n101) );
  ADDFXL U55 ( .A(n232), .B(n226), .CI(n32), .CO(n106), .S(n105) );
  ADDFXL U56 ( .A(n236), .B(n33), .CI(n228), .CO(n108), .S(n107) );
  ADDFXL U71 ( .A(n44), .B(n43), .CI(n122), .CO(n123), .S(\product[10] ) );
  ADDFXL U72 ( .A(n47), .B(n45), .CI(n123), .CO(n124), .S(\product[11] ) );
  ADDFXL U73 ( .A(n52), .B(n48), .CI(n124), .CO(n125), .S(\product[12] ) );
  ADDFXL U74 ( .A(n57), .B(n53), .CI(n125), .CO(n126), .S(\product[13] ) );
  ADDFXL U75 ( .A(n62), .B(n58), .CI(n126), .CO(n127), .S(\product[14] ) );
  ADDFXL U76 ( .A(n67), .B(n63), .CI(n127), .CO(n128), .S(\product[15] ) );
  ADDFXL U77 ( .A(n72), .B(n68), .CI(n128), .CO(n129), .S(\product[16] ) );
  ADDFXL U78 ( .A(n77), .B(n73), .CI(n129), .CO(n130), .S(\product[17] ) );
  ADDFXL U79 ( .A(n82), .B(n78), .CI(n130), .CO(n131), .S(\product[18] ) );
  ADDFXL U80 ( .A(n87), .B(n83), .CI(n131), .CO(n132), .S(\product[19] ) );
  ADDFXL U81 ( .A(n90), .B(n88), .CI(n132), .CO(n133), .S(\product[20] ) );
  ADDFXL U82 ( .A(n91), .B(n93), .CI(n133), .CO(n134), .S(\product[21] ) );
  ADDFXL U83 ( .A(n96), .B(n94), .CI(n134), .CO(n135), .S(\product[22] ) );
  ADDFXL U84 ( .A(n97), .B(n101), .CI(n135), .CO(n136), .S(\product[23] ) );
  ADDFXL U85 ( .A(n105), .B(n102), .CI(n136), .CO(n137), .S(\product[24] ) );
  ADDFXL U86 ( .A(n106), .B(n107), .CI(n137), .CO(n138), .S(\product[25] ) );
  ADDFXL U87 ( .A(n108), .B(n99), .CI(n138), .CO(n139), .S(\product[26] ) );
  ADDFXL U88 ( .A(n240), .B(n230), .CI(n238), .CO(n140), .S(\product[27] ) );
  ADDFXL U89 ( .A(n234), .B(n242), .CI(n140), .CO(n141), .S(\product[28] ) );
  CLKINVX1 U116 ( .A(n141), .Y(\product[29] ) );
  CLKINVX1 U117 ( .A(net11472), .Y(n33) );
  CLKINVX1 U118 ( .A(n228), .Y(n30) );
  CLKINVX1 U119 ( .A(n226), .Y(n29) );
  CLKINVX1 U120 ( .A(n224), .Y(n28) );
  CLKINVX1 U121 ( .A(n222), .Y(n27) );
  CLKINVX1 U122 ( .A(n220), .Y(n26) );
  CLKINVX1 U123 ( .A(n218), .Y(n25) );
  CLKINVX1 U124 ( .A(n216), .Y(n24) );
  CLKINVX1 U125 ( .A(n214), .Y(n23) );
  CLKINVX1 U126 ( .A(n210), .Y(n21) );
  CLKINVX1 U127 ( .A(n244), .Y(n122) );
  AOI222XL U128 ( .A0(n245), .A1(n42), .B0(n245), .B1(n39), .C0(n39), .C1(n42), 
        .Y(n244) );
  OAI222XL U129 ( .A0(n246), .A1(n247), .B0(n246), .B1(n248), .C0(n248), .C1(
        n247), .Y(n245) );
  CLKINVX1 U130 ( .A(n37), .Y(n248) );
  CLKINVX1 U131 ( .A(n38), .Y(n247) );
  AOI222XL U132 ( .A0(n249), .A1(n36), .B0(n250), .B1(n249), .C0(n250), .C1(
        n36), .Y(n246) );
  NAND2X1 U133 ( .A(n202), .B(n214), .Y(n250) );
  OAI222XL U134 ( .A0(n251), .A1(n252), .B0(n20), .B1(n251), .C0(n20), .C1(
        n252), .Y(n249) );
  XOR2X1 U135 ( .A(n202), .B(n214), .Y(n252) );
  AOI222XL U136 ( .A0(n206), .A1(n253), .B0(n22), .B1(n253), .C0(n22), .C1(
        n206), .Y(n251) );
  CLKINVX1 U137 ( .A(n212), .Y(n22) );
  OAI222XL U138 ( .A0(n18), .A1(n254), .B0(n210), .B1(n254), .C0(n210), .C1(
        n18), .Y(n253) );
  AOI32X1 U139 ( .A0(n18), .A1(n20), .A2(n19), .B0(n20), .B1(n202), .Y(n254)
         );
  CLKINVX1 U140 ( .A(n206), .Y(n19) );
  CLKINVX1 U142 ( .A(n204), .Y(n18) );
  CLKINVX1 U143 ( .A(n232), .Y(n99) );
  CLKINVX1 U144 ( .A(n236), .Y(n32) );
  SDFFQXL CLK1_r_REG26_S10 ( .D(\a[6] ), .SI(n24), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n214) );
  SDFFQXL CLK1_r_REG25_S10 ( .D(\a[7] ), .SI(n25), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n216) );
  SDFFQXL CLK1_r_REG24_S10 ( .D(\a[8] ), .SI(n26), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n218) );
  SDFFQXL CLK1_r_REG23_S10 ( .D(\a[9] ), .SI(n27), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n220) );
  SDFFQXL CLK1_r_REG21_S10 ( .D(n11), .SI(n28), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n222) );
  SDFFQXL CLK1_r_REG19_S10 ( .D(n12), .SI(n29), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n224) );
  SDFFQXL CLK1_r_REG17_S10 ( .D(n13), .SI(n30), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n226) );
  SDFFQXL CLK1_r_REG15_S10 ( .D(\a[13] ), .SI(n230), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n228) );
  SDFFQXL CLK1_r_REG12_S10 ( .D(n15), .SI(n240), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n232) );
  SDFFQXL CLK1_r_REG2_S10 ( .D(n16), .SI(n238), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n236) );
  SDFFQXL CLK1_r_REG32_S11 ( .D(\a[0] ), .SI(n18), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n202) );
  SDFFQXL CLK1_r_REG27_S10 ( .D(\a[5] ), .SI(n23), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n212) );
  SDFFQXL CLK1_r_REG30_S10 ( .D(\a[2] ), .SI(n208), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n206) );
  SDFFQXL CLK1_r_REG28_S10 ( .D(\a[4] ), .SI(n22), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n210) );
  SDFFQXL CLK1_r_REG31_S11 ( .D(\a[1] ), .SI(n19), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n204) );
  SDFFQXL CLK1_r_REG13_S11 ( .D(n232), .SI(n99), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n230) );
  SDFFQXL CLK1_r_REG3_S11 ( .D(n236), .SI(n32), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n234) );
  SDFFQXL CLK1_r_REG38_S2 ( .D(n33), .SI(n202), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n242) );
  SDFFQXL CLK1_r_REG8_S11 ( .D(n32), .SI(n234), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n240) );
  SDFFQXL CLK1_r_REG1_S2 ( .D(n139), .SI(test_si), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n238) );
  SDFFXL CLK1_r_REG29_S10 ( .D(\a[3] ), .SI(n21), .SE(test_se), .CK(
        bdeg1mult_e_CLK), .Q(n208), .QN(n20) );
endmodule


module bdeg_DW02_mult_3_stage_1_test_1 ( A, CLK, test_se, test_si, test_so, 
        \PRODUCT[29] , \PRODUCT[28] , \PRODUCT[27] , \PRODUCT[26] , 
        \PRODUCT[25] , \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , 
        \PRODUCT[21] , \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , 
        \PRODUCT[17] , \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , 
        \PRODUCT[13] , \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10]  );
  input [16:0] A;
  input CLK, test_se, test_si;
  output test_so, \PRODUCT[29] , \PRODUCT[28] , \PRODUCT[27] , \PRODUCT[26] ,
         \PRODUCT[25] , \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] ,
         \PRODUCT[21] , \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] ,
         \PRODUCT[17] , \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] ,
         \PRODUCT[13] , \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] ;
  wire   n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, A_extended_17, n36;
  BUFX2 ASSIGN16 (.Y(A_extended_17), .A(A[16]));

  SDFFQXL CLK1_r_REG0_S1 ( .D(A_extended_17), .SI(test_si), .SE(test_se), .CK(
        CLK), .Q(n36) );
  SDFFQXL CLK1_r_REG22_S11 ( .D(n68), .SI(\PRODUCT[11] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[10] ) );
  SDFFQXL CLK1_r_REG20_S11 ( .D(n67), .SI(\PRODUCT[12] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[11] ) );
  SDFFQXL CLK1_r_REG18_S11 ( .D(n66), .SI(\PRODUCT[13] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[12] ) );
  SDFFQXL CLK1_r_REG16_S11 ( .D(n65), .SI(\PRODUCT[14] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[13] ) );
  SDFFQXL CLK1_r_REG14_S11 ( .D(n64), .SI(\PRODUCT[15] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[14] ) );
  SDFFQXL CLK1_r_REG11_S11 ( .D(n63), .SI(\PRODUCT[16] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[15] ) );
  SDFFQXL CLK1_r_REG10_S11 ( .D(n62), .SI(\PRODUCT[17] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[16] ) );
  SDFFQXL CLK1_r_REG9_S11 ( .D(n61), .SI(\PRODUCT[18] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[17] ) );
  SDFFQXL CLK1_r_REG7_S11 ( .D(n60), .SI(\PRODUCT[19] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[18] ) );
  SDFFQXL CLK1_r_REG6_S11 ( .D(n59), .SI(\PRODUCT[20] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[19] ) );
  SDFFQXL CLK1_r_REG5_S11 ( .D(n58), .SI(\PRODUCT[21] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[20] ) );
  SDFFQXL CLK1_r_REG4_S11 ( .D(n57), .SI(n36), .SE(test_se), .CK(CLK), .Q(
        \PRODUCT[21] ) );
  SDFFQXL CLK1_r_REG37_S2 ( .D(n56), .SI(\PRODUCT[23] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[22] ) );
  SDFFQXL CLK1_r_REG36_S2 ( .D(n55), .SI(\PRODUCT[24] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[23] ) );
  SDFFQXL CLK1_r_REG35_S2 ( .D(n54), .SI(\PRODUCT[25] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[24] ) );
  SDFFQXL CLK1_r_REG34_S2 ( .D(n53), .SI(\PRODUCT[26] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[25] ) );
  SDFFQXL CLK1_r_REG33_S2 ( .D(n52), .SI(\PRODUCT[10] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[26] ) );
  bdeg_DW_mult_tc_1_test_1 mult_98 ( .bdeg1mult_e_CLK(CLK), .\a[17] (n36), 
        .\a[16] (n36), .\a[15] (A[15]), .\a[14] (A[14]), .\a[13] (A[13]), 
        .\a[12] (A[12]), .\a[11] (A[11]), .\a[10] (A[10]), .\a[9] (A[9]), 
        .\a[8] (A[8]), .\a[7] (A[7]), .\a[6] (A[6]), .\a[5] (A[5]), .\a[4] (
        A[4]), .\a[3] (A[3]), .\a[2] (A[2]), .\a[1] (A[1]), .\a[0] (A[0]), 
        .\product[29] (\PRODUCT[29] ), .\product[28] (\PRODUCT[28] ), 
        .\product[27] (\PRODUCT[27] ), .\product[26] (n52), .\product[25] (n53), .\product[24] (n54), .\product[23] (n55), .\product[22] (n56), 
        .\product[21] (n57), .\product[20] (n58), .\product[19] (n59), 
        .\product[18] (n60), .\product[17] (n61), .\product[16] (n62), 
        .\product[15] (n63), .\product[14] (n64), .\product[13] (n65), 
        .\product[12] (n66), .\product[11] (n67), .\product[10] (n68), 
        .test_se(test_se), .test_si(\PRODUCT[22] ), .test_so(test_so) );
endmodule


module bdeg_DW_mult_tc_2_test_1 ( bdeg1mult_d_CLK, \a[17] , \a[16] , \a[15] , 
        \a[14] , \a[13] , \a[12] , \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , 
        \a[6] , \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] , \product[29] , 
        \product[28] , \product[27] , \product[26] , \product[25] , 
        \product[24] , \product[23] , \product[22] , \product[21] , 
        \product[20] , \product[19] , \product[18] , \product[17] , 
        \product[16] , \product[15] , \product[14] , \product[13] , 
        \product[12] , \product[11] , \product[10] , test_se, test_si, test_so
 );
  input bdeg1mult_d_CLK, \a[17] , \a[16] , \a[15] , \a[14] , \a[13] , \a[12] ,
         \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , \a[6] , \a[5] , \a[4] ,
         \a[3] , \a[2] , \a[1] , \a[0] , test_se, test_si;
  output \product[29] , \product[28] , \product[27] , \product[26] ,
         \product[25] , \product[24] , \product[23] , \product[22] ,
         \product[21] , \product[20] , \product[19] , \product[18] ,
         \product[17] , \product[16] , \product[15] , \product[14] ,
         \product[13] , \product[12] , \product[11] , \product[10] , test_so;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n123, n124,
         n125, n126, n127, n128, n129, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n158, n159, n160, n161, n162, n163,
         n165, n166, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         net11682, n267, n269, n271, n273, n275, n277, n279, n281, n283, n285,
         n287, n289, n291, n293, n295, n297, n299, n301, n303, n305, n307,
         n309, n311, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326;
  BUFX2 ASSIGN17 (.Y(n1), .A(\a[0] ));
  BUFX2 ASSIGN18 (.Y(n2), .A(\a[1] ));
  BUFX2 ASSIGN19 (.Y(n3), .A(\a[2] ));
  BUFX2 ASSIGN20 (.Y(n4), .A(\a[3] ));
  BUFX2 ASSIGN21 (.Y(n5), .A(\a[4] ));
  BUFX2 ASSIGN22 (.Y(n6), .A(\a[5] ));
  BUFX2 ASSIGN23 (.Y(n7), .A(\a[6] ));
  BUFX2 ASSIGN24 (.Y(n8), .A(\a[7] ));
  BUFX2 ASSIGN25 (.Y(n9), .A(\a[8] ));
  BUFX2 ASSIGN26 (.Y(n10), .A(\a[9] ));
  BUFX2 ASSIGN27 (.Y(n12), .A(\a[11] ));
  BUFX2 ASSIGN28 (.Y(n13), .A(\a[12] ));
  BUFX2 ASSIGN29 (.Y(n14), .A(\a[13] ));
  BUFX2 ASSIGN30 (.Y(n15), .A(\a[14] ));
  BUFX2 ASSIGN31 (.Y(n16), .A(\a[15] ));
  BUFX2 ASSIGN32 (.Y(n123), .A(\a[10] ));
  BUFX2 ASSIGN33 (.Y(net11682), .A(\a[17] ));
  BUFX2 ASSIGN34 (.Y(test_so), .A(n311));

  ADDHXL U34 ( .A(n309), .B(n18), .CO(n35), .S(n34) );
  ADDHXL U35 ( .A(n21), .B(n19), .CO(n37), .S(n36) );
  ADDFXL U36 ( .A(n309), .B(n22), .CI(n267), .CO(n39), .S(n38) );
  ADDFXL U37 ( .A(n21), .B(n23), .CI(n269), .CO(n41), .S(n40) );
  ADDHXL U38 ( .A(n24), .B(n22), .CO(n43), .S(n42) );
  ADDFXL U39 ( .A(n267), .B(n271), .CI(n42), .CO(n45), .S(n44) );
  CMPR42X1 U40 ( .A(n25), .B(n23), .C(n273), .D(n269), .ICI(n43), .S(n46), 
        .ICO(n48), .CO(n47) );
  ADDHXL U41 ( .A(n26), .B(n24), .CO(n50), .S(n49) );
  CMPR42X1 U42 ( .A(n275), .B(n267), .C(n271), .D(n49), .ICI(n48), .S(n51), 
        .ICO(n53), .CO(n52) );
  ADDFXL U43 ( .A(n277), .B(n27), .CI(n50), .CO(n55), .S(n54) );
  CMPR42X1 U44 ( .A(n25), .B(n269), .C(n273), .D(n53), .ICI(n54), .S(n56), 
        .ICO(n58), .CO(n57) );
  ADDHXL U45 ( .A(n28), .B(n26), .CO(n60), .S(n59) );
  ADDFXL U46 ( .A(n267), .B(n271), .CI(n59), .CO(n62), .S(n61) );
  CMPR42X1 U47 ( .A(n279), .B(n275), .C(n58), .D(n55), .ICI(n61), .S(n63), 
        .ICO(n65), .CO(n64) );
  ADDHXL U48 ( .A(n29), .B(n27), .CO(n67), .S(n66) );
  CMPR42X1 U49 ( .A(n281), .B(n267), .C(n60), .D(n66), .ICI(n65), .S(n68), 
        .ICO(n70), .CO(n69) );
  CMPR42X1 U50 ( .A(n277), .B(n269), .C(n273), .D(n62), .ICI(n68), .S(n71), 
        .ICO(n73), .CO(n72) );
  ADDFXL U51 ( .A(n269), .B(n30), .CI(n67), .CO(n75), .S(n74) );
  CMPR42X1 U52 ( .A(n28), .B(n283), .C(n271), .D(n279), .ICI(n70), .S(n76), 
        .ICO(n78), .CO(n77) );
  CMPR42X1 U53 ( .A(n275), .B(n73), .C(n74), .D(n76), .ICI(n69), .S(n79), 
        .ICO(n81), .CO(n80) );
  ADDFXL U54 ( .A(n271), .B(n31), .CI(n277), .CO(n83), .S(n82) );
  CMPR42X1 U55 ( .A(n29), .B(n285), .C(n281), .D(n273), .ICI(n78), .S(n84), 
        .ICO(n86), .CO(n85) );
  CMPR42X1 U56 ( .A(n75), .B(n82), .C(n77), .D(n84), .ICI(n81), .S(n87), .ICO(
        n89), .CO(n88) );
  ADDFXL U57 ( .A(n273), .B(n32), .CI(n279), .CO(n91), .S(n90) );
  CMPR42X1 U58 ( .A(n30), .B(n287), .C(n283), .D(n275), .ICI(n86), .S(n92), 
        .ICO(n94), .CO(n93) );
  CMPR42X1 U59 ( .A(n83), .B(n90), .C(n85), .D(n92), .ICI(n89), .S(n95), .ICO(
        n97), .CO(n96) );
  ADDFXL U60 ( .A(n277), .B(n295), .CI(\a[16] ), .CO(n99), .S(n98) );
  CMPR42X1 U61 ( .A(n281), .B(n289), .C(n285), .D(n275), .ICI(n94), .S(n100), 
        .ICO(n102), .CO(n101) );
  CMPR42X1 U62 ( .A(n98), .B(n91), .C(n93), .D(n100), .ICI(n97), .S(n103), 
        .ICO(n105), .CO(n104) );
  ADDFXL U63 ( .A(n31), .B(n299), .CI(n291), .CO(n107), .S(n106) );
  CMPR42X1 U64 ( .A(n279), .B(n287), .C(n283), .D(n277), .ICI(n102), .S(n108), 
        .ICO(n110), .CO(n109) );
  CMPR42X1 U65 ( .A(n106), .B(n99), .C(n101), .D(n108), .ICI(n105), .S(n111), 
        .ICO(n113), .CO(n112) );
  ADDFXL U66 ( .A(n279), .B(n32), .CI(\a[16] ), .CO(n115), .S(n114) );
  CMPR42X1 U67 ( .A(n285), .B(n293), .C(n289), .D(n281), .ICI(n110), .S(n116), 
        .ICO(n118), .CO(n117) );
  CMPR42X1 U68 ( .A(n107), .B(n114), .C(n109), .D(n116), .ICI(n113), .S(n119), 
        .ICO(n121), .CO(n120) );
  CMPR42X1 U71 ( .A(n283), .B(n295), .C(n291), .D(n27), .ICI(n118), .S(n124), 
        .ICO(n126), .CO(n125) );
  CMPR42X1 U72 ( .A(n281), .B(n115), .C(n117), .D(n124), .ICI(n121), .S(n127), 
        .ICO(n129), .CO(n128) );
  CMPR42X1 U75 ( .A(n289), .B(n287), .C(n299), .D(n25), .ICI(n126), .S(n132), 
        .ICO(n134), .CO(n133) );
  CMPR42X1 U76 ( .A(n293), .B(n285), .C(n125), .D(n132), .ICI(n129), .S(n135), 
        .ICO(n137), .CO(n136) );
  CMPR42X1 U77 ( .A(n33), .B(n283), .C(n285), .D(n295), .ICI(n134), .S(n138), 
        .ICO(n140), .CO(n139) );
  CMPR42X1 U78 ( .A(n291), .B(n287), .C(n138), .D(n133), .ICI(n137), .S(n141), 
        .ICO(n143), .CO(n142) );
  ADDFXL U81 ( .A(n289), .B(n287), .CI(n32), .CO(n147), .S(n146) );
  CMPR42X1 U82 ( .A(n293), .B(n140), .C(n146), .D(n139), .ICI(n143), .S(n148), 
        .ICO(n150), .CO(n149) );
  ADDFXL U83 ( .A(n299), .B(n33), .CI(n289), .CO(n152), .S(n151) );
  CMPR42X1 U84 ( .A(n295), .B(n291), .C(n151), .D(n147), .ICI(n150), .S(n153), 
        .ICO(n155), .CO(n154) );
  CMPR42X1 U87 ( .A(n293), .B(n291), .C(n32), .D(n152), .ICI(n155), .S(n158), 
        .ICO(n160), .CO(n159) );
  CMPR42X1 U88 ( .A(n33), .B(n299), .C(n293), .D(n295), .ICI(n160), .S(n161), 
        .ICO(n163), .CO(n162) );
  ADDFXL U90 ( .A(n32), .B(n295), .CI(n163), .CO(n166), .S(n165) );
  ADDFXL U101 ( .A(n56), .B(n52), .CI(n176), .CO(n177), .S(\product[10] ) );
  ADDFXL U102 ( .A(n63), .B(n57), .CI(n177), .CO(n178), .S(\product[11] ) );
  ADDFXL U103 ( .A(n71), .B(n64), .CI(n178), .CO(n179), .S(\product[12] ) );
  ADDFXL U104 ( .A(n79), .B(n72), .CI(n179), .CO(n180), .S(\product[13] ) );
  ADDFXL U105 ( .A(n87), .B(n80), .CI(n180), .CO(n181), .S(\product[14] ) );
  ADDFXL U106 ( .A(n95), .B(n88), .CI(n181), .CO(n182), .S(\product[15] ) );
  ADDFXL U107 ( .A(n103), .B(n96), .CI(n182), .CO(n183), .S(\product[16] ) );
  ADDFXL U108 ( .A(n111), .B(n104), .CI(n183), .CO(n184), .S(\product[17] ) );
  ADDFXL U109 ( .A(n119), .B(n112), .CI(n184), .CO(n185), .S(\product[18] ) );
  ADDFXL U110 ( .A(n127), .B(n120), .CI(n185), .CO(n186), .S(\product[19] ) );
  ADDFXL U111 ( .A(n135), .B(n128), .CI(n186), .CO(n187), .S(\product[20] ) );
  ADDFXL U112 ( .A(n141), .B(n136), .CI(n187), .CO(n188), .S(\product[21] ) );
  ADDFXL U113 ( .A(n148), .B(n142), .CI(n188), .CO(n189), .S(\product[22] ) );
  ADDFXL U114 ( .A(n153), .B(n149), .CI(n189), .CO(n190), .S(\product[23] ) );
  ADDFXL U115 ( .A(n154), .B(n158), .CI(n190), .CO(n191), .S(\product[24] ) );
  ADDFXL U116 ( .A(n159), .B(n161), .CI(n191), .CO(n192), .S(\product[25] ) );
  ADDFXL U117 ( .A(n305), .B(n301), .CI(n307), .CO(n193), .S(\product[26] ) );
  ADDFXL U118 ( .A(n303), .B(n311), .CI(n193), .CO(n194), .S(\product[27] ) );
  ADDFXL U119 ( .A(n297), .B(n311), .CI(n194), .CO(n195), .S(\product[28] ) );
  CLKINVX1 U148 ( .A(n195), .Y(\product[29] ) );
  CLKINVX1 U149 ( .A(net11682), .Y(n33) );
  CLKINVX1 U150 ( .A(n295), .Y(n31) );
  CLKINVX1 U151 ( .A(n293), .Y(n30) );
  CLKINVX1 U152 ( .A(n291), .Y(n29) );
  CLKINVX1 U153 ( .A(n289), .Y(n28) );
  CLKINVX1 U154 ( .A(n285), .Y(n26) );
  CLKINVX1 U155 ( .A(n281), .Y(n24) );
  CLKINVX1 U156 ( .A(n279), .Y(n23) );
  CLKINVX1 U157 ( .A(n277), .Y(n22) );
  CLKINVX1 U158 ( .A(n275), .Y(n21) );
  CLKINVX1 U159 ( .A(n4), .Y(n20) );
  CLKINVX1 U161 ( .A(n313), .Y(n176) );
  AOI222XL U162 ( .A0(n314), .A1(n51), .B0(n314), .B1(n47), .C0(n47), .C1(n51), 
        .Y(n313) );
  CLKINVX1 U163 ( .A(n315), .Y(n314) );
  AOI222XL U164 ( .A0(n316), .A1(n46), .B0(n316), .B1(n45), .C0(n45), .C1(n46), 
        .Y(n315) );
  CLKINVX1 U165 ( .A(n317), .Y(n316) );
  AOI222XL U166 ( .A0(n318), .A1(n44), .B0(n318), .B1(n41), .C0(n41), .C1(n44), 
        .Y(n317) );
  OAI222XL U167 ( .A0(n319), .A1(n320), .B0(n319), .B1(n321), .C0(n321), .C1(
        n320), .Y(n318) );
  CLKINVX1 U168 ( .A(n39), .Y(n321) );
  CLKINVX1 U169 ( .A(n40), .Y(n320) );
  OAI222XL U171 ( .A0(n323), .A1(n324), .B0(n323), .B1(n325), .C0(n325), .C1(
        n324), .Y(n322) );
  CLKINVX1 U172 ( .A(n35), .Y(n325) );
  CLKINVX1 U173 ( .A(n36), .Y(n324) );
  AOI222XL U174 ( .A0(n326), .A1(n34), .B0(n19), .B1(n326), .C0(n19), .C1(n34), 
        .Y(n323) );
  OAI22XL U175 ( .A0(n267), .A1(n19), .B0(n269), .B1(n267), .Y(n326) );
  CLKINVX1 U177 ( .A(n299), .Y(n32) );
  CLKINVX1 U178 ( .A(n283), .Y(n25) );
  CLKINVX1 U179 ( .A(n287), .Y(n27) );
  AOI222X1 U125 ( .A0(n322), .A1(n38), .B0(n322), .B1(n37), .C0(n37), .C1(n38), 
        .Y(n319) );
  SDFFQXL CLK1_r_REG31_S11 ( .D(n1), .SI(n18), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n267) );
  SDFFQXL CLK1_r_REG25_S10 ( .D(n6), .SI(n23), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n277) );
  SDFFXL CLK1_r_REG29_S10 ( .D(n3), .SI(n309), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n271), .QN(n19) );
  SDFFXL CLK1_r_REG30_S11 ( .D(n2), .SI(n271), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n269), .QN(n18) );
  SDFFQXL CLK1_r_REG24_S10 ( .D(n7), .SI(n24), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n279) );
  SDFFQXL CLK1_r_REG23_S10 ( .D(n8), .SI(n25), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n281) );
  SDFFQXL CLK1_r_REG22_S10 ( .D(n9), .SI(n26), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n283) );
  SDFFQXL CLK1_r_REG21_S10 ( .D(n10), .SI(n27), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n285) );
  SDFFQXL CLK1_r_REG19_S10 ( .D(n123), .SI(n28), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n287) );
  SDFFQXL CLK1_r_REG17_S10 ( .D(n12), .SI(n29), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n289) );
  SDFFQXL CLK1_r_REG15_S10 ( .D(n13), .SI(n30), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n291) );
  SDFFQXL CLK1_r_REG13_S10 ( .D(n14), .SI(n31), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n293) );
  SDFFQXL CLK1_r_REG11_S10 ( .D(n15), .SI(n305), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n295) );
  SDFFQXL CLK1_r_REG2_S10 ( .D(n16), .SI(n307), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n299) );
  SDFFQXL CLK1_r_REG26_S10 ( .D(n5), .SI(n22), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n275) );
  SDFFQXL CLK1_r_REG27_S10 ( .D(n4), .SI(n21), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n273) );
  SDFFQXL CLK1_r_REG3_S11 ( .D(n299), .SI(n32), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n297) );
  SDFFQXL CLK1_r_REG39_S2 ( .D(n33), .SI(n267), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n311) );
  SDFFQXL CLK1_r_REG4_S11 ( .D(n166), .SI(n297), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n303) );
  SDFFQXL CLK1_r_REG5_S11 ( .D(n165), .SI(n303), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n301) );
  SDFFQXL CLK1_r_REG6_S11 ( .D(n162), .SI(n301), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n305) );
  SDFFQXL CLK1_r_REG1_S2 ( .D(n192), .SI(test_si), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n307) );
  SDFFQXL CLK1_r_REG28_S10 ( .D(n20), .SI(n273), .SE(test_se), .CK(
        bdeg1mult_d_CLK), .Q(n309) );
endmodule


module bdeg_DW02_mult_3_stage_2_test_1 ( A, CLK, test_se, test_si, test_so, 
        \PRODUCT[29] , \PRODUCT[28] , \PRODUCT[27] , \PRODUCT[26] , 
        \PRODUCT[25] , \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , 
        \PRODUCT[21] , \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , 
        \PRODUCT[17] , \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , 
        \PRODUCT[13] , \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10]  );
  input [16:0] A;
  input CLK, test_se, test_si;
  output test_so, \PRODUCT[29] , \PRODUCT[28] , \PRODUCT[27] , \PRODUCT[26] ,
         \PRODUCT[25] , \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] ,
         \PRODUCT[21] , \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] ,
         \PRODUCT[17] , \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] ,
         \PRODUCT[13] , \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] ;
  wire   n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, A_extended_17, n34;
  BUFX2 ASSIGN35 (.Y(A_extended_17), .A(A[16]));

  SDFFQXL CLK1_r_REG0_S1 ( .D(A_extended_17), .SI(test_si), .SE(test_se), .CK(
        CLK), .Q(n34) );
  SDFFQXL CLK1_r_REG20_S11 ( .D(n65), .SI(\PRODUCT[11] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[10] ) );
  SDFFQXL CLK1_r_REG18_S11 ( .D(n64), .SI(\PRODUCT[12] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[11] ) );
  SDFFQXL CLK1_r_REG16_S11 ( .D(n63), .SI(\PRODUCT[13] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[12] ) );
  SDFFQXL CLK1_r_REG14_S11 ( .D(n62), .SI(\PRODUCT[14] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[13] ) );
  SDFFQXL CLK1_r_REG12_S11 ( .D(n61), .SI(\PRODUCT[15] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[14] ) );
  SDFFQXL CLK1_r_REG10_S11 ( .D(n60), .SI(\PRODUCT[16] ), .SE(test_se), .CK(
        CLK), .Q(\PRODUCT[15] ) );
  SDFFQXL CLK1_r_REG9_S11 ( .D(n59), .SI(\PRODUCT[17] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[16] ) );
  SDFFQXL CLK1_r_REG8_S11 ( .D(n58), .SI(\PRODUCT[18] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[17] ) );
  SDFFQXL CLK1_r_REG7_S11 ( .D(n57), .SI(n34), .SE(test_se), .CK(CLK), .Q(
        \PRODUCT[18] ) );
  SDFFQXL CLK1_r_REG38_S2 ( .D(n56), .SI(\PRODUCT[20] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[19] ) );
  SDFFQXL CLK1_r_REG37_S2 ( .D(n55), .SI(\PRODUCT[21] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[20] ) );
  SDFFQXL CLK1_r_REG36_S2 ( .D(n54), .SI(\PRODUCT[22] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[21] ) );
  SDFFQXL CLK1_r_REG35_S2 ( .D(n53), .SI(\PRODUCT[23] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[22] ) );
  SDFFQXL CLK1_r_REG34_S2 ( .D(n52), .SI(\PRODUCT[24] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[23] ) );
  SDFFQXL CLK1_r_REG33_S2 ( .D(n51), .SI(\PRODUCT[25] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[24] ) );
  SDFFQXL CLK1_r_REG32_S2 ( .D(n50), .SI(\PRODUCT[10] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[25] ) );
  bdeg_DW_mult_tc_2_test_1 mult_98 ( .bdeg1mult_d_CLK(CLK), .\a[17] (n34), 
        .\a[16] (n34), .\a[15] (A[15]), .\a[14] (A[14]), .\a[13] (A[13]), 
        .\a[12] (A[12]), .\a[11] (A[11]), .\a[10] (A[10]), .\a[9] (A[9]), 
        .\a[8] (A[8]), .\a[7] (A[7]), .\a[6] (A[6]), .\a[5] (A[5]), .\a[4] (
        A[4]), .\a[3] (A[3]), .\a[2] (A[2]), .\a[1] (A[1]), .\a[0] (A[0]), 
        .\product[29] (\PRODUCT[29] ), .\product[28] (\PRODUCT[28] ), 
        .\product[27] (\PRODUCT[27] ), .\product[26] (\PRODUCT[26] ), 
        .\product[25] (n50), .\product[24] (n51), .\product[23] (n52), 
        .\product[22] (n53), .\product[21] (n54), .\product[20] (n55), 
        .\product[19] (n56), .\product[18] (n57), .\product[17] (n58), 
        .\product[16] (n59), .\product[15] (n60), .\product[14] (n61), 
        .\product[13] (n62), .\product[12] (n63), .\product[11] (n64), 
        .\product[10] (n65), .test_se(test_se), .test_si(\PRODUCT[19] ), 
        .test_so(test_so) );
endmodule


module bdeg_DW_mult_tc_3_test_1 ( bdeg1mult_b_CLK, \a[17] , \a[16] , \a[15] , 
        \a[14] , \a[13] , \a[12] , \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , 
        \a[6] , \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] , \product[28] , 
        \product[27] , \product[26] , \product[25] , \product[24] , 
        \product[23] , \product[22] , \product[21] , \product[20] , 
        \product[19] , \product[18] , \product[17] , \product[16] , 
        \product[15] , \product[14] , \product[13] , \product[12] , 
        \product[11] , \product[10] , \product[9] , test_se, test_si, test_so
 );
  input bdeg1mult_b_CLK, \a[17] , \a[16] , \a[15] , \a[14] , \a[13] , \a[12] ,
         \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , \a[6] , \a[5] , \a[4] ,
         \a[3] , \a[2] , \a[1] , \a[0] , test_se, test_si;
  output \product[28] , \product[27] , \product[26] , \product[25] ,
         \product[24] , \product[23] , \product[22] , \product[21] ,
         \product[20] , \product[19] , \product[18] , \product[17] ,
         \product[16] , \product[15] , \product[14] , \product[13] ,
         \product[12] , \product[11] , \product[10] , \product[9] , test_so;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n25, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n72, n74,
         n75, n76, n77, n78, n79, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, net11894,
         n161, n163, n165, n167, n169, n171, n173, n175, n177, n179, n181,
         n183, n185, n187, n189, n191, n193, n194, n195, n196, n197, n198,
         n199, n200, n201;
  BUFX2 ASSIGN36 (.Y(n75), .A(\a[13] ));
  BUFX2 ASSIGN37 (.Y(n77), .A(\a[14] ));
  BUFX2 ASSIGN38 (.Y(n79), .A(\a[15] ));
  BUFX2 ASSIGN39 (.Y(net11894), .A(\a[17] ));
  BUFX2 ASSIGN40 (.Y(test_so), .A(n161));

  ADDFXL U23 ( .A(n12), .B(n10), .CI(n175), .CO(n29), .S(n28) );
  ADDFXL U24 ( .A(n13), .B(n11), .CI(n177), .CO(n31), .S(n30) );
  ADDFXL U25 ( .A(n14), .B(n12), .CI(n179), .CO(n33), .S(n32) );
  ADDFXL U26 ( .A(n15), .B(n13), .CI(n181), .CO(n35), .S(n34) );
  ADDFXL U27 ( .A(n16), .B(n14), .CI(n183), .CO(n37), .S(n36) );
  ADDHXL U28 ( .A(n15), .B(n17), .CO(n39), .S(n38) );
  ADDFXL U29 ( .A(n161), .B(n185), .CI(n38), .CO(n41), .S(n40) );
  CMPR42X1 U30 ( .A(n16), .B(n18), .C(n163), .D(n187), .ICI(n39), .S(n42), 
        .ICO(n44), .CO(n43) );
  CMPR42X1 U31 ( .A(n17), .B(n19), .C(n165), .D(n189), .ICI(n44), .S(n45), 
        .ICO(n47), .CO(n46) );
  CMPR42X1 U32 ( .A(n18), .B(n70), .C(n167), .D(n191), .ICI(n47), .S(n48), 
        .ICO(n50), .CO(n49) );
  CMPR42X1 U33 ( .A(\a[16] ), .B(n19), .C(n72), .D(n169), .ICI(n50), .S(n51), 
        .ICO(n53), .CO(n52) );
  CMPR42X1 U34 ( .A(n187), .B(n25), .C(n70), .D(n171), .ICI(n53), .S(n54), 
        .ICO(n56), .CO(n55) );
  CMPR42X1 U35 ( .A(n189), .B(n74), .C(n72), .D(n173), .ICI(n56), .S(n57), 
        .ICO(n59), .CO(n58) );
  CMPR42X1 U36 ( .A(n191), .B(n76), .C(n74), .D(n175), .ICI(n59), .S(n60), 
        .ICO(n62), .CO(n61) );
  CMPR42X1 U37 ( .A(n78), .B(n76), .C(n177), .D(\a[16] ), .ICI(n62), .S(n63), 
        .ICO(n65), .CO(n64) );
  ADDFXL U38 ( .A(n179), .B(n191), .CI(n65), .CO(n67), .S(n66) );
  ADDFXL U39 ( .A(n181), .B(n78), .CI(\a[16] ), .CO(n69), .S(n68) );
  ADDFXL U51 ( .A(n32), .B(n31), .CI(n84), .CO(n85), .S(\product[9] ) );
  ADDFXL U52 ( .A(n34), .B(n33), .CI(n85), .CO(n86), .S(\product[10] ) );
  ADDFXL U53 ( .A(n36), .B(n35), .CI(n86), .CO(n87), .S(\product[11] ) );
  ADDFXL U54 ( .A(n40), .B(n37), .CI(n87), .CO(n88), .S(\product[12] ) );
  ADDFXL U55 ( .A(n42), .B(n41), .CI(n88), .CO(n89), .S(\product[13] ) );
  ADDFXL U56 ( .A(n45), .B(n43), .CI(n89), .CO(n90), .S(\product[14] ) );
  ADDFXL U57 ( .A(n48), .B(n46), .CI(n90), .CO(n91), .S(\product[15] ) );
  ADDFXL U58 ( .A(n51), .B(n49), .CI(n91), .CO(n92), .S(\product[16] ) );
  ADDFXL U59 ( .A(n54), .B(n52), .CI(n92), .CO(n93), .S(\product[17] ) );
  ADDFXL U60 ( .A(n57), .B(n55), .CI(n93), .CO(n94), .S(\product[18] ) );
  ADDFXL U61 ( .A(n60), .B(n58), .CI(n94), .CO(n95), .S(\product[19] ) );
  ADDFXL U62 ( .A(n63), .B(n61), .CI(n95), .CO(n96), .S(\product[20] ) );
  ADDFXL U64 ( .A(n67), .B(n68), .CI(n97), .CO(n98), .S(\product[22] ) );
  ADDFXL U65 ( .A(n69), .B(n70), .CI(n98), .CO(n99), .S(\product[23] ) );
  ADDFXL U66 ( .A(n72), .B(n183), .CI(n99), .CO(n100), .S(\product[24] ) );
  ADDFXL U67 ( .A(n74), .B(n185), .CI(n100), .CO(n101), .S(\product[25] ) );
  ADDFXL U68 ( .A(n76), .B(n187), .CI(n101), .CO(n102), .S(\product[26] ) );
  ADDFXL U69 ( .A(n78), .B(n189), .CI(n102), .CO(n103), .S(\product[27] ) );
  XOR2X1 U92 ( .A(n78), .B(n193), .Y(\product[28] ) );
  XOR2X1 U93 ( .A(net11894), .B(n103), .Y(n193) );
  OAI222XL U94 ( .A0(n194), .A1(n195), .B0(n194), .B1(n196), .C0(n196), .C1(
        n195), .Y(n84) );
  CLKINVX1 U95 ( .A(n29), .Y(n196) );
  CLKINVX1 U96 ( .A(n30), .Y(n195) );
  NAND2X1 U98 ( .A(n161), .B(n165), .Y(n198) );
  OAI222XL U99 ( .A0(n199), .A1(n200), .B0(n15), .B1(n199), .C0(n15), .C1(n200), .Y(n197) );
  XOR2X1 U100 ( .A(n161), .B(n165), .Y(n200) );
  AOI222XL U101 ( .A0(n171), .A1(n201), .B0(n10), .B1(n201), .C0(n10), .C1(
        n171), .Y(n199) );
  NAND2X1 U102 ( .A(n161), .B(n13), .Y(n201) );
  CLKINVX1 U103 ( .A(net11894), .Y(n25) );
  CLKINVX1 U104 ( .A(n191), .Y(n78) );
  CLKINVX1 U105 ( .A(n189), .Y(n76) );
  CLKINVX1 U106 ( .A(n187), .Y(n74) );
  CLKINVX1 U107 ( .A(n185), .Y(n72) );
  CLKINVX1 U108 ( .A(n183), .Y(n70) );
  CLKINVX1 U109 ( .A(n181), .Y(n19) );
  CLKINVX1 U110 ( .A(n179), .Y(n18) );
  CLKINVX1 U111 ( .A(n177), .Y(n17) );
  CLKINVX1 U112 ( .A(n175), .Y(n16) );
  CLKINVX1 U113 ( .A(n173), .Y(n15) );
  CLKINVX1 U114 ( .A(n171), .Y(n14) );
  CLKINVX1 U116 ( .A(n167), .Y(n12) );
  CLKINVX1 U117 ( .A(n165), .Y(n11) );
  ADDFX2 U76 ( .A(n64), .B(n66), .CI(n96), .CO(n97), .S(\product[21] ) );
  AOI222X1 U77 ( .A0(n197), .A1(n28), .B0(n198), .B1(n197), .C0(n198), .C1(n28), .Y(n194) );
  SDFFQXL CLK1_r_REG31_S1 ( .D(\a[5] ), .SI(n15), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n171) );
  SDFFXL CLK1_r_REG32_S1 ( .D(\a[4] ), .SI(n14), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n169), .QN(n13) );
  SDFFXL CLK1_r_REG35_S1 ( .D(\a[1] ), .SI(n11), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n163), .QN(n10) );
  SDFFQXL CLK1_r_REG30_S1 ( .D(\a[6] ), .SI(n16), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n173) );
  SDFFQXL CLK1_r_REG29_S1 ( .D(\a[7] ), .SI(n17), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n175) );
  SDFFQXL CLK1_r_REG28_S1 ( .D(\a[8] ), .SI(n18), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n177) );
  SDFFQXL CLK1_r_REG26_S1 ( .D(\a[9] ), .SI(n19), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n179) );
  SDFFQXL CLK1_r_REG24_S1 ( .D(\a[10] ), .SI(n70), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n181) );
  SDFFQXL CLK1_r_REG22_S1 ( .D(\a[11] ), .SI(n72), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n183) );
  SDFFQXL CLK1_r_REG20_S1 ( .D(\a[12] ), .SI(n74), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n185) );
  SDFFQXL CLK1_r_REG18_S1 ( .D(n75), .SI(n76), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n187) );
  SDFFQXL CLK1_r_REG16_S1 ( .D(n77), .SI(n78), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n189) );
  SDFFQXL CLK1_r_REG14_S1 ( .D(n79), .SI(test_si), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n191) );
  SDFFQXL CLK1_r_REG36_S1 ( .D(\a[0] ), .SI(n163), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n161) );
  SDFFQXL CLK1_r_REG34_S1 ( .D(\a[2] ), .SI(n12), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n165) );
  SDFFQXL CLK1_r_REG33_S1 ( .D(\a[3] ), .SI(n169), .SE(test_se), .CK(
        bdeg1mult_b_CLK), .Q(n167) );
endmodule


module bdeg_DW02_mult_3_stage_3_test_1 ( A, CLK, test_se, test_si, test_so, 
        \PRODUCT[28] , \PRODUCT[27] , \PRODUCT[26] , \PRODUCT[25] , 
        \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , \PRODUCT[21] , 
        \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , \PRODUCT[17] , 
        \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , \PRODUCT[13] , 
        \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] , \PRODUCT[9]  );
  input [16:0] A;
  input CLK, test_se, test_si;
  output test_so, \PRODUCT[28] , \PRODUCT[27] , \PRODUCT[26] , \PRODUCT[25] ,
         \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , \PRODUCT[21] ,
         \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , \PRODUCT[17] ,
         \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , \PRODUCT[13] ,
         \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] , \PRODUCT[9] ;
  wire   n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, A_extended_17, n42;
  BUFX2 ASSIGN41 (.Y(A_extended_17), .A(A[16]));

  SDFFQXL CLK1_r_REG0_S1 ( .D(A_extended_17), .SI(test_si), .SE(test_se), .CK(
        CLK), .Q(n42) );
  SDFFQXL CLK1_r_REG27_S2 ( .D(n76), .SI(\PRODUCT[10] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[9] ) );
  SDFFQXL CLK1_r_REG25_S2 ( .D(n75), .SI(\PRODUCT[11] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[10] ) );
  SDFFQXL CLK1_r_REG23_S2 ( .D(n74), .SI(\PRODUCT[12] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[11] ) );
  SDFFQXL CLK1_r_REG21_S2 ( .D(n73), .SI(\PRODUCT[13] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[12] ) );
  SDFFQXL CLK1_r_REG19_S2 ( .D(n72), .SI(\PRODUCT[14] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[13] ) );
  SDFFQXL CLK1_r_REG17_S2 ( .D(n71), .SI(\PRODUCT[15] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[14] ) );
  SDFFQXL CLK1_r_REG15_S2 ( .D(n70), .SI(\PRODUCT[16] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[15] ) );
  SDFFQXL CLK1_r_REG13_S2 ( .D(n69), .SI(\PRODUCT[17] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[16] ) );
  SDFFQXL CLK1_r_REG12_S2 ( .D(n68), .SI(\PRODUCT[18] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[17] ) );
  SDFFQXL CLK1_r_REG11_S2 ( .D(n67), .SI(\PRODUCT[19] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[18] ) );
  SDFFQXL CLK1_r_REG10_S2 ( .D(n66), .SI(\PRODUCT[20] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[19] ) );
  SDFFQXL CLK1_r_REG9_S2 ( .D(n65), .SI(\PRODUCT[21] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[20] ) );
  SDFFQXL CLK1_r_REG8_S2 ( .D(n64), .SI(\PRODUCT[22] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[21] ) );
  SDFFQXL CLK1_r_REG7_S2 ( .D(n63), .SI(\PRODUCT[23] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[22] ) );
  SDFFQXL CLK1_r_REG6_S2 ( .D(n62), .SI(\PRODUCT[24] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[23] ) );
  SDFFQXL CLK1_r_REG5_S2 ( .D(n61), .SI(\PRODUCT[25] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[24] ) );
  SDFFQXL CLK1_r_REG4_S2 ( .D(n60), .SI(\PRODUCT[26] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[25] ) );
  SDFFQXL CLK1_r_REG3_S2 ( .D(n59), .SI(\PRODUCT[27] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[26] ) );
  SDFFQXL CLK1_r_REG2_S2 ( .D(n58), .SI(\PRODUCT[28] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[27] ) );
  SDFFQXL CLK1_r_REG1_S2 ( .D(n57), .SI(n42), .SE(test_se), .CK(CLK), .Q(
        \PRODUCT[28] ) );
  bdeg_DW_mult_tc_3_test_1 mult_98 ( .bdeg1mult_b_CLK(CLK), .\a[17] (n42), 
        .\a[16] (n42), .\a[15] (A[15]), .\a[14] (A[14]), .\a[13] (A[13]), 
        .\a[12] (A[12]), .\a[11] (A[11]), .\a[10] (A[10]), .\a[9] (A[9]), 
        .\a[8] (A[8]), .\a[7] (A[7]), .\a[6] (A[6]), .\a[5] (A[5]), .\a[4] (
        A[4]), .\a[3] (A[3]), .\a[2] (A[2]), .\a[1] (A[1]), .\a[0] (A[0]), 
        .\product[28] (n57), .\product[27] (n58), .\product[26] (n59), 
        .\product[25] (n60), .\product[24] (n61), .\product[23] (n62), 
        .\product[22] (n63), .\product[21] (n64), .\product[20] (n65), 
        .\product[19] (n66), .\product[18] (n67), .\product[17] (n68), 
        .\product[16] (n69), .\product[15] (n70), .\product[14] (n71), 
        .\product[13] (n72), .\product[12] (n73), .\product[11] (n74), 
        .\product[10] (n75), .\product[9] (n76), .test_se(test_se), .test_si(
        \PRODUCT[9] ), .test_so(test_so) );
endmodule


module add_pipe1_test_15 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_0_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_0_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module add_pipe1_test_14 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_1_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_1_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module ACC_test_7 ( CLK, ACCin, HALT, Count, accout, test_se, test_si, test_so
 );
  input [19:0] ACCin;
  input [1:0] Count;
  output [17:0] accout;
  input CLK, HALT, test_se, test_si;
  output test_so;
  wire   \Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , \Z1[15] , \Z1[14] , \Z1[13] ,
         \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , \Z1[8] , \Z1[7] , \Z1[6] ,
         \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , \Z1[0] , N3, N4, N5, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, \rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] ,
         \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] ,
         \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] ,
         \Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , \Z2[15] , \Z2[14] , \Z2[13] ,
         \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , \Z2[8] , \Z2[7] , \Z2[6] ,
         \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , \Z2[0] , N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N44, \node2[19] , \node2[18] , \node2[17] ,
         \node2[16] , \node2[15] , \node2[14] , \node2[13] , \node2[12] ,
         \node2[11] , \node2[10] , \node2[9] , \node2[8] , \node2[7] ,
         \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] ,
         \node2[1] , \node2[0] , n2, n1, n310, n43, n50, n60, n70, n80, n110,
         n120, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188;
  BUFX2 ASSIGN42 (.Y(test_so), .A(\rn[10] ));

  CLKINVX1 U2 ( .A(n130), .Y(n60) );
  CLKBUFX3 U3 ( .A(HALT), .Y(n130) );
  CLKINVX1 U4 ( .A(n120), .Y(n70) );
  CLKBUFX3 U5 ( .A(HALT), .Y(n120) );
  CLKINVX1 U6 ( .A(n110), .Y(n80) );
  CLKBUFX3 U7 ( .A(HALT), .Y(n110) );
  NOR2BX1 U8 ( .AN(\rn[19] ), .B(n43), .Y(N42) );
  NOR2BX1 U9 ( .AN(\rn[18] ), .B(n43), .Y(N41) );
  NOR2BX1 U10 ( .AN(\rn[17] ), .B(n43), .Y(N40) );
  NOR2BX1 U11 ( .AN(\rn[16] ), .B(n43), .Y(N39) );
  NOR2BX1 U12 ( .AN(\rn[15] ), .B(n43), .Y(N38) );
  CLKBUFX3 U13 ( .A(n2), .Y(n43) );
  CLKBUFX3 U14 ( .A(n2), .Y(n310) );
  NOR2BX1 U15 ( .AN(\rn[14] ), .B(n43), .Y(N37) );
  NOR2BX1 U16 ( .AN(\rn[13] ), .B(n43), .Y(N36) );
  NOR2BX1 U17 ( .AN(\rn[12] ), .B(n43), .Y(N35) );
  NOR2BX1 U18 ( .AN(\rn[11] ), .B(n310), .Y(N34) );
  CLKBUFX3 U19 ( .A(n2), .Y(n50) );
  CLKBUFX3 U20 ( .A(N44), .Y(n1) );
  NOR3BXL U21 ( .AN(Count[1]), .B(HALT), .C(Count[0]), .Y(N44) );
  OR2X1 U22 ( .A(Count[0]), .B(Count[1]), .Y(n2) );
  NOR2BX1 U23 ( .AN(\rn[10] ), .B(n310), .Y(N33) );
  NOR2BX1 U24 ( .AN(\rn[9] ), .B(n310), .Y(N32) );
  NOR2BX1 U25 ( .AN(\rn[8] ), .B(n310), .Y(N31) );
  NOR2BX1 U26 ( .AN(\rn[7] ), .B(n310), .Y(N30) );
  NOR2BX1 U27 ( .AN(\rn[6] ), .B(n310), .Y(N29) );
  NOR2BX1 U28 ( .AN(\rn[5] ), .B(n310), .Y(N28) );
  NOR2BX1 U29 ( .AN(\rn[4] ), .B(n310), .Y(N27) );
  NOR2BX1 U30 ( .AN(\rn[3] ), .B(n310), .Y(N26) );
  NOR2BX1 U31 ( .AN(\rn[2] ), .B(n310), .Y(N25) );
  NOR2BX1 U32 ( .AN(\rn[1] ), .B(n310), .Y(N24) );
  NOR2BX1 U33 ( .AN(\rn[0] ), .B(n310), .Y(N23) );
  AND2X2 U34 ( .A(ACCin[1]), .B(n43), .Y(N4) );
  AND2X2 U35 ( .A(ACCin[2]), .B(n43), .Y(N5) );
  AND2X2 U36 ( .A(ACCin[3]), .B(n43), .Y(N6) );
  AND2X2 U37 ( .A(ACCin[4]), .B(n43), .Y(N7) );
  AND2X2 U38 ( .A(ACCin[5]), .B(n50), .Y(N8) );
  AND2X2 U39 ( .A(ACCin[6]), .B(n50), .Y(N9) );
  AND2X2 U40 ( .A(ACCin[7]), .B(n43), .Y(N10) );
  AND2X2 U41 ( .A(ACCin[8]), .B(n50), .Y(N11) );
  AND2X2 U42 ( .A(ACCin[9]), .B(n50), .Y(N12) );
  AND2X2 U43 ( .A(ACCin[10]), .B(n50), .Y(N13) );
  AND2X2 U44 ( .A(ACCin[11]), .B(n50), .Y(N14) );
  AND2X2 U45 ( .A(ACCin[12]), .B(n50), .Y(N15) );
  AND2X2 U46 ( .A(ACCin[13]), .B(n50), .Y(N16) );
  AND2X2 U47 ( .A(ACCin[14]), .B(n50), .Y(N17) );
  AND2X2 U48 ( .A(ACCin[15]), .B(n50), .Y(N18) );
  AND2X2 U49 ( .A(ACCin[16]), .B(n50), .Y(N19) );
  AND2X2 U50 ( .A(ACCin[17]), .B(n50), .Y(N20) );
  AND2X2 U51 ( .A(ACCin[18]), .B(n50), .Y(N21) );
  AND2X2 U52 ( .A(ACCin[19]), .B(n50), .Y(N22) );
  AND2X2 U53 ( .A(ACCin[0]), .B(n43), .Y(N3) );
  SEDFFXL Z1_reg_19_ ( .D(N22), .SI(n170), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z1[19] ), .QN(n169) );
  SEDFFXL Z2_reg_16_ ( .D(N39), .SI(n153), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[16] ), .QN(n152) );
  SEDFFXL Z2_reg_15_ ( .D(N38), .SI(n154), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[15] ), .QN(n153) );
  SEDFFXL Z2_reg_14_ ( .D(N37), .SI(n155), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[14] ), .QN(n154) );
  SEDFFXL Z2_reg_13_ ( .D(N36), .SI(n156), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[13] ), .QN(n155) );
  SEDFFXL Z2_reg_12_ ( .D(N35), .SI(n157), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[12] ), .QN(n156) );
  SEDFFXL Z2_reg_11_ ( .D(N34), .SI(n158), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[11] ), .QN(n157) );
  SEDFFXL Z2_reg_10_ ( .D(N33), .SI(n159), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[10] ), .QN(n158) );
  SEDFFXL Z2_reg_9_ ( .D(N32), .SI(n160), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[9] ), .QN(n159) );
  SEDFFXL Z2_reg_8_ ( .D(N31), .SI(n161), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[8] ), .QN(n160) );
  SEDFFXL Z2_reg_7_ ( .D(N30), .SI(n162), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[7] ), .QN(n161) );
  SEDFFXL Z2_reg_6_ ( .D(N29), .SI(n163), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[6] ), .QN(n162) );
  SEDFFXL Z2_reg_5_ ( .D(N28), .SI(n164), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[5] ), .QN(n163) );
  SEDFFXL Z2_reg_4_ ( .D(N27), .SI(n165), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[4] ), .QN(n164) );
  SEDFFXL Z2_reg_3_ ( .D(N26), .SI(n166), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[3] ), .QN(n165) );
  SEDFFXL Z2_reg_2_ ( .D(N25), .SI(n167), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[2] ), .QN(n166) );
  SEDFFXL Z2_reg_1_ ( .D(N24), .SI(n168), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[1] ), .QN(n167) );
  SEDFFXL Z2_reg_0_ ( .D(N23), .SI(n169), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[0] ), .QN(n168) );
  SEDFFXL Z1_reg_18_ ( .D(N21), .SI(n171), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[18] ), .QN(n170) );
  SEDFFXL Z1_reg_17_ ( .D(N20), .SI(n172), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[17] ), .QN(n171) );
  SEDFFXL Z1_reg_16_ ( .D(N19), .SI(n173), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[16] ), .QN(n172) );
  SEDFFXL Z1_reg_15_ ( .D(N18), .SI(n174), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[15] ), .QN(n173) );
  SEDFFXL Z1_reg_14_ ( .D(N17), .SI(n175), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[14] ), .QN(n174) );
  SEDFFXL Z1_reg_13_ ( .D(N16), .SI(n176), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[13] ), .QN(n175) );
  SEDFFXL Z1_reg_12_ ( .D(N15), .SI(n177), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[12] ), .QN(n176) );
  SEDFFXL Z1_reg_11_ ( .D(N14), .SI(n178), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[11] ), .QN(n177) );
  SEDFFXL Z1_reg_10_ ( .D(N13), .SI(n179), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[10] ), .QN(n178) );
  SEDFFXL Z1_reg_9_ ( .D(N12), .SI(n180), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[9] ), .QN(n179) );
  SEDFFXL Z1_reg_8_ ( .D(N11), .SI(n181), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[8] ), .QN(n180) );
  SEDFFXL Z1_reg_7_ ( .D(N10), .SI(n182), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[7] ), .QN(n181) );
  SEDFFXL Z1_reg_6_ ( .D(N9), .SI(n183), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[6] ), .QN(n182) );
  SEDFFXL Z1_reg_5_ ( .D(N8), .SI(n184), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[5] ), .QN(n183) );
  SEDFFXL Z1_reg_4_ ( .D(N7), .SI(n185), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[4] ), .QN(n184) );
  SEDFFXL Z1_reg_3_ ( .D(N6), .SI(n186), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[3] ), .QN(n185) );
  SEDFFXL Z1_reg_2_ ( .D(N5), .SI(n187), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[2] ), .QN(n186) );
  SEDFFXL Z1_reg_1_ ( .D(N4), .SI(n188), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[1] ), .QN(n187) );
  SEDFFXL Z1_reg_0_ ( .D(N3), .SI(test_si), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z1[0] ), .QN(n188) );
  SEDFFXL accout_reg_14_ ( .D(\rn[16] ), .SI(n135), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[14]), .QN(n134) );
  SEDFFXL accout_reg_13_ ( .D(\rn[15] ), .SI(n136), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[13]), .QN(n135) );
  SEDFFXL accout_reg_12_ ( .D(\rn[14] ), .SI(n137), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[12]), .QN(n136) );
  SEDFFXL accout_reg_11_ ( .D(\rn[13] ), .SI(n138), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[11]), .QN(n137) );
  SEDFFXL accout_reg_10_ ( .D(\rn[12] ), .SI(n139), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[10]), .QN(n138) );
  SEDFFXL accout_reg_9_ ( .D(\rn[11] ), .SI(n140), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[9]), .QN(n139) );
  SEDFFXL accout_reg_8_ ( .D(\rn[10] ), .SI(n141), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[8]), .QN(n140) );
  SEDFFXL accout_reg_7_ ( .D(\rn[9] ), .SI(n142), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[7]), .QN(n141) );
  SEDFFXL accout_reg_6_ ( .D(\rn[8] ), .SI(n143), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[6]), .QN(n142) );
  SEDFFXL accout_reg_5_ ( .D(\rn[7] ), .SI(n144), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[5]), .QN(n143) );
  SEDFFXL accout_reg_4_ ( .D(\rn[6] ), .SI(n145), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[4]), .QN(n144) );
  SEDFFXL accout_reg_3_ ( .D(\rn[5] ), .SI(n146), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[3]), .QN(n145) );
  SEDFFXL accout_reg_2_ ( .D(\rn[4] ), .SI(n147), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[2]), .QN(n146) );
  SEDFFXL accout_reg_1_ ( .D(\rn[3] ), .SI(n148), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[1]), .QN(n147) );
  SEDFFXL accout_reg_0_ ( .D(\rn[2] ), .SI(n149), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[0]), .QN(n148) );
  SEDFFXL accout_reg_15_ ( .D(\rn[17] ), .SI(n134), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[15]), .QN(n133) );
  SEDFFXL Z2_reg_17_ ( .D(N40), .SI(n152), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[17] ), .QN(n151) );
  SEDFFXL accout_reg_16_ ( .D(\rn[18] ), .SI(n133), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[16]), .QN(n132) );
  SEDFFXL Z2_reg_18_ ( .D(N41), .SI(n151), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[18] ), .QN(n150) );
  SEDFFXL accout_reg_17_ ( .D(\rn[19] ), .SI(n132), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[17]), .QN(n131) );
  SEDFFXL Z2_reg_19_ ( .D(N42), .SI(n150), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[19] ), .QN(n149) );
  add_pipe1_test_14 adder1 ( .A({\Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , 
        \Z1[15] , \Z1[14] , \Z1[13] , \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , 
        \Z1[8] , \Z1[7] , \Z1[6] , \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , 
        \Z1[0] }), .B(ACCin), .CLK(CLK), .Sum({\node2[19] , \node2[18] , 
        \node2[17] , \node2[16] , \node2[15] , \node2[14] , \node2[13] , 
        \node2[12] , \node2[11] , \node2[10] , \node2[9] , \node2[8] , 
        \node2[7] , \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] , 
        \node2[1] , \node2[0] }), .test_se(test_se), .test_si(n131) );
  add_pipe1_test_15 adder2 ( .A({\Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , 
        \Z2[15] , \Z2[14] , \Z2[13] , \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , 
        \Z2[8] , \Z2[7] , \Z2[6] , \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , 
        \Z2[0] }), .B({\node2[19] , \node2[18] , \node2[17] , \node2[16] , 
        \node2[15] , \node2[14] , \node2[13] , \node2[12] , \node2[11] , 
        \node2[10] , \node2[9] , \node2[8] , \node2[7] , \node2[6] , 
        \node2[5] , \node2[4] , \node2[3] , \node2[2] , \node2[1] , \node2[0] }), .CLK(CLK), .Sum({\rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] , 
        \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] , 
        \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] }), 
        .test_se(test_se), .test_si(\node2[10] ) );
endmodule


module add_pipe1_test_13 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_2_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_2_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module add_pipe1_test_12 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_3_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_3_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module ACC_test_6 ( CLK, ACCin, HALT, Count, accout, test_se, test_si, test_so
 );
  input [19:0] ACCin;
  input [1:0] Count;
  output [17:0] accout;
  input CLK, HALT, test_se, test_si;
  output test_so;
  wire   \Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , \Z1[15] , \Z1[14] , \Z1[13] ,
         \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , \Z1[8] , \Z1[7] , \Z1[6] ,
         \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , \Z1[0] , N3, N4, N5, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, \rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] ,
         \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] ,
         \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] ,
         \Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , \Z2[15] , \Z2[14] , \Z2[13] ,
         \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , \Z2[8] , \Z2[7] , \Z2[6] ,
         \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , \Z2[0] , N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N44, \node2[19] , \node2[18] , \node2[17] ,
         \node2[16] , \node2[15] , \node2[14] , \node2[13] , \node2[12] ,
         \node2[11] , \node2[10] , \node2[9] , \node2[8] , \node2[7] ,
         \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] ,
         \node2[1] , \node2[0] , n2, n1, n310, n43, n50, n60, n70, n80, n110,
         n120, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188;
  BUFX2 ASSIGN43 (.Y(test_so), .A(\rn[10] ));

  CLKINVX1 U2 ( .A(n130), .Y(n60) );
  CLKBUFX3 U3 ( .A(HALT), .Y(n130) );
  CLKINVX1 U4 ( .A(n120), .Y(n70) );
  CLKBUFX3 U5 ( .A(HALT), .Y(n120) );
  CLKINVX1 U6 ( .A(n110), .Y(n80) );
  CLKBUFX3 U7 ( .A(HALT), .Y(n110) );
  NOR2BX1 U8 ( .AN(\rn[19] ), .B(n43), .Y(N42) );
  NOR2BX1 U9 ( .AN(\rn[18] ), .B(n43), .Y(N41) );
  NOR2BX1 U10 ( .AN(\rn[17] ), .B(n43), .Y(N40) );
  NOR2BX1 U11 ( .AN(\rn[16] ), .B(n43), .Y(N39) );
  NOR2BX1 U12 ( .AN(\rn[15] ), .B(n43), .Y(N38) );
  CLKBUFX3 U13 ( .A(n2), .Y(n43) );
  CLKBUFX3 U14 ( .A(n2), .Y(n310) );
  NOR2BX1 U15 ( .AN(\rn[14] ), .B(n43), .Y(N37) );
  NOR2BX1 U16 ( .AN(\rn[13] ), .B(n43), .Y(N36) );
  NOR2BX1 U17 ( .AN(\rn[12] ), .B(n43), .Y(N35) );
  NOR2BX1 U18 ( .AN(\rn[11] ), .B(n310), .Y(N34) );
  CLKBUFX3 U19 ( .A(n2), .Y(n50) );
  CLKBUFX3 U20 ( .A(N44), .Y(n1) );
  NOR3BXL U21 ( .AN(Count[1]), .B(HALT), .C(Count[0]), .Y(N44) );
  OR2X1 U22 ( .A(Count[0]), .B(Count[1]), .Y(n2) );
  NOR2BX1 U23 ( .AN(\rn[10] ), .B(n310), .Y(N33) );
  NOR2BX1 U24 ( .AN(\rn[9] ), .B(n310), .Y(N32) );
  NOR2BX1 U25 ( .AN(\rn[8] ), .B(n310), .Y(N31) );
  NOR2BX1 U26 ( .AN(\rn[7] ), .B(n310), .Y(N30) );
  NOR2BX1 U27 ( .AN(\rn[6] ), .B(n310), .Y(N29) );
  NOR2BX1 U28 ( .AN(\rn[5] ), .B(n310), .Y(N28) );
  NOR2BX1 U29 ( .AN(\rn[4] ), .B(n310), .Y(N27) );
  NOR2BX1 U30 ( .AN(\rn[3] ), .B(n310), .Y(N26) );
  NOR2BX1 U31 ( .AN(\rn[2] ), .B(n310), .Y(N25) );
  NOR2BX1 U32 ( .AN(\rn[1] ), .B(n310), .Y(N24) );
  NOR2BX1 U33 ( .AN(\rn[0] ), .B(n310), .Y(N23) );
  AND2X2 U34 ( .A(ACCin[1]), .B(n43), .Y(N4) );
  AND2X2 U35 ( .A(ACCin[2]), .B(n43), .Y(N5) );
  AND2X2 U36 ( .A(ACCin[3]), .B(n43), .Y(N6) );
  AND2X2 U37 ( .A(ACCin[4]), .B(n43), .Y(N7) );
  AND2X2 U38 ( .A(ACCin[5]), .B(n50), .Y(N8) );
  AND2X2 U39 ( .A(ACCin[6]), .B(n50), .Y(N9) );
  AND2X2 U40 ( .A(ACCin[7]), .B(n43), .Y(N10) );
  AND2X2 U41 ( .A(ACCin[8]), .B(n50), .Y(N11) );
  AND2X2 U42 ( .A(ACCin[9]), .B(n50), .Y(N12) );
  AND2X2 U43 ( .A(ACCin[10]), .B(n50), .Y(N13) );
  AND2X2 U44 ( .A(ACCin[11]), .B(n50), .Y(N14) );
  AND2X2 U45 ( .A(ACCin[12]), .B(n50), .Y(N15) );
  AND2X2 U46 ( .A(ACCin[13]), .B(n50), .Y(N16) );
  AND2X2 U47 ( .A(ACCin[14]), .B(n50), .Y(N17) );
  AND2X2 U48 ( .A(ACCin[15]), .B(n50), .Y(N18) );
  AND2X2 U49 ( .A(ACCin[16]), .B(n50), .Y(N19) );
  AND2X2 U50 ( .A(ACCin[17]), .B(n50), .Y(N20) );
  AND2X2 U51 ( .A(ACCin[18]), .B(n50), .Y(N21) );
  AND2X2 U52 ( .A(ACCin[19]), .B(n50), .Y(N22) );
  AND2X2 U53 ( .A(ACCin[0]), .B(n43), .Y(N3) );
  SEDFFXL Z1_reg_19_ ( .D(N22), .SI(n170), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z1[19] ), .QN(n169) );
  SEDFFXL Z2_reg_16_ ( .D(N39), .SI(n153), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[16] ), .QN(n152) );
  SEDFFXL Z2_reg_15_ ( .D(N38), .SI(n154), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[15] ), .QN(n153) );
  SEDFFXL Z2_reg_14_ ( .D(N37), .SI(n155), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[14] ), .QN(n154) );
  SEDFFXL Z2_reg_13_ ( .D(N36), .SI(n156), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[13] ), .QN(n155) );
  SEDFFXL Z2_reg_12_ ( .D(N35), .SI(n157), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[12] ), .QN(n156) );
  SEDFFXL Z2_reg_11_ ( .D(N34), .SI(n158), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[11] ), .QN(n157) );
  SEDFFXL Z2_reg_10_ ( .D(N33), .SI(n159), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[10] ), .QN(n158) );
  SEDFFXL Z2_reg_9_ ( .D(N32), .SI(n160), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[9] ), .QN(n159) );
  SEDFFXL Z2_reg_8_ ( .D(N31), .SI(n161), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[8] ), .QN(n160) );
  SEDFFXL Z2_reg_7_ ( .D(N30), .SI(n162), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[7] ), .QN(n161) );
  SEDFFXL Z2_reg_6_ ( .D(N29), .SI(n163), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[6] ), .QN(n162) );
  SEDFFXL Z2_reg_5_ ( .D(N28), .SI(n164), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[5] ), .QN(n163) );
  SEDFFXL Z2_reg_4_ ( .D(N27), .SI(n165), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[4] ), .QN(n164) );
  SEDFFXL Z2_reg_3_ ( .D(N26), .SI(n166), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[3] ), .QN(n165) );
  SEDFFXL Z2_reg_2_ ( .D(N25), .SI(n167), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[2] ), .QN(n166) );
  SEDFFXL Z2_reg_1_ ( .D(N24), .SI(n168), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[1] ), .QN(n167) );
  SEDFFXL Z2_reg_0_ ( .D(N23), .SI(n169), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[0] ), .QN(n168) );
  SEDFFXL Z1_reg_18_ ( .D(N21), .SI(n171), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[18] ), .QN(n170) );
  SEDFFXL Z1_reg_17_ ( .D(N20), .SI(n172), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[17] ), .QN(n171) );
  SEDFFXL Z1_reg_16_ ( .D(N19), .SI(n173), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[16] ), .QN(n172) );
  SEDFFXL Z1_reg_15_ ( .D(N18), .SI(n174), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[15] ), .QN(n173) );
  SEDFFXL Z1_reg_14_ ( .D(N17), .SI(n175), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[14] ), .QN(n174) );
  SEDFFXL Z1_reg_13_ ( .D(N16), .SI(n176), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[13] ), .QN(n175) );
  SEDFFXL Z1_reg_12_ ( .D(N15), .SI(n177), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[12] ), .QN(n176) );
  SEDFFXL Z1_reg_11_ ( .D(N14), .SI(n178), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[11] ), .QN(n177) );
  SEDFFXL Z1_reg_10_ ( .D(N13), .SI(n179), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[10] ), .QN(n178) );
  SEDFFXL Z1_reg_9_ ( .D(N12), .SI(n180), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[9] ), .QN(n179) );
  SEDFFXL Z1_reg_8_ ( .D(N11), .SI(n181), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[8] ), .QN(n180) );
  SEDFFXL Z1_reg_7_ ( .D(N10), .SI(n182), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[7] ), .QN(n181) );
  SEDFFXL Z1_reg_6_ ( .D(N9), .SI(n183), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[6] ), .QN(n182) );
  SEDFFXL Z1_reg_5_ ( .D(N8), .SI(n184), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[5] ), .QN(n183) );
  SEDFFXL Z1_reg_4_ ( .D(N7), .SI(n185), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[4] ), .QN(n184) );
  SEDFFXL Z1_reg_3_ ( .D(N6), .SI(n186), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[3] ), .QN(n185) );
  SEDFFXL Z1_reg_2_ ( .D(N5), .SI(n187), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[2] ), .QN(n186) );
  SEDFFXL Z1_reg_1_ ( .D(N4), .SI(n188), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[1] ), .QN(n187) );
  SEDFFXL Z1_reg_0_ ( .D(N3), .SI(test_si), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z1[0] ), .QN(n188) );
  SEDFFXL accout_reg_14_ ( .D(\rn[16] ), .SI(n135), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[14]), .QN(n134) );
  SEDFFXL accout_reg_13_ ( .D(\rn[15] ), .SI(n136), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[13]), .QN(n135) );
  SEDFFXL accout_reg_12_ ( .D(\rn[14] ), .SI(n137), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[12]), .QN(n136) );
  SEDFFXL accout_reg_11_ ( .D(\rn[13] ), .SI(n138), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[11]), .QN(n137) );
  SEDFFXL accout_reg_10_ ( .D(\rn[12] ), .SI(n139), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[10]), .QN(n138) );
  SEDFFXL accout_reg_9_ ( .D(\rn[11] ), .SI(n140), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[9]), .QN(n139) );
  SEDFFXL accout_reg_8_ ( .D(\rn[10] ), .SI(n141), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[8]), .QN(n140) );
  SEDFFXL accout_reg_7_ ( .D(\rn[9] ), .SI(n142), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[7]), .QN(n141) );
  SEDFFXL accout_reg_6_ ( .D(\rn[8] ), .SI(n143), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[6]), .QN(n142) );
  SEDFFXL accout_reg_5_ ( .D(\rn[7] ), .SI(n144), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[5]), .QN(n143) );
  SEDFFXL accout_reg_4_ ( .D(\rn[6] ), .SI(n145), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[4]), .QN(n144) );
  SEDFFXL accout_reg_3_ ( .D(\rn[5] ), .SI(n146), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[3]), .QN(n145) );
  SEDFFXL accout_reg_2_ ( .D(\rn[4] ), .SI(n147), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[2]), .QN(n146) );
  SEDFFXL accout_reg_1_ ( .D(\rn[3] ), .SI(n148), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[1]), .QN(n147) );
  SEDFFXL accout_reg_0_ ( .D(\rn[2] ), .SI(n149), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[0]), .QN(n148) );
  SEDFFXL accout_reg_15_ ( .D(\rn[17] ), .SI(n134), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[15]), .QN(n133) );
  SEDFFXL Z2_reg_17_ ( .D(N40), .SI(n152), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[17] ), .QN(n151) );
  SEDFFXL accout_reg_16_ ( .D(\rn[18] ), .SI(n133), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[16]), .QN(n132) );
  SEDFFXL Z2_reg_18_ ( .D(N41), .SI(n151), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[18] ), .QN(n150) );
  SEDFFXL accout_reg_17_ ( .D(\rn[19] ), .SI(n132), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[17]), .QN(n131) );
  SEDFFXL Z2_reg_19_ ( .D(N42), .SI(n150), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[19] ), .QN(n149) );
  add_pipe1_test_12 adder1 ( .A({\Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , 
        \Z1[15] , \Z1[14] , \Z1[13] , \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , 
        \Z1[8] , \Z1[7] , \Z1[6] , \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , 
        \Z1[0] }), .B(ACCin), .CLK(CLK), .Sum({\node2[19] , \node2[18] , 
        \node2[17] , \node2[16] , \node2[15] , \node2[14] , \node2[13] , 
        \node2[12] , \node2[11] , \node2[10] , \node2[9] , \node2[8] , 
        \node2[7] , \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] , 
        \node2[1] , \node2[0] }), .test_se(test_se), .test_si(n131) );
  add_pipe1_test_13 adder2 ( .A({\Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , 
        \Z2[15] , \Z2[14] , \Z2[13] , \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , 
        \Z2[8] , \Z2[7] , \Z2[6] , \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , 
        \Z2[0] }), .B({\node2[19] , \node2[18] , \node2[17] , \node2[16] , 
        \node2[15] , \node2[14] , \node2[13] , \node2[12] , \node2[11] , 
        \node2[10] , \node2[9] , \node2[8] , \node2[7] , \node2[6] , 
        \node2[5] , \node2[4] , \node2[3] , \node2[2] , \node2[1] , \node2[0] }), .CLK(CLK), .Sum({\rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] , 
        \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] , 
        \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] }), 
        .test_se(test_se), .test_si(\node2[10] ) );
endmodule


module add_pipe1_test_11 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_4_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_4_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module add_pipe1_test_10 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_5_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_5_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module ACC_test_5 ( CLK, ACCin, HALT, Count, accout, test_se, test_si, test_so
 );
  input [19:0] ACCin;
  input [1:0] Count;
  output [17:0] accout;
  input CLK, HALT, test_se, test_si;
  output test_so;
  wire   \Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , \Z1[15] , \Z1[14] , \Z1[13] ,
         \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , \Z1[8] , \Z1[7] , \Z1[6] ,
         \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , \Z1[0] , N3, N4, N5, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, \rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] ,
         \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] ,
         \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] ,
         \Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , \Z2[15] , \Z2[14] , \Z2[13] ,
         \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , \Z2[8] , \Z2[7] , \Z2[6] ,
         \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , \Z2[0] , N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N44, \node2[19] , \node2[18] , \node2[17] ,
         \node2[16] , \node2[15] , \node2[14] , \node2[13] , \node2[12] ,
         \node2[11] , \node2[10] , \node2[9] , \node2[8] , \node2[7] ,
         \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] ,
         \node2[1] , \node2[0] , n2, n1, n310, n43, n50, n60, n70, n80, n110,
         n120, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188;
  BUFX2 ASSIGN44 (.Y(test_so), .A(\rn[10] ));

  CLKINVX1 U2 ( .A(n130), .Y(n60) );
  CLKBUFX3 U3 ( .A(HALT), .Y(n130) );
  CLKINVX1 U4 ( .A(n120), .Y(n70) );
  CLKBUFX3 U5 ( .A(HALT), .Y(n120) );
  CLKINVX1 U6 ( .A(n110), .Y(n80) );
  CLKBUFX3 U7 ( .A(HALT), .Y(n110) );
  NOR2BX1 U8 ( .AN(\rn[19] ), .B(n43), .Y(N42) );
  NOR2BX1 U9 ( .AN(\rn[18] ), .B(n43), .Y(N41) );
  NOR2BX1 U10 ( .AN(\rn[17] ), .B(n43), .Y(N40) );
  NOR2BX1 U11 ( .AN(\rn[16] ), .B(n43), .Y(N39) );
  NOR2BX1 U12 ( .AN(\rn[15] ), .B(n43), .Y(N38) );
  CLKBUFX3 U13 ( .A(n2), .Y(n43) );
  CLKBUFX3 U14 ( .A(n2), .Y(n310) );
  NOR2BX1 U15 ( .AN(\rn[14] ), .B(n43), .Y(N37) );
  NOR2BX1 U16 ( .AN(\rn[13] ), .B(n43), .Y(N36) );
  NOR2BX1 U17 ( .AN(\rn[12] ), .B(n43), .Y(N35) );
  NOR2BX1 U18 ( .AN(\rn[11] ), .B(n310), .Y(N34) );
  CLKBUFX3 U19 ( .A(n2), .Y(n50) );
  CLKBUFX3 U20 ( .A(N44), .Y(n1) );
  NOR3BXL U21 ( .AN(Count[1]), .B(HALT), .C(Count[0]), .Y(N44) );
  OR2X1 U22 ( .A(Count[0]), .B(Count[1]), .Y(n2) );
  NOR2BX1 U23 ( .AN(\rn[10] ), .B(n310), .Y(N33) );
  NOR2BX1 U24 ( .AN(\rn[9] ), .B(n310), .Y(N32) );
  NOR2BX1 U25 ( .AN(\rn[8] ), .B(n310), .Y(N31) );
  NOR2BX1 U26 ( .AN(\rn[7] ), .B(n310), .Y(N30) );
  NOR2BX1 U27 ( .AN(\rn[6] ), .B(n310), .Y(N29) );
  NOR2BX1 U28 ( .AN(\rn[5] ), .B(n310), .Y(N28) );
  NOR2BX1 U29 ( .AN(\rn[4] ), .B(n310), .Y(N27) );
  NOR2BX1 U30 ( .AN(\rn[3] ), .B(n310), .Y(N26) );
  NOR2BX1 U31 ( .AN(\rn[2] ), .B(n310), .Y(N25) );
  NOR2BX1 U32 ( .AN(\rn[1] ), .B(n310), .Y(N24) );
  NOR2BX1 U33 ( .AN(\rn[0] ), .B(n310), .Y(N23) );
  AND2X2 U34 ( .A(ACCin[1]), .B(n43), .Y(N4) );
  AND2X2 U35 ( .A(ACCin[2]), .B(n43), .Y(N5) );
  AND2X2 U36 ( .A(ACCin[3]), .B(n43), .Y(N6) );
  AND2X2 U37 ( .A(ACCin[4]), .B(n43), .Y(N7) );
  AND2X2 U38 ( .A(ACCin[5]), .B(n50), .Y(N8) );
  AND2X2 U39 ( .A(ACCin[6]), .B(n50), .Y(N9) );
  AND2X2 U40 ( .A(ACCin[7]), .B(n43), .Y(N10) );
  AND2X2 U41 ( .A(ACCin[8]), .B(n50), .Y(N11) );
  AND2X2 U42 ( .A(ACCin[9]), .B(n50), .Y(N12) );
  AND2X2 U43 ( .A(ACCin[10]), .B(n50), .Y(N13) );
  AND2X2 U44 ( .A(ACCin[11]), .B(n50), .Y(N14) );
  AND2X2 U45 ( .A(ACCin[12]), .B(n50), .Y(N15) );
  AND2X2 U46 ( .A(ACCin[13]), .B(n50), .Y(N16) );
  AND2X2 U47 ( .A(ACCin[14]), .B(n50), .Y(N17) );
  AND2X2 U48 ( .A(ACCin[15]), .B(n50), .Y(N18) );
  AND2X2 U49 ( .A(ACCin[16]), .B(n50), .Y(N19) );
  AND2X2 U50 ( .A(ACCin[17]), .B(n50), .Y(N20) );
  AND2X2 U51 ( .A(ACCin[18]), .B(n50), .Y(N21) );
  AND2X2 U52 ( .A(ACCin[19]), .B(n50), .Y(N22) );
  AND2X2 U53 ( .A(ACCin[0]), .B(n43), .Y(N3) );
  SEDFFXL Z1_reg_19_ ( .D(N22), .SI(n170), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z1[19] ), .QN(n169) );
  SEDFFXL Z2_reg_16_ ( .D(N39), .SI(n153), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[16] ), .QN(n152) );
  SEDFFXL Z2_reg_15_ ( .D(N38), .SI(n154), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[15] ), .QN(n153) );
  SEDFFXL Z2_reg_14_ ( .D(N37), .SI(n155), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[14] ), .QN(n154) );
  SEDFFXL Z2_reg_13_ ( .D(N36), .SI(n156), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[13] ), .QN(n155) );
  SEDFFXL Z2_reg_12_ ( .D(N35), .SI(n157), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[12] ), .QN(n156) );
  SEDFFXL Z2_reg_11_ ( .D(N34), .SI(n158), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[11] ), .QN(n157) );
  SEDFFXL Z2_reg_10_ ( .D(N33), .SI(n159), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[10] ), .QN(n158) );
  SEDFFXL Z2_reg_9_ ( .D(N32), .SI(n160), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[9] ), .QN(n159) );
  SEDFFXL Z2_reg_8_ ( .D(N31), .SI(n161), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[8] ), .QN(n160) );
  SEDFFXL Z2_reg_7_ ( .D(N30), .SI(n162), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[7] ), .QN(n161) );
  SEDFFXL Z2_reg_6_ ( .D(N29), .SI(n163), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[6] ), .QN(n162) );
  SEDFFXL Z2_reg_5_ ( .D(N28), .SI(n164), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[5] ), .QN(n163) );
  SEDFFXL Z2_reg_4_ ( .D(N27), .SI(n165), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[4] ), .QN(n164) );
  SEDFFXL Z2_reg_3_ ( .D(N26), .SI(n166), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[3] ), .QN(n165) );
  SEDFFXL Z2_reg_2_ ( .D(N25), .SI(n167), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[2] ), .QN(n166) );
  SEDFFXL Z2_reg_1_ ( .D(N24), .SI(n168), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[1] ), .QN(n167) );
  SEDFFXL Z2_reg_0_ ( .D(N23), .SI(n169), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[0] ), .QN(n168) );
  SEDFFXL Z1_reg_18_ ( .D(N21), .SI(n171), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[18] ), .QN(n170) );
  SEDFFXL Z1_reg_17_ ( .D(N20), .SI(n172), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[17] ), .QN(n171) );
  SEDFFXL Z1_reg_16_ ( .D(N19), .SI(n173), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[16] ), .QN(n172) );
  SEDFFXL Z1_reg_15_ ( .D(N18), .SI(n174), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[15] ), .QN(n173) );
  SEDFFXL Z1_reg_14_ ( .D(N17), .SI(n175), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[14] ), .QN(n174) );
  SEDFFXL Z1_reg_13_ ( .D(N16), .SI(n176), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[13] ), .QN(n175) );
  SEDFFXL Z1_reg_12_ ( .D(N15), .SI(n177), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[12] ), .QN(n176) );
  SEDFFXL Z1_reg_11_ ( .D(N14), .SI(n178), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[11] ), .QN(n177) );
  SEDFFXL Z1_reg_10_ ( .D(N13), .SI(n179), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[10] ), .QN(n178) );
  SEDFFXL Z1_reg_9_ ( .D(N12), .SI(n180), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[9] ), .QN(n179) );
  SEDFFXL Z1_reg_8_ ( .D(N11), .SI(n181), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[8] ), .QN(n180) );
  SEDFFXL Z1_reg_7_ ( .D(N10), .SI(n182), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[7] ), .QN(n181) );
  SEDFFXL Z1_reg_6_ ( .D(N9), .SI(n183), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[6] ), .QN(n182) );
  SEDFFXL Z1_reg_5_ ( .D(N8), .SI(n184), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[5] ), .QN(n183) );
  SEDFFXL Z1_reg_4_ ( .D(N7), .SI(n185), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[4] ), .QN(n184) );
  SEDFFXL Z1_reg_3_ ( .D(N6), .SI(n186), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[3] ), .QN(n185) );
  SEDFFXL Z1_reg_2_ ( .D(N5), .SI(n187), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[2] ), .QN(n186) );
  SEDFFXL Z1_reg_1_ ( .D(N4), .SI(n188), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[1] ), .QN(n187) );
  SEDFFXL Z1_reg_0_ ( .D(N3), .SI(test_si), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z1[0] ), .QN(n188) );
  SEDFFXL accout_reg_14_ ( .D(\rn[16] ), .SI(n135), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[14]), .QN(n134) );
  SEDFFXL accout_reg_13_ ( .D(\rn[15] ), .SI(n136), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[13]), .QN(n135) );
  SEDFFXL accout_reg_12_ ( .D(\rn[14] ), .SI(n137), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[12]), .QN(n136) );
  SEDFFXL accout_reg_11_ ( .D(\rn[13] ), .SI(n138), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[11]), .QN(n137) );
  SEDFFXL accout_reg_10_ ( .D(\rn[12] ), .SI(n139), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[10]), .QN(n138) );
  SEDFFXL accout_reg_9_ ( .D(\rn[11] ), .SI(n140), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[9]), .QN(n139) );
  SEDFFXL accout_reg_8_ ( .D(\rn[10] ), .SI(n141), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[8]), .QN(n140) );
  SEDFFXL accout_reg_7_ ( .D(\rn[9] ), .SI(n142), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[7]), .QN(n141) );
  SEDFFXL accout_reg_6_ ( .D(\rn[8] ), .SI(n143), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[6]), .QN(n142) );
  SEDFFXL accout_reg_5_ ( .D(\rn[7] ), .SI(n144), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[5]), .QN(n143) );
  SEDFFXL accout_reg_4_ ( .D(\rn[6] ), .SI(n145), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[4]), .QN(n144) );
  SEDFFXL accout_reg_3_ ( .D(\rn[5] ), .SI(n146), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[3]), .QN(n145) );
  SEDFFXL accout_reg_2_ ( .D(\rn[4] ), .SI(n147), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[2]), .QN(n146) );
  SEDFFXL accout_reg_1_ ( .D(\rn[3] ), .SI(n148), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[1]), .QN(n147) );
  SEDFFXL accout_reg_0_ ( .D(\rn[2] ), .SI(n149), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[0]), .QN(n148) );
  SEDFFXL accout_reg_15_ ( .D(\rn[17] ), .SI(n134), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[15]), .QN(n133) );
  SEDFFXL Z2_reg_17_ ( .D(N40), .SI(n152), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[17] ), .QN(n151) );
  SEDFFXL accout_reg_16_ ( .D(\rn[18] ), .SI(n133), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[16]), .QN(n132) );
  SEDFFXL Z2_reg_18_ ( .D(N41), .SI(n151), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[18] ), .QN(n150) );
  SEDFFXL accout_reg_17_ ( .D(\rn[19] ), .SI(n132), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[17]), .QN(n131) );
  SEDFFXL Z2_reg_19_ ( .D(N42), .SI(n150), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[19] ), .QN(n149) );
  add_pipe1_test_10 adder1 ( .A({\Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , 
        \Z1[15] , \Z1[14] , \Z1[13] , \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , 
        \Z1[8] , \Z1[7] , \Z1[6] , \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , 
        \Z1[0] }), .B(ACCin), .CLK(CLK), .Sum({\node2[19] , \node2[18] , 
        \node2[17] , \node2[16] , \node2[15] , \node2[14] , \node2[13] , 
        \node2[12] , \node2[11] , \node2[10] , \node2[9] , \node2[8] , 
        \node2[7] , \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] , 
        \node2[1] , \node2[0] }), .test_se(test_se), .test_si(n131) );
  add_pipe1_test_11 adder2 ( .A({\Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , 
        \Z2[15] , \Z2[14] , \Z2[13] , \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , 
        \Z2[8] , \Z2[7] , \Z2[6] , \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , 
        \Z2[0] }), .B({\node2[19] , \node2[18] , \node2[17] , \node2[16] , 
        \node2[15] , \node2[14] , \node2[13] , \node2[12] , \node2[11] , 
        \node2[10] , \node2[9] , \node2[8] , \node2[7] , \node2[6] , 
        \node2[5] , \node2[4] , \node2[3] , \node2[2] , \node2[1] , \node2[0] }), .CLK(CLK), .Sum({\rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] , 
        \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] , 
        \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] }), 
        .test_se(test_se), .test_si(\node2[10] ) );
endmodule


module add_pipe1_test_9 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_6_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_6_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module add_pipe1_test_8 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_7_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_7_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module ACC_test_4 ( CLK, ACCin, HALT, Count, accout, test_se, test_si, test_so
 );
  input [19:0] ACCin;
  input [1:0] Count;
  output [17:0] accout;
  input CLK, HALT, test_se, test_si;
  output test_so;
  wire   \Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , \Z1[15] , \Z1[14] , \Z1[13] ,
         \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , \Z1[8] , \Z1[7] , \Z1[6] ,
         \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , \Z1[0] , N3, N4, N5, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, \rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] ,
         \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] ,
         \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] ,
         \Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , \Z2[15] , \Z2[14] , \Z2[13] ,
         \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , \Z2[8] , \Z2[7] , \Z2[6] ,
         \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , \Z2[0] , N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N44, \node2[19] , \node2[18] , \node2[17] ,
         \node2[16] , \node2[15] , \node2[14] , \node2[13] , \node2[12] ,
         \node2[11] , \node2[10] , \node2[9] , \node2[8] , \node2[7] ,
         \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] ,
         \node2[1] , \node2[0] , n2, n1, n310, n43, n50, n70, n80, n110, n120,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188;
  BUFX2 ASSIGN45 (.Y(test_so), .A(\rn[10] ));

  CLKINVX1 U2 ( .A(n120), .Y(n70) );
  CLKBUFX3 U3 ( .A(HALT), .Y(n120) );
  CLKINVX1 U4 ( .A(n110), .Y(n80) );
  CLKBUFX3 U5 ( .A(HALT), .Y(n110) );
  NOR2BX1 U6 ( .AN(\rn[19] ), .B(n43), .Y(N42) );
  NOR2BX1 U7 ( .AN(\rn[18] ), .B(n43), .Y(N41) );
  NOR2BX1 U8 ( .AN(\rn[17] ), .B(n43), .Y(N40) );
  NOR2BX1 U9 ( .AN(\rn[16] ), .B(n43), .Y(N39) );
  NOR2BX1 U10 ( .AN(\rn[15] ), .B(n43), .Y(N38) );
  CLKBUFX3 U11 ( .A(n2), .Y(n43) );
  CLKBUFX3 U12 ( .A(n2), .Y(n310) );
  NOR2BX1 U13 ( .AN(\rn[14] ), .B(n43), .Y(N37) );
  NOR2BX1 U14 ( .AN(\rn[13] ), .B(n43), .Y(N36) );
  NOR2BX1 U15 ( .AN(\rn[12] ), .B(n43), .Y(N35) );
  NOR2BX1 U16 ( .AN(\rn[11] ), .B(n310), .Y(N34) );
  CLKBUFX3 U17 ( .A(n2), .Y(n50) );
  CLKBUFX3 U18 ( .A(N44), .Y(n1) );
  NOR3BXL U19 ( .AN(Count[1]), .B(HALT), .C(Count[0]), .Y(N44) );
  OR2X1 U20 ( .A(Count[0]), .B(Count[1]), .Y(n2) );
  NOR2BX1 U21 ( .AN(\rn[10] ), .B(n310), .Y(N33) );
  NOR2BX1 U22 ( .AN(\rn[9] ), .B(n310), .Y(N32) );
  NOR2BX1 U23 ( .AN(\rn[8] ), .B(n310), .Y(N31) );
  NOR2BX1 U24 ( .AN(\rn[7] ), .B(n310), .Y(N30) );
  NOR2BX1 U25 ( .AN(\rn[6] ), .B(n310), .Y(N29) );
  NOR2BX1 U26 ( .AN(\rn[5] ), .B(n310), .Y(N28) );
  NOR2BX1 U27 ( .AN(\rn[4] ), .B(n310), .Y(N27) );
  NOR2BX1 U28 ( .AN(\rn[3] ), .B(n310), .Y(N26) );
  NOR2BX1 U29 ( .AN(\rn[2] ), .B(n310), .Y(N25) );
  NOR2BX1 U30 ( .AN(\rn[1] ), .B(n310), .Y(N24) );
  NOR2BX1 U31 ( .AN(\rn[0] ), .B(n310), .Y(N23) );
  AND2X2 U32 ( .A(ACCin[1]), .B(n43), .Y(N4) );
  AND2X2 U33 ( .A(ACCin[2]), .B(n43), .Y(N5) );
  AND2X2 U34 ( .A(ACCin[3]), .B(n43), .Y(N6) );
  AND2X2 U35 ( .A(ACCin[4]), .B(n43), .Y(N7) );
  AND2X2 U36 ( .A(ACCin[5]), .B(n50), .Y(N8) );
  AND2X2 U37 ( .A(ACCin[6]), .B(n50), .Y(N9) );
  AND2X2 U38 ( .A(ACCin[7]), .B(n43), .Y(N10) );
  AND2X2 U39 ( .A(ACCin[8]), .B(n50), .Y(N11) );
  AND2X2 U40 ( .A(ACCin[9]), .B(n50), .Y(N12) );
  AND2X2 U41 ( .A(ACCin[10]), .B(n50), .Y(N13) );
  AND2X2 U42 ( .A(ACCin[11]), .B(n50), .Y(N14) );
  AND2X2 U43 ( .A(ACCin[12]), .B(n50), .Y(N15) );
  AND2X2 U44 ( .A(ACCin[13]), .B(n50), .Y(N16) );
  AND2X2 U45 ( .A(ACCin[14]), .B(n50), .Y(N17) );
  AND2X2 U46 ( .A(ACCin[15]), .B(n50), .Y(N18) );
  AND2X2 U47 ( .A(ACCin[16]), .B(n50), .Y(N19) );
  AND2X2 U48 ( .A(ACCin[17]), .B(n50), .Y(N20) );
  AND2X2 U49 ( .A(ACCin[18]), .B(n50), .Y(N21) );
  AND2X2 U50 ( .A(ACCin[19]), .B(n50), .Y(N22) );
  AND2X2 U51 ( .A(ACCin[0]), .B(n43), .Y(N3) );
  SEDFFXL Z1_reg_19_ ( .D(N22), .SI(n170), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[19] ), .QN(n169) );
  SEDFFXL Z2_reg_16_ ( .D(N39), .SI(n153), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[16] ), .QN(n152) );
  SEDFFXL Z2_reg_15_ ( .D(N38), .SI(n154), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z2[15] ), .QN(n153) );
  SEDFFXL Z2_reg_14_ ( .D(N37), .SI(n155), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[14] ), .QN(n154) );
  SEDFFXL Z2_reg_13_ ( .D(N36), .SI(n156), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z2[13] ), .QN(n155) );
  SEDFFXL Z2_reg_12_ ( .D(N35), .SI(n157), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[12] ), .QN(n156) );
  SEDFFXL Z2_reg_11_ ( .D(N34), .SI(n158), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z2[11] ), .QN(n157) );
  SEDFFXL Z2_reg_10_ ( .D(N33), .SI(n159), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[10] ), .QN(n158) );
  SEDFFXL Z2_reg_9_ ( .D(N32), .SI(n160), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z2[9] ), .QN(n159) );
  SEDFFXL Z2_reg_8_ ( .D(N31), .SI(n161), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[8] ), .QN(n160) );
  SEDFFXL Z2_reg_7_ ( .D(N30), .SI(n162), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z2[7] ), .QN(n161) );
  SEDFFXL Z2_reg_6_ ( .D(N29), .SI(n163), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[6] ), .QN(n162) );
  SEDFFXL Z2_reg_5_ ( .D(N28), .SI(n164), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[5] ), .QN(n163) );
  SEDFFXL Z2_reg_4_ ( .D(N27), .SI(n165), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[4] ), .QN(n164) );
  SEDFFXL Z2_reg_3_ ( .D(N26), .SI(n166), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[3] ), .QN(n165) );
  SEDFFXL Z2_reg_2_ ( .D(N25), .SI(n167), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[2] ), .QN(n166) );
  SEDFFXL Z2_reg_1_ ( .D(N24), .SI(n168), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[1] ), .QN(n167) );
  SEDFFXL Z2_reg_0_ ( .D(N23), .SI(n169), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[0] ), .QN(n168) );
  SEDFFXL Z1_reg_18_ ( .D(N21), .SI(n171), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[18] ), .QN(n170) );
  SEDFFXL Z1_reg_17_ ( .D(N20), .SI(n172), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[17] ), .QN(n171) );
  SEDFFXL Z1_reg_16_ ( .D(N19), .SI(n173), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[16] ), .QN(n172) );
  SEDFFXL Z1_reg_15_ ( .D(N18), .SI(n174), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[15] ), .QN(n173) );
  SEDFFXL Z1_reg_14_ ( .D(N17), .SI(n175), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[14] ), .QN(n174) );
  SEDFFXL Z1_reg_13_ ( .D(N16), .SI(n176), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[13] ), .QN(n175) );
  SEDFFXL Z1_reg_12_ ( .D(N15), .SI(n177), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[12] ), .QN(n176) );
  SEDFFXL Z1_reg_11_ ( .D(N14), .SI(n178), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[11] ), .QN(n177) );
  SEDFFXL Z1_reg_10_ ( .D(N13), .SI(n179), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[10] ), .QN(n178) );
  SEDFFXL Z1_reg_9_ ( .D(N12), .SI(n180), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[9] ), .QN(n179) );
  SEDFFXL Z1_reg_8_ ( .D(N11), .SI(n181), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[8] ), .QN(n180) );
  SEDFFXL Z1_reg_7_ ( .D(N10), .SI(n182), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[7] ), .QN(n181) );
  SEDFFXL Z1_reg_6_ ( .D(N9), .SI(n183), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[6] ), .QN(n182) );
  SEDFFXL Z1_reg_5_ ( .D(N8), .SI(n184), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[5] ), .QN(n183) );
  SEDFFXL Z1_reg_4_ ( .D(N7), .SI(n185), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[4] ), .QN(n184) );
  SEDFFXL Z1_reg_3_ ( .D(N6), .SI(n186), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[3] ), .QN(n185) );
  SEDFFXL Z1_reg_2_ ( .D(N5), .SI(n187), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[2] ), .QN(n186) );
  SEDFFXL Z1_reg_1_ ( .D(N4), .SI(n188), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[1] ), .QN(n187) );
  SEDFFXL Z1_reg_0_ ( .D(N3), .SI(test_si), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z1[0] ), .QN(n188) );
  SEDFFXL accout_reg_14_ ( .D(\rn[16] ), .SI(n135), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[14]), .QN(n134) );
  SEDFFXL accout_reg_13_ ( .D(\rn[15] ), .SI(n136), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[13]), .QN(n135) );
  SEDFFXL accout_reg_12_ ( .D(\rn[14] ), .SI(n137), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[12]), .QN(n136) );
  SEDFFXL accout_reg_11_ ( .D(\rn[13] ), .SI(n138), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[11]), .QN(n137) );
  SEDFFXL accout_reg_10_ ( .D(\rn[12] ), .SI(n139), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[10]), .QN(n138) );
  SEDFFXL accout_reg_9_ ( .D(\rn[11] ), .SI(n140), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[9]), .QN(n139) );
  SEDFFXL accout_reg_8_ ( .D(\rn[10] ), .SI(n141), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[8]), .QN(n140) );
  SEDFFXL accout_reg_7_ ( .D(\rn[9] ), .SI(n142), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[7]), .QN(n141) );
  SEDFFXL accout_reg_6_ ( .D(\rn[8] ), .SI(n143), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[6]), .QN(n142) );
  SEDFFXL accout_reg_5_ ( .D(\rn[7] ), .SI(n144), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[5]), .QN(n143) );
  SEDFFXL accout_reg_4_ ( .D(\rn[6] ), .SI(n145), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[4]), .QN(n144) );
  SEDFFXL accout_reg_3_ ( .D(\rn[5] ), .SI(n146), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[3]), .QN(n145) );
  SEDFFXL accout_reg_2_ ( .D(\rn[4] ), .SI(n147), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[2]), .QN(n146) );
  SEDFFXL accout_reg_1_ ( .D(\rn[3] ), .SI(n148), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[1]), .QN(n147) );
  SEDFFXL accout_reg_0_ ( .D(\rn[2] ), .SI(n149), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[0]), .QN(n148) );
  SEDFFXL accout_reg_15_ ( .D(\rn[17] ), .SI(n134), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[15]), .QN(n133) );
  SEDFFXL Z2_reg_17_ ( .D(N40), .SI(n152), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[17] ), .QN(n151) );
  SEDFFXL accout_reg_16_ ( .D(\rn[18] ), .SI(n133), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[16]), .QN(n132) );
  SEDFFXL Z2_reg_18_ ( .D(N41), .SI(n151), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z2[18] ), .QN(n150) );
  SEDFFXL accout_reg_17_ ( .D(\rn[19] ), .SI(n132), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[17]), .QN(n131) );
  SEDFFXL Z2_reg_19_ ( .D(N42), .SI(n150), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[19] ), .QN(n149) );
  add_pipe1_test_8 adder1 ( .A({\Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , 
        \Z1[15] , \Z1[14] , \Z1[13] , \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , 
        \Z1[8] , \Z1[7] , \Z1[6] , \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , 
        \Z1[0] }), .B(ACCin), .CLK(CLK), .Sum({\node2[19] , \node2[18] , 
        \node2[17] , \node2[16] , \node2[15] , \node2[14] , \node2[13] , 
        \node2[12] , \node2[11] , \node2[10] , \node2[9] , \node2[8] , 
        \node2[7] , \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] , 
        \node2[1] , \node2[0] }), .test_se(test_se), .test_si(n131) );
  add_pipe1_test_9 adder2 ( .A({\Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , 
        \Z2[15] , \Z2[14] , \Z2[13] , \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , 
        \Z2[8] , \Z2[7] , \Z2[6] , \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , 
        \Z2[0] }), .B({\node2[19] , \node2[18] , \node2[17] , \node2[16] , 
        \node2[15] , \node2[14] , \node2[13] , \node2[12] , \node2[11] , 
        \node2[10] , \node2[9] , \node2[8] , \node2[7] , \node2[6] , 
        \node2[5] , \node2[4] , \node2[3] , \node2[2] , \node2[1] , \node2[0] }), .CLK(CLK), .Sum({\rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] , 
        \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] , 
        \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] }), 
        .test_se(test_se), .test_si(\node2[10] ) );
endmodule


module bdeg_test_1 ( RESET_, CLK, BDEGin, DoDCT, HALT, BDEGout0, BDEGout1, 
        BDEGout2, BDEGout3, test_se, test_si, test_so );
  input [16:0] BDEGin;
  output [17:0] BDEGout0;
  output [17:0] BDEGout1;
  output [17:0] BDEGout2;
  output [17:0] BDEGout3;
  input RESET_, CLK, DoDCT, HALT, test_se, test_si;
  output test_so;
  wire   \Count[1] , \Count[0] , N30, N31, N32, \multbout[28] , \multbout[27] ,
         \multbout[26] , \multbout[25] , \multbout[24] , \multbout[23] ,
         \multbout[22] , \multbout[21] , \multbout[20] , \multbout[19] ,
         \multbout[18] , \multbout[17] , \multbout[16] , \multbout[15] ,
         \multbout[14] , \multbout[13] , \multbout[12] , \multbout[11] ,
         \multbout[10] , \multbout[9] , \multdout[29] , \multdout[28] ,
         \multdout[27] , \multdout[26] , \multdout[25] , \multdout[24] ,
         \multdout[23] , \multdout[22] , \multdout[21] , \multdout[20] ,
         \multdout[19] , \multdout[18] , \multdout[17] , \multdout[16] ,
         \multdout[15] , \multdout[14] , \multdout[13] , \multdout[12] ,
         \multdout[11] , \multdout[10] , \multeout[29] , \multeout[28] ,
         \multeout[27] , \multeout[26] , \multeout[25] , \multeout[24] ,
         \multeout[23] , \multeout[22] , \multeout[21] , \multeout[20] ,
         \multeout[19] , \multeout[18] , \multeout[17] , \multeout[16] ,
         \multeout[15] , \multeout[14] , \multeout[13] , \multeout[12] ,
         \multeout[11] , \multeout[10] , \multgout[28] , \multgout[27] ,
         \multgout[26] , \multgout[25] , \multgout[24] , \multgout[23] ,
         \multgout[22] , \multgout[21] , \multgout[20] , \multgout[19] ,
         \multgout[18] , \multgout[17] , \multgout[16] , \multgout[15] ,
         \multgout[14] , \multgout[13] , \multgout[12] , \multgout[11] ,
         \multgout[10] , \multgout[9] , \toACC0t2[19] , \toACC0t2[18] ,
         \toACC0t2[17] , \toACC0t2[16] , \toACC0t2[15] , \toACC0t2[14] ,
         \toACC0t2[13] , \toACC0t2[12] , \toACC0t2[11] , \toACC0t2[10] ,
         \toACC0t2[9] , \toACC0t2[8] , \toACC0t2[7] , \toACC0t2[6] ,
         \toACC0t2[5] , \toACC0t2[4] , \toACC0t2[3] , \toACC0t2[2] ,
         \toACC0t2[1] , \toACC0t2[0] , \toACC1t2[19] , \toACC1t2[18] ,
         \toACC1t2[17] , \toACC1t2[16] , \toACC1t2[15] , \toACC1t2[14] ,
         \toACC1t2[13] , \toACC1t2[12] , \toACC1t2[11] , \toACC1t2[10] ,
         \toACC1t2[9] , \toACC1t2[8] , \toACC1t2[7] , \toACC1t2[6] ,
         \toACC1t2[5] , \toACC1t2[4] , \toACC1t2[3] , \toACC1t2[2] ,
         \toACC1t2[1] , \toACC1t2[0] , \toACC2t2[19] , \toACC2t2[18] ,
         \toACC2t2[17] , \toACC2t2[16] , \toACC2t2[15] , \toACC2t2[14] ,
         \toACC2t2[13] , \toACC2t2[12] , \toACC2t2[11] , \toACC2t2[10] ,
         \toACC2t2[9] , \toACC2t2[8] , \toACC2t2[7] , \toACC2t2[6] ,
         \toACC2t2[5] , \toACC2t2[4] , \toACC2t2[3] , \toACC2t2[2] ,
         \toACC2t2[1] , \toACC2t2[0] , \toACC3t2[19] , \toACC3t2[18] ,
         \toACC3t2[17] , \toACC3t2[16] , \toACC3t2[15] , \toACC3t2[14] ,
         \toACC3t2[13] , \toACC3t2[12] , \toACC3t2[11] , \toACC3t2[10] ,
         \toACC3t2[9] , \toACC3t2[8] , \toACC3t2[7] , \toACC3t2[6] ,
         \toACC3t2[5] , \toACC3t2[4] , \toACC3t2[3] , \toACC3t2[2] ,
         \toACC3t2[1] , \toACC3t2[0] , \toACC0[19] , \toACC0[18] ,
         \toACC0[17] , \toACC0[16] , \toACC0[15] , \toACC0[14] , \toACC0[13] ,
         \toACC0[12] , \toACC0[11] , \toACC0[10] , \toACC0[9] , \toACC0[8] ,
         \toACC0[7] , \toACC0[6] , \toACC0[5] , \toACC0[4] , \toACC0[3] ,
         \toACC0[2] , \toACC0[1] , \toACC0[0] , \toACC1[19] , \toACC1[18] ,
         \toACC1[17] , \toACC1[16] , \toACC1[15] , \toACC1[14] , \toACC1[13] ,
         \toACC1[12] , \toACC1[11] , \toACC1[10] , \toACC1[9] , \toACC1[8] ,
         \toACC1[7] , \toACC1[6] , \toACC1[5] , \toACC1[4] , \toACC1[3] ,
         \toACC1[2] , \toACC1[1] , \toACC1[0] , \toACC2[19] , \toACC2[18] ,
         \toACC2[17] , \toACC2[16] , \toACC2[15] , \toACC2[14] , \toACC2[13] ,
         \toACC2[12] , \toACC2[11] , \toACC2[10] , \toACC2[9] , \toACC2[8] ,
         \toACC2[7] , \toACC2[6] , \toACC2[5] , \toACC2[4] , \toACC2[3] ,
         \toACC2[2] , \toACC2[1] , \toACC2[0] , \toACC3[19] , \toACC3[18] ,
         \toACC3[17] , \toACC3[16] , \toACC3[15] , \toACC3[14] , \toACC3[13] ,
         \toACC3[12] , \toACC3[11] , \toACC3[10] , \toACC3[9] , \toACC3[8] ,
         \toACC3[7] , \toACC3[6] , \toACC3[5] , \toACC3[4] , \toACC3[3] ,
         \toACC3[2] , \toACC3[1] , \toACC3[0] , n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n300, n310, n320, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n118, n119, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n1, n235, n236, n237, n238, n240,
         n242, n243, n244, n246, n247, n248, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n363, n364,
         n365, n366, n367, n368, n369, n370;
  BUFX2 ASSIGN46 (.Y(test_so), .A(\toACC3[19] ));

  INVXL U3 ( .A(\multgout[26] ), .Y(n123) );
  CLKINVX1 U4 ( .A(n275), .Y(n274) );
  NAND2X1 U5 ( .A(n232), .B(n233), .Y(n9) );
  AOI2BB2X1 U6 ( .B0(\Count[1] ), .B1(DoDCT), .A0N(DoDCT), .A1N(\Count[0] ), 
        .Y(n232) );
  CLKBUFX3 U7 ( .A(n261), .Y(n266) );
  CLKBUFX3 U8 ( .A(n260), .Y(n262) );
  CLKBUFX3 U9 ( .A(n260), .Y(n263) );
  CLKBUFX3 U10 ( .A(n260), .Y(n264) );
  CLKBUFX3 U11 ( .A(n261), .Y(n265) );
  CLKINVX1 U12 ( .A(n238), .Y(n233) );
  CLKBUFX3 U13 ( .A(n261), .Y(n267) );
  CLKINVX1 U14 ( .A(\multgout[21] ), .Y(n138) );
  CLKINVX1 U15 ( .A(\multgout[22] ), .Y(n135) );
  CLKINVX1 U16 ( .A(\multgout[23] ), .Y(n132) );
  CLKINVX1 U17 ( .A(\multgout[19] ), .Y(n144) );
  CLKINVX1 U18 ( .A(\multgout[20] ), .Y(n141) );
  CLKINVX1 U19 ( .A(\multgout[18] ), .Y(n90) );
  CLKINVX1 U20 ( .A(\multgout[16] ), .Y(n96) );
  CLKINVX1 U21 ( .A(\multgout[17] ), .Y(n93) );
  CLKINVX1 U22 ( .A(\multgout[13] ), .Y(n105) );
  CLKINVX1 U23 ( .A(\multgout[14] ), .Y(n102) );
  CLKINVX1 U24 ( .A(\multgout[15] ), .Y(n99) );
  CLKINVX1 U25 ( .A(\multgout[10] ), .Y(n114) );
  CLKINVX1 U26 ( .A(\multgout[11] ), .Y(n111) );
  CLKINVX1 U27 ( .A(\multgout[12] ), .Y(n108) );
  CLKINVX1 U28 ( .A(\multdout[29] ), .Y(n46) );
  CLKINVX1 U29 ( .A(n236), .Y(n240) );
  CLKINVX1 U30 ( .A(n236), .Y(n242) );
  CLKINVX1 U31 ( .A(n235), .Y(n238) );
  CLKBUFX3 U32 ( .A(n5), .Y(n268) );
  CLKBUFX3 U33 ( .A(n9), .Y(n255) );
  CLKBUFX3 U34 ( .A(n9), .Y(n256) );
  CLKBUFX3 U35 ( .A(n9), .Y(n257) );
  CLKBUFX3 U36 ( .A(n9), .Y(n258) );
  CLKBUFX3 U37 ( .A(n5), .Y(n269) );
  CLKBUFX3 U38 ( .A(n4), .Y(n272) );
  CLKBUFX3 U39 ( .A(n4), .Y(n271) );
  CLKBUFX3 U40 ( .A(n9), .Y(n259) );
  CLKINVX1 U41 ( .A(\multeout[29] ), .Y(n180) );
  CLKBUFX3 U42 ( .A(n4), .Y(n273) );
  CLKBUFX3 U43 ( .A(n5), .Y(n270) );
  CLKBUFX3 U44 ( .A(n7), .Y(n260) );
  CLKBUFX3 U45 ( .A(n7), .Y(n261) );
  CLKINVX1 U46 ( .A(n235), .Y(n237) );
  CLKINVX1 U47 ( .A(n243), .Y(n246) );
  CLKINVX1 U48 ( .A(n243), .Y(n247) );
  CLKINVX1 U49 ( .A(n244), .Y(n248) );
  XNOR2X1 U50 ( .A(n247), .B(n51), .Y(\toACC3t2[17] ) );
  AOI221XL U51 ( .A0(\multgout[26] ), .A1(n273), .B0(\multeout[27] ), .B1(n270), .C0(n52), .Y(n51) );
  OAI22XL U52 ( .A0(n262), .A1(n53), .B0(n255), .B1(n54), .Y(n52) );
  XNOR2X1 U53 ( .A(n237), .B(n47), .Y(\toACC3t2[18] ) );
  AOI221XL U54 ( .A0(\multgout[27] ), .A1(n273), .B0(\multeout[28] ), .B1(n270), .C0(n48), .Y(n47) );
  OAI22XL U55 ( .A0(n262), .A1(n49), .B0(n255), .B1(n50), .Y(n48) );
  XNOR2X1 U56 ( .A(n237), .B(n43), .Y(\toACC3t2[19] ) );
  AOI221XL U57 ( .A0(\multgout[28] ), .A1(n273), .B0(\multeout[29] ), .B1(n270), .C0(n44), .Y(n43) );
  OAI22XL U58 ( .A0(n262), .A1(n45), .B0(n255), .B1(n46), .Y(n44) );
  XNOR2X1 U59 ( .A(n252), .B(n187), .Y(\toACC1t2[16] ) );
  AOI221XL U60 ( .A0(\multdout[26] ), .A1(n272), .B0(\multgout[25] ), .B1(n269), .C0(n188), .Y(n187) );
  OAI22XL U61 ( .A0(n266), .A1(n189), .B0(n258), .B1(n57), .Y(n188) );
  XNOR2X1 U62 ( .A(n151), .B(n184), .Y(\toACC1t2[17] ) );
  AOI221XL U63 ( .A0(\multdout[27] ), .A1(n272), .B0(\multgout[26] ), .B1(n269), .C0(n185), .Y(n184) );
  OAI22XL U64 ( .A0(n266), .A1(n186), .B0(n258), .B1(n53), .Y(n185) );
  XNOR2X1 U65 ( .A(n251), .B(n181), .Y(\toACC1t2[18] ) );
  AOI221XL U66 ( .A0(\multdout[28] ), .A1(n272), .B0(\multgout[27] ), .B1(n269), .C0(n182), .Y(n181) );
  OAI22XL U67 ( .A0(n266), .A1(n183), .B0(n258), .B1(n49), .Y(n182) );
  CLKINVX1 U68 ( .A(\multgout[24] ), .Y(n129) );
  CLKINVX1 U69 ( .A(\multgout[25] ), .Y(n126) );
  XNOR2X1 U70 ( .A(n252), .B(n178), .Y(\toACC1t2[19] ) );
  AOI221XL U71 ( .A0(\multdout[29] ), .A1(n272), .B0(\multgout[28] ), .B1(n269), .C0(n179), .Y(n178) );
  OAI22XL U72 ( .A0(n266), .A1(n180), .B0(n258), .B1(n45), .Y(n179) );
  CLKINVX1 U73 ( .A(\multdout[27] ), .Y(n54) );
  CLKINVX1 U74 ( .A(\multdout[28] ), .Y(n50) );
  CLKINVX1 U75 ( .A(\multgout[9] ), .Y(n147) );
  NOR2X1 U76 ( .A(n233), .B(n232), .Y(n5) );
  NOR2X1 U77 ( .A(n240), .B(n232), .Y(n4) );
  CLKINVX1 U78 ( .A(\multdout[26] ), .Y(n58) );
  NAND2X1 U79 ( .A(n232), .B(n242), .Y(n7) );
  CLKINVX1 U80 ( .A(n1), .Y(n235) );
  CLKINVX1 U81 ( .A(n1), .Y(n236) );
  CLKINVX1 U82 ( .A(\multeout[27] ), .Y(n186) );
  CLKINVX1 U83 ( .A(\multeout[28] ), .Y(n183) );
  CLKINVX1 U84 ( .A(n2), .Y(n243) );
  CLKINVX1 U85 ( .A(n2), .Y(n244) );
  XNOR2X1 U86 ( .A(n237), .B(n59), .Y(\toACC3t2[15] ) );
  AOI221XL U87 ( .A0(\multgout[24] ), .A1(n273), .B0(\multeout[25] ), .B1(n270), .C0(n60), .Y(n59) );
  OAI22XL U88 ( .A0(n263), .A1(n61), .B0(n255), .B1(n62), .Y(n60) );
  XNOR2X1 U89 ( .A(n238), .B(n55), .Y(\toACC3t2[16] ) );
  AOI221XL U90 ( .A0(\multgout[25] ), .A1(n273), .B0(\multeout[26] ), .B1(n270), .C0(n56), .Y(n55) );
  OAI22XL U91 ( .A0(n262), .A1(n57), .B0(n255), .B1(n58), .Y(n56) );
  XNOR2X1 U92 ( .A(n253), .B(n127), .Y(\toACC2t2[15] ) );
  AOI221XL U93 ( .A0(\multeout[25] ), .A1(n273), .B0(\multbout[24] ), .B1(n269), .C0(n128), .Y(n127) );
  OAI22XL U94 ( .A0(n264), .A1(n62), .B0(n257), .B1(n129), .Y(n128) );
  XNOR2X1 U95 ( .A(n254), .B(n124), .Y(\toACC2t2[16] ) );
  AOI221XL U96 ( .A0(\multeout[26] ), .A1(n273), .B0(\multbout[25] ), .B1(n270), .C0(n125), .Y(n124) );
  OAI22XL U97 ( .A0(n264), .A1(n58), .B0(n257), .B1(n126), .Y(n125) );
  XNOR2X1 U98 ( .A(n87), .B(n121), .Y(\toACC2t2[17] ) );
  AOI221XL U99 ( .A0(\multeout[27] ), .A1(n273), .B0(\multbout[26] ), .B1(n270), .C0(n122), .Y(n121) );
  OAI22XL U100 ( .A0(n264), .A1(n54), .B0(n257), .B1(n123), .Y(n122) );
  XNOR2X1 U101 ( .A(n253), .B(n118), .Y(\toACC2t2[18] ) );
  AOI221XL U102 ( .A0(\multeout[28] ), .A1(n273), .B0(\multbout[27] ), .B1(
        n270), .C0(n119), .Y(n118) );
  OAI22XL U103 ( .A0(n265), .A1(n50), .B0(n257), .B1(n123), .Y(n119) );
  XNOR2X1 U104 ( .A(n254), .B(n115), .Y(\toACC2t2[19] ) );
  AOI221XL U105 ( .A0(\multeout[29] ), .A1(n273), .B0(\multbout[28] ), .B1(
        n270), .C0(n116), .Y(n115) );
  OAI22XL U106 ( .A0(n264), .A1(n46), .B0(n257), .B1(n123), .Y(n116) );
  XNOR2X1 U107 ( .A(n251), .B(n190), .Y(\toACC1t2[15] ) );
  AOI221XL U108 ( .A0(\multdout[25] ), .A1(n272), .B0(\multgout[24] ), .B1(
        n269), .C0(n191), .Y(n190) );
  OAI22XL U109 ( .A0(n266), .A1(n192), .B0(n259), .B1(n61), .Y(n191) );
  OAI221XL U110 ( .A0(n259), .A1(n186), .B0(n267), .B1(n123), .C0(n223), .Y(
        \toACC0t2[17] ) );
  AOI22X1 U111 ( .A0(\multdout[27] ), .A1(n268), .B0(n271), .B1(\multbout[26] ), .Y(n223) );
  OAI221XL U112 ( .A0(n259), .A1(n183), .B0(n267), .B1(n123), .C0(n222), .Y(
        \toACC0t2[18] ) );
  AOI22X1 U113 ( .A0(\multdout[28] ), .A1(n268), .B0(n271), .B1(\multbout[27] ), .Y(n222) );
  OAI221XL U114 ( .A0(n259), .A1(n180), .B0(n267), .B1(n123), .C0(n221), .Y(
        \toACC0t2[19] ) );
  AOI22X1 U115 ( .A0(\multdout[29] ), .A1(n268), .B0(n271), .B1(\multbout[28] ), .Y(n221) );
  OAI221XL U116 ( .A0(n259), .A1(n192), .B0(n267), .B1(n129), .C0(n225), .Y(
        \toACC0t2[15] ) );
  AOI22X1 U117 ( .A0(\multdout[25] ), .A1(n268), .B0(n271), .B1(\multbout[24] ), .Y(n225) );
  OAI221XL U118 ( .A0(n259), .A1(n189), .B0(n267), .B1(n126), .C0(n224), .Y(
        \toACC0t2[16] ) );
  AOI22X1 U119 ( .A0(\multdout[26] ), .A1(n268), .B0(n271), .B1(\multbout[25] ), .Y(n224) );
  XNOR2X1 U120 ( .A(n248), .B(n71), .Y(\toACC3t2[12] ) );
  AOI221XL U121 ( .A0(\multgout[21] ), .A1(n273), .B0(\multeout[22] ), .B1(
        n270), .C0(n72), .Y(n71) );
  OAI22XL U122 ( .A0(n263), .A1(n73), .B0(n256), .B1(n74), .Y(n72) );
  XNOR2X1 U123 ( .A(n248), .B(n67), .Y(\toACC3t2[13] ) );
  AOI221XL U124 ( .A0(\multgout[22] ), .A1(n273), .B0(\multeout[23] ), .B1(
        n270), .C0(n68), .Y(n67) );
  OAI22XL U125 ( .A0(n263), .A1(n69), .B0(n256), .B1(n70), .Y(n68) );
  XNOR2X1 U126 ( .A(n248), .B(n63), .Y(\toACC3t2[14] ) );
  AOI221XL U127 ( .A0(\multgout[23] ), .A1(n273), .B0(\multeout[24] ), .B1(
        n270), .C0(n64), .Y(n63) );
  OAI22XL U128 ( .A0(n263), .A1(n65), .B0(n256), .B1(n66), .Y(n64) );
  XNOR2X1 U129 ( .A(n253), .B(n136), .Y(\toACC2t2[12] ) );
  AOI221XL U130 ( .A0(\multeout[22] ), .A1(n273), .B0(\multbout[21] ), .B1(
        n269), .C0(n137), .Y(n136) );
  OAI22XL U131 ( .A0(n264), .A1(n74), .B0(n257), .B1(n138), .Y(n137) );
  XNOR2X1 U132 ( .A(n254), .B(n133), .Y(\toACC2t2[13] ) );
  AOI221XL U133 ( .A0(\multeout[23] ), .A1(n273), .B0(\multbout[22] ), .B1(
        n269), .C0(n134), .Y(n133) );
  OAI22XL U134 ( .A0(n264), .A1(n70), .B0(n257), .B1(n135), .Y(n134) );
  XNOR2X1 U135 ( .A(n87), .B(n130), .Y(\toACC2t2[14] ) );
  AOI221XL U136 ( .A0(\multeout[24] ), .A1(n273), .B0(\multbout[23] ), .B1(
        n269), .C0(n131), .Y(n130) );
  OAI22XL U137 ( .A0(n264), .A1(n66), .B0(n257), .B1(n132), .Y(n131) );
  XNOR2X1 U138 ( .A(n251), .B(n199), .Y(\toACC1t2[12] ) );
  AOI221XL U139 ( .A0(\multdout[22] ), .A1(n272), .B0(\multgout[21] ), .B1(
        n269), .C0(n200), .Y(n199) );
  OAI22XL U140 ( .A0(n265), .A1(n201), .B0(n259), .B1(n73), .Y(n200) );
  XNOR2X1 U141 ( .A(n252), .B(n196), .Y(\toACC1t2[13] ) );
  AOI221XL U142 ( .A0(\multdout[23] ), .A1(n272), .B0(\multgout[22] ), .B1(
        n269), .C0(n197), .Y(n196) );
  OAI22XL U143 ( .A0(n266), .A1(n198), .B0(n259), .B1(n69), .Y(n197) );
  XNOR2X1 U144 ( .A(n151), .B(n193), .Y(\toACC1t2[14] ) );
  AOI221XL U145 ( .A0(\multdout[24] ), .A1(n272), .B0(\multgout[23] ), .B1(
        n269), .C0(n194), .Y(n193) );
  OAI22XL U146 ( .A0(n266), .A1(n195), .B0(n259), .B1(n65), .Y(n194) );
  OAI221XL U147 ( .A0(n259), .A1(n201), .B0(n267), .B1(n138), .C0(n228), .Y(
        \toACC0t2[12] ) );
  AOI22X1 U148 ( .A0(\multdout[22] ), .A1(n268), .B0(n271), .B1(\multbout[21] ), .Y(n228) );
  OAI221XL U149 ( .A0(n259), .A1(n198), .B0(n267), .B1(n135), .C0(n227), .Y(
        \toACC0t2[13] ) );
  AOI22X1 U150 ( .A0(\multdout[23] ), .A1(n268), .B0(n271), .B1(\multbout[22] ), .Y(n227) );
  OAI221XL U151 ( .A0(n259), .A1(n195), .B0(n267), .B1(n132), .C0(n226), .Y(
        \toACC0t2[14] ) );
  AOI22X1 U152 ( .A0(\multdout[24] ), .A1(n268), .B0(n271), .B1(\multbout[23] ), .Y(n226) );
  XNOR2X1 U153 ( .A(n246), .B(n79), .Y(\toACC3t2[10] ) );
  AOI221XL U154 ( .A0(\multgout[19] ), .A1(n273), .B0(\multeout[20] ), .B1(
        n270), .C0(n80), .Y(n79) );
  OAI22XL U155 ( .A0(n263), .A1(n81), .B0(n256), .B1(n82), .Y(n80) );
  XNOR2X1 U156 ( .A(n247), .B(n75), .Y(\toACC3t2[11] ) );
  AOI221XL U157 ( .A0(\multgout[20] ), .A1(n273), .B0(\multeout[21] ), .B1(
        n270), .C0(n76), .Y(n75) );
  OAI22XL U158 ( .A0(n263), .A1(n77), .B0(n256), .B1(n78), .Y(n76) );
  XNOR2X1 U159 ( .A(n254), .B(n142), .Y(\toACC2t2[10] ) );
  AOI221XL U160 ( .A0(\multeout[20] ), .A1(n273), .B0(\multbout[19] ), .B1(
        n269), .C0(n143), .Y(n142) );
  OAI22XL U161 ( .A0(n265), .A1(n82), .B0(n257), .B1(n144), .Y(n143) );
  XNOR2X1 U162 ( .A(n87), .B(n139), .Y(\toACC2t2[11] ) );
  AOI221XL U163 ( .A0(\multeout[21] ), .A1(n273), .B0(\multbout[20] ), .B1(
        n269), .C0(n140), .Y(n139) );
  OAI22XL U164 ( .A0(n264), .A1(n78), .B0(n257), .B1(n141), .Y(n140) );
  XNOR2X1 U165 ( .A(n151), .B(n205), .Y(\toACC1t2[10] ) );
  AOI221XL U166 ( .A0(\multdout[20] ), .A1(n272), .B0(\multgout[19] ), .B1(
        n269), .C0(n206), .Y(n205) );
  OAI22XL U167 ( .A0(n266), .A1(n207), .B0(n259), .B1(n81), .Y(n206) );
  XNOR2X1 U168 ( .A(n151), .B(n202), .Y(\toACC1t2[11] ) );
  AOI221XL U169 ( .A0(\multdout[21] ), .A1(n272), .B0(\multgout[20] ), .B1(
        n269), .C0(n203), .Y(n202) );
  OAI22XL U170 ( .A0(n266), .A1(n204), .B0(n259), .B1(n77), .Y(n203) );
  OAI221XL U171 ( .A0(n259), .A1(n207), .B0(n267), .B1(n144), .C0(n230), .Y(
        \toACC0t2[10] ) );
  AOI22X1 U172 ( .A0(\multdout[20] ), .A1(n268), .B0(n271), .B1(\multbout[19] ), .Y(n230) );
  OAI221XL U173 ( .A0(n259), .A1(n204), .B0(n267), .B1(n141), .C0(n229), .Y(
        \toACC0t2[11] ) );
  AOI22X1 U174 ( .A0(\multdout[21] ), .A1(n268), .B0(n271), .B1(\multbout[20] ), .Y(n229) );
  XNOR2X1 U175 ( .A(n150), .B(n252), .Y(\toACC1t2[9] ) );
  AOI221XL U176 ( .A0(\multdout[19] ), .A1(n272), .B0(n269), .B1(
        \multgout[18] ), .C0(n152), .Y(n150) );
  OAI22XL U177 ( .A0(n153), .A1(n266), .B0(n258), .B1(n8), .Y(n152) );
  XNOR2X1 U178 ( .A(n246), .B(n15), .Y(\toACC3t2[7] ) );
  AOI221XL U179 ( .A0(\multgout[16] ), .A1(n273), .B0(\multeout[17] ), .B1(
        n270), .C0(n16), .Y(n15) );
  OAI22XL U180 ( .A0(n262), .A1(n17), .B0(n255), .B1(n18), .Y(n16) );
  XNOR2X1 U181 ( .A(n247), .B(n11), .Y(\toACC3t2[8] ) );
  AOI221XL U182 ( .A0(\multgout[17] ), .A1(n273), .B0(\multeout[18] ), .B1(
        n269), .C0(n12), .Y(n11) );
  OAI22XL U183 ( .A0(n262), .A1(n13), .B0(n255), .B1(n14), .Y(n12) );
  XNOR2X1 U184 ( .A(n248), .B(n3), .Y(\toACC3t2[9] ) );
  AOI221XL U185 ( .A0(\multgout[18] ), .A1(n273), .B0(\multeout[19] ), .B1(
        n269), .C0(n6), .Y(n3) );
  OAI22XL U186 ( .A0(n264), .A1(n8), .B0(n257), .B1(n10), .Y(n6) );
  XNOR2X1 U187 ( .A(n87), .B(n94), .Y(\toACC2t2[7] ) );
  AOI221XL U188 ( .A0(\multeout[17] ), .A1(n273), .B0(\multbout[16] ), .B1(
        n270), .C0(n95), .Y(n94) );
  OAI22XL U189 ( .A0(n263), .A1(n18), .B0(n256), .B1(n96), .Y(n95) );
  XNOR2X1 U190 ( .A(n253), .B(n91), .Y(\toACC2t2[8] ) );
  AOI221XL U191 ( .A0(\multeout[18] ), .A1(n273), .B0(\multbout[17] ), .B1(
        n270), .C0(n92), .Y(n91) );
  OAI22XL U192 ( .A0(n263), .A1(n14), .B0(n256), .B1(n93), .Y(n92) );
  XNOR2X1 U193 ( .A(n254), .B(n88), .Y(\toACC2t2[9] ) );
  AOI221XL U194 ( .A0(\multeout[19] ), .A1(n273), .B0(\multbout[18] ), .B1(
        n270), .C0(n89), .Y(n88) );
  OAI22XL U195 ( .A0(n10), .A1(n266), .B0(n90), .B1(n259), .Y(n89) );
  XNOR2X1 U196 ( .A(n151), .B(n157), .Y(\toACC1t2[7] ) );
  AOI221XL U197 ( .A0(\multdout[17] ), .A1(n272), .B0(\multgout[16] ), .B1(
        n269), .C0(n158), .Y(n157) );
  OAI22XL U198 ( .A0(n265), .A1(n159), .B0(n258), .B1(n17), .Y(n158) );
  XNOR2X1 U199 ( .A(n251), .B(n154), .Y(\toACC1t2[8] ) );
  AOI221XL U200 ( .A0(\multdout[18] ), .A1(n272), .B0(\multgout[17] ), .B1(
        n269), .C0(n155), .Y(n154) );
  OAI22XL U201 ( .A0(n265), .A1(n156), .B0(n258), .B1(n13), .Y(n155) );
  OAI221XL U202 ( .A0(n153), .A1(n259), .B0(n90), .B1(n267), .C0(n212), .Y(
        \toACC0t2[9] ) );
  AOI22X1 U203 ( .A0(\multdout[19] ), .A1(n269), .B0(n272), .B1(\multbout[18] ), .Y(n212) );
  OAI221XL U204 ( .A0(n259), .A1(n159), .B0(n267), .B1(n96), .C0(n214), .Y(
        \toACC0t2[7] ) );
  AOI22X1 U205 ( .A0(\multdout[17] ), .A1(n269), .B0(n272), .B1(\multbout[16] ), .Y(n214) );
  OAI221XL U206 ( .A0(n259), .A1(n156), .B0(n266), .B1(n93), .C0(n213), .Y(
        \toACC0t2[8] ) );
  AOI22X1 U207 ( .A0(\multdout[18] ), .A1(n269), .B0(n272), .B1(\multbout[17] ), .Y(n213) );
  XNOR2X1 U208 ( .A(n246), .B(n27), .Y(\toACC3t2[4] ) );
  AOI221XL U209 ( .A0(\multgout[13] ), .A1(n273), .B0(\multeout[14] ), .B1(
        n270), .C0(n28), .Y(n27) );
  OAI22XL U210 ( .A0(n262), .A1(n29), .B0(n255), .B1(n300), .Y(n28) );
  XNOR2X1 U211 ( .A(n242), .B(n23), .Y(\toACC3t2[5] ) );
  AOI221XL U212 ( .A0(\multgout[14] ), .A1(n273), .B0(\multeout[15] ), .B1(
        n270), .C0(n24), .Y(n23) );
  OAI22XL U213 ( .A0(n262), .A1(n25), .B0(n255), .B1(n26), .Y(n24) );
  XNOR2X1 U214 ( .A(n246), .B(n19), .Y(\toACC3t2[6] ) );
  AOI221XL U215 ( .A0(\multgout[15] ), .A1(n273), .B0(\multeout[16] ), .B1(
        n270), .C0(n20), .Y(n19) );
  OAI22XL U216 ( .A0(n262), .A1(n21), .B0(n255), .B1(n22), .Y(n20) );
  XNOR2X1 U217 ( .A(n87), .B(n103), .Y(\toACC2t2[4] ) );
  AOI221XL U218 ( .A0(\multeout[14] ), .A1(n273), .B0(\multbout[13] ), .B1(
        n270), .C0(n104), .Y(n103) );
  OAI22XL U219 ( .A0(n263), .A1(n300), .B0(n256), .B1(n105), .Y(n104) );
  XNOR2X1 U220 ( .A(n253), .B(n100), .Y(\toACC2t2[5] ) );
  AOI221XL U221 ( .A0(\multeout[15] ), .A1(n273), .B0(\multbout[14] ), .B1(
        n270), .C0(n101), .Y(n100) );
  OAI22XL U222 ( .A0(n263), .A1(n26), .B0(n256), .B1(n102), .Y(n101) );
  XNOR2X1 U223 ( .A(n254), .B(n97), .Y(\toACC2t2[6] ) );
  AOI221XL U224 ( .A0(\multeout[16] ), .A1(n273), .B0(\multbout[15] ), .B1(
        n270), .C0(n98), .Y(n97) );
  OAI22XL U225 ( .A0(n263), .A1(n22), .B0(n256), .B1(n99), .Y(n98) );
  XNOR2X1 U226 ( .A(n151), .B(n166), .Y(\toACC1t2[4] ) );
  AOI221XL U227 ( .A0(\multdout[14] ), .A1(n272), .B0(\multgout[13] ), .B1(
        n269), .C0(n167), .Y(n166) );
  OAI22XL U228 ( .A0(n265), .A1(n168), .B0(n258), .B1(n29), .Y(n167) );
  XNOR2X1 U229 ( .A(n251), .B(n163), .Y(\toACC1t2[5] ) );
  AOI221XL U230 ( .A0(\multdout[15] ), .A1(n272), .B0(\multgout[14] ), .B1(
        n269), .C0(n164), .Y(n163) );
  OAI22XL U231 ( .A0(n265), .A1(n165), .B0(n258), .B1(n25), .Y(n164) );
  XNOR2X1 U232 ( .A(n252), .B(n160), .Y(\toACC1t2[6] ) );
  AOI221XL U233 ( .A0(\multdout[16] ), .A1(n272), .B0(\multgout[15] ), .B1(
        n269), .C0(n161), .Y(n160) );
  OAI22XL U234 ( .A0(n265), .A1(n162), .B0(n258), .B1(n21), .Y(n161) );
  OAI221XL U235 ( .A0(n259), .A1(n168), .B0(n267), .B1(n105), .C0(n217), .Y(
        \toACC0t2[4] ) );
  AOI22X1 U236 ( .A0(\multdout[14] ), .A1(n269), .B0(n272), .B1(\multbout[13] ), .Y(n217) );
  OAI221XL U237 ( .A0(n259), .A1(n165), .B0(n267), .B1(n102), .C0(n216), .Y(
        \toACC0t2[5] ) );
  AOI22X1 U238 ( .A0(\multdout[15] ), .A1(n269), .B0(n272), .B1(\multbout[14] ), .Y(n216) );
  OAI221XL U239 ( .A0(n259), .A1(n162), .B0(n267), .B1(n99), .C0(n215), .Y(
        \toACC0t2[6] ) );
  AOI22X1 U240 ( .A0(\multdout[16] ), .A1(n269), .B0(n272), .B1(\multbout[15] ), .Y(n215) );
  XNOR2X1 U241 ( .A(n248), .B(n39), .Y(\toACC3t2[1] ) );
  AOI221XL U242 ( .A0(\multgout[10] ), .A1(n273), .B0(\multeout[11] ), .B1(
        n270), .C0(n40), .Y(n39) );
  OAI22XL U243 ( .A0(n262), .A1(n41), .B0(n255), .B1(n42), .Y(n40) );
  XNOR2X1 U244 ( .A(n237), .B(n35), .Y(\toACC3t2[2] ) );
  AOI221XL U245 ( .A0(\multgout[11] ), .A1(n273), .B0(\multeout[12] ), .B1(
        n270), .C0(n36), .Y(n35) );
  OAI22XL U246 ( .A0(n262), .A1(n37), .B0(n255), .B1(n38), .Y(n36) );
  XNOR2X1 U247 ( .A(n240), .B(n310), .Y(\toACC3t2[3] ) );
  AOI221XL U248 ( .A0(\multgout[12] ), .A1(n273), .B0(\multeout[13] ), .B1(
        n270), .C0(n320), .Y(n310) );
  OAI22XL U249 ( .A0(n262), .A1(n33), .B0(n255), .B1(n34), .Y(n320) );
  XNOR2X1 U250 ( .A(n87), .B(n112), .Y(\toACC2t2[1] ) );
  AOI221XL U251 ( .A0(\multeout[11] ), .A1(n273), .B0(\multbout[10] ), .B1(
        n270), .C0(n113), .Y(n112) );
  OAI22XL U252 ( .A0(n264), .A1(n42), .B0(n257), .B1(n114), .Y(n113) );
  XNOR2X1 U253 ( .A(n253), .B(n109), .Y(\toACC2t2[2] ) );
  AOI221XL U254 ( .A0(\multeout[12] ), .A1(n273), .B0(\multbout[11] ), .B1(
        n270), .C0(n110), .Y(n109) );
  OAI22XL U255 ( .A0(n264), .A1(n38), .B0(n256), .B1(n111), .Y(n110) );
  XNOR2X1 U256 ( .A(n254), .B(n106), .Y(\toACC2t2[3] ) );
  AOI221XL U257 ( .A0(\multeout[13] ), .A1(n273), .B0(\multbout[12] ), .B1(
        n270), .C0(n107), .Y(n106) );
  OAI22XL U258 ( .A0(n264), .A1(n34), .B0(n256), .B1(n108), .Y(n107) );
  XNOR2X1 U259 ( .A(n151), .B(n175), .Y(\toACC1t2[1] ) );
  AOI221XL U260 ( .A0(\multdout[11] ), .A1(n272), .B0(\multgout[10] ), .B1(
        n269), .C0(n176), .Y(n175) );
  OAI22XL U261 ( .A0(n265), .A1(n177), .B0(n258), .B1(n41), .Y(n176) );
  XNOR2X1 U262 ( .A(n251), .B(n172), .Y(\toACC1t2[2] ) );
  AOI221XL U263 ( .A0(\multdout[12] ), .A1(n272), .B0(\multgout[11] ), .B1(
        n269), .C0(n173), .Y(n172) );
  OAI22XL U264 ( .A0(n265), .A1(n174), .B0(n258), .B1(n37), .Y(n173) );
  XNOR2X1 U265 ( .A(n252), .B(n169), .Y(\toACC1t2[3] ) );
  AOI221XL U266 ( .A0(\multdout[13] ), .A1(n272), .B0(\multgout[12] ), .B1(
        n269), .C0(n170), .Y(n169) );
  OAI22XL U267 ( .A0(n265), .A1(n171), .B0(n258), .B1(n33), .Y(n170) );
  OAI221XL U268 ( .A0(n259), .A1(n177), .B0(n267), .B1(n114), .C0(n220), .Y(
        \toACC0t2[1] ) );
  AOI22X1 U269 ( .A0(\multdout[11] ), .A1(n268), .B0(n271), .B1(\multbout[10] ), .Y(n220) );
  OAI221XL U270 ( .A0(n259), .A1(n174), .B0(n267), .B1(n111), .C0(n219), .Y(
        \toACC0t2[2] ) );
  AOI22X1 U271 ( .A0(\multdout[12] ), .A1(n268), .B0(n272), .B1(\multbout[11] ), .Y(n219) );
  OAI221XL U272 ( .A0(n259), .A1(n171), .B0(n267), .B1(n108), .C0(n218), .Y(
        \toACC0t2[3] ) );
  AOI22X1 U273 ( .A0(\multdout[13] ), .A1(n269), .B0(n272), .B1(\multbout[12] ), .Y(n218) );
  XNOR2X1 U274 ( .A(n247), .B(n83), .Y(\toACC3t2[0] ) );
  AOI221XL U275 ( .A0(\multgout[9] ), .A1(n273), .B0(\multeout[10] ), .B1(n270), .C0(n84), .Y(n83) );
  OAI22XL U276 ( .A0(n263), .A1(n85), .B0(n256), .B1(n86), .Y(n84) );
  XNOR2X1 U277 ( .A(n253), .B(n145), .Y(\toACC2t2[0] ) );
  AOI221XL U278 ( .A0(\multeout[10] ), .A1(n272), .B0(\multbout[9] ), .B1(n269), .C0(n146), .Y(n145) );
  OAI22XL U279 ( .A0(n265), .A1(n86), .B0(n257), .B1(n147), .Y(n146) );
  XNOR2X1 U280 ( .A(n251), .B(n208), .Y(\toACC1t2[0] ) );
  AOI221XL U281 ( .A0(\multdout[10] ), .A1(n272), .B0(\multgout[9] ), .B1(n269), .C0(n209), .Y(n208) );
  OAI22XL U282 ( .A0(n266), .A1(n210), .B0(n259), .B1(n85), .Y(n209) );
  OAI221XL U283 ( .A0(n259), .A1(n210), .B0(n267), .B1(n147), .C0(n231), .Y(
        \toACC0t2[0] ) );
  AOI22X1 U284 ( .A0(\multdout[10] ), .A1(n268), .B0(n271), .B1(\multbout[9] ), 
        .Y(n231) );
  CLKINVX1 U285 ( .A(HALT), .Y(n275) );
  XNOR2X1 U286 ( .A(n148), .B(\Count[0] ), .Y(n234) );
  OAI21XL U287 ( .A0(DoDCT), .A1(n234), .B0(n149), .Y(n1) );
  NAND2X1 U288 ( .A(DoDCT), .B(n211), .Y(n149) );
  OAI2BB1X1 U289 ( .A0N(n211), .A1N(n275), .B0(RESET_), .Y(N31) );
  NAND2X1 U290 ( .A(n274), .B(RESET_), .Y(N32) );
  OAI32X1 U291 ( .A0(\Count[0] ), .A1(DoDCT), .A2(\Count[1] ), .B0(n148), .B1(
        n149), .Y(n253) );
  OAI32X1 U292 ( .A0(\Count[0] ), .A1(DoDCT), .A2(\Count[1] ), .B0(n148), .B1(
        n149), .Y(n254) );
  OAI211X1 U293 ( .A0(DoDCT), .A1(n211), .B0(n149), .C0(\Count[1] ), .Y(n151)
         );
  OAI211X1 U294 ( .A0(DoDCT), .A1(n211), .B0(n149), .C0(\Count[1] ), .Y(n251)
         );
  OAI211X1 U295 ( .A0(DoDCT), .A1(n211), .B0(n149), .C0(\Count[1] ), .Y(n252)
         );
  OAI32X1 U296 ( .A0(\Count[0] ), .A1(DoDCT), .A2(\Count[1] ), .B0(n148), .B1(
        n149), .Y(n87) );
  OAI21XL U297 ( .A0(DoDCT), .A1(n234), .B0(n149), .Y(n2) );
  CLKINVX1 U298 ( .A(\multdout[19] ), .Y(n10) );
  CLKINVX1 U299 ( .A(\multdout[10] ), .Y(n86) );
  CLKINVX1 U300 ( .A(\multdout[11] ), .Y(n42) );
  CLKINVX1 U301 ( .A(\multdout[12] ), .Y(n38) );
  CLKINVX1 U302 ( .A(\multdout[13] ), .Y(n34) );
  CLKINVX1 U303 ( .A(\multdout[14] ), .Y(n300) );
  CLKINVX1 U304 ( .A(\multdout[15] ), .Y(n26) );
  CLKINVX1 U305 ( .A(\multdout[16] ), .Y(n22) );
  CLKINVX1 U306 ( .A(\multdout[17] ), .Y(n18) );
  CLKINVX1 U307 ( .A(\multdout[18] ), .Y(n14) );
  CLKINVX1 U308 ( .A(\multdout[20] ), .Y(n82) );
  CLKINVX1 U309 ( .A(\multdout[21] ), .Y(n78) );
  CLKINVX1 U310 ( .A(\multdout[22] ), .Y(n74) );
  CLKINVX1 U311 ( .A(\multdout[23] ), .Y(n70) );
  CLKINVX1 U312 ( .A(\multdout[24] ), .Y(n66) );
  CLKINVX1 U313 ( .A(\multdout[25] ), .Y(n62) );
  CLKINVX1 U314 ( .A(\multbout[9] ), .Y(n85) );
  CLKINVX1 U315 ( .A(\multbout[10] ), .Y(n41) );
  CLKINVX1 U316 ( .A(\multbout[11] ), .Y(n37) );
  CLKINVX1 U317 ( .A(\multbout[12] ), .Y(n33) );
  CLKINVX1 U318 ( .A(\multbout[13] ), .Y(n29) );
  CLKINVX1 U319 ( .A(\multbout[14] ), .Y(n25) );
  CLKINVX1 U320 ( .A(\multbout[15] ), .Y(n21) );
  CLKINVX1 U321 ( .A(\multbout[16] ), .Y(n17) );
  CLKINVX1 U322 ( .A(\multbout[17] ), .Y(n13) );
  CLKINVX1 U323 ( .A(\multbout[18] ), .Y(n8) );
  CLKINVX1 U324 ( .A(\multbout[19] ), .Y(n81) );
  CLKINVX1 U325 ( .A(\multbout[20] ), .Y(n77) );
  CLKINVX1 U326 ( .A(\multbout[21] ), .Y(n73) );
  CLKINVX1 U327 ( .A(\multbout[22] ), .Y(n69) );
  CLKINVX1 U328 ( .A(\multbout[23] ), .Y(n65) );
  CLKINVX1 U329 ( .A(\multbout[24] ), .Y(n61) );
  CLKINVX1 U330 ( .A(\multbout[25] ), .Y(n57) );
  CLKINVX1 U331 ( .A(\multbout[26] ), .Y(n53) );
  CLKINVX1 U332 ( .A(\multbout[27] ), .Y(n49) );
  CLKINVX1 U333 ( .A(\multbout[28] ), .Y(n45) );
  XOR2X1 U334 ( .A(\Count[1] ), .B(\Count[0] ), .Y(N30) );
  CLKINVX1 U335 ( .A(\multeout[19] ), .Y(n153) );
  CLKINVX1 U336 ( .A(\multeout[10] ), .Y(n210) );
  CLKINVX1 U337 ( .A(\multeout[11] ), .Y(n177) );
  CLKINVX1 U338 ( .A(\multeout[12] ), .Y(n174) );
  CLKINVX1 U339 ( .A(\multeout[13] ), .Y(n171) );
  CLKINVX1 U340 ( .A(\multeout[14] ), .Y(n168) );
  CLKINVX1 U341 ( .A(\multeout[15] ), .Y(n165) );
  CLKINVX1 U342 ( .A(\multeout[16] ), .Y(n162) );
  CLKINVX1 U343 ( .A(\multeout[17] ), .Y(n159) );
  CLKINVX1 U344 ( .A(\multeout[18] ), .Y(n156) );
  CLKINVX1 U345 ( .A(\multeout[20] ), .Y(n207) );
  CLKINVX1 U346 ( .A(\multeout[21] ), .Y(n204) );
  CLKINVX1 U347 ( .A(\multeout[22] ), .Y(n201) );
  CLKINVX1 U348 ( .A(\multeout[23] ), .Y(n198) );
  CLKINVX1 U349 ( .A(\multeout[24] ), .Y(n195) );
  CLKINVX1 U350 ( .A(\multeout[25] ), .Y(n192) );
  CLKINVX1 U351 ( .A(\multeout[26] ), .Y(n189) );
  SDFFQXL toACC0_reg_19_ ( .D(\toACC0t2[19] ), .SI(\toACC0[18] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[19] ) );
  SDFFQXL toACC0_reg_18_ ( .D(\toACC0t2[18] ), .SI(\toACC0[17] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[18] ) );
  SDFFQXL toACC0_reg_17_ ( .D(\toACC0t2[17] ), .SI(\toACC0[16] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[17] ) );
  SDFFQXL toACC0_reg_16_ ( .D(\toACC0t2[16] ), .SI(\toACC0[15] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[16] ) );
  SDFFQXL toACC0_reg_15_ ( .D(\toACC0t2[15] ), .SI(\toACC0[14] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[15] ) );
  SDFFQXL toACC0_reg_14_ ( .D(\toACC0t2[14] ), .SI(\toACC0[13] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[14] ) );
  SDFFQXL toACC0_reg_13_ ( .D(\toACC0t2[13] ), .SI(\toACC0[12] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[13] ) );
  SDFFQXL toACC0_reg_12_ ( .D(\toACC0t2[12] ), .SI(\toACC0[11] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[12] ) );
  SDFFQXL toACC0_reg_11_ ( .D(\toACC0t2[11] ), .SI(\toACC0[10] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[11] ) );
  SDFFQXL toACC1_reg_19_ ( .D(\toACC1t2[19] ), .SI(\toACC1[18] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[19] ) );
  SDFFQXL toACC1_reg_18_ ( .D(\toACC1t2[18] ), .SI(\toACC1[17] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[18] ) );
  SDFFQXL toACC1_reg_17_ ( .D(\toACC1t2[17] ), .SI(\toACC1[16] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[17] ) );
  SDFFQXL toACC1_reg_16_ ( .D(\toACC1t2[16] ), .SI(\toACC1[15] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[16] ) );
  SDFFQXL toACC1_reg_15_ ( .D(\toACC1t2[15] ), .SI(\toACC1[14] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[15] ) );
  SDFFQXL toACC1_reg_14_ ( .D(\toACC1t2[14] ), .SI(\toACC1[13] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[14] ) );
  SDFFQXL toACC1_reg_13_ ( .D(\toACC1t2[13] ), .SI(\toACC1[12] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[13] ) );
  SDFFQXL toACC1_reg_12_ ( .D(\toACC1t2[12] ), .SI(\toACC1[11] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[12] ) );
  SDFFQXL toACC1_reg_11_ ( .D(\toACC1t2[11] ), .SI(\toACC1[10] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[11] ) );
  SDFFQXL toACC2_reg_19_ ( .D(\toACC2t2[19] ), .SI(\toACC2[18] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[19] ) );
  SDFFQXL toACC2_reg_18_ ( .D(\toACC2t2[18] ), .SI(\toACC2[17] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[18] ) );
  SDFFQXL toACC2_reg_17_ ( .D(\toACC2t2[17] ), .SI(\toACC2[16] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[17] ) );
  SDFFQXL toACC2_reg_16_ ( .D(\toACC2t2[16] ), .SI(\toACC2[15] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[16] ) );
  SDFFQXL toACC2_reg_15_ ( .D(\toACC2t2[15] ), .SI(\toACC2[14] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[15] ) );
  SDFFQXL toACC2_reg_14_ ( .D(\toACC2t2[14] ), .SI(\toACC2[13] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[14] ) );
  SDFFQXL toACC2_reg_13_ ( .D(\toACC2t2[13] ), .SI(\toACC2[12] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[13] ) );
  SDFFQXL toACC2_reg_12_ ( .D(\toACC2t2[12] ), .SI(\toACC2[11] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[12] ) );
  SDFFQXL toACC2_reg_11_ ( .D(\toACC2t2[11] ), .SI(\toACC2[10] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[11] ) );
  SDFFQXL toACC3_reg_19_ ( .D(\toACC3t2[19] ), .SI(\toACC3[18] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[19] ) );
  SDFFQXL toACC3_reg_18_ ( .D(\toACC3t2[18] ), .SI(\toACC3[17] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[18] ) );
  SDFFQXL toACC3_reg_17_ ( .D(\toACC3t2[17] ), .SI(\toACC3[16] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[17] ) );
  SDFFQXL toACC3_reg_16_ ( .D(\toACC3t2[16] ), .SI(\toACC3[15] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[16] ) );
  SDFFQXL toACC3_reg_15_ ( .D(\toACC3t2[15] ), .SI(\toACC3[14] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[15] ) );
  SDFFQXL toACC3_reg_14_ ( .D(\toACC3t2[14] ), .SI(\toACC3[13] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[14] ) );
  SDFFQXL toACC3_reg_13_ ( .D(\toACC3t2[13] ), .SI(\toACC3[12] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[13] ) );
  SDFFQXL toACC3_reg_12_ ( .D(\toACC3t2[12] ), .SI(\toACC3[11] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[12] ) );
  SDFFQXL toACC3_reg_11_ ( .D(\toACC3t2[11] ), .SI(\toACC3[10] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[11] ) );
  SDFFQXL toACC0_reg_10_ ( .D(\toACC0t2[10] ), .SI(\toACC0[9] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[10] ) );
  SDFFQXL toACC0_reg_9_ ( .D(\toACC0t2[9] ), .SI(\toACC0[8] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[9] ) );
  SDFFQXL toACC0_reg_8_ ( .D(\toACC0t2[8] ), .SI(\toACC0[7] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[8] ) );
  SDFFQXL toACC0_reg_7_ ( .D(\toACC0t2[7] ), .SI(\toACC0[6] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[7] ) );
  SDFFQXL toACC0_reg_6_ ( .D(\toACC0t2[6] ), .SI(\toACC0[5] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[6] ) );
  SDFFQXL toACC1_reg_10_ ( .D(\toACC1t2[10] ), .SI(\toACC1[9] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[10] ) );
  SDFFQXL toACC1_reg_9_ ( .D(\toACC1t2[9] ), .SI(\toACC1[8] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[9] ) );
  SDFFQXL toACC1_reg_8_ ( .D(\toACC1t2[8] ), .SI(\toACC1[7] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[8] ) );
  SDFFQXL toACC1_reg_7_ ( .D(\toACC1t2[7] ), .SI(\toACC1[6] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[7] ) );
  SDFFQXL toACC1_reg_6_ ( .D(\toACC1t2[6] ), .SI(\toACC1[5] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[6] ) );
  SDFFQXL toACC2_reg_10_ ( .D(\toACC2t2[10] ), .SI(\toACC2[9] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[10] ) );
  SDFFQXL toACC2_reg_9_ ( .D(\toACC2t2[9] ), .SI(\toACC2[8] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[9] ) );
  SDFFQXL toACC2_reg_8_ ( .D(\toACC2t2[8] ), .SI(\toACC2[7] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[8] ) );
  SDFFQXL toACC2_reg_7_ ( .D(\toACC2t2[7] ), .SI(\toACC2[6] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[7] ) );
  SDFFQXL toACC2_reg_6_ ( .D(\toACC2t2[6] ), .SI(\toACC2[5] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[6] ) );
  SDFFQXL toACC3_reg_10_ ( .D(\toACC3t2[10] ), .SI(\toACC3[9] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[10] ) );
  SDFFQXL toACC3_reg_9_ ( .D(\toACC3t2[9] ), .SI(\toACC3[8] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[9] ) );
  SDFFQXL toACC3_reg_8_ ( .D(\toACC3t2[8] ), .SI(\toACC3[7] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[8] ) );
  SDFFQXL toACC3_reg_7_ ( .D(\toACC3t2[7] ), .SI(\toACC3[6] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[7] ) );
  SDFFQXL toACC3_reg_6_ ( .D(\toACC3t2[6] ), .SI(\toACC3[5] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[6] ) );
  SDFFQXL toACC0_reg_0_ ( .D(\toACC0t2[0] ), .SI(n363), .SE(test_se), .CK(CLK), 
        .Q(\toACC0[0] ) );
  SDFFQXL toACC1_reg_0_ ( .D(\toACC1t2[0] ), .SI(\toACC0[19] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[0] ) );
  SDFFQXL toACC2_reg_0_ ( .D(\toACC2t2[0] ), .SI(\toACC1[19] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[0] ) );
  SDFFQXL toACC3_reg_0_ ( .D(\toACC3t2[0] ), .SI(\toACC2[19] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[0] ) );
  SDFFQXL toACC0_reg_5_ ( .D(\toACC0t2[5] ), .SI(\toACC0[4] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[5] ) );
  SDFFQXL toACC0_reg_4_ ( .D(\toACC0t2[4] ), .SI(\toACC0[3] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[4] ) );
  SDFFQXL toACC0_reg_3_ ( .D(\toACC0t2[3] ), .SI(\toACC0[2] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[3] ) );
  SDFFQXL toACC0_reg_2_ ( .D(\toACC0t2[2] ), .SI(\toACC0[1] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[2] ) );
  SDFFQXL toACC0_reg_1_ ( .D(\toACC0t2[1] ), .SI(\toACC0[0] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[1] ) );
  SDFFQXL toACC1_reg_5_ ( .D(\toACC1t2[5] ), .SI(\toACC1[4] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[5] ) );
  SDFFQXL toACC1_reg_4_ ( .D(\toACC1t2[4] ), .SI(\toACC1[3] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[4] ) );
  SDFFQXL toACC1_reg_3_ ( .D(\toACC1t2[3] ), .SI(\toACC1[2] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[3] ) );
  SDFFQXL toACC1_reg_2_ ( .D(\toACC1t2[2] ), .SI(\toACC1[1] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[2] ) );
  SDFFQXL toACC1_reg_1_ ( .D(\toACC1t2[1] ), .SI(\toACC1[0] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[1] ) );
  SDFFQXL toACC2_reg_5_ ( .D(\toACC2t2[5] ), .SI(\toACC2[4] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[5] ) );
  SDFFQXL toACC2_reg_4_ ( .D(\toACC2t2[4] ), .SI(\toACC2[3] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[4] ) );
  SDFFQXL toACC2_reg_3_ ( .D(\toACC2t2[3] ), .SI(\toACC2[2] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[3] ) );
  SDFFQXL toACC2_reg_2_ ( .D(\toACC2t2[2] ), .SI(\toACC2[1] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[2] ) );
  SDFFQXL toACC2_reg_1_ ( .D(\toACC2t2[1] ), .SI(\toACC2[0] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[1] ) );
  SDFFQXL toACC3_reg_5_ ( .D(\toACC3t2[5] ), .SI(\toACC3[4] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[5] ) );
  SDFFQXL toACC3_reg_4_ ( .D(\toACC3t2[4] ), .SI(\toACC3[3] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[4] ) );
  SDFFQXL toACC3_reg_3_ ( .D(\toACC3t2[3] ), .SI(\toACC3[2] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[3] ) );
  SDFFQXL toACC3_reg_2_ ( .D(\toACC3t2[2] ), .SI(\toACC3[1] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[2] ) );
  SDFFQXL toACC3_reg_1_ ( .D(\toACC3t2[1] ), .SI(\toACC3[0] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[1] ) );
  SEDFFTRXL Count_reg_1_ ( .RN(RESET_), .D(N30), .E(n275), .SI(n211), .SE(
        test_se), .CK(CLK), .Q(\Count[1] ), .QN(n148) );
  SEDFFXL Count_reg_0_ ( .D(N31), .SI(n367), .E(N32), .SE(test_se), .CK(CLK), 
        .Q(\Count[0] ), .QN(n211) );
  ACC_test_4 ACC0 ( .CLK(CLK), .ACCin({\toACC0[19] , \toACC0[18] , 
        \toACC0[17] , \toACC0[16] , \toACC0[15] , \toACC0[14] , \toACC0[13] , 
        \toACC0[12] , \toACC0[11] , \toACC0[10] , \toACC0[9] , \toACC0[8] , 
        \toACC0[7] , \toACC0[6] , \toACC0[5] , \toACC0[4] , \toACC0[3] , 
        \toACC0[2] , \toACC0[1] , \toACC0[0] }), .HALT(n274), .Count({
        \Count[1] , \Count[0] }), .accout(BDEGout0), .test_se(test_se), 
        .test_si(test_si), .test_so(n370) );
  ACC_test_5 ACC1 ( .CLK(CLK), .ACCin({\toACC1[19] , \toACC1[18] , 
        \toACC1[17] , \toACC1[16] , \toACC1[15] , \toACC1[14] , \toACC1[13] , 
        \toACC1[12] , \toACC1[11] , \toACC1[10] , \toACC1[9] , \toACC1[8] , 
        \toACC1[7] , \toACC1[6] , \toACC1[5] , \toACC1[4] , \toACC1[3] , 
        \toACC1[2] , \toACC1[1] , \toACC1[0] }), .HALT(n274), .Count({
        \Count[1] , \Count[0] }), .accout(BDEGout1), .test_se(test_se), 
        .test_si(n370), .test_so(n369) );
  ACC_test_6 ACC2 ( .CLK(CLK), .ACCin({\toACC2[19] , \toACC2[18] , 
        \toACC2[17] , \toACC2[16] , \toACC2[15] , \toACC2[14] , \toACC2[13] , 
        \toACC2[12] , \toACC2[11] , \toACC2[10] , \toACC2[9] , \toACC2[8] , 
        \toACC2[7] , \toACC2[6] , \toACC2[5] , \toACC2[4] , \toACC2[3] , 
        \toACC2[2] , \toACC2[1] , \toACC2[0] }), .HALT(n274), .Count({
        \Count[1] , \Count[0] }), .accout(BDEGout2), .test_se(test_se), 
        .test_si(n369), .test_so(n368) );
  ACC_test_7 ACC3 ( .CLK(CLK), .ACCin({\toACC3[19] , \toACC3[18] , 
        \toACC3[17] , \toACC3[16] , \toACC3[15] , \toACC3[14] , \toACC3[13] , 
        \toACC3[12] , \toACC3[11] , \toACC3[10] , \toACC3[9] , \toACC3[8] , 
        \toACC3[7] , \toACC3[6] , \toACC3[5] , \toACC3[4] , \toACC3[3] , 
        \toACC3[2] , \toACC3[1] , \toACC3[0] }), .HALT(n274), .Count({
        \Count[1] , \Count[0] }), .accout(BDEGout3), .test_se(test_se), 
        .test_si(n368), .test_so(n367) );
  bdeg_DW02_mult_3_stage_0_test_1 mult_g ( .A(BDEGin), .CLK(CLK), .test_se(
        test_se), .test_si(n364), .test_so(n363), .\PRODUCT[28] (
        \multgout[28] ), .\PRODUCT[27] (\multgout[27] ), .\PRODUCT[26] (
        \multgout[26] ), .\PRODUCT[25] (\multgout[25] ), .\PRODUCT[24] (
        \multgout[24] ), .\PRODUCT[23] (\multgout[23] ), .\PRODUCT[22] (
        \multgout[22] ), .\PRODUCT[21] (\multgout[21] ), .\PRODUCT[20] (
        \multgout[20] ), .\PRODUCT[19] (\multgout[19] ), .\PRODUCT[18] (
        \multgout[18] ), .\PRODUCT[17] (\multgout[17] ), .\PRODUCT[16] (
        \multgout[16] ), .\PRODUCT[15] (\multgout[15] ), .\PRODUCT[14] (
        \multgout[14] ), .\PRODUCT[13] (\multgout[13] ), .\PRODUCT[12] (
        \multgout[12] ), .\PRODUCT[11] (\multgout[11] ), .\PRODUCT[10] (
        \multgout[10] ), .\PRODUCT[9] (\multgout[9] ) );
  bdeg_DW02_mult_3_stage_1_test_1 mult_e ( .A(BDEGin), .CLK(CLK), .test_se(
        test_se), .test_si(n365), .test_so(n364), .\PRODUCT[29] (
        \multeout[29] ), .\PRODUCT[28] (\multeout[28] ), .\PRODUCT[27] (
        \multeout[27] ), .\PRODUCT[26] (\multeout[26] ), .\PRODUCT[25] (
        \multeout[25] ), .\PRODUCT[24] (\multeout[24] ), .\PRODUCT[23] (
        \multeout[23] ), .\PRODUCT[22] (\multeout[22] ), .\PRODUCT[21] (
        \multeout[21] ), .\PRODUCT[20] (\multeout[20] ), .\PRODUCT[19] (
        \multeout[19] ), .\PRODUCT[18] (\multeout[18] ), .\PRODUCT[17] (
        \multeout[17] ), .\PRODUCT[16] (\multeout[16] ), .\PRODUCT[15] (
        \multeout[15] ), .\PRODUCT[14] (\multeout[14] ), .\PRODUCT[13] (
        \multeout[13] ), .\PRODUCT[12] (\multeout[12] ), .\PRODUCT[11] (
        \multeout[11] ), .\PRODUCT[10] (\multeout[10] ) );
  bdeg_DW02_mult_3_stage_2_test_1 mult_d ( .A(BDEGin), .CLK(CLK), .test_se(
        test_se), .test_si(n366), .test_so(n365), .\PRODUCT[29] (
        \multdout[29] ), .\PRODUCT[28] (\multdout[28] ), .\PRODUCT[27] (
        \multdout[27] ), .\PRODUCT[26] (\multdout[26] ), .\PRODUCT[25] (
        \multdout[25] ), .\PRODUCT[24] (\multdout[24] ), .\PRODUCT[23] (
        \multdout[23] ), .\PRODUCT[22] (\multdout[22] ), .\PRODUCT[21] (
        \multdout[21] ), .\PRODUCT[20] (\multdout[20] ), .\PRODUCT[19] (
        \multdout[19] ), .\PRODUCT[18] (\multdout[18] ), .\PRODUCT[17] (
        \multdout[17] ), .\PRODUCT[16] (\multdout[16] ), .\PRODUCT[15] (
        \multdout[15] ), .\PRODUCT[14] (\multdout[14] ), .\PRODUCT[13] (
        \multdout[13] ), .\PRODUCT[12] (\multdout[12] ), .\PRODUCT[11] (
        \multdout[11] ), .\PRODUCT[10] (\multdout[10] ) );
  bdeg_DW02_mult_3_stage_3_test_1 mult_b ( .A(BDEGin), .CLK(CLK), .test_se(
        test_se), .test_si(\Count[1] ), .test_so(n366), .\PRODUCT[28] (
        \multbout[28] ), .\PRODUCT[27] (\multbout[27] ), .\PRODUCT[26] (
        \multbout[26] ), .\PRODUCT[25] (\multbout[25] ), .\PRODUCT[24] (
        \multbout[24] ), .\PRODUCT[23] (\multbout[23] ), .\PRODUCT[22] (
        \multbout[22] ), .\PRODUCT[21] (\multbout[21] ), .\PRODUCT[20] (
        \multbout[20] ), .\PRODUCT[19] (\multbout[19] ), .\PRODUCT[18] (
        \multbout[18] ), .\PRODUCT[17] (\multbout[17] ), .\PRODUCT[16] (
        \multbout[16] ), .\PRODUCT[15] (\multbout[15] ), .\PRODUCT[14] (
        \multbout[14] ), .\PRODUCT[13] (\multbout[13] ), .\PRODUCT[12] (
        \multbout[12] ), .\PRODUCT[11] (\multbout[11] ), .\PRODUCT[10] (
        \multbout[10] ), .\PRODUCT[9] (\multbout[9] ) );
endmodule


module acf_DW_mult_tc_0_test_1 ( acf1mult_f_CLK, \a[17] , \a[16] , \a[15] , 
        \a[14] , \a[13] , \a[12] , \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , 
        \a[6] , \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] , \product[30] , 
        \product[29] , \product[28] , \product[27] , \product[26] , 
        \product[25] , \product[24] , \product[23] , \product[22] , 
        \product[21] , \product[20] , \product[19] , \product[18] , 
        \product[17] , \product[16] , \product[15] , \product[14] , 
        \product[13] , \product[12] , \product[11] , test_se, test_si, test_so
 );
  input acf1mult_f_CLK, \a[17] , \a[16] , \a[15] , \a[14] , \a[13] , \a[12] ,
         \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , \a[6] , \a[5] , \a[4] ,
         \a[3] , \a[2] , \a[1] , \a[0] , test_se, test_si;
  output \product[30] , \product[29] , \product[28] , \product[27] ,
         \product[26] , \product[25] , \product[24] , \product[23] ,
         \product[22] , \product[21] , \product[20] , \product[19] ,
         \product[18] , \product[17] , \product[16] , \product[15] ,
         \product[14] , \product[13] , \product[12] , \product[11] , test_so;
  wire   n1, n2, n3, n4, n5, n6, n10, n12, n13, n14, n21, n22, n23, n27, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n104, n105, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, net12171, n209, n211, n213, n215, n217, n219, n221, n223,
         n225, n227, n229, n231, n233, n235, n237, n239, n241, n243, n245,
         n247, n249, n251, n253, n255, n257, n259, n261, n263, n265, n267,
         n269, n271, n273, n275, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291;
  BUFX2 ASSIGN47 (.Y(n1), .A(\a[2] ));
  BUFX2 ASSIGN48 (.Y(n2), .A(\a[3] ));
  BUFX2 ASSIGN49 (.Y(n3), .A(\a[4] ));
  BUFX2 ASSIGN50 (.Y(n4), .A(\a[5] ));
  BUFX2 ASSIGN51 (.Y(n5), .A(\a[6] ));
  BUFX2 ASSIGN52 (.Y(n6), .A(\a[7] ));
  BUFX2 ASSIGN53 (.Y(n10), .A(\a[11] ));
  BUFX2 ASSIGN54 (.Y(n12), .A(\a[13] ));
  BUFX2 ASSIGN55 (.Y(n13), .A(\a[14] ));
  BUFX2 ASSIGN56 (.Y(n14), .A(\a[15] ));
  BUFX2 ASSIGN57 (.Y(n81), .A(\a[12] ));
  BUFX2 ASSIGN58 (.Y(n86), .A(\a[8] ));
  BUFX2 ASSIGN59 (.Y(n91), .A(\a[9] ));
  BUFX2 ASSIGN60 (.Y(n96), .A(\a[10] ));
  BUFX2 ASSIGN61 (.Y(net12171), .A(\a[17] ));
  BUFX2 ASSIGN62 (.Y(test_so), .A(n209));

  ADDHXL U34 ( .A(n21), .B(n239), .CO(n34), .S(n33) );
  ADDFXL U35 ( .A(n215), .B(n22), .CI(n243), .CO(n36), .S(n35) );
  ADDFXL U36 ( .A(n219), .B(n23), .CI(n247), .CO(n38), .S(n37) );
  ADDFXL U37 ( .A(n221), .B(n85), .CI(n249), .CO(n40), .S(n39) );
  ADDHXL U38 ( .A(n90), .B(n253), .CO(n42), .S(n41) );
  ADDFXL U39 ( .A(n209), .B(n225), .CI(n41), .CO(n44), .S(n43) );
  ADDHXL U40 ( .A(n95), .B(n213), .CO(n46), .S(n45) );
  CMPR42X1 U41 ( .A(n257), .B(n209), .C(n229), .D(n42), .ICI(n45), .S(n47), 
        .ICO(n49), .CO(n48) );
  ADDFXL U42 ( .A(n213), .B(n27), .CI(n46), .CO(n51), .S(n50) );
  CMPR42X1 U43 ( .A(n261), .B(n217), .C(n233), .D(n49), .ICI(n50), .S(n52), 
        .ICO(n54), .CO(n53) );
  ADDFXL U44 ( .A(n217), .B(n80), .CI(n221), .CO(n56), .S(n55) );
  CMPR42X1 U45 ( .A(n265), .B(n237), .C(n54), .D(n51), .ICI(n55), .S(n57), 
        .ICO(n59), .CO(n58) );
  ADDFXL U46 ( .A(n221), .B(n29), .CI(n225), .CO(n61), .S(n60) );
  CMPR42X1 U47 ( .A(n269), .B(n241), .C(n59), .D(n56), .ICI(n60), .S(n62), 
        .ICO(n64), .CO(n63) );
  ADDFXL U48 ( .A(n30), .B(\a[16] ), .CI(n225), .CO(n66), .S(n65) );
  CMPR42X1 U49 ( .A(n245), .B(n229), .C(n65), .D(n61), .ICI(n64), .S(n67), 
        .ICO(n69), .CO(n68) );
  ADDFXL U50 ( .A(n32), .B(n269), .CI(n229), .CO(n71), .S(n70) );
  CMPR42X1 U51 ( .A(n249), .B(n233), .C(n66), .D(n70), .ICI(n69), .S(n72), 
        .ICO(n74), .CO(n73) );
  ADDFXL U52 ( .A(n233), .B(n31), .CI(n237), .CO(n76), .S(n75) );
  CMPR42X1 U53 ( .A(\a[16] ), .B(n253), .C(n71), .D(n75), .ICI(n74), .S(n77), 
        .ICO(n79), .CO(n78) );
  CMPR42X1 U56 ( .A(n241), .B(n237), .C(n80), .D(n76), .ICI(n79), .S(n82), 
        .ICO(n84), .CO(n83) );
  CMPR42X1 U59 ( .A(n261), .B(n257), .C(n245), .D(n85), .ICI(n84), .S(n87), 
        .ICO(n89), .CO(n88) );
  CMPR42X1 U62 ( .A(n265), .B(n241), .C(n249), .D(n90), .ICI(n89), .S(n92), 
        .ICO(n94), .CO(n93) );
  CMPR42X1 U65 ( .A(n269), .B(n245), .C(n253), .D(n95), .ICI(n94), .S(n97), 
        .ICO(n99), .CO(n98) );
  CMPR42X1 U66 ( .A(n32), .B(n249), .C(n253), .D(n257), .ICI(n99), .S(n100), 
        .ICO(n102), .CO(n101) );
  ADDFXL U68 ( .A(n29), .B(n257), .CI(n102), .CO(n105), .S(n104) );
  ADDFXL U81 ( .A(n43), .B(n40), .CI(n116), .CO(n117), .S(\product[11] ) );
  ADDFXL U82 ( .A(n47), .B(n44), .CI(n117), .CO(n118), .S(\product[12] ) );
  ADDFXL U83 ( .A(n52), .B(n48), .CI(n118), .CO(n119), .S(\product[13] ) );
  ADDFXL U84 ( .A(n57), .B(n53), .CI(n119), .CO(n120), .S(\product[14] ) );
  ADDFXL U85 ( .A(n62), .B(n58), .CI(n120), .CO(n121), .S(\product[15] ) );
  ADDFXL U86 ( .A(n67), .B(n63), .CI(n121), .CO(n122), .S(\product[16] ) );
  ADDFXL U87 ( .A(n72), .B(n68), .CI(n122), .CO(n123), .S(\product[17] ) );
  ADDFXL U88 ( .A(n77), .B(n73), .CI(n123), .CO(n124), .S(\product[18] ) );
  ADDFXL U89 ( .A(n82), .B(n78), .CI(n124), .CO(n125), .S(\product[19] ) );
  ADDFXL U90 ( .A(n83), .B(n87), .CI(n125), .CO(n126), .S(\product[20] ) );
  ADDFXL U91 ( .A(n92), .B(n88), .CI(n126), .CO(n127), .S(\product[21] ) );
  ADDFXL U92 ( .A(n97), .B(n93), .CI(n127), .CO(n128), .S(\product[22] ) );
  ADDFXL U93 ( .A(n98), .B(n100), .CI(n128), .CO(n129), .S(\product[23] ) );
  ADDFXL U94 ( .A(n101), .B(n104), .CI(n129), .CO(n130), .S(\product[24] ) );
  ADDFXL U95 ( .A(n105), .B(n30), .CI(n130), .CO(n131), .S(\product[25] ) );
  ADDFXL U96 ( .A(n31), .B(n261), .CI(n131), .CO(n132), .S(\product[26] ) );
  ADDFXL U97 ( .A(n265), .B(n32), .CI(n132), .CO(n133), .S(\product[27] ) );
  ADDFXL U98 ( .A(n269), .B(n32), .CI(n133), .CO(n134), .S(\product[28] ) );
  CLKINVX1 U141 ( .A(net12171), .Y(n32) );
  CLKINVX1 U142 ( .A(n257), .Y(n80) );
  CLKINVX1 U143 ( .A(n253), .Y(n27) );
  CLKINVX1 U144 ( .A(n249), .Y(n95) );
  CLKINVX1 U145 ( .A(n245), .Y(n90) );
  CLKINVX1 U147 ( .A(n239), .Y(n23) );
  CLKINVX1 U148 ( .A(n277), .Y(n116) );
  AOI222XL U149 ( .A0(n275), .A1(n39), .B0(n275), .B1(n273), .C0(n273), .C1(
        n39), .Y(n277) );
  CLKINVX1 U150 ( .A(n279), .Y(n278) );
  AOI222XL U151 ( .A0(n280), .A1(n37), .B0(n280), .B1(n36), .C0(n36), .C1(n37), 
        .Y(n279) );
  CLKINVX1 U152 ( .A(n281), .Y(n280) );
  AOI222XL U153 ( .A0(n282), .A1(n35), .B0(n282), .B1(n34), .C0(n34), .C1(n35), 
        .Y(n281) );
  CLKINVX1 U154 ( .A(n283), .Y(n282) );
  AOI222XL U155 ( .A0(n284), .A1(n33), .B0(n284), .B1(n211), .C0(n211), .C1(
        n33), .Y(n283) );
  OAI222XL U156 ( .A0(n22), .A1(n285), .B0(n227), .B1(n285), .C0(n227), .C1(
        n22), .Y(n284) );
  CLKINVX1 U157 ( .A(n286), .Y(n285) );
  OAI222XL U158 ( .A0(n21), .A1(n287), .B0(n223), .B1(n287), .C0(n223), .C1(
        n21), .Y(n286) );
  AOI222XL U159 ( .A0(n288), .A1(n227), .B0(n289), .B1(n288), .C0(n289), .C1(
        n227), .Y(n287) );
  CLKINVX1 U160 ( .A(n219), .Y(n289) );
  OAI222XL U161 ( .A0(n290), .A1(n291), .B0(n215), .B1(n290), .C0(n215), .C1(
        n291), .Y(n288) );
  CLKINVX1 U162 ( .A(n223), .Y(n291) );
  NOR2BX1 U163 ( .AN(n211), .B(n219), .Y(n290) );
  CLKINVX1 U164 ( .A(n231), .Y(n21) );
  CLKINVX1 U165 ( .A(n235), .Y(n22) );
  CLKINVX1 U166 ( .A(n269), .Y(n31) );
  CLKINVX1 U167 ( .A(n265), .Y(n30) );
  CLKINVX1 U168 ( .A(n261), .Y(n29) );
  BUFX2 U106 ( .A(\product[29] ), .Y(\product[30] ) );
  CLKINVX1 U107 ( .A(n134), .Y(\product[29] ) );
  SDFFXL CLK1_r_REG19_S11 ( .D(n243), .SI(n243), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n241), .QN(n85) );
  SDFFQXL CLK1_r_REG34_S11 ( .D(\a[0] ), .SI(n213), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n211) );
  SDFFQXL CLK1_r_REG32_S11 ( .D(\a[1] ), .SI(n217), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n215) );
  SDFFQXL CLK1_r_REG30_S10 ( .D(n1), .SI(n221), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n219) );
  SDFFQXL CLK1_r_REG28_S10 ( .D(n2), .SI(n225), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n223) );
  SDFFQXL CLK1_r_REG26_S10 ( .D(n3), .SI(n229), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n227) );
  SDFFQXL CLK1_r_REG24_S10 ( .D(n4), .SI(n233), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n231) );
  SDFFQXL CLK1_r_REG22_S10 ( .D(n5), .SI(n237), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n235) );
  SDFFQXL CLK1_r_REG20_S10 ( .D(n6), .SI(n241), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n239) );
  SDFFQXL CLK1_r_REG18_S10 ( .D(n86), .SI(n275), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n243) );
  SDFFQXL CLK1_r_REG14_S10 ( .D(n91), .SI(n95), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n247) );
  SDFFQXL CLK1_r_REG12_S10 ( .D(n96), .SI(n27), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n251) );
  SDFFQXL CLK1_r_REG10_S10 ( .D(n10), .SI(n80), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n255) );
  SDFFQXL CLK1_r_REG8_S10 ( .D(n81), .SI(n29), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n259) );
  SDFFQXL CLK1_r_REG6_S10 ( .D(n12), .SI(n30), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n263) );
  SDFFQXL CLK1_r_REG4_S10 ( .D(n13), .SI(n31), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n267) );
  SDFFQXL CLK1_r_REG2_S10 ( .D(n14), .SI(test_si), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n271) );
  SDFFQXL CLK1_r_REG13_S11 ( .D(n251), .SI(n251), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n249) );
  SDFFQXL CLK1_r_REG11_S11 ( .D(n255), .SI(n255), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n253) );
  SDFFQXL CLK1_r_REG9_S11 ( .D(n259), .SI(n259), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n257) );
  SDFFQXL CLK1_r_REG7_S11 ( .D(n263), .SI(n263), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n261) );
  SDFFQXL CLK1_r_REG5_S11 ( .D(n267), .SI(n267), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n265) );
  SDFFQXL CLK1_r_REG3_S11 ( .D(n271), .SI(n271), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n269) );
  SDFFQXL CLK1_r_REG25_S11 ( .D(n231), .SI(n21), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n229) );
  SDFFQXL CLK1_r_REG23_S11 ( .D(n235), .SI(n22), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n233) );
  SDFFQXL CLK1_r_REG15_S11 ( .D(n247), .SI(n247), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n245) );
  SDFFQXL CLK1_r_REG35_S12 ( .D(n211), .SI(n211), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n209) );
  SDFFQXL CLK1_r_REG21_S11 ( .D(n239), .SI(n23), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n237) );
  SDFFQXL CLK1_r_REG33_S12 ( .D(n215), .SI(n215), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n213) );
  SDFFQXL CLK1_r_REG31_S11 ( .D(n219), .SI(n289), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n217) );
  SDFFQXL CLK1_r_REG27_S11 ( .D(n227), .SI(n227), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n225) );
  SDFFQXL CLK1_r_REG16_S11 ( .D(n38), .SI(n90), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n273) );
  SDFFQXL CLK1_r_REG17_S11 ( .D(n278), .SI(n273), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n275) );
  SDFFQXL CLK1_r_REG29_S11 ( .D(n223), .SI(n291), .SE(test_se), .CK(
        acf1mult_f_CLK), .Q(n221) );
endmodule


module acf_DW02_mult_3_stage_0_test_1 ( A, CLK, test_se, test_si, test_so, 
        \PRODUCT[30] , \PRODUCT[29] , \PRODUCT[28] , \PRODUCT[27] , 
        \PRODUCT[26] , \PRODUCT[25] , \PRODUCT[24] , \PRODUCT[23] , 
        \PRODUCT[22] , \PRODUCT[21] , \PRODUCT[20] , \PRODUCT[19] , 
        \PRODUCT[18] , \PRODUCT[17] , \PRODUCT[16] , \PRODUCT[15] , 
        \PRODUCT[14] , \PRODUCT[13] , \PRODUCT[12] , \PRODUCT[11]  );
  input [16:0] A;
  input CLK, test_se, test_si;
  output test_so, \PRODUCT[30] , \PRODUCT[29] , \PRODUCT[28] , \PRODUCT[27] ,
         \PRODUCT[26] , \PRODUCT[25] , \PRODUCT[24] , \PRODUCT[23] ,
         \PRODUCT[22] , \PRODUCT[21] , \PRODUCT[20] , \PRODUCT[19] ,
         \PRODUCT[18] , \PRODUCT[17] , \PRODUCT[16] , \PRODUCT[15] ,
         \PRODUCT[14] , \PRODUCT[13] , \PRODUCT[12] , \PRODUCT[11] ;
  wire   A_extended_17, n2, n4;
  BUFX2 ASSIGN63 (.Y(A_extended_17), .A(A[16]));

  SDFFQXL CLK1_r_REG0_S1 ( .D(A_extended_17), .SI(test_si), .SE(test_se), .CK(
        CLK), .Q(n4) );
  SDFFQXL CLK1_r_REG1_S2 ( .D(n4), .SI(n4), .SE(test_se), .CK(CLK), .Q(n2) );
  acf_DW_mult_tc_0_test_1 mult_98 ( .acf1mult_f_CLK(CLK), .\a[17] (n2), 
        .\a[16] (n2), .\a[15] (A[15]), .\a[14] (A[14]), .\a[13] (A[13]), 
        .\a[12] (A[12]), .\a[11] (A[11]), .\a[10] (A[10]), .\a[9] (A[9]), 
        .\a[8] (A[8]), .\a[7] (A[7]), .\a[6] (A[6]), .\a[5] (A[5]), .\a[4] (
        A[4]), .\a[3] (A[3]), .\a[2] (A[2]), .\a[1] (A[1]), .\a[0] (A[0]), 
        .\product[30] (\PRODUCT[30] ), .\product[29] (\PRODUCT[29] ), 
        .\product[28] (\PRODUCT[28] ), .\product[27] (\PRODUCT[27] ), 
        .\product[26] (\PRODUCT[26] ), .\product[25] (\PRODUCT[25] ), 
        .\product[24] (\PRODUCT[24] ), .\product[23] (\PRODUCT[23] ), 
        .\product[22] (\PRODUCT[22] ), .\product[21] (\PRODUCT[21] ), 
        .\product[20] (\PRODUCT[20] ), .\product[19] (\PRODUCT[19] ), 
        .\product[18] (\PRODUCT[18] ), .\product[17] (\PRODUCT[17] ), 
        .\product[16] (\PRODUCT[16] ), .\product[15] (\PRODUCT[15] ), 
        .\product[14] (\PRODUCT[14] ), .\product[13] (\PRODUCT[13] ), 
        .\product[12] (\PRODUCT[12] ), .\product[11] (\PRODUCT[11] ), 
        .test_se(test_se), .test_si(n2), .test_so(test_so) );
endmodule


module acf_DW_mult_tc_1_test_1 ( acf1mult_c_CLK, \a[17] , \a[16] , \a[15] , 
        \a[14] , \a[13] , \a[12] , \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , 
        \a[6] , \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] , \product[25] , 
        \product[24] , \product[23] , \product[22] , \product[21] , 
        \product[20] , \product[19] , \product[18] , \product[17] , 
        \product[16] , \product[15] , \product[14] , \product[13] , 
        \product[12] , \product[11] , \product[10] , \product[9] , 
        \product[8] , \product[7] , \product[6] , test_se, test_si, test_so );
  input acf1mult_c_CLK, \a[17] , \a[16] , \a[15] , \a[14] , \a[13] , \a[12] ,
         \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , \a[6] , \a[5] , \a[4] ,
         \a[3] , \a[2] , \a[1] , \a[0] , test_se, test_si;
  output \product[25] , \product[24] , \product[23] , \product[22] ,
         \product[21] , \product[20] , \product[19] , \product[18] ,
         \product[17] , \product[16] , \product[15] , \product[14] ,
         \product[13] , \product[12] , \product[11] , \product[10] ,
         \product[9] , \product[8] , \product[7] , \product[6] , test_so;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n28, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n77, n78, n79, n80, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         net12365, n153, n155, n157, n159, n161, n163, n165, n167, n169, n171,
         n173, n175, n177, n179, n181, n183, n185, n186, n187, n188;
  BUFX2 ASSIGN64 (.Y(n78), .A(\a[14] ));
  BUFX2 ASSIGN65 (.Y(n80), .A(\a[15] ));
  BUFX2 ASSIGN66 (.Y(net12365), .A(\a[17] ));
  BUFX2 ASSIGN67 (.Y(test_so), .A(n153));

  ADDFXL U22 ( .A(n15), .B(n13), .CI(n165), .CO(n32), .S(n31) );
  ADDFXL U23 ( .A(n16), .B(n14), .CI(n167), .CO(n34), .S(n33) );
  ADDFXL U24 ( .A(n17), .B(n15), .CI(n169), .CO(n36), .S(n35) );
  ADDHXL U25 ( .A(n16), .B(n18), .CO(n38), .S(n37) );
  ADDFXL U26 ( .A(n153), .B(n171), .CI(n37), .CO(n40), .S(n39) );
  CMPR42X1 U27 ( .A(n17), .B(n19), .C(n155), .D(n173), .ICI(n38), .S(n41), 
        .ICO(n43), .CO(n42) );
  CMPR42X1 U28 ( .A(n18), .B(n20), .C(n157), .D(n175), .ICI(n43), .S(n44), 
        .ICO(n46), .CO(n45) );
  CMPR42X1 U29 ( .A(n19), .B(n21), .C(n159), .D(n177), .ICI(n46), .S(n47), 
        .ICO(n49), .CO(n48) );
  CMPR42X1 U30 ( .A(n20), .B(n22), .C(n161), .D(n179), .ICI(n49), .S(n50), 
        .ICO(n52), .CO(n51) );
  CMPR42X1 U31 ( .A(n21), .B(n23), .C(n163), .D(n181), .ICI(n52), .S(n53), 
        .ICO(n55), .CO(n54) );
  CMPR42X1 U32 ( .A(n22), .B(n24), .C(n165), .D(n183), .ICI(n55), .S(n56), 
        .ICO(n58), .CO(n57) );
  CMPR42X1 U33 ( .A(\a[16] ), .B(n23), .C(n75), .D(n167), .ICI(n58), .S(n59), 
        .ICO(n61), .CO(n60) );
  CMPR42X1 U34 ( .A(n181), .B(n28), .C(n24), .D(n169), .ICI(n61), .S(n62), 
        .ICO(n64), .CO(n63) );
  CMPR42X1 U35 ( .A(n183), .B(n77), .C(n75), .D(n171), .ICI(n64), .S(n65), 
        .ICO(n67), .CO(n66) );
  CMPR42X1 U36 ( .A(n79), .B(n77), .C(n173), .D(\a[16] ), .ICI(n67), .S(n68), 
        .ICO(n70), .CO(n69) );
  ADDFXL U37 ( .A(n175), .B(n183), .CI(n70), .CO(n72), .S(n71) );
  ADDFXL U38 ( .A(n177), .B(n79), .CI(\a[16] ), .CO(n74), .S(n73) );
  ADDFXL U46 ( .A(n31), .B(n30), .CI(n83), .CO(n84), .S(\product[6] ) );
  ADDFXL U47 ( .A(n33), .B(n32), .CI(n84), .CO(n85), .S(\product[7] ) );
  ADDFXL U48 ( .A(n35), .B(n34), .CI(n85), .CO(n86), .S(\product[8] ) );
  ADDFXL U49 ( .A(n39), .B(n36), .CI(n86), .CO(n87), .S(\product[9] ) );
  ADDFXL U50 ( .A(n41), .B(n40), .CI(n87), .CO(n88), .S(\product[10] ) );
  ADDFXL U51 ( .A(n44), .B(n42), .CI(n88), .CO(n89), .S(\product[11] ) );
  ADDFXL U52 ( .A(n47), .B(n45), .CI(n89), .CO(n90), .S(\product[12] ) );
  ADDFXL U53 ( .A(n50), .B(n48), .CI(n90), .CO(n91), .S(\product[13] ) );
  ADDFXL U54 ( .A(n53), .B(n51), .CI(n91), .CO(n92), .S(\product[14] ) );
  ADDFXL U55 ( .A(n56), .B(n54), .CI(n92), .CO(n93), .S(\product[15] ) );
  ADDFXL U56 ( .A(n59), .B(n57), .CI(n93), .CO(n94), .S(\product[16] ) );
  ADDFXL U57 ( .A(n62), .B(n60), .CI(n94), .CO(n95), .S(\product[17] ) );
  ADDFXL U58 ( .A(n65), .B(n63), .CI(n95), .CO(n96), .S(\product[18] ) );
  ADDFXL U59 ( .A(n68), .B(n66), .CI(n96), .CO(n97), .S(\product[19] ) );
  ADDFXL U60 ( .A(n69), .B(n71), .CI(n97), .CO(n98), .S(\product[20] ) );
  ADDFXL U61 ( .A(n72), .B(n73), .CI(n98), .CO(n99), .S(\product[21] ) );
  ADDFXL U62 ( .A(n74), .B(n75), .CI(n99), .CO(n100), .S(\product[22] ) );
  ADDFXL U63 ( .A(n77), .B(n179), .CI(n100), .CO(n101), .S(\product[23] ) );
  ADDFXL U64 ( .A(n79), .B(n181), .CI(n101), .CO(n102), .S(\product[24] ) );
  XOR2X1 U87 ( .A(n79), .B(n185), .Y(\product[25] ) );
  XOR2X1 U88 ( .A(net12365), .B(n102), .Y(n185) );
  OAI222XL U89 ( .A0(n186), .A1(n187), .B0(n17), .B1(n186), .C0(n17), .C1(n187), .Y(n83) );
  XOR2X1 U90 ( .A(n153), .B(n157), .Y(n187) );
  AOI222XL U91 ( .A0(n161), .A1(n188), .B0(n13), .B1(n188), .C0(n13), .C1(n161), .Y(n186) );
  NAND2X1 U92 ( .A(n153), .B(n15), .Y(n188) );
  NAND2X1 U93 ( .A(n153), .B(n157), .Y(n30) );
  CLKINVX1 U94 ( .A(net12365), .Y(n28) );
  CLKINVX1 U95 ( .A(n183), .Y(n79) );
  CLKINVX1 U96 ( .A(n181), .Y(n77) );
  CLKINVX1 U97 ( .A(n179), .Y(n75) );
  CLKINVX1 U98 ( .A(n177), .Y(n24) );
  CLKINVX1 U99 ( .A(n175), .Y(n23) );
  CLKINVX1 U100 ( .A(n173), .Y(n22) );
  CLKINVX1 U101 ( .A(n171), .Y(n21) );
  CLKINVX1 U102 ( .A(n169), .Y(n20) );
  CLKINVX1 U103 ( .A(n167), .Y(n19) );
  CLKINVX1 U104 ( .A(n165), .Y(n18) );
  CLKINVX1 U105 ( .A(n163), .Y(n17) );
  CLKINVX1 U106 ( .A(n161), .Y(n16) );
  CLKINVX1 U107 ( .A(n159), .Y(n15) );
  CLKINVX1 U108 ( .A(n157), .Y(n14) );
  CLKINVX1 U109 ( .A(n155), .Y(n13) );
  SDFFQXL CLK1_r_REG36_S1 ( .D(\a[0] ), .SI(n13), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n153) );
  SDFFQXL CLK1_r_REG35_S1 ( .D(\a[1] ), .SI(n14), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n155) );
  SDFFQXL CLK1_r_REG34_S1 ( .D(\a[2] ), .SI(n15), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n157) );
  SDFFQXL CLK1_r_REG33_S1 ( .D(\a[3] ), .SI(n16), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n159) );
  SDFFQXL CLK1_r_REG32_S1 ( .D(\a[4] ), .SI(n17), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n161) );
  SDFFQXL CLK1_r_REG31_S1 ( .D(\a[5] ), .SI(n18), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n163) );
  SDFFQXL CLK1_r_REG29_S1 ( .D(\a[6] ), .SI(n19), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n165) );
  SDFFQXL CLK1_r_REG27_S1 ( .D(\a[7] ), .SI(n20), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n167) );
  SDFFQXL CLK1_r_REG25_S1 ( .D(\a[8] ), .SI(n21), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n169) );
  SDFFQXL CLK1_r_REG23_S1 ( .D(\a[9] ), .SI(n22), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n171) );
  SDFFQXL CLK1_r_REG21_S1 ( .D(\a[10] ), .SI(n23), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n173) );
  SDFFQXL CLK1_r_REG19_S1 ( .D(\a[11] ), .SI(n24), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n175) );
  SDFFQXL CLK1_r_REG17_S1 ( .D(\a[12] ), .SI(n75), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n177) );
  SDFFQXL CLK1_r_REG15_S1 ( .D(\a[13] ), .SI(n77), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n179) );
  SDFFQXL CLK1_r_REG13_S1 ( .D(n78), .SI(n79), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n181) );
  SDFFQXL CLK1_r_REG11_S1 ( .D(n80), .SI(test_si), .SE(test_se), .CK(
        acf1mult_c_CLK), .Q(n183) );
endmodule


module acf_DW02_mult_3_stage_1_test_1 ( A, CLK, test_se, test_si, test_so, 
        \PRODUCT[25] , \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , 
        \PRODUCT[21] , \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , 
        \PRODUCT[17] , \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , 
        \PRODUCT[13] , \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] , 
        \PRODUCT[9] , \PRODUCT[8] , \PRODUCT[7] , \PRODUCT[6]  );
  input [16:0] A;
  input CLK, test_se, test_si;
  output test_so, \PRODUCT[25] , \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] ,
         \PRODUCT[21] , \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] ,
         \PRODUCT[17] , \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] ,
         \PRODUCT[13] , \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] ,
         \PRODUCT[9] , \PRODUCT[8] , \PRODUCT[7] , \PRODUCT[6] ;
  wire   n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, A_extended_17, n42;
  BUFX2 ASSIGN68 (.Y(A_extended_17), .A(A[16]));

  SDFFQXL CLK1_r_REG0_S1 ( .D(A_extended_17), .SI(test_si), .SE(test_se), .CK(
        CLK), .Q(n42) );
  SDFFQXL CLK1_r_REG30_S2 ( .D(n73), .SI(\PRODUCT[7] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[6] ) );
  SDFFQXL CLK1_r_REG28_S2 ( .D(n72), .SI(\PRODUCT[8] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[7] ) );
  SDFFQXL CLK1_r_REG26_S2 ( .D(n71), .SI(\PRODUCT[9] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[8] ) );
  SDFFQXL CLK1_r_REG24_S2 ( .D(n70), .SI(\PRODUCT[10] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[9] ) );
  SDFFQXL CLK1_r_REG22_S2 ( .D(n69), .SI(\PRODUCT[11] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[10] ) );
  SDFFQXL CLK1_r_REG20_S2 ( .D(n68), .SI(\PRODUCT[12] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[11] ) );
  SDFFQXL CLK1_r_REG18_S2 ( .D(n67), .SI(\PRODUCT[13] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[12] ) );
  SDFFQXL CLK1_r_REG16_S2 ( .D(n66), .SI(\PRODUCT[14] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[13] ) );
  SDFFQXL CLK1_r_REG14_S2 ( .D(n65), .SI(\PRODUCT[15] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[14] ) );
  SDFFQXL CLK1_r_REG12_S2 ( .D(n64), .SI(\PRODUCT[16] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[15] ) );
  SDFFQXL CLK1_r_REG10_S2 ( .D(n63), .SI(\PRODUCT[17] ), .SE(test_se), .CK(CLK), .Q(\PRODUCT[16] ) );
  SDFFQXL CLK1_r_REG9_S2 ( .D(n62), .SI(\PRODUCT[18] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[17] ) );
  SDFFQXL CLK1_r_REG8_S2 ( .D(n61), .SI(\PRODUCT[19] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[18] ) );
  SDFFQXL CLK1_r_REG7_S2 ( .D(n60), .SI(\PRODUCT[20] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[19] ) );
  SDFFQXL CLK1_r_REG6_S2 ( .D(n59), .SI(\PRODUCT[21] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[20] ) );
  SDFFQXL CLK1_r_REG5_S2 ( .D(n58), .SI(\PRODUCT[22] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[21] ) );
  SDFFQXL CLK1_r_REG4_S2 ( .D(n57), .SI(\PRODUCT[23] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[22] ) );
  SDFFQXL CLK1_r_REG3_S2 ( .D(n56), .SI(\PRODUCT[24] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[23] ) );
  SDFFQXL CLK1_r_REG2_S2 ( .D(n55), .SI(\PRODUCT[25] ), .SE(test_se), .CK(CLK), 
        .Q(\PRODUCT[24] ) );
  SDFFQXL CLK1_r_REG1_S2 ( .D(n54), .SI(n42), .SE(test_se), .CK(CLK), .Q(
        \PRODUCT[25] ) );
  acf_DW_mult_tc_1_test_1 mult_98 ( .acf1mult_c_CLK(CLK), .\a[17] (n42), 
        .\a[16] (n42), .\a[15] (A[15]), .\a[14] (A[14]), .\a[13] (A[13]), 
        .\a[12] (A[12]), .\a[11] (A[11]), .\a[10] (A[10]), .\a[9] (A[9]), 
        .\a[8] (A[8]), .\a[7] (A[7]), .\a[6] (A[6]), .\a[5] (A[5]), .\a[4] (
        A[4]), .\a[3] (A[3]), .\a[2] (A[2]), .\a[1] (A[1]), .\a[0] (A[0]), 
        .\product[25] (n54), .\product[24] (n55), .\product[23] (n56), 
        .\product[22] (n57), .\product[21] (n58), .\product[20] (n59), 
        .\product[19] (n60), .\product[18] (n61), .\product[17] (n62), 
        .\product[16] (n63), .\product[15] (n64), .\product[14] (n65), 
        .\product[13] (n66), .\product[12] (n67), .\product[11] (n68), 
        .\product[10] (n69), .\product[9] (n70), .\product[8] (n71), 
        .\product[7] (n72), .\product[6] (n73), .test_se(test_se), .test_si(
        \PRODUCT[6] ), .test_so(test_so) );
endmodule


module acf_DW_mult_tc_2_test_1 ( acf1mult_a_CLK, \a[16] , \a[15] , \a[14] , 
        \a[13] , \a[12] , \a[11] , \a[10] , \a[9] , \a[8] , \a[7] , \a[6] , 
        \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] , \product[24] , 
        \product[23] , \product[22] , \product[21] , \product[20] , 
        \product[19] , \product[18] , \product[17] , \product[16] , 
        \product[15] , \product[14] , \product[13] , \product[12] , 
        \product[11] , \product[10] , \product[9] , \product[8] , \product[7] , 
        \product[6] , \product[5] , test_se, test_si, test_so );
  input acf1mult_a_CLK, \a[16] , \a[15] , \a[14] , \a[13] , \a[12] , \a[11] ,
         \a[10] , \a[9] , \a[8] , \a[7] , \a[6] , \a[5] , \a[4] , \a[3] ,
         \a[2] , \a[1] , \a[0] , test_se, test_si;
  output \product[24] , \product[23] , \product[22] , \product[21] ,
         \product[20] , \product[19] , \product[18] , \product[17] ,
         \product[16] , \product[15] , \product[14] , \product[13] ,
         \product[12] , \product[11] , \product[10] , \product[9] ,
         \product[8] , \product[7] , \product[6] , \product[5] , test_so;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n265, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n264, n162, n165, n168, n171, n174, n177, n180,
         n183, n186, n189, n192, n195, n198, n201, n204, n207, n210, n213,
         n216, n219, n222, n225, n228, n231, n234, n237, n240, n243, n246,
         n249, n252, n255, n261, n263;
  BUFX2 ASSIGN69 (.Y(n3), .A(\a[4] ));
  BUFX2 ASSIGN70 (.Y(n4), .A(\a[5] ));
  BUFX2 ASSIGN71 (.Y(n5), .A(\a[6] ));
  BUFX2 ASSIGN72 (.Y(n6), .A(\a[7] ));
  BUFX2 ASSIGN73 (.Y(n7), .A(\a[8] ));
  BUFX2 ASSIGN74 (.Y(n8), .A(\a[9] ));
  BUFX2 ASSIGN75 (.Y(n9), .A(\a[10] ));
  BUFX2 ASSIGN76 (.Y(n10), .A(\a[11] ));
  BUFX2 ASSIGN77 (.Y(n11), .A(\a[12] ));
  BUFX2 ASSIGN78 (.Y(n12), .A(\a[13] ));
  BUFX2 ASSIGN79 (.Y(n13), .A(\a[14] ));
  BUFX2 ASSIGN80 (.Y(n14), .A(\a[15] ));
  BUFX2 ASSIGN81 (.Y(test_so), .A(n162));

  ADDHXL U13 ( .A(n186), .B(n174), .CO(n16), .S(n15) );
  ADDHXL U14 ( .A(n168), .B(n162), .CO(n18), .S(n17) );
  ADDFXL U15 ( .A(n180), .B(n192), .CI(n16), .CO(n20), .S(n19) );
  CMPR42X1 U16 ( .A(n174), .B(n168), .C(n186), .D(n198), .ICI(n18), .S(n21), 
        .ICO(n23), .CO(n22) );
  ADDHXL U17 ( .A(n174), .B(n162), .CO(n25), .S(n265) );
  CMPR42X1 U18 ( .A(n204), .B(n180), .C(n192), .D(n23), .ICI(n265), .S(n26), 
        .ICO(n28), .CO(n27) );
  CMPR42X1 U19 ( .A(n210), .B(n186), .C(n198), .D(n28), .ICI(n264), .S(n29), 
        .ICO(n31), .CO(n30) );
  ADDFXL U20 ( .A(n174), .B(n186), .CI(n192), .CO(n33), .S(n32) );
  CMPR42X1 U21 ( .A(n216), .B(n204), .C(n31), .D(n85), .ICI(n32), .S(n34), 
        .ICO(n36), .CO(n35) );
  ADDFXL U22 ( .A(n180), .B(n192), .CI(n198), .CO(n38), .S(n37) );
  CMPR42X1 U23 ( .A(n222), .B(n210), .C(n36), .D(n33), .ICI(n37), .S(n39), 
        .ICO(n41), .CO(n40) );
  ADDFXL U24 ( .A(n186), .B(n198), .CI(n204), .CO(n43), .S(n42) );
  CMPR42X1 U25 ( .A(n228), .B(n216), .C(n38), .D(n42), .ICI(n41), .S(n44), 
        .ICO(n46), .CO(n45) );
  ADDFXL U26 ( .A(n192), .B(n204), .CI(n210), .CO(n48), .S(n47) );
  CMPR42X1 U27 ( .A(n234), .B(n222), .C(n43), .D(n47), .ICI(n46), .S(n49), 
        .ICO(n51), .CO(n50) );
  ADDFXL U28 ( .A(n198), .B(n210), .CI(n216), .CO(n53), .S(n52) );
  CMPR42X1 U29 ( .A(n240), .B(n228), .C(n48), .D(n52), .ICI(n51), .S(n54), 
        .ICO(n56), .CO(n55) );
  ADDFXL U30 ( .A(n204), .B(n216), .CI(n222), .CO(n58), .S(n57) );
  CMPR42X1 U31 ( .A(n246), .B(n234), .C(n53), .D(n57), .ICI(n56), .S(n59), 
        .ICO(n61), .CO(n60) );
  ADDFXL U32 ( .A(n210), .B(n222), .CI(n228), .CO(n63), .S(n62) );
  CMPR42X1 U33 ( .A(n252), .B(n240), .C(n58), .D(n62), .ICI(n61), .S(n64), 
        .ICO(n66), .CO(n65) );
  ADDFXL U34 ( .A(n216), .B(\product[24] ), .CI(n228), .CO(n68), .S(n67) );
  CMPR42X1 U35 ( .A(n246), .B(n234), .C(n67), .D(n63), .ICI(n66), .S(n69), 
        .ICO(n71), .CO(n70) );
  ADDFXL U36 ( .A(n222), .B(\product[24] ), .CI(n234), .CO(n73), .S(n72) );
  CMPR42X1 U37 ( .A(n252), .B(n240), .C(n72), .D(n68), .ICI(n71), .S(n74), 
        .ICO(n76), .CO(n75) );
  CMPR42X1 U38 ( .A(n246), .B(n228), .C(n240), .D(n73), .ICI(n76), .S(n77), 
        .ICO(n79), .CO(n78) );
  CMPR42X1 U39 ( .A(\product[24] ), .B(n252), .C(n234), .D(n246), .ICI(n79), 
        .S(n80), .ICO(n82), .CO(n81) );
  ADDFXL U40 ( .A(n240), .B(n252), .CI(n82), .CO(n84), .S(n83) );
  ADDFXL U41 ( .A(n180), .B(n168), .CI(n25), .CO(n85), .S(n264) );
  ADDFXL U43 ( .A(n19), .B(n17), .CI(n86), .CO(n87), .S(\product[5] ) );
  ADDFXL U44 ( .A(n21), .B(n20), .CI(n87), .CO(n88), .S(\product[6] ) );
  ADDFXL U45 ( .A(n26), .B(n22), .CI(n88), .CO(n89), .S(\product[7] ) );
  ADDFXL U46 ( .A(n29), .B(n27), .CI(n89), .CO(n90), .S(\product[8] ) );
  ADDFXL U47 ( .A(n34), .B(n30), .CI(n90), .CO(n91), .S(\product[9] ) );
  ADDFXL U48 ( .A(n39), .B(n35), .CI(n91), .CO(n92), .S(\product[10] ) );
  ADDFXL U49 ( .A(n44), .B(n40), .CI(n92), .CO(n93), .S(\product[11] ) );
  ADDFXL U50 ( .A(n49), .B(n45), .CI(n93), .CO(n94), .S(\product[12] ) );
  ADDFXL U51 ( .A(n54), .B(n50), .CI(n94), .CO(n95), .S(\product[13] ) );
  ADDFXL U52 ( .A(n59), .B(n55), .CI(n95), .CO(n96), .S(\product[14] ) );
  ADDFXL U53 ( .A(n64), .B(n60), .CI(n96), .CO(n97), .S(\product[15] ) );
  ADDFXL U54 ( .A(n69), .B(n65), .CI(n97), .CO(n98), .S(\product[16] ) );
  ADDFXL U55 ( .A(n74), .B(n70), .CI(n98), .CO(n99), .S(\product[17] ) );
  ADDFXL U56 ( .A(n77), .B(n75), .CI(n99), .CO(n100), .S(\product[18] ) );
  ADDFXL U57 ( .A(n78), .B(n80), .CI(n100), .CO(n101), .S(\product[19] ) );
  ADDFXL U58 ( .A(n81), .B(n83), .CI(n101), .CO(n102), .S(\product[20] ) );
  ADDFXL U59 ( .A(n84), .B(n246), .CI(n102), .CO(n103), .S(\product[21] ) );
  ADDFXL U60 ( .A(n252), .B(\product[24] ), .CI(n103), .CO(\product[23] ), .S(
        \product[22] ) );
  CLKINVX1 U100 ( .A(n263), .Y(n86) );
  AOI222XL U101 ( .A0(n85), .A1(n15), .B0(n162), .B1(n85), .C0(n162), .C1(n15), 
        .Y(n263) );
  SDFFQXL CLK1_r_REG32_S11 ( .D(\a[0] ), .SI(n168), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n165) );
  SDFFQXL CLK1_r_REG30_S11 ( .D(\a[1] ), .SI(n174), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n171) );
  SDFFQXL CLK1_r_REG28_S10 ( .D(\a[2] ), .SI(n180), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n177) );
  SDFFQXL CLK1_r_REG26_S10 ( .D(\a[3] ), .SI(n186), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n183) );
  SDFFQXL CLK1_r_REG24_S10 ( .D(n3), .SI(n192), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n189) );
  SDFFQXL CLK1_r_REG22_S10 ( .D(n4), .SI(n198), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n195) );
  SDFFQXL CLK1_r_REG20_S10 ( .D(n5), .SI(n204), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n201) );
  SDFFQXL CLK1_r_REG18_S10 ( .D(n6), .SI(n210), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n207) );
  SDFFQXL CLK1_r_REG16_S10 ( .D(n7), .SI(n216), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n213) );
  SDFFQXL CLK1_r_REG14_S10 ( .D(n8), .SI(n222), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n219) );
  SDFFQXL CLK1_r_REG12_S10 ( .D(n9), .SI(n228), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n225) );
  SDFFQXL CLK1_r_REG10_S10 ( .D(n10), .SI(n234), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n231) );
  SDFFQXL CLK1_r_REG8_S10 ( .D(n11), .SI(n240), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n237) );
  SDFFQXL CLK1_r_REG6_S10 ( .D(n12), .SI(n246), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n243) );
  SDFFQXL CLK1_r_REG4_S10 ( .D(n13), .SI(n252), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n249) );
  SDFFQXL CLK1_r_REG2_S10 ( .D(n14), .SI(\product[24] ), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n255) );
  SDFFQXL CLK1_r_REG0_S1 ( .D(\a[16] ), .SI(test_si), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n261) );
  SDFFQXL CLK1_r_REG33_S12 ( .D(n165), .SI(n165), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n162) );
  SDFFQXL CLK1_r_REG29_S11 ( .D(n177), .SI(n177), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n174) );
  SDFFQXL CLK1_r_REG27_S11 ( .D(n183), .SI(n183), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n180) );
  SDFFQXL CLK1_r_REG25_S11 ( .D(n189), .SI(n189), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n186) );
  SDFFQXL CLK1_r_REG23_S11 ( .D(n195), .SI(n195), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n192) );
  SDFFQXL CLK1_r_REG21_S11 ( .D(n201), .SI(n201), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n198) );
  SDFFQXL CLK1_r_REG19_S11 ( .D(n207), .SI(n207), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n204) );
  SDFFQXL CLK1_r_REG17_S11 ( .D(n213), .SI(n213), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n210) );
  SDFFQXL CLK1_r_REG15_S11 ( .D(n219), .SI(n219), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n216) );
  SDFFQXL CLK1_r_REG13_S11 ( .D(n225), .SI(n225), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n222) );
  SDFFQXL CLK1_r_REG11_S11 ( .D(n231), .SI(n231), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n228) );
  SDFFQXL CLK1_r_REG9_S11 ( .D(n237), .SI(n237), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n234) );
  SDFFQXL CLK1_r_REG7_S11 ( .D(n243), .SI(n243), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n240) );
  SDFFQXL CLK1_r_REG5_S11 ( .D(n249), .SI(n249), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n246) );
  SDFFQXL CLK1_r_REG3_S11 ( .D(n255), .SI(n255), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n252) );
  SDFFQXL CLK1_r_REG1_S2 ( .D(n261), .SI(n261), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(\product[24] ) );
  SDFFQXL CLK1_r_REG31_S12 ( .D(n171), .SI(n171), .SE(test_se), .CK(
        acf1mult_a_CLK), .Q(n168) );
endmodule


module acf_DW02_mult_3_stage_2_test_1 ( A, CLK, test_si, test_se, test_so, 
        \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , \PRODUCT[21] , 
        \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , \PRODUCT[17] , 
        \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , \PRODUCT[13] , 
        \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] , \PRODUCT[9] , 
        \PRODUCT[8] , \PRODUCT[7] , \PRODUCT[6] , \PRODUCT[5]  );
  input [16:0] A;
  input CLK, test_si, test_se;
  output test_so, \PRODUCT[24] , \PRODUCT[23] , \PRODUCT[22] , \PRODUCT[21] ,
         \PRODUCT[20] , \PRODUCT[19] , \PRODUCT[18] , \PRODUCT[17] ,
         \PRODUCT[16] , \PRODUCT[15] , \PRODUCT[14] , \PRODUCT[13] ,
         \PRODUCT[12] , \PRODUCT[11] , \PRODUCT[10] , \PRODUCT[9] ,
         \PRODUCT[8] , \PRODUCT[7] , \PRODUCT[6] , \PRODUCT[5] ;
  wire   A_extended_17;
  BUFX2 ASSIGN82 (.Y(A_extended_17), .A(A[16]));

  acf_DW_mult_tc_2_test_1 mult_98 ( .acf1mult_a_CLK(CLK), .\a[16] (
        A_extended_17), .\a[15] (A[15]), .\a[14] (A[14]), .\a[13] (A[13]), 
        .\a[12] (A[12]), .\a[11] (A[11]), .\a[10] (A[10]), .\a[9] (A[9]), 
        .\a[8] (A[8]), .\a[7] (A[7]), .\a[6] (A[6]), .\a[5] (A[5]), .\a[4] (
        A[4]), .\a[3] (A[3]), .\a[2] (A[2]), .\a[1] (A[1]), .\a[0] (A[0]), 
        .\product[24] (\PRODUCT[24] ), .\product[23] (\PRODUCT[23] ), 
        .\product[22] (\PRODUCT[22] ), .\product[21] (\PRODUCT[21] ), 
        .\product[20] (\PRODUCT[20] ), .\product[19] (\PRODUCT[19] ), 
        .\product[18] (\PRODUCT[18] ), .\product[17] (\PRODUCT[17] ), 
        .\product[16] (\PRODUCT[16] ), .\product[15] (\PRODUCT[15] ), 
        .\product[14] (\PRODUCT[14] ), .\product[13] (\PRODUCT[13] ), 
        .\product[12] (\PRODUCT[12] ), .\product[11] (\PRODUCT[11] ), 
        .\product[10] (\PRODUCT[10] ), .\product[9] (\PRODUCT[9] ), 
        .\product[8] (\PRODUCT[8] ), .\product[7] (\PRODUCT[7] ), 
        .\product[6] (\PRODUCT[6] ), .\product[5] (\PRODUCT[5] ), .test_se(
        test_se), .test_si(test_si), .test_so(test_so) );
endmodule


module add_pipe1_test_7 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_8_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_8_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module add_pipe1_test_6 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_9_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_9_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module ACC_test_3 ( CLK, ACCin, HALT, Count, accout, test_se, test_si, test_so
 );
  input [19:0] ACCin;
  input [1:0] Count;
  output [17:0] accout;
  input CLK, HALT, test_se, test_si;
  output test_so;
  wire   \Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , \Z1[15] , \Z1[14] , \Z1[13] ,
         \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , \Z1[8] , \Z1[7] , \Z1[6] ,
         \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , \Z1[0] , N3, N4, N5, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, \rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] ,
         \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] ,
         \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] ,
         \Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , \Z2[15] , \Z2[14] , \Z2[13] ,
         \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , \Z2[8] , \Z2[7] , \Z2[6] ,
         \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , \Z2[0] , N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N44, \node2[19] , \node2[18] , \node2[17] ,
         \node2[16] , \node2[15] , \node2[14] , \node2[13] , \node2[12] ,
         \node2[11] , \node2[10] , \node2[9] , \node2[8] , \node2[7] ,
         \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] ,
         \node2[1] , \node2[0] , n2, n1, n310, n43, n50, n60, n70, n80, n110,
         n120, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188;
  BUFX2 ASSIGN83 (.Y(test_so), .A(\rn[10] ));

  CLKINVX1 U2 ( .A(n130), .Y(n60) );
  CLKBUFX3 U3 ( .A(HALT), .Y(n130) );
  CLKINVX1 U4 ( .A(n120), .Y(n70) );
  CLKBUFX3 U5 ( .A(HALT), .Y(n120) );
  CLKINVX1 U6 ( .A(n110), .Y(n80) );
  CLKBUFX3 U7 ( .A(HALT), .Y(n110) );
  NOR2BX1 U8 ( .AN(\rn[19] ), .B(n43), .Y(N42) );
  NOR2BX1 U9 ( .AN(\rn[18] ), .B(n43), .Y(N41) );
  NOR2BX1 U10 ( .AN(\rn[17] ), .B(n43), .Y(N40) );
  NOR2BX1 U11 ( .AN(\rn[16] ), .B(n43), .Y(N39) );
  NOR2BX1 U12 ( .AN(\rn[15] ), .B(n43), .Y(N38) );
  CLKBUFX3 U13 ( .A(n2), .Y(n43) );
  CLKBUFX3 U14 ( .A(n2), .Y(n310) );
  NOR2BX1 U15 ( .AN(\rn[14] ), .B(n43), .Y(N37) );
  NOR2BX1 U16 ( .AN(\rn[13] ), .B(n43), .Y(N36) );
  NOR2BX1 U17 ( .AN(\rn[12] ), .B(n43), .Y(N35) );
  NOR2BX1 U18 ( .AN(\rn[11] ), .B(n310), .Y(N34) );
  CLKBUFX3 U19 ( .A(n2), .Y(n50) );
  CLKBUFX3 U20 ( .A(N44), .Y(n1) );
  NOR3BXL U21 ( .AN(Count[1]), .B(HALT), .C(Count[0]), .Y(N44) );
  OR2X1 U22 ( .A(Count[0]), .B(Count[1]), .Y(n2) );
  NOR2BX1 U23 ( .AN(\rn[10] ), .B(n310), .Y(N33) );
  NOR2BX1 U24 ( .AN(\rn[9] ), .B(n310), .Y(N32) );
  NOR2BX1 U25 ( .AN(\rn[8] ), .B(n310), .Y(N31) );
  NOR2BX1 U26 ( .AN(\rn[7] ), .B(n310), .Y(N30) );
  NOR2BX1 U27 ( .AN(\rn[6] ), .B(n310), .Y(N29) );
  NOR2BX1 U28 ( .AN(\rn[5] ), .B(n310), .Y(N28) );
  NOR2BX1 U29 ( .AN(\rn[4] ), .B(n310), .Y(N27) );
  NOR2BX1 U30 ( .AN(\rn[3] ), .B(n310), .Y(N26) );
  NOR2BX1 U31 ( .AN(\rn[2] ), .B(n310), .Y(N25) );
  NOR2BX1 U32 ( .AN(\rn[1] ), .B(n310), .Y(N24) );
  NOR2BX1 U33 ( .AN(\rn[0] ), .B(n310), .Y(N23) );
  AND2X2 U34 ( .A(ACCin[1]), .B(n43), .Y(N4) );
  AND2X2 U35 ( .A(ACCin[2]), .B(n43), .Y(N5) );
  AND2X2 U36 ( .A(ACCin[3]), .B(n43), .Y(N6) );
  AND2X2 U37 ( .A(ACCin[4]), .B(n43), .Y(N7) );
  AND2X2 U38 ( .A(ACCin[5]), .B(n50), .Y(N8) );
  AND2X2 U39 ( .A(ACCin[6]), .B(n50), .Y(N9) );
  AND2X2 U40 ( .A(ACCin[7]), .B(n43), .Y(N10) );
  AND2X2 U41 ( .A(ACCin[8]), .B(n50), .Y(N11) );
  AND2X2 U42 ( .A(ACCin[9]), .B(n50), .Y(N12) );
  AND2X2 U43 ( .A(ACCin[10]), .B(n50), .Y(N13) );
  AND2X2 U44 ( .A(ACCin[11]), .B(n50), .Y(N14) );
  AND2X2 U45 ( .A(ACCin[12]), .B(n50), .Y(N15) );
  AND2X2 U46 ( .A(ACCin[13]), .B(n50), .Y(N16) );
  AND2X2 U47 ( .A(ACCin[14]), .B(n50), .Y(N17) );
  AND2X2 U48 ( .A(ACCin[15]), .B(n50), .Y(N18) );
  AND2X2 U49 ( .A(ACCin[16]), .B(n50), .Y(N19) );
  AND2X2 U50 ( .A(ACCin[17]), .B(n50), .Y(N20) );
  AND2X2 U51 ( .A(ACCin[18]), .B(n50), .Y(N21) );
  AND2X2 U52 ( .A(ACCin[19]), .B(n50), .Y(N22) );
  AND2X2 U53 ( .A(ACCin[0]), .B(n43), .Y(N3) );
  SEDFFXL Z1_reg_19_ ( .D(N22), .SI(n170), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z1[19] ), .QN(n169) );
  SEDFFXL Z2_reg_16_ ( .D(N39), .SI(n153), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[16] ), .QN(n152) );
  SEDFFXL Z2_reg_15_ ( .D(N38), .SI(n154), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[15] ), .QN(n153) );
  SEDFFXL Z2_reg_14_ ( .D(N37), .SI(n155), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[14] ), .QN(n154) );
  SEDFFXL Z2_reg_13_ ( .D(N36), .SI(n156), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[13] ), .QN(n155) );
  SEDFFXL Z2_reg_12_ ( .D(N35), .SI(n157), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[12] ), .QN(n156) );
  SEDFFXL Z2_reg_11_ ( .D(N34), .SI(n158), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[11] ), .QN(n157) );
  SEDFFXL Z2_reg_10_ ( .D(N33), .SI(n159), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[10] ), .QN(n158) );
  SEDFFXL Z2_reg_9_ ( .D(N32), .SI(n160), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[9] ), .QN(n159) );
  SEDFFXL Z2_reg_8_ ( .D(N31), .SI(n161), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[8] ), .QN(n160) );
  SEDFFXL Z2_reg_7_ ( .D(N30), .SI(n162), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[7] ), .QN(n161) );
  SEDFFXL Z2_reg_6_ ( .D(N29), .SI(n163), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[6] ), .QN(n162) );
  SEDFFXL Z2_reg_5_ ( .D(N28), .SI(n164), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[5] ), .QN(n163) );
  SEDFFXL Z2_reg_4_ ( .D(N27), .SI(n165), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[4] ), .QN(n164) );
  SEDFFXL Z2_reg_3_ ( .D(N26), .SI(n166), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[3] ), .QN(n165) );
  SEDFFXL Z2_reg_2_ ( .D(N25), .SI(n167), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[2] ), .QN(n166) );
  SEDFFXL Z2_reg_1_ ( .D(N24), .SI(n168), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[1] ), .QN(n167) );
  SEDFFXL Z2_reg_0_ ( .D(N23), .SI(n169), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[0] ), .QN(n168) );
  SEDFFXL Z1_reg_18_ ( .D(N21), .SI(n171), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[18] ), .QN(n170) );
  SEDFFXL Z1_reg_17_ ( .D(N20), .SI(n172), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[17] ), .QN(n171) );
  SEDFFXL Z1_reg_16_ ( .D(N19), .SI(n173), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[16] ), .QN(n172) );
  SEDFFXL Z1_reg_15_ ( .D(N18), .SI(n174), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[15] ), .QN(n173) );
  SEDFFXL Z1_reg_14_ ( .D(N17), .SI(n175), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[14] ), .QN(n174) );
  SEDFFXL Z1_reg_13_ ( .D(N16), .SI(n176), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[13] ), .QN(n175) );
  SEDFFXL Z1_reg_12_ ( .D(N15), .SI(n177), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[12] ), .QN(n176) );
  SEDFFXL Z1_reg_11_ ( .D(N14), .SI(n178), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[11] ), .QN(n177) );
  SEDFFXL Z1_reg_10_ ( .D(N13), .SI(n179), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[10] ), .QN(n178) );
  SEDFFXL Z1_reg_9_ ( .D(N12), .SI(n180), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[9] ), .QN(n179) );
  SEDFFXL Z1_reg_8_ ( .D(N11), .SI(n181), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[8] ), .QN(n180) );
  SEDFFXL Z1_reg_7_ ( .D(N10), .SI(n182), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[7] ), .QN(n181) );
  SEDFFXL Z1_reg_6_ ( .D(N9), .SI(n183), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[6] ), .QN(n182) );
  SEDFFXL Z1_reg_5_ ( .D(N8), .SI(n184), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[5] ), .QN(n183) );
  SEDFFXL Z1_reg_4_ ( .D(N7), .SI(n185), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[4] ), .QN(n184) );
  SEDFFXL Z1_reg_3_ ( .D(N6), .SI(n186), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[3] ), .QN(n185) );
  SEDFFXL Z1_reg_2_ ( .D(N5), .SI(n187), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[2] ), .QN(n186) );
  SEDFFXL Z1_reg_1_ ( .D(N4), .SI(n188), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[1] ), .QN(n187) );
  SEDFFXL Z1_reg_0_ ( .D(N3), .SI(test_si), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z1[0] ), .QN(n188) );
  SEDFFXL accout_reg_14_ ( .D(\rn[16] ), .SI(n135), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[14]), .QN(n134) );
  SEDFFXL accout_reg_13_ ( .D(\rn[15] ), .SI(n136), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[13]), .QN(n135) );
  SEDFFXL accout_reg_12_ ( .D(\rn[14] ), .SI(n137), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[12]), .QN(n136) );
  SEDFFXL accout_reg_11_ ( .D(\rn[13] ), .SI(n138), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[11]), .QN(n137) );
  SEDFFXL accout_reg_10_ ( .D(\rn[12] ), .SI(n139), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[10]), .QN(n138) );
  SEDFFXL accout_reg_9_ ( .D(\rn[11] ), .SI(n140), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[9]), .QN(n139) );
  SEDFFXL accout_reg_8_ ( .D(\rn[10] ), .SI(n141), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[8]), .QN(n140) );
  SEDFFXL accout_reg_7_ ( .D(\rn[9] ), .SI(n142), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[7]), .QN(n141) );
  SEDFFXL accout_reg_6_ ( .D(\rn[8] ), .SI(n143), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[6]), .QN(n142) );
  SEDFFXL accout_reg_5_ ( .D(\rn[7] ), .SI(n144), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[5]), .QN(n143) );
  SEDFFXL accout_reg_4_ ( .D(\rn[6] ), .SI(n145), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[4]), .QN(n144) );
  SEDFFXL accout_reg_3_ ( .D(\rn[5] ), .SI(n146), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[3]), .QN(n145) );
  SEDFFXL accout_reg_2_ ( .D(\rn[4] ), .SI(n147), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[2]), .QN(n146) );
  SEDFFXL accout_reg_1_ ( .D(\rn[3] ), .SI(n148), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[1]), .QN(n147) );
  SEDFFXL accout_reg_0_ ( .D(\rn[2] ), .SI(n149), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[0]), .QN(n148) );
  SEDFFXL accout_reg_15_ ( .D(\rn[17] ), .SI(n134), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[15]), .QN(n133) );
  SEDFFXL Z2_reg_17_ ( .D(N40), .SI(n152), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[17] ), .QN(n151) );
  SEDFFXL accout_reg_16_ ( .D(\rn[18] ), .SI(n133), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[16]), .QN(n132) );
  SEDFFXL Z2_reg_18_ ( .D(N41), .SI(n151), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[18] ), .QN(n150) );
  SEDFFXL accout_reg_17_ ( .D(\rn[19] ), .SI(n132), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[17]), .QN(n131) );
  SEDFFXL Z2_reg_19_ ( .D(N42), .SI(n150), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[19] ), .QN(n149) );
  add_pipe1_test_6 adder1 ( .A({\Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , 
        \Z1[15] , \Z1[14] , \Z1[13] , \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , 
        \Z1[8] , \Z1[7] , \Z1[6] , \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , 
        \Z1[0] }), .B(ACCin), .CLK(CLK), .Sum({\node2[19] , \node2[18] , 
        \node2[17] , \node2[16] , \node2[15] , \node2[14] , \node2[13] , 
        \node2[12] , \node2[11] , \node2[10] , \node2[9] , \node2[8] , 
        \node2[7] , \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] , 
        \node2[1] , \node2[0] }), .test_se(test_se), .test_si(n131) );
  add_pipe1_test_7 adder2 ( .A({\Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , 
        \Z2[15] , \Z2[14] , \Z2[13] , \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , 
        \Z2[8] , \Z2[7] , \Z2[6] , \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , 
        \Z2[0] }), .B({\node2[19] , \node2[18] , \node2[17] , \node2[16] , 
        \node2[15] , \node2[14] , \node2[13] , \node2[12] , \node2[11] , 
        \node2[10] , \node2[9] , \node2[8] , \node2[7] , \node2[6] , 
        \node2[5] , \node2[4] , \node2[3] , \node2[2] , \node2[1] , \node2[0] }), .CLK(CLK), .Sum({\rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] , 
        \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] , 
        \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] }), 
        .test_se(test_se), .test_si(\node2[10] ) );
endmodule


module add_pipe1_test_5 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_10_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_10_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module add_pipe1_test_4 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_11_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_11_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module ACC_test_2 ( CLK, ACCin, HALT, Count, accout, test_se, test_si, test_so
 );
  input [19:0] ACCin;
  input [1:0] Count;
  output [17:0] accout;
  input CLK, HALT, test_se, test_si;
  output test_so;
  wire   \Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , \Z1[15] , \Z1[14] , \Z1[13] ,
         \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , \Z1[8] , \Z1[7] , \Z1[6] ,
         \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , \Z1[0] , N3, N4, N5, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, \rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] ,
         \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] ,
         \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] ,
         \Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , \Z2[15] , \Z2[14] , \Z2[13] ,
         \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , \Z2[8] , \Z2[7] , \Z2[6] ,
         \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , \Z2[0] , N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N44, \node2[19] , \node2[18] , \node2[17] ,
         \node2[16] , \node2[15] , \node2[14] , \node2[13] , \node2[12] ,
         \node2[11] , \node2[10] , \node2[9] , \node2[8] , \node2[7] ,
         \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] ,
         \node2[1] , \node2[0] , n2, n1, n310, n43, n50, n60, n70, n80, n110,
         n120, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188;
  BUFX2 ASSIGN84 (.Y(test_so), .A(\rn[10] ));

  CLKINVX1 U2 ( .A(n130), .Y(n60) );
  CLKBUFX3 U3 ( .A(HALT), .Y(n130) );
  CLKINVX1 U4 ( .A(n120), .Y(n70) );
  CLKBUFX3 U5 ( .A(HALT), .Y(n120) );
  CLKINVX1 U6 ( .A(n110), .Y(n80) );
  CLKBUFX3 U7 ( .A(HALT), .Y(n110) );
  NOR2BX1 U8 ( .AN(\rn[19] ), .B(n43), .Y(N42) );
  NOR2BX1 U9 ( .AN(\rn[18] ), .B(n43), .Y(N41) );
  NOR2BX1 U10 ( .AN(\rn[17] ), .B(n43), .Y(N40) );
  NOR2BX1 U11 ( .AN(\rn[16] ), .B(n43), .Y(N39) );
  NOR2BX1 U12 ( .AN(\rn[15] ), .B(n43), .Y(N38) );
  CLKBUFX3 U13 ( .A(n2), .Y(n43) );
  CLKBUFX3 U14 ( .A(n2), .Y(n310) );
  NOR2BX1 U15 ( .AN(\rn[14] ), .B(n43), .Y(N37) );
  NOR2BX1 U16 ( .AN(\rn[13] ), .B(n43), .Y(N36) );
  NOR2BX1 U17 ( .AN(\rn[12] ), .B(n43), .Y(N35) );
  NOR2BX1 U18 ( .AN(\rn[11] ), .B(n310), .Y(N34) );
  CLKBUFX3 U19 ( .A(n2), .Y(n50) );
  CLKBUFX3 U20 ( .A(N44), .Y(n1) );
  NOR3BXL U21 ( .AN(Count[1]), .B(HALT), .C(Count[0]), .Y(N44) );
  OR2X1 U22 ( .A(Count[0]), .B(Count[1]), .Y(n2) );
  NOR2BX1 U23 ( .AN(\rn[10] ), .B(n310), .Y(N33) );
  NOR2BX1 U24 ( .AN(\rn[9] ), .B(n310), .Y(N32) );
  NOR2BX1 U25 ( .AN(\rn[8] ), .B(n310), .Y(N31) );
  NOR2BX1 U26 ( .AN(\rn[7] ), .B(n310), .Y(N30) );
  NOR2BX1 U27 ( .AN(\rn[6] ), .B(n310), .Y(N29) );
  NOR2BX1 U28 ( .AN(\rn[5] ), .B(n310), .Y(N28) );
  NOR2BX1 U29 ( .AN(\rn[4] ), .B(n310), .Y(N27) );
  NOR2BX1 U30 ( .AN(\rn[3] ), .B(n310), .Y(N26) );
  NOR2BX1 U31 ( .AN(\rn[2] ), .B(n310), .Y(N25) );
  NOR2BX1 U32 ( .AN(\rn[1] ), .B(n310), .Y(N24) );
  NOR2BX1 U33 ( .AN(\rn[0] ), .B(n310), .Y(N23) );
  AND2X2 U34 ( .A(ACCin[1]), .B(n43), .Y(N4) );
  AND2X2 U35 ( .A(ACCin[2]), .B(n43), .Y(N5) );
  AND2X2 U36 ( .A(ACCin[3]), .B(n43), .Y(N6) );
  AND2X2 U37 ( .A(ACCin[4]), .B(n43), .Y(N7) );
  AND2X2 U38 ( .A(ACCin[5]), .B(n50), .Y(N8) );
  AND2X2 U39 ( .A(ACCin[6]), .B(n50), .Y(N9) );
  AND2X2 U40 ( .A(ACCin[7]), .B(n43), .Y(N10) );
  AND2X2 U41 ( .A(ACCin[8]), .B(n50), .Y(N11) );
  AND2X2 U42 ( .A(ACCin[9]), .B(n50), .Y(N12) );
  AND2X2 U43 ( .A(ACCin[10]), .B(n50), .Y(N13) );
  AND2X2 U44 ( .A(ACCin[11]), .B(n50), .Y(N14) );
  AND2X2 U45 ( .A(ACCin[12]), .B(n50), .Y(N15) );
  AND2X2 U46 ( .A(ACCin[13]), .B(n50), .Y(N16) );
  AND2X2 U47 ( .A(ACCin[14]), .B(n50), .Y(N17) );
  AND2X2 U48 ( .A(ACCin[15]), .B(n50), .Y(N18) );
  AND2X2 U49 ( .A(ACCin[16]), .B(n50), .Y(N19) );
  AND2X2 U50 ( .A(ACCin[17]), .B(n50), .Y(N20) );
  AND2X2 U51 ( .A(ACCin[18]), .B(n50), .Y(N21) );
  AND2X2 U52 ( .A(ACCin[19]), .B(n50), .Y(N22) );
  AND2X2 U53 ( .A(ACCin[0]), .B(n43), .Y(N3) );
  SEDFFXL Z1_reg_19_ ( .D(N22), .SI(n170), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z1[19] ), .QN(n169) );
  SEDFFXL Z2_reg_16_ ( .D(N39), .SI(n153), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[16] ), .QN(n152) );
  SEDFFXL Z2_reg_15_ ( .D(N38), .SI(n154), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[15] ), .QN(n153) );
  SEDFFXL Z2_reg_14_ ( .D(N37), .SI(n155), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[14] ), .QN(n154) );
  SEDFFXL Z2_reg_13_ ( .D(N36), .SI(n156), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[13] ), .QN(n155) );
  SEDFFXL Z2_reg_12_ ( .D(N35), .SI(n157), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[12] ), .QN(n156) );
  SEDFFXL Z2_reg_11_ ( .D(N34), .SI(n158), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[11] ), .QN(n157) );
  SEDFFXL Z2_reg_10_ ( .D(N33), .SI(n159), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[10] ), .QN(n158) );
  SEDFFXL Z2_reg_9_ ( .D(N32), .SI(n160), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[9] ), .QN(n159) );
  SEDFFXL Z2_reg_8_ ( .D(N31), .SI(n161), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[8] ), .QN(n160) );
  SEDFFXL Z2_reg_7_ ( .D(N30), .SI(n162), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[7] ), .QN(n161) );
  SEDFFXL Z2_reg_6_ ( .D(N29), .SI(n163), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[6] ), .QN(n162) );
  SEDFFXL Z2_reg_5_ ( .D(N28), .SI(n164), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[5] ), .QN(n163) );
  SEDFFXL Z2_reg_4_ ( .D(N27), .SI(n165), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[4] ), .QN(n164) );
  SEDFFXL Z2_reg_3_ ( .D(N26), .SI(n166), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[3] ), .QN(n165) );
  SEDFFXL Z2_reg_2_ ( .D(N25), .SI(n167), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[2] ), .QN(n166) );
  SEDFFXL Z2_reg_1_ ( .D(N24), .SI(n168), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[1] ), .QN(n167) );
  SEDFFXL Z2_reg_0_ ( .D(N23), .SI(n169), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[0] ), .QN(n168) );
  SEDFFXL Z1_reg_18_ ( .D(N21), .SI(n171), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[18] ), .QN(n170) );
  SEDFFXL Z1_reg_17_ ( .D(N20), .SI(n172), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[17] ), .QN(n171) );
  SEDFFXL Z1_reg_16_ ( .D(N19), .SI(n173), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[16] ), .QN(n172) );
  SEDFFXL Z1_reg_15_ ( .D(N18), .SI(n174), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[15] ), .QN(n173) );
  SEDFFXL Z1_reg_14_ ( .D(N17), .SI(n175), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[14] ), .QN(n174) );
  SEDFFXL Z1_reg_13_ ( .D(N16), .SI(n176), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[13] ), .QN(n175) );
  SEDFFXL Z1_reg_12_ ( .D(N15), .SI(n177), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[12] ), .QN(n176) );
  SEDFFXL Z1_reg_11_ ( .D(N14), .SI(n178), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[11] ), .QN(n177) );
  SEDFFXL Z1_reg_10_ ( .D(N13), .SI(n179), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[10] ), .QN(n178) );
  SEDFFXL Z1_reg_9_ ( .D(N12), .SI(n180), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[9] ), .QN(n179) );
  SEDFFXL Z1_reg_8_ ( .D(N11), .SI(n181), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[8] ), .QN(n180) );
  SEDFFXL Z1_reg_7_ ( .D(N10), .SI(n182), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[7] ), .QN(n181) );
  SEDFFXL Z1_reg_6_ ( .D(N9), .SI(n183), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[6] ), .QN(n182) );
  SEDFFXL Z1_reg_5_ ( .D(N8), .SI(n184), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[5] ), .QN(n183) );
  SEDFFXL Z1_reg_4_ ( .D(N7), .SI(n185), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[4] ), .QN(n184) );
  SEDFFXL Z1_reg_3_ ( .D(N6), .SI(n186), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[3] ), .QN(n185) );
  SEDFFXL Z1_reg_2_ ( .D(N5), .SI(n187), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[2] ), .QN(n186) );
  SEDFFXL Z1_reg_1_ ( .D(N4), .SI(n188), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[1] ), .QN(n187) );
  SEDFFXL Z1_reg_0_ ( .D(N3), .SI(test_si), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z1[0] ), .QN(n188) );
  SEDFFXL accout_reg_14_ ( .D(\rn[16] ), .SI(n135), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[14]), .QN(n134) );
  SEDFFXL accout_reg_13_ ( .D(\rn[15] ), .SI(n136), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[13]), .QN(n135) );
  SEDFFXL accout_reg_12_ ( .D(\rn[14] ), .SI(n137), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[12]), .QN(n136) );
  SEDFFXL accout_reg_11_ ( .D(\rn[13] ), .SI(n138), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[11]), .QN(n137) );
  SEDFFXL accout_reg_10_ ( .D(\rn[12] ), .SI(n139), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[10]), .QN(n138) );
  SEDFFXL accout_reg_9_ ( .D(\rn[11] ), .SI(n140), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[9]), .QN(n139) );
  SEDFFXL accout_reg_8_ ( .D(\rn[10] ), .SI(n141), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[8]), .QN(n140) );
  SEDFFXL accout_reg_7_ ( .D(\rn[9] ), .SI(n142), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[7]), .QN(n141) );
  SEDFFXL accout_reg_6_ ( .D(\rn[8] ), .SI(n143), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[6]), .QN(n142) );
  SEDFFXL accout_reg_5_ ( .D(\rn[7] ), .SI(n144), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[5]), .QN(n143) );
  SEDFFXL accout_reg_4_ ( .D(\rn[6] ), .SI(n145), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[4]), .QN(n144) );
  SEDFFXL accout_reg_3_ ( .D(\rn[5] ), .SI(n146), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[3]), .QN(n145) );
  SEDFFXL accout_reg_2_ ( .D(\rn[4] ), .SI(n147), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[2]), .QN(n146) );
  SEDFFXL accout_reg_1_ ( .D(\rn[3] ), .SI(n148), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[1]), .QN(n147) );
  SEDFFXL accout_reg_0_ ( .D(\rn[2] ), .SI(n149), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[0]), .QN(n148) );
  SEDFFXL accout_reg_15_ ( .D(\rn[17] ), .SI(n134), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[15]), .QN(n133) );
  SEDFFXL Z2_reg_17_ ( .D(N40), .SI(n152), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[17] ), .QN(n151) );
  SEDFFXL accout_reg_16_ ( .D(\rn[18] ), .SI(n133), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[16]), .QN(n132) );
  SEDFFXL Z2_reg_18_ ( .D(N41), .SI(n151), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[18] ), .QN(n150) );
  SEDFFXL accout_reg_17_ ( .D(\rn[19] ), .SI(n132), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[17]), .QN(n131) );
  SEDFFXL Z2_reg_19_ ( .D(N42), .SI(n150), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[19] ), .QN(n149) );
  add_pipe1_test_4 adder1 ( .A({\Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , 
        \Z1[15] , \Z1[14] , \Z1[13] , \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , 
        \Z1[8] , \Z1[7] , \Z1[6] , \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , 
        \Z1[0] }), .B(ACCin), .CLK(CLK), .Sum({\node2[19] , \node2[18] , 
        \node2[17] , \node2[16] , \node2[15] , \node2[14] , \node2[13] , 
        \node2[12] , \node2[11] , \node2[10] , \node2[9] , \node2[8] , 
        \node2[7] , \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] , 
        \node2[1] , \node2[0] }), .test_se(test_se), .test_si(n131) );
  add_pipe1_test_5 adder2 ( .A({\Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , 
        \Z2[15] , \Z2[14] , \Z2[13] , \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , 
        \Z2[8] , \Z2[7] , \Z2[6] , \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , 
        \Z2[0] }), .B({\node2[19] , \node2[18] , \node2[17] , \node2[16] , 
        \node2[15] , \node2[14] , \node2[13] , \node2[12] , \node2[11] , 
        \node2[10] , \node2[9] , \node2[8] , \node2[7] , \node2[6] , 
        \node2[5] , \node2[4] , \node2[3] , \node2[2] , \node2[1] , \node2[0] }), .CLK(CLK), .Sum({\rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] , 
        \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] , 
        \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] }), 
        .test_se(test_se), .test_si(\node2[10] ) );
endmodule


module add_pipe1_test_3 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_12_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_12_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module add_pipe1_test_2 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_13_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_13_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module ACC_test_1 ( CLK, ACCin, HALT, Count, accout, test_se, test_si, test_so
 );
  input [19:0] ACCin;
  input [1:0] Count;
  output [17:0] accout;
  input CLK, HALT, test_se, test_si;
  output test_so;
  wire   \Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , \Z1[15] , \Z1[14] , \Z1[13] ,
         \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , \Z1[8] , \Z1[7] , \Z1[6] ,
         \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , \Z1[0] , N3, N4, N5, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, \rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] ,
         \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] ,
         \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] ,
         \Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , \Z2[15] , \Z2[14] , \Z2[13] ,
         \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , \Z2[8] , \Z2[7] , \Z2[6] ,
         \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , \Z2[0] , N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N44, \node2[19] , \node2[18] , \node2[17] ,
         \node2[16] , \node2[15] , \node2[14] , \node2[13] , \node2[12] ,
         \node2[11] , \node2[10] , \node2[9] , \node2[8] , \node2[7] ,
         \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] ,
         \node2[1] , \node2[0] , n2, n1, n310, n43, n50, n60, n70, n80, n110,
         n120, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188;
  BUFX2 ASSIGN85 (.Y(test_so), .A(\rn[10] ));

  CLKINVX1 U2 ( .A(n130), .Y(n60) );
  CLKBUFX3 U3 ( .A(HALT), .Y(n130) );
  CLKINVX1 U4 ( .A(n120), .Y(n70) );
  CLKBUFX3 U5 ( .A(HALT), .Y(n120) );
  CLKINVX1 U6 ( .A(n110), .Y(n80) );
  CLKBUFX3 U7 ( .A(HALT), .Y(n110) );
  NOR2BX1 U8 ( .AN(\rn[19] ), .B(n43), .Y(N42) );
  NOR2BX1 U9 ( .AN(\rn[18] ), .B(n43), .Y(N41) );
  NOR2BX1 U10 ( .AN(\rn[17] ), .B(n43), .Y(N40) );
  NOR2BX1 U11 ( .AN(\rn[16] ), .B(n43), .Y(N39) );
  NOR2BX1 U12 ( .AN(\rn[15] ), .B(n43), .Y(N38) );
  CLKBUFX3 U13 ( .A(n2), .Y(n43) );
  CLKBUFX3 U14 ( .A(n2), .Y(n310) );
  NOR2BX1 U15 ( .AN(\rn[14] ), .B(n43), .Y(N37) );
  NOR2BX1 U16 ( .AN(\rn[13] ), .B(n43), .Y(N36) );
  NOR2BX1 U17 ( .AN(\rn[12] ), .B(n43), .Y(N35) );
  NOR2BX1 U18 ( .AN(\rn[11] ), .B(n310), .Y(N34) );
  CLKBUFX3 U19 ( .A(n2), .Y(n50) );
  CLKBUFX3 U20 ( .A(N44), .Y(n1) );
  NOR3BXL U21 ( .AN(Count[1]), .B(HALT), .C(Count[0]), .Y(N44) );
  OR2X1 U22 ( .A(Count[0]), .B(Count[1]), .Y(n2) );
  NOR2BX1 U23 ( .AN(\rn[10] ), .B(n310), .Y(N33) );
  NOR2BX1 U24 ( .AN(\rn[9] ), .B(n310), .Y(N32) );
  NOR2BX1 U25 ( .AN(\rn[8] ), .B(n310), .Y(N31) );
  NOR2BX1 U26 ( .AN(\rn[7] ), .B(n310), .Y(N30) );
  NOR2BX1 U27 ( .AN(\rn[6] ), .B(n310), .Y(N29) );
  NOR2BX1 U28 ( .AN(\rn[5] ), .B(n310), .Y(N28) );
  NOR2BX1 U29 ( .AN(\rn[4] ), .B(n310), .Y(N27) );
  NOR2BX1 U30 ( .AN(\rn[3] ), .B(n310), .Y(N26) );
  NOR2BX1 U31 ( .AN(\rn[2] ), .B(n310), .Y(N25) );
  NOR2BX1 U32 ( .AN(\rn[1] ), .B(n310), .Y(N24) );
  NOR2BX1 U33 ( .AN(\rn[0] ), .B(n310), .Y(N23) );
  AND2X2 U34 ( .A(ACCin[1]), .B(n43), .Y(N4) );
  AND2X2 U35 ( .A(ACCin[2]), .B(n43), .Y(N5) );
  AND2X2 U36 ( .A(ACCin[3]), .B(n43), .Y(N6) );
  AND2X2 U37 ( .A(ACCin[4]), .B(n43), .Y(N7) );
  AND2X2 U38 ( .A(ACCin[5]), .B(n50), .Y(N8) );
  AND2X2 U39 ( .A(ACCin[6]), .B(n50), .Y(N9) );
  AND2X2 U40 ( .A(ACCin[7]), .B(n43), .Y(N10) );
  AND2X2 U41 ( .A(ACCin[8]), .B(n50), .Y(N11) );
  AND2X2 U42 ( .A(ACCin[9]), .B(n50), .Y(N12) );
  AND2X2 U43 ( .A(ACCin[10]), .B(n50), .Y(N13) );
  AND2X2 U44 ( .A(ACCin[11]), .B(n50), .Y(N14) );
  AND2X2 U45 ( .A(ACCin[12]), .B(n50), .Y(N15) );
  AND2X2 U46 ( .A(ACCin[13]), .B(n50), .Y(N16) );
  AND2X2 U47 ( .A(ACCin[14]), .B(n50), .Y(N17) );
  AND2X2 U48 ( .A(ACCin[15]), .B(n50), .Y(N18) );
  AND2X2 U49 ( .A(ACCin[16]), .B(n50), .Y(N19) );
  AND2X2 U50 ( .A(ACCin[17]), .B(n50), .Y(N20) );
  AND2X2 U51 ( .A(ACCin[18]), .B(n50), .Y(N21) );
  AND2X2 U52 ( .A(ACCin[19]), .B(n50), .Y(N22) );
  AND2X2 U53 ( .A(ACCin[0]), .B(n43), .Y(N3) );
  SEDFFXL Z1_reg_19_ ( .D(N22), .SI(n170), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z1[19] ), .QN(n169) );
  SEDFFXL Z2_reg_16_ ( .D(N39), .SI(n153), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[16] ), .QN(n152) );
  SEDFFXL Z2_reg_15_ ( .D(N38), .SI(n154), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[15] ), .QN(n153) );
  SEDFFXL Z2_reg_14_ ( .D(N37), .SI(n155), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[14] ), .QN(n154) );
  SEDFFXL Z2_reg_13_ ( .D(N36), .SI(n156), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[13] ), .QN(n155) );
  SEDFFXL Z2_reg_12_ ( .D(N35), .SI(n157), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[12] ), .QN(n156) );
  SEDFFXL Z2_reg_11_ ( .D(N34), .SI(n158), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[11] ), .QN(n157) );
  SEDFFXL Z2_reg_10_ ( .D(N33), .SI(n159), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[10] ), .QN(n158) );
  SEDFFXL Z2_reg_9_ ( .D(N32), .SI(n160), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[9] ), .QN(n159) );
  SEDFFXL Z2_reg_8_ ( .D(N31), .SI(n161), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[8] ), .QN(n160) );
  SEDFFXL Z2_reg_7_ ( .D(N30), .SI(n162), .E(n60), .SE(test_se), .CK(CLK), .Q(
        \Z2[7] ), .QN(n161) );
  SEDFFXL Z2_reg_6_ ( .D(N29), .SI(n163), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[6] ), .QN(n162) );
  SEDFFXL Z2_reg_5_ ( .D(N28), .SI(n164), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[5] ), .QN(n163) );
  SEDFFXL Z2_reg_4_ ( .D(N27), .SI(n165), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[4] ), .QN(n164) );
  SEDFFXL Z2_reg_3_ ( .D(N26), .SI(n166), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[3] ), .QN(n165) );
  SEDFFXL Z2_reg_2_ ( .D(N25), .SI(n167), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[2] ), .QN(n166) );
  SEDFFXL Z2_reg_1_ ( .D(N24), .SI(n168), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[1] ), .QN(n167) );
  SEDFFXL Z2_reg_0_ ( .D(N23), .SI(n169), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[0] ), .QN(n168) );
  SEDFFXL Z1_reg_18_ ( .D(N21), .SI(n171), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[18] ), .QN(n170) );
  SEDFFXL Z1_reg_17_ ( .D(N20), .SI(n172), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[17] ), .QN(n171) );
  SEDFFXL Z1_reg_16_ ( .D(N19), .SI(n173), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[16] ), .QN(n172) );
  SEDFFXL Z1_reg_15_ ( .D(N18), .SI(n174), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[15] ), .QN(n173) );
  SEDFFXL Z1_reg_14_ ( .D(N17), .SI(n175), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[14] ), .QN(n174) );
  SEDFFXL Z1_reg_13_ ( .D(N16), .SI(n176), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[13] ), .QN(n175) );
  SEDFFXL Z1_reg_12_ ( .D(N15), .SI(n177), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[12] ), .QN(n176) );
  SEDFFXL Z1_reg_11_ ( .D(N14), .SI(n178), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[11] ), .QN(n177) );
  SEDFFXL Z1_reg_10_ ( .D(N13), .SI(n179), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[10] ), .QN(n178) );
  SEDFFXL Z1_reg_9_ ( .D(N12), .SI(n180), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[9] ), .QN(n179) );
  SEDFFXL Z1_reg_8_ ( .D(N11), .SI(n181), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[8] ), .QN(n180) );
  SEDFFXL Z1_reg_7_ ( .D(N10), .SI(n182), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[7] ), .QN(n181) );
  SEDFFXL Z1_reg_6_ ( .D(N9), .SI(n183), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[6] ), .QN(n182) );
  SEDFFXL Z1_reg_5_ ( .D(N8), .SI(n184), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[5] ), .QN(n183) );
  SEDFFXL Z1_reg_4_ ( .D(N7), .SI(n185), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[4] ), .QN(n184) );
  SEDFFXL Z1_reg_3_ ( .D(N6), .SI(n186), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[3] ), .QN(n185) );
  SEDFFXL Z1_reg_2_ ( .D(N5), .SI(n187), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[2] ), .QN(n186) );
  SEDFFXL Z1_reg_1_ ( .D(N4), .SI(n188), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[1] ), .QN(n187) );
  SEDFFXL Z1_reg_0_ ( .D(N3), .SI(test_si), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z1[0] ), .QN(n188) );
  SEDFFXL accout_reg_14_ ( .D(\rn[16] ), .SI(n135), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[14]), .QN(n134) );
  SEDFFXL accout_reg_13_ ( .D(\rn[15] ), .SI(n136), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[13]), .QN(n135) );
  SEDFFXL accout_reg_12_ ( .D(\rn[14] ), .SI(n137), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[12]), .QN(n136) );
  SEDFFXL accout_reg_11_ ( .D(\rn[13] ), .SI(n138), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[11]), .QN(n137) );
  SEDFFXL accout_reg_10_ ( .D(\rn[12] ), .SI(n139), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[10]), .QN(n138) );
  SEDFFXL accout_reg_9_ ( .D(\rn[11] ), .SI(n140), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[9]), .QN(n139) );
  SEDFFXL accout_reg_8_ ( .D(\rn[10] ), .SI(n141), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[8]), .QN(n140) );
  SEDFFXL accout_reg_7_ ( .D(\rn[9] ), .SI(n142), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[7]), .QN(n141) );
  SEDFFXL accout_reg_6_ ( .D(\rn[8] ), .SI(n143), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[6]), .QN(n142) );
  SEDFFXL accout_reg_5_ ( .D(\rn[7] ), .SI(n144), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[5]), .QN(n143) );
  SEDFFXL accout_reg_4_ ( .D(\rn[6] ), .SI(n145), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[4]), .QN(n144) );
  SEDFFXL accout_reg_3_ ( .D(\rn[5] ), .SI(n146), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[3]), .QN(n145) );
  SEDFFXL accout_reg_2_ ( .D(\rn[4] ), .SI(n147), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[2]), .QN(n146) );
  SEDFFXL accout_reg_1_ ( .D(\rn[3] ), .SI(n148), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[1]), .QN(n147) );
  SEDFFXL accout_reg_0_ ( .D(\rn[2] ), .SI(n149), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[0]), .QN(n148) );
  SEDFFXL accout_reg_15_ ( .D(\rn[17] ), .SI(n134), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[15]), .QN(n133) );
  SEDFFXL Z2_reg_17_ ( .D(N40), .SI(n152), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[17] ), .QN(n151) );
  SEDFFXL accout_reg_16_ ( .D(\rn[18] ), .SI(n133), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[16]), .QN(n132) );
  SEDFFXL Z2_reg_18_ ( .D(N41), .SI(n151), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[18] ), .QN(n150) );
  SEDFFXL accout_reg_17_ ( .D(\rn[19] ), .SI(n132), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[17]), .QN(n131) );
  SEDFFXL Z2_reg_19_ ( .D(N42), .SI(n150), .E(n60), .SE(test_se), .CK(CLK), 
        .Q(\Z2[19] ), .QN(n149) );
  add_pipe1_test_2 adder1 ( .A({\Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , 
        \Z1[15] , \Z1[14] , \Z1[13] , \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , 
        \Z1[8] , \Z1[7] , \Z1[6] , \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , 
        \Z1[0] }), .B(ACCin), .CLK(CLK), .Sum({\node2[19] , \node2[18] , 
        \node2[17] , \node2[16] , \node2[15] , \node2[14] , \node2[13] , 
        \node2[12] , \node2[11] , \node2[10] , \node2[9] , \node2[8] , 
        \node2[7] , \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] , 
        \node2[1] , \node2[0] }), .test_se(test_se), .test_si(n131) );
  add_pipe1_test_3 adder2 ( .A({\Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , 
        \Z2[15] , \Z2[14] , \Z2[13] , \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , 
        \Z2[8] , \Z2[7] , \Z2[6] , \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , 
        \Z2[0] }), .B({\node2[19] , \node2[18] , \node2[17] , \node2[16] , 
        \node2[15] , \node2[14] , \node2[13] , \node2[12] , \node2[11] , 
        \node2[10] , \node2[9] , \node2[8] , \node2[7] , \node2[6] , 
        \node2[5] , \node2[4] , \node2[3] , \node2[2] , \node2[1] , \node2[0] }), .CLK(CLK), .Sum({\rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] , 
        \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] , 
        \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] }), 
        .test_se(test_se), .test_si(\node2[10] ) );
endmodule


module add_pipe1_test_1 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_14_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_14_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module add_pipe1_test_0 ( A, B, CLK, Sum, test_se, test_si );
  input [19:0] A;
  input [19:0] B;
  output [19:0] Sum;
  input CLK, test_se, test_si;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, C1, \APreS2[8] ,
         \APreS2[7] , \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] ,
         \APreS2[2] , \APreS2[1] , \APreS2[0] , \BPreS2[8] , \BPreS2[7] ,
         \BPreS2[6] , \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] ,
         \BPreS2[1] , \BPreS2[0] ;

  SDFFQXL APreS2_reg_8_ ( .D(A[19]), .SI(\APreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[8] ) );
  SDFFQXL APreS2_reg_7_ ( .D(A[18]), .SI(\APreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[7] ) );
  SDFFQXL APreS2_reg_6_ ( .D(A[17]), .SI(\APreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[6] ) );
  SDFFQXL APreS2_reg_5_ ( .D(A[16]), .SI(\APreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[5] ) );
  SDFFQXL APreS2_reg_4_ ( .D(A[15]), .SI(\APreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[4] ) );
  SDFFQXL PostS1_reg_10_ ( .D(N10), .SI(Sum[9]), .SE(test_se), .CK(CLK), .Q(
        Sum[10]) );
  SDFFQXL PostS1_reg_9_ ( .D(N9), .SI(Sum[8]), .SE(test_se), .CK(CLK), .Q(
        Sum[9]) );
  SDFFQXL PostS1_reg_8_ ( .D(N8), .SI(Sum[7]), .SE(test_se), .CK(CLK), .Q(
        Sum[8]) );
  SDFFQXL PostS1_reg_7_ ( .D(N7), .SI(Sum[6]), .SE(test_se), .CK(CLK), .Q(
        Sum[7]) );
  SDFFQXL PostS1_reg_6_ ( .D(N6), .SI(Sum[5]), .SE(test_se), .CK(CLK), .Q(
        Sum[6]) );
  SDFFQXL BPreS2_reg_8_ ( .D(B[19]), .SI(\BPreS2[7] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[8] ) );
  SDFFQXL BPreS2_reg_7_ ( .D(B[18]), .SI(\BPreS2[6] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[7] ) );
  SDFFQXL BPreS2_reg_6_ ( .D(B[17]), .SI(\BPreS2[5] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[6] ) );
  SDFFQXL BPreS2_reg_5_ ( .D(B[16]), .SI(\BPreS2[4] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[5] ) );
  SDFFQXL BPreS2_reg_4_ ( .D(B[15]), .SI(\BPreS2[3] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[4] ) );
  SDFFQXL PostS1_reg_0_ ( .D(N0), .SI(C1), .SE(test_se), .CK(CLK), .Q(Sum[0])
         );
  SDFFQXL C1_reg ( .D(N11), .SI(\BPreS2[8] ), .SE(test_se), .CK(CLK), .Q(C1)
         );
  SDFFQXL APreS2_reg_3_ ( .D(A[14]), .SI(\APreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[3] ) );
  SDFFQXL APreS2_reg_2_ ( .D(A[13]), .SI(\APreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[2] ) );
  SDFFQXL APreS2_reg_1_ ( .D(A[12]), .SI(\APreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\APreS2[1] ) );
  SDFFQXL APreS2_reg_0_ ( .D(A[11]), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        \APreS2[0] ) );
  SDFFQXL PostS1_reg_5_ ( .D(N5), .SI(Sum[4]), .SE(test_se), .CK(CLK), .Q(
        Sum[5]) );
  SDFFQXL PostS1_reg_4_ ( .D(N4), .SI(Sum[3]), .SE(test_se), .CK(CLK), .Q(
        Sum[4]) );
  SDFFQXL PostS1_reg_3_ ( .D(N3), .SI(Sum[2]), .SE(test_se), .CK(CLK), .Q(
        Sum[3]) );
  SDFFQXL PostS1_reg_2_ ( .D(N2), .SI(Sum[1]), .SE(test_se), .CK(CLK), .Q(
        Sum[2]) );
  SDFFQXL PostS1_reg_1_ ( .D(N1), .SI(Sum[0]), .SE(test_se), .CK(CLK), .Q(
        Sum[1]) );
  SDFFQXL BPreS2_reg_3_ ( .D(B[14]), .SI(\BPreS2[2] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[3] ) );
  SDFFQXL BPreS2_reg_2_ ( .D(B[13]), .SI(\BPreS2[1] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[2] ) );
  SDFFQXL BPreS2_reg_1_ ( .D(B[12]), .SI(\BPreS2[0] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[1] ) );
  SDFFQXL BPreS2_reg_0_ ( .D(B[11]), .SI(\APreS2[8] ), .SE(test_se), .CK(CLK), 
        .Q(\BPreS2[0] ) );
  add_pipe1_15_DW01_add_0 add_1_root_add_65_2 ( .A({\APreS2[8] , \APreS2[7] , 
        \APreS2[6] , \APreS2[5] , \APreS2[4] , \APreS2[3] , \APreS2[2] , 
        \APreS2[1] , \APreS2[0] }), .B({\BPreS2[8] , \BPreS2[7] , \BPreS2[6] , 
        \BPreS2[5] , \BPreS2[4] , \BPreS2[3] , \BPreS2[2] , \BPreS2[1] , 
        \BPreS2[0] }), .CI(C1), .SUM(Sum[19:11]) );
  add_pipe1_15_DW01_add_1 add_60 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3, 
        N2, N1, N0}), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), .\A[7] (
        A[7]), .\A[6] (A[6]), .\A[5] (A[5]), .\A[4] (A[4]), .\A[3] (A[3]), 
        .\A[2] (A[2]), .\A[1] (A[1]), .\A[0] (A[0]), .\B[10] (B[10]), .\B[9] (
        B[9]), .\B[8] (B[8]), .\B[7] (B[7]), .\B[6] (B[6]), .\B[5] (B[5]), 
        .\B[4] (B[4]), .\B[3] (B[3]), .\B[2] (B[2]), .\B[1] (B[1]), .\B[0] (
        B[0]) );
endmodule


module ACC_test_0 ( CLK, ACCin, HALT, Count, accout, test_se, test_si, test_so
 );
  input [19:0] ACCin;
  input [1:0] Count;
  output [17:0] accout;
  input CLK, HALT, test_se, test_si;
  output test_so;
  wire   \Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , \Z1[15] , \Z1[14] , \Z1[13] ,
         \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , \Z1[8] , \Z1[7] , \Z1[6] ,
         \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , \Z1[0] , N3, N4, N5, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, \rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] ,
         \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] ,
         \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] ,
         \Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , \Z2[15] , \Z2[14] , \Z2[13] ,
         \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , \Z2[8] , \Z2[7] , \Z2[6] ,
         \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , \Z2[0] , N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N44, \node2[19] , \node2[18] , \node2[17] ,
         \node2[16] , \node2[15] , \node2[14] , \node2[13] , \node2[12] ,
         \node2[11] , \node2[10] , \node2[9] , \node2[8] , \node2[7] ,
         \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] ,
         \node2[1] , \node2[0] , n2, n1, n310, n43, n50, n70, n80, n110, n120,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188;
  BUFX2 ASSIGN86 (.Y(test_so), .A(\rn[10] ));

  CLKINVX1 U2 ( .A(n120), .Y(n70) );
  CLKBUFX3 U3 ( .A(HALT), .Y(n120) );
  CLKINVX1 U4 ( .A(n110), .Y(n80) );
  CLKBUFX3 U5 ( .A(HALT), .Y(n110) );
  NOR2BX1 U6 ( .AN(\rn[19] ), .B(n43), .Y(N42) );
  NOR2BX1 U7 ( .AN(\rn[18] ), .B(n43), .Y(N41) );
  NOR2BX1 U8 ( .AN(\rn[17] ), .B(n43), .Y(N40) );
  NOR2BX1 U9 ( .AN(\rn[16] ), .B(n43), .Y(N39) );
  NOR2BX1 U10 ( .AN(\rn[15] ), .B(n43), .Y(N38) );
  CLKBUFX3 U11 ( .A(n2), .Y(n43) );
  CLKBUFX3 U12 ( .A(n2), .Y(n310) );
  NOR2BX1 U13 ( .AN(\rn[14] ), .B(n43), .Y(N37) );
  NOR2BX1 U14 ( .AN(\rn[13] ), .B(n43), .Y(N36) );
  NOR2BX1 U15 ( .AN(\rn[12] ), .B(n43), .Y(N35) );
  NOR2BX1 U16 ( .AN(\rn[11] ), .B(n310), .Y(N34) );
  CLKBUFX3 U17 ( .A(n2), .Y(n50) );
  CLKBUFX3 U18 ( .A(N44), .Y(n1) );
  NOR3BXL U19 ( .AN(Count[1]), .B(HALT), .C(Count[0]), .Y(N44) );
  OR2X1 U20 ( .A(Count[0]), .B(Count[1]), .Y(n2) );
  NOR2BX1 U21 ( .AN(\rn[10] ), .B(n310), .Y(N33) );
  NOR2BX1 U22 ( .AN(\rn[9] ), .B(n310), .Y(N32) );
  NOR2BX1 U23 ( .AN(\rn[8] ), .B(n310), .Y(N31) );
  NOR2BX1 U24 ( .AN(\rn[7] ), .B(n310), .Y(N30) );
  NOR2BX1 U25 ( .AN(\rn[6] ), .B(n310), .Y(N29) );
  NOR2BX1 U26 ( .AN(\rn[5] ), .B(n310), .Y(N28) );
  NOR2BX1 U27 ( .AN(\rn[4] ), .B(n310), .Y(N27) );
  NOR2BX1 U28 ( .AN(\rn[3] ), .B(n310), .Y(N26) );
  NOR2BX1 U29 ( .AN(\rn[2] ), .B(n310), .Y(N25) );
  NOR2BX1 U30 ( .AN(\rn[1] ), .B(n310), .Y(N24) );
  NOR2BX1 U31 ( .AN(\rn[0] ), .B(n310), .Y(N23) );
  AND2X2 U32 ( .A(ACCin[1]), .B(n43), .Y(N4) );
  AND2X2 U33 ( .A(ACCin[2]), .B(n43), .Y(N5) );
  AND2X2 U34 ( .A(ACCin[3]), .B(n43), .Y(N6) );
  AND2X2 U35 ( .A(ACCin[4]), .B(n43), .Y(N7) );
  AND2X2 U36 ( .A(ACCin[5]), .B(n50), .Y(N8) );
  AND2X2 U37 ( .A(ACCin[6]), .B(n50), .Y(N9) );
  AND2X2 U38 ( .A(ACCin[7]), .B(n43), .Y(N10) );
  AND2X2 U39 ( .A(ACCin[8]), .B(n50), .Y(N11) );
  AND2X2 U40 ( .A(ACCin[9]), .B(n50), .Y(N12) );
  AND2X2 U41 ( .A(ACCin[10]), .B(n50), .Y(N13) );
  AND2X2 U42 ( .A(ACCin[11]), .B(n50), .Y(N14) );
  AND2X2 U43 ( .A(ACCin[12]), .B(n50), .Y(N15) );
  AND2X2 U44 ( .A(ACCin[13]), .B(n50), .Y(N16) );
  AND2X2 U45 ( .A(ACCin[14]), .B(n50), .Y(N17) );
  AND2X2 U46 ( .A(ACCin[15]), .B(n50), .Y(N18) );
  AND2X2 U47 ( .A(ACCin[16]), .B(n50), .Y(N19) );
  AND2X2 U48 ( .A(ACCin[17]), .B(n50), .Y(N20) );
  AND2X2 U49 ( .A(ACCin[18]), .B(n50), .Y(N21) );
  AND2X2 U50 ( .A(ACCin[19]), .B(n50), .Y(N22) );
  AND2X2 U51 ( .A(ACCin[0]), .B(n43), .Y(N3) );
  SEDFFXL Z1_reg_19_ ( .D(N22), .SI(n170), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[19] ), .QN(n169) );
  SEDFFXL Z2_reg_16_ ( .D(N39), .SI(n153), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[16] ), .QN(n152) );
  SEDFFXL Z2_reg_15_ ( .D(N38), .SI(n154), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z2[15] ), .QN(n153) );
  SEDFFXL Z2_reg_14_ ( .D(N37), .SI(n155), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[14] ), .QN(n154) );
  SEDFFXL Z2_reg_13_ ( .D(N36), .SI(n156), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z2[13] ), .QN(n155) );
  SEDFFXL Z2_reg_12_ ( .D(N35), .SI(n157), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[12] ), .QN(n156) );
  SEDFFXL Z2_reg_11_ ( .D(N34), .SI(n158), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z2[11] ), .QN(n157) );
  SEDFFXL Z2_reg_10_ ( .D(N33), .SI(n159), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[10] ), .QN(n158) );
  SEDFFXL Z2_reg_9_ ( .D(N32), .SI(n160), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z2[9] ), .QN(n159) );
  SEDFFXL Z2_reg_8_ ( .D(N31), .SI(n161), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[8] ), .QN(n160) );
  SEDFFXL Z2_reg_7_ ( .D(N30), .SI(n162), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z2[7] ), .QN(n161) );
  SEDFFXL Z2_reg_6_ ( .D(N29), .SI(n163), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[6] ), .QN(n162) );
  SEDFFXL Z2_reg_5_ ( .D(N28), .SI(n164), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[5] ), .QN(n163) );
  SEDFFXL Z2_reg_4_ ( .D(N27), .SI(n165), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[4] ), .QN(n164) );
  SEDFFXL Z2_reg_3_ ( .D(N26), .SI(n166), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[3] ), .QN(n165) );
  SEDFFXL Z2_reg_2_ ( .D(N25), .SI(n167), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[2] ), .QN(n166) );
  SEDFFXL Z2_reg_1_ ( .D(N24), .SI(n168), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[1] ), .QN(n167) );
  SEDFFXL Z2_reg_0_ ( .D(N23), .SI(n169), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z2[0] ), .QN(n168) );
  SEDFFXL Z1_reg_18_ ( .D(N21), .SI(n171), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[18] ), .QN(n170) );
  SEDFFXL Z1_reg_17_ ( .D(N20), .SI(n172), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[17] ), .QN(n171) );
  SEDFFXL Z1_reg_16_ ( .D(N19), .SI(n173), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[16] ), .QN(n172) );
  SEDFFXL Z1_reg_15_ ( .D(N18), .SI(n174), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[15] ), .QN(n173) );
  SEDFFXL Z1_reg_14_ ( .D(N17), .SI(n175), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[14] ), .QN(n174) );
  SEDFFXL Z1_reg_13_ ( .D(N16), .SI(n176), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[13] ), .QN(n175) );
  SEDFFXL Z1_reg_12_ ( .D(N15), .SI(n177), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[12] ), .QN(n176) );
  SEDFFXL Z1_reg_11_ ( .D(N14), .SI(n178), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[11] ), .QN(n177) );
  SEDFFXL Z1_reg_10_ ( .D(N13), .SI(n179), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z1[10] ), .QN(n178) );
  SEDFFXL Z1_reg_9_ ( .D(N12), .SI(n180), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[9] ), .QN(n179) );
  SEDFFXL Z1_reg_8_ ( .D(N11), .SI(n181), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[8] ), .QN(n180) );
  SEDFFXL Z1_reg_7_ ( .D(N10), .SI(n182), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[7] ), .QN(n181) );
  SEDFFXL Z1_reg_6_ ( .D(N9), .SI(n183), .E(n80), .SE(test_se), .CK(CLK), .Q(
        \Z1[6] ), .QN(n182) );
  SEDFFXL Z1_reg_5_ ( .D(N8), .SI(n184), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[5] ), .QN(n183) );
  SEDFFXL Z1_reg_4_ ( .D(N7), .SI(n185), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[4] ), .QN(n184) );
  SEDFFXL Z1_reg_3_ ( .D(N6), .SI(n186), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[3] ), .QN(n185) );
  SEDFFXL Z1_reg_2_ ( .D(N5), .SI(n187), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[2] ), .QN(n186) );
  SEDFFXL Z1_reg_1_ ( .D(N4), .SI(n188), .E(n70), .SE(test_se), .CK(CLK), .Q(
        \Z1[1] ), .QN(n187) );
  SEDFFXL Z1_reg_0_ ( .D(N3), .SI(test_si), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z1[0] ), .QN(n188) );
  SEDFFXL accout_reg_14_ ( .D(\rn[16] ), .SI(n135), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[14]), .QN(n134) );
  SEDFFXL accout_reg_13_ ( .D(\rn[15] ), .SI(n136), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[13]), .QN(n135) );
  SEDFFXL accout_reg_12_ ( .D(\rn[14] ), .SI(n137), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[12]), .QN(n136) );
  SEDFFXL accout_reg_11_ ( .D(\rn[13] ), .SI(n138), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[11]), .QN(n137) );
  SEDFFXL accout_reg_10_ ( .D(\rn[12] ), .SI(n139), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[10]), .QN(n138) );
  SEDFFXL accout_reg_9_ ( .D(\rn[11] ), .SI(n140), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[9]), .QN(n139) );
  SEDFFXL accout_reg_8_ ( .D(\rn[10] ), .SI(n141), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[8]), .QN(n140) );
  SEDFFXL accout_reg_7_ ( .D(\rn[9] ), .SI(n142), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[7]), .QN(n141) );
  SEDFFXL accout_reg_6_ ( .D(\rn[8] ), .SI(n143), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[6]), .QN(n142) );
  SEDFFXL accout_reg_5_ ( .D(\rn[7] ), .SI(n144), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[5]), .QN(n143) );
  SEDFFXL accout_reg_4_ ( .D(\rn[6] ), .SI(n145), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[4]), .QN(n144) );
  SEDFFXL accout_reg_3_ ( .D(\rn[5] ), .SI(n146), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[3]), .QN(n145) );
  SEDFFXL accout_reg_2_ ( .D(\rn[4] ), .SI(n147), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[2]), .QN(n146) );
  SEDFFXL accout_reg_1_ ( .D(\rn[3] ), .SI(n148), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[1]), .QN(n147) );
  SEDFFXL accout_reg_0_ ( .D(\rn[2] ), .SI(n149), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[0]), .QN(n148) );
  SEDFFXL accout_reg_15_ ( .D(\rn[17] ), .SI(n134), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[15]), .QN(n133) );
  SEDFFXL Z2_reg_17_ ( .D(N40), .SI(n152), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[17] ), .QN(n151) );
  SEDFFXL accout_reg_16_ ( .D(\rn[18] ), .SI(n133), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[16]), .QN(n132) );
  SEDFFXL Z2_reg_18_ ( .D(N41), .SI(n151), .E(n80), .SE(test_se), .CK(CLK), 
        .Q(\Z2[18] ), .QN(n150) );
  SEDFFXL accout_reg_17_ ( .D(\rn[19] ), .SI(n132), .E(n1), .SE(test_se), .CK(
        CLK), .Q(accout[17]), .QN(n131) );
  SEDFFXL Z2_reg_19_ ( .D(N42), .SI(n150), .E(n70), .SE(test_se), .CK(CLK), 
        .Q(\Z2[19] ), .QN(n149) );
  add_pipe1_test_0 adder1 ( .A({\Z1[19] , \Z1[18] , \Z1[17] , \Z1[16] , 
        \Z1[15] , \Z1[14] , \Z1[13] , \Z1[12] , \Z1[11] , \Z1[10] , \Z1[9] , 
        \Z1[8] , \Z1[7] , \Z1[6] , \Z1[5] , \Z1[4] , \Z1[3] , \Z1[2] , \Z1[1] , 
        \Z1[0] }), .B(ACCin), .CLK(CLK), .Sum({\node2[19] , \node2[18] , 
        \node2[17] , \node2[16] , \node2[15] , \node2[14] , \node2[13] , 
        \node2[12] , \node2[11] , \node2[10] , \node2[9] , \node2[8] , 
        \node2[7] , \node2[6] , \node2[5] , \node2[4] , \node2[3] , \node2[2] , 
        \node2[1] , \node2[0] }), .test_se(test_se), .test_si(n131) );
  add_pipe1_test_1 adder2 ( .A({\Z2[19] , \Z2[18] , \Z2[17] , \Z2[16] , 
        \Z2[15] , \Z2[14] , \Z2[13] , \Z2[12] , \Z2[11] , \Z2[10] , \Z2[9] , 
        \Z2[8] , \Z2[7] , \Z2[6] , \Z2[5] , \Z2[4] , \Z2[3] , \Z2[2] , \Z2[1] , 
        \Z2[0] }), .B({\node2[19] , \node2[18] , \node2[17] , \node2[16] , 
        \node2[15] , \node2[14] , \node2[13] , \node2[12] , \node2[11] , 
        \node2[10] , \node2[9] , \node2[8] , \node2[7] , \node2[6] , 
        \node2[5] , \node2[4] , \node2[3] , \node2[2] , \node2[1] , \node2[0] }), .CLK(CLK), .Sum({\rn[19] , \rn[18] , \rn[17] , \rn[16] , \rn[15] , \rn[14] , 
        \rn[13] , \rn[12] , \rn[11] , \rn[10] , \rn[9] , \rn[8] , \rn[7] , 
        \rn[6] , \rn[5] , \rn[4] , \rn[3] , \rn[2] , \rn[1] , \rn[0] }), 
        .test_se(test_se), .test_si(\node2[10] ) );
endmodule


module acf_test_1 ( RESET_, CLK, ACFin, DoDCT, HALT, ACFout0, ACFout1, ACFout2, 
        ACFout3, test_se, test_si, test_so );
  input [16:0] ACFin;
  output [17:0] ACFout0;
  output [17:0] ACFout1;
  output [17:0] ACFout2;
  output [17:0] ACFout3;
  input RESET_, CLK, DoDCT, HALT, test_se, test_si;
  output test_so;
  wire   \Count[1] , \Count[0] , N30, N31, N32, \multaout[24] , \multaout[23] ,
         \multaout[22] , \multaout[21] , \multaout[20] , \multaout[19] ,
         \multaout[18] , \multaout[17] , \multaout[16] , \multaout[15] ,
         \multaout[14] , \multaout[13] , \multaout[12] , \multaout[11] ,
         \multaout[10] , \multaout[9] , \multaout[8] , \multaout[7] ,
         \multaout[6] , \multaout[5] , \multcout[25] , \multcout[24] ,
         \multcout[23] , \multcout[22] , \multcout[21] , \multcout[20] ,
         \multcout[19] , \multcout[18] , \multcout[17] , \multcout[16] ,
         \multcout[15] , \multcout[14] , \multcout[13] , \multcout[12] ,
         \multcout[11] , \multcout[10] , \multcout[9] , \multcout[8] ,
         \multcout[7] , \multcout[6] , \multfout[30] , \multfout[29] ,
         \multfout[28] , \multfout[27] , \multfout[26] , \multfout[25] ,
         \multfout[24] , \multfout[23] , \multfout[22] , \multfout[21] ,
         \multfout[20] , \multfout[19] , \multfout[18] , \multfout[17] ,
         \multfout[16] , \multfout[15] , \multfout[14] , \multfout[13] ,
         \multfout[12] , \multfout[11] , \toACC0t2[19] , \toACC0t2[18] ,
         \toACC0t2[17] , \toACC0t2[16] , \toACC0t2[15] , \toACC0t2[14] ,
         \toACC0t2[13] , \toACC0t2[12] , \toACC0t2[11] , \toACC0t2[10] ,
         \toACC0t2[9] , \toACC0t2[8] , \toACC0t2[7] , \toACC0t2[6] ,
         \toACC0t2[5] , \toACC0t2[4] , \toACC0t2[3] , \toACC0t2[2] ,
         \toACC0t2[1] , \toACC0t2[0] , \toACC1t2[19] , \toACC1t2[18] ,
         \toACC1t2[17] , \toACC1t2[16] , \toACC1t2[15] , \toACC1t2[14] ,
         \toACC1t2[13] , \toACC1t2[12] , \toACC1t2[11] , \toACC1t2[10] ,
         \toACC1t2[9] , \toACC1t2[8] , \toACC1t2[7] , \toACC1t2[6] ,
         \toACC1t2[5] , \toACC1t2[4] , \toACC1t2[3] , \toACC1t2[2] ,
         \toACC1t2[1] , \toACC1t2[0] , \toACC2t2[19] , \toACC2t2[18] ,
         \toACC2t2[17] , \toACC2t2[16] , \toACC2t2[15] , \toACC2t2[14] ,
         \toACC2t2[13] , \toACC2t2[12] , \toACC2t2[11] , \toACC2t2[10] ,
         \toACC2t2[9] , \toACC2t2[8] , \toACC2t2[7] , \toACC2t2[6] ,
         \toACC2t2[5] , \toACC2t2[4] , \toACC2t2[3] , \toACC2t2[2] ,
         \toACC2t2[1] , \toACC2t2[0] , \toACC3t2[19] , \toACC3t2[18] ,
         \toACC3t2[17] , \toACC3t2[16] , \toACC3t2[15] , \toACC3t2[14] ,
         \toACC3t2[13] , \toACC3t2[12] , \toACC3t2[11] , \toACC3t2[10] ,
         \toACC3t2[9] , \toACC3t2[8] , \toACC3t2[7] , \toACC3t2[6] ,
         \toACC3t2[5] , \toACC3t2[4] , \toACC3t2[3] , \toACC3t2[2] ,
         \toACC3t2[1] , \toACC3t2[0] , \toACC0[19] , \toACC0[18] ,
         \toACC0[17] , \toACC0[16] , \toACC0[15] , \toACC0[14] , \toACC0[13] ,
         \toACC0[12] , \toACC0[11] , \toACC0[10] , \toACC0[9] , \toACC0[8] ,
         \toACC0[7] , \toACC0[6] , \toACC0[5] , \toACC0[4] , \toACC0[3] ,
         \toACC0[2] , \toACC0[1] , \toACC0[0] , \toACC1[19] , \toACC1[18] ,
         \toACC1[17] , \toACC1[16] , \toACC1[15] , \toACC1[14] , \toACC1[13] ,
         \toACC1[12] , \toACC1[11] , \toACC1[10] , \toACC1[9] , \toACC1[8] ,
         \toACC1[7] , \toACC1[6] , \toACC1[5] , \toACC1[4] , \toACC1[3] ,
         \toACC1[2] , \toACC1[1] , \toACC1[0] , \toACC2[19] , \toACC2[18] ,
         \toACC2[17] , \toACC2[16] , \toACC2[15] , \toACC2[14] , \toACC2[13] ,
         \toACC2[12] , \toACC2[11] , \toACC2[10] , \toACC2[9] , \toACC2[8] ,
         \toACC2[7] , \toACC2[6] , \toACC2[5] , \toACC2[4] , \toACC2[3] ,
         \toACC2[2] , \toACC2[1] , \toACC2[0] , \toACC3[19] , \toACC3[18] ,
         \toACC3[17] , \toACC3[16] , \toACC3[15] , \toACC3[14] , \toACC3[13] ,
         \toACC3[12] , \toACC3[11] , \toACC3[10] , \toACC3[9] , \toACC3[8] ,
         \toACC3[7] , \toACC3[6] , \toACC3[5] , \toACC3[4] , \toACC3[3] ,
         \toACC3[2] , \toACC3[1] , \toACC3[0] , n3, n4, n5, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n300, n310, n320, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n1, n86, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n157, n158, n163,
         n167, n168, n169, n174, n175, n176, n177, n261, n262, n263, n264,
         n265, n266, n267;
  BUFX2 ASSIGN87 (.Y(test_so), .A(\toACC3[19] ));

  OAI211X1 U3 ( .A0(\Count[1] ), .A1(n167), .B0(n111), .C0(n137), .Y(n141) );
  OAI211X1 U4 ( .A0(\Count[1] ), .A1(n167), .B0(n111), .C0(n137), .Y(n142) );
  OAI211X1 U5 ( .A0(\Count[1] ), .A1(n167), .B0(n111), .C0(n137), .Y(n113) );
  OAI21XL U6 ( .A0(\Count[0] ), .A1(n167), .B0(n87), .Y(n174) );
  AOI21X2 U7 ( .A0(n133), .A1(DoDCT), .B0(n91), .Y(n175) );
  INVX1 U8 ( .A(\multfout[29] ), .Y(n48) );
  OA21XL U9 ( .A0(n167), .A1(n133), .B0(n134), .Y(n4) );
  OA21XL U10 ( .A0(n167), .A1(n133), .B0(n134), .Y(n144) );
  CLKINVX1 U11 ( .A(n169), .Y(n168) );
  NOR3X1 U12 ( .A(\Count[1] ), .B(DoDCT), .C(n135), .Y(n90) );
  CLKINVX1 U13 ( .A(DoDCT), .Y(n167) );
  CLKINVX1 U14 ( .A(\multaout[20] ), .Y(n61) );
  CLKINVX1 U15 ( .A(\multfout[25] ), .Y(n64) );
  CLKINVX1 U16 ( .A(\multaout[17] ), .Y(n73) );
  CLKINVX1 U17 ( .A(\multaout[18] ), .Y(n69) );
  CLKINVX1 U18 ( .A(\multaout[19] ), .Y(n65) );
  CLKINVX1 U19 ( .A(\multfout[24] ), .Y(n68) );
  CLKINVX1 U20 ( .A(\multfout[23] ), .Y(n72) );
  CLKINVX1 U21 ( .A(\multaout[15] ), .Y(n81) );
  CLKINVX1 U22 ( .A(\multaout[16] ), .Y(n77) );
  CLKINVX1 U23 ( .A(\multfout[20] ), .Y(n7) );
  CLKINVX1 U24 ( .A(\multfout[21] ), .Y(n80) );
  CLKINVX1 U25 ( .A(\multfout[22] ), .Y(n76) );
  CLKINVX1 U26 ( .A(\multaout[12] ), .Y(n17) );
  CLKINVX1 U27 ( .A(\multaout[13] ), .Y(n13) );
  CLKINVX1 U28 ( .A(\multaout[14] ), .Y(n9) );
  CLKINVX1 U29 ( .A(\multfout[17] ), .Y(n20) );
  CLKINVX1 U30 ( .A(\multfout[18] ), .Y(n16) );
  CLKINVX1 U31 ( .A(\multfout[19] ), .Y(n12) );
  CLKINVX1 U32 ( .A(\multaout[9] ), .Y(n29) );
  CLKINVX1 U33 ( .A(\multaout[10] ), .Y(n25) );
  CLKINVX1 U34 ( .A(\multaout[11] ), .Y(n21) );
  CLKINVX1 U35 ( .A(\multfout[15] ), .Y(n28) );
  CLKINVX1 U36 ( .A(\multfout[16] ), .Y(n24) );
  CLKINVX1 U37 ( .A(\multaout[7] ), .Y(n37) );
  CLKINVX1 U38 ( .A(\multaout[8] ), .Y(n33) );
  CLKINVX1 U39 ( .A(\multfout[12] ), .Y(n40) );
  CLKINVX1 U40 ( .A(\multfout[13] ), .Y(n36) );
  CLKINVX1 U41 ( .A(\multfout[14] ), .Y(n320) );
  CLKINVX1 U42 ( .A(\multaout[6] ), .Y(n41) );
  NAND2XL U43 ( .A(n175), .B(n4), .Y(n8) );
  NAND2XL U44 ( .A(n175), .B(n144), .Y(n145) );
  CLKINVX1 U45 ( .A(n87), .Y(n138) );
  CLKINVX1 U46 ( .A(\multaout[23] ), .Y(n49) );
  CLKINVX1 U47 ( .A(\multaout[22] ), .Y(n53) );
  CLKINVX1 U48 ( .A(\multaout[21] ), .Y(n57) );
  CLKINVX1 U49 ( .A(\multfout[27] ), .Y(n56) );
  CLKINVX1 U50 ( .A(\multfout[28] ), .Y(n52) );
  CLKINVX1 U51 ( .A(\multfout[26] ), .Y(n60) );
  OAI222XL U52 ( .A0(n52), .A1(n137), .B0(n51), .B1(n134), .C0(n138), .C1(n53), 
        .Y(\toACC0t2[17] ) );
  OAI222XL U53 ( .A0(n48), .A1(n137), .B0(n43), .B1(n134), .C0(n138), .C1(n45), 
        .Y(\toACC0t2[19] ) );
  OAI222XL U54 ( .A0(n60), .A1(n137), .B0(n59), .B1(n134), .C0(n138), .C1(n61), 
        .Y(\toACC0t2[15] ) );
  OAI222XL U55 ( .A0(n56), .A1(n137), .B0(n55), .B1(n134), .C0(n138), .C1(n57), 
        .Y(\toACC0t2[16] ) );
  OAI222XL U56 ( .A0(n48), .A1(n137), .B0(n47), .B1(n134), .C0(n138), .C1(n49), 
        .Y(\toACC0t2[18] ) );
  XOR2X1 U57 ( .A(n163), .B(n54), .Y(\toACC3t2[16] ) );
  OAI222XL U58 ( .A0(n143), .A1(n55), .B0(n175), .B1(n56), .C0(n8), .C1(n57), 
        .Y(n54) );
  XOR2X1 U59 ( .A(n157), .B(n46), .Y(\toACC3t2[18] ) );
  OAI222XL U60 ( .A0(n4), .A1(n47), .B0(n175), .B1(n48), .C0(n8), .C1(n49), 
        .Y(n46) );
  XOR2X1 U61 ( .A(n158), .B(n50), .Y(\toACC3t2[17] ) );
  OAI222XL U62 ( .A0(n144), .A1(n51), .B0(n175), .B1(n52), .C0(n145), .C1(n53), 
        .Y(n50) );
  XOR2X1 U63 ( .A(n158), .B(n42), .Y(\toACC3t2[19] ) );
  OAI222XL U64 ( .A0(n143), .A1(n43), .B0(n175), .B1(n48), .C0(n145), .C1(n45), 
        .Y(n42) );
  XOR2X1 U65 ( .A(n157), .B(n62), .Y(\toACC3t2[14] ) );
  OAI222XL U66 ( .A0(n144), .A1(n63), .B0(n175), .B1(n64), .C0(n8), .C1(n65), 
        .Y(n62) );
  XOR2X1 U67 ( .A(n158), .B(n58), .Y(\toACC3t2[15] ) );
  OAI222XL U68 ( .A0(n4), .A1(n59), .B0(n175), .B1(n60), .C0(n145), .C1(n61), 
        .Y(n58) );
  XOR2X1 U69 ( .A(n113), .B(n125), .Y(\toACC1t2[16] ) );
  OAI222XL U70 ( .A0(n143), .A1(n56), .B0(n175), .B1(n55), .C0(n8), .C1(n57), 
        .Y(n125) );
  XOR2X1 U71 ( .A(n113), .B(n122), .Y(\toACC1t2[19] ) );
  OAI222XL U72 ( .A0(n144), .A1(n48), .B0(n175), .B1(n43), .C0(n145), .C1(n45), 
        .Y(n122) );
  XOR2X1 U73 ( .A(n142), .B(n123), .Y(\toACC1t2[18] ) );
  OAI222XL U74 ( .A0(n143), .A1(n48), .B0(n175), .B1(n47), .C0(n8), .C1(n49), 
        .Y(n123) );
  XOR2X1 U75 ( .A(n141), .B(n124), .Y(\toACC1t2[17] ) );
  OAI222XL U76 ( .A0(n143), .A1(n52), .B0(n175), .B1(n51), .C0(n145), .C1(n53), 
        .Y(n124) );
  XOR2X1 U77 ( .A(n141), .B(n127), .Y(\toACC1t2[14] ) );
  OAI222XL U78 ( .A0(n143), .A1(n64), .B0(n175), .B1(n63), .C0(n8), .C1(n65), 
        .Y(n127) );
  XOR2X1 U79 ( .A(n142), .B(n126), .Y(\toACC1t2[15] ) );
  OAI222XL U80 ( .A0(n143), .A1(n60), .B0(n175), .B1(n59), .C0(n145), .C1(n61), 
        .Y(n126) );
  OAI222XL U81 ( .A0(n72), .A1(n137), .B0(n71), .B1(n134), .C0(n138), .C1(n73), 
        .Y(\toACC0t2[12] ) );
  OAI222XL U82 ( .A0(n68), .A1(n137), .B0(n67), .B1(n134), .C0(n138), .C1(n69), 
        .Y(\toACC0t2[13] ) );
  OAI222XL U83 ( .A0(n64), .A1(n137), .B0(n63), .B1(n134), .C0(n138), .C1(n65), 
        .Y(\toACC0t2[14] ) );
  XOR2X1 U84 ( .A(n174), .B(n70), .Y(\toACC3t2[12] ) );
  OAI222XL U85 ( .A0(n4), .A1(n71), .B0(n175), .B1(n72), .C0(n8), .C1(n73), 
        .Y(n70) );
  XOR2X1 U86 ( .A(n157), .B(n66), .Y(\toACC3t2[13] ) );
  OAI222XL U87 ( .A0(n143), .A1(n67), .B0(n175), .B1(n68), .C0(n145), .C1(n69), 
        .Y(n66) );
  XOR2X1 U88 ( .A(n113), .B(n128), .Y(\toACC1t2[13] ) );
  OAI222XL U89 ( .A0(n143), .A1(n68), .B0(n175), .B1(n67), .C0(n145), .C1(n69), 
        .Y(n128) );
  XOR2X1 U90 ( .A(n142), .B(n129), .Y(\toACC1t2[12] ) );
  OAI222XL U91 ( .A0(n143), .A1(n72), .B0(n175), .B1(n71), .C0(n8), .C1(n73), 
        .Y(n129) );
  XOR2X1 U92 ( .A(n113), .B(n131), .Y(\toACC1t2[10] ) );
  OAI222XL U93 ( .A0(n143), .A1(n80), .B0(n175), .B1(n79), .C0(n8), .C1(n81), 
        .Y(n131) );
  XOR2X1 U94 ( .A(n174), .B(n3), .Y(\toACC3t2[9] ) );
  OAI222XL U95 ( .A0(n143), .A1(n5), .B0(n175), .B1(n7), .C0(n8), .C1(n9), .Y(
        n3) );
  XOR2X1 U96 ( .A(n174), .B(n78), .Y(\toACC3t2[10] ) );
  OAI222XL U97 ( .A0(n143), .A1(n79), .B0(n175), .B1(n80), .C0(n8), .C1(n81), 
        .Y(n78) );
  OAI222XL U98 ( .A0(n80), .A1(n137), .B0(n79), .B1(n134), .C0(n138), .C1(n81), 
        .Y(\toACC0t2[10] ) );
  OAI222XL U99 ( .A0(n76), .A1(n137), .B0(n75), .B1(n134), .C0(n138), .C1(n77), 
        .Y(\toACC0t2[11] ) );
  XOR2X1 U100 ( .A(n112), .B(n141), .Y(\toACC1t2[9] ) );
  OAI222XL U101 ( .A0(n144), .A1(n7), .B0(n175), .B1(n5), .C0(n8), .C1(n9), 
        .Y(n112) );
  XOR2X1 U102 ( .A(n174), .B(n74), .Y(\toACC3t2[11] ) );
  OAI222XL U103 ( .A0(n144), .A1(n75), .B0(n175), .B1(n76), .C0(n145), .C1(n77), .Y(n74) );
  XOR2X1 U104 ( .A(n141), .B(n130), .Y(\toACC1t2[11] ) );
  OAI222XL U105 ( .A0(n143), .A1(n76), .B0(n175), .B1(n75), .C0(n145), .C1(n77), .Y(n130) );
  XOR2X1 U106 ( .A(n113), .B(n116), .Y(\toACC1t2[6] ) );
  OAI222XL U107 ( .A0(n144), .A1(n20), .B0(n175), .B1(n19), .C0(n145), .C1(n21), .Y(n116) );
  XOR2X1 U108 ( .A(n141), .B(n115), .Y(\toACC1t2[7] ) );
  OAI222XL U109 ( .A0(n4), .A1(n16), .B0(n175), .B1(n15), .C0(n8), .C1(n17), 
        .Y(n115) );
  XOR2X1 U110 ( .A(n142), .B(n114), .Y(\toACC1t2[8] ) );
  OAI222XL U111 ( .A0(n143), .A1(n12), .B0(n175), .B1(n11), .C0(n145), .C1(n13), .Y(n114) );
  XOR2X1 U112 ( .A(n174), .B(n18), .Y(\toACC3t2[6] ) );
  OAI222XL U113 ( .A0(n143), .A1(n19), .B0(n175), .B1(n20), .C0(n145), .C1(n21), .Y(n18) );
  XOR2X1 U114 ( .A(n174), .B(n14), .Y(\toACC3t2[7] ) );
  OAI222XL U115 ( .A0(n144), .A1(n15), .B0(n175), .B1(n16), .C0(n8), .C1(n17), 
        .Y(n14) );
  XOR2X1 U116 ( .A(n174), .B(n10), .Y(\toACC3t2[8] ) );
  OAI222XL U117 ( .A0(n4), .A1(n11), .B0(n175), .B1(n12), .C0(n145), .C1(n13), 
        .Y(n10) );
  OAI222XL U118 ( .A0(n16), .A1(n137), .B0(n15), .B1(n134), .C0(n138), .C1(n17), .Y(\toACC0t2[7] ) );
  OAI222XL U119 ( .A0(n12), .A1(n137), .B0(n11), .B1(n134), .C0(n138), .C1(n13), .Y(\toACC0t2[8] ) );
  OAI222XL U120 ( .A0(n7), .A1(n137), .B0(n5), .B1(n134), .C0(n138), .C1(n9), 
        .Y(\toACC0t2[9] ) );
  XOR2X1 U121 ( .A(n141), .B(n118), .Y(\toACC1t2[4] ) );
  OAI222XL U122 ( .A0(n4), .A1(n28), .B0(n175), .B1(n27), .C0(n145), .C1(n29), 
        .Y(n118) );
  XOR2X1 U123 ( .A(n142), .B(n117), .Y(\toACC1t2[5] ) );
  OAI222XL U124 ( .A0(n143), .A1(n24), .B0(n175), .B1(n23), .C0(n8), .C1(n25), 
        .Y(n117) );
  XOR2X1 U125 ( .A(n163), .B(n26), .Y(\toACC3t2[4] ) );
  CLKINVX1 U126 ( .A(n176), .Y(n163) );
  OAI222XL U127 ( .A0(n144), .A1(n27), .B0(n175), .B1(n28), .C0(n145), .C1(n29), .Y(n26) );
  XOR2X1 U128 ( .A(n163), .B(n22), .Y(\toACC3t2[5] ) );
  OAI222XL U129 ( .A0(n4), .A1(n23), .B0(n175), .B1(n24), .C0(n8), .C1(n25), 
        .Y(n22) );
  OAI222XL U130 ( .A0(n28), .A1(n137), .B0(n27), .B1(n134), .C0(n138), .C1(n29), .Y(\toACC0t2[4] ) );
  OAI222XL U131 ( .A0(n24), .A1(n137), .B0(n23), .B1(n134), .C0(n138), .C1(n25), .Y(\toACC0t2[5] ) );
  OAI222XL U132 ( .A0(n20), .A1(n137), .B0(n19), .B1(n134), .C0(n138), .C1(n21), .Y(\toACC0t2[6] ) );
  XOR2X1 U133 ( .A(n141), .B(n121), .Y(\toACC1t2[1] ) );
  OAI222XL U134 ( .A0(n4), .A1(n40), .B0(n175), .B1(n39), .C0(n8), .C1(n41), 
        .Y(n121) );
  XOR2X1 U135 ( .A(n142), .B(n120), .Y(\toACC1t2[2] ) );
  OAI222XL U136 ( .A0(n143), .A1(n36), .B0(n175), .B1(n35), .C0(n145), .C1(n37), .Y(n120) );
  XOR2X1 U137 ( .A(n113), .B(n119), .Y(\toACC1t2[3] ) );
  OAI222XL U138 ( .A0(n144), .A1(n320), .B0(n175), .B1(n310), .C0(n8), .C1(n33), .Y(n119) );
  XOR2X1 U139 ( .A(n163), .B(n38), .Y(\toACC3t2[1] ) );
  OAI222XL U140 ( .A0(n144), .A1(n39), .B0(n175), .B1(n40), .C0(n8), .C1(n41), 
        .Y(n38) );
  XOR2X1 U141 ( .A(n163), .B(n34), .Y(\toACC3t2[2] ) );
  OAI222XL U142 ( .A0(n4), .A1(n35), .B0(n175), .B1(n36), .C0(n145), .C1(n37), 
        .Y(n34) );
  XOR2X1 U143 ( .A(n163), .B(n300), .Y(\toACC3t2[3] ) );
  OAI222XL U144 ( .A0(n143), .A1(n310), .B0(n175), .B1(n320), .C0(n8), .C1(n33), .Y(n300) );
  OAI222XL U145 ( .A0(n36), .A1(n137), .B0(n35), .B1(n134), .C0(n138), .C1(n37), .Y(\toACC0t2[2] ) );
  OAI222XL U146 ( .A0(n320), .A1(n137), .B0(n310), .B1(n134), .C0(n138), .C1(
        n33), .Y(\toACC0t2[3] ) );
  CLKINVX1 U147 ( .A(\multaout[5] ), .Y(n85) );
  CLKINVX1 U148 ( .A(\multfout[11] ), .Y(n84) );
  XOR2X1 U149 ( .A(n174), .B(n82), .Y(\toACC3t2[0] ) );
  OAI222XL U150 ( .A0(n4), .A1(n83), .B0(n175), .B1(n84), .C0(n145), .C1(n85), 
        .Y(n82) );
  OAI222XL U151 ( .A0(n84), .A1(n137), .B0(n83), .B1(n134), .C0(n138), .C1(n85), .Y(\toACC0t2[0] ) );
  OAI222XL U152 ( .A0(n40), .A1(n137), .B0(n39), .B1(n134), .C0(n138), .C1(n41), .Y(\toACC0t2[1] ) );
  XOR2X1 U153 ( .A(n142), .B(n132), .Y(\toACC1t2[0] ) );
  OAI222XL U154 ( .A0(n143), .A1(n84), .B0(n175), .B1(n83), .C0(n145), .C1(n85), .Y(n132) );
  OA21XL U155 ( .A0(DoDCT), .A1(n111), .B0(n4), .Y(n146) );
  OA21XL U156 ( .A0(DoDCT), .A1(n111), .B0(n144), .Y(n147) );
  OA21XL U157 ( .A0(DoDCT), .A1(n111), .B0(n143), .Y(n88) );
  NOR2X1 U158 ( .A(n86), .B(n90), .Y(n87) );
  NOR2X1 U159 ( .A(n1), .B(n139), .Y(n140) );
  OA21X2 U160 ( .A0(n167), .A1(n133), .B0(n134), .Y(n143) );
  CLKINVX1 U161 ( .A(n139), .Y(n134) );
  CLKINVX1 U162 ( .A(n177), .Y(n157) );
  CLKINVX1 U163 ( .A(n177), .Y(n158) );
  CLKINVX1 U164 ( .A(n91), .Y(n137) );
  XOR2X1 U165 ( .A(n146), .B(n101), .Y(\toACC2t2[18] ) );
  AOI222XL U166 ( .A0(\multaout[23] ), .A1(n87), .B0(n90), .B1(\multfout[29] ), 
        .C0(n1), .C1(\multcout[24] ), .Y(n101) );
  XOR2X1 U167 ( .A(n88), .B(n102), .Y(\toACC2t2[17] ) );
  AOI222XL U168 ( .A0(\multaout[22] ), .A1(n140), .B0(n90), .B1(\multfout[28] ), .C0(n1), .C1(\multcout[23] ), .Y(n102) );
  XOR2X1 U169 ( .A(n147), .B(n100), .Y(\toACC2t2[19] ) );
  AOI222XL U170 ( .A0(\multaout[24] ), .A1(n140), .B0(n90), .B1(\multfout[30] ), .C0(n86), .C1(\multcout[25] ), .Y(n100) );
  XOR2X1 U171 ( .A(n146), .B(n104), .Y(\toACC2t2[15] ) );
  AOI222XL U172 ( .A0(\multaout[20] ), .A1(n140), .B0(n90), .B1(\multfout[26] ), .C0(n1), .C1(\multcout[21] ), .Y(n104) );
  XOR2X1 U173 ( .A(n147), .B(n103), .Y(\toACC2t2[16] ) );
  AOI222XL U174 ( .A0(\multaout[21] ), .A1(n87), .B0(n90), .B1(\multfout[27] ), 
        .C0(n86), .C1(\multcout[22] ), .Y(n103) );
  XOR2X1 U175 ( .A(n88), .B(n105), .Y(\toACC2t2[14] ) );
  AOI222XL U176 ( .A0(\multaout[19] ), .A1(n140), .B0(n90), .B1(\multfout[25] ), .C0(n86), .C1(\multcout[20] ), .Y(n105) );
  XOR2X1 U177 ( .A(n146), .B(n107), .Y(\toACC2t2[12] ) );
  AOI222XL U178 ( .A0(\multaout[17] ), .A1(n140), .B0(n90), .B1(\multfout[23] ), .C0(n1), .C1(\multcout[18] ), .Y(n107) );
  XOR2X1 U179 ( .A(n147), .B(n106), .Y(\toACC2t2[13] ) );
  AOI222XL U180 ( .A0(\multaout[18] ), .A1(n140), .B0(n90), .B1(\multfout[24] ), .C0(n86), .C1(\multcout[19] ), .Y(n106) );
  XOR2X1 U181 ( .A(n88), .B(n108), .Y(\toACC2t2[11] ) );
  AOI222XL U182 ( .A0(\multaout[16] ), .A1(n140), .B0(n90), .B1(\multfout[22] ), .C0(n1), .C1(\multcout[17] ), .Y(n108) );
  XOR2X1 U183 ( .A(n147), .B(n89), .Y(\toACC2t2[9] ) );
  AOI222XL U184 ( .A0(\multaout[14] ), .A1(n87), .B0(n90), .B1(\multfout[20] ), 
        .C0(n86), .C1(\multcout[15] ), .Y(n89) );
  XOR2X1 U185 ( .A(n147), .B(n109), .Y(\toACC2t2[10] ) );
  AOI222XL U186 ( .A0(\multaout[15] ), .A1(n140), .B0(n90), .B1(\multfout[21] ), .C0(n86), .C1(\multcout[16] ), .Y(n109) );
  XOR2X1 U187 ( .A(n88), .B(n93), .Y(\toACC2t2[7] ) );
  AOI222XL U188 ( .A0(\multaout[12] ), .A1(n87), .B0(n90), .B1(\multfout[18] ), 
        .C0(n91), .C1(\multcout[13] ), .Y(n93) );
  XOR2X1 U189 ( .A(n146), .B(n92), .Y(\toACC2t2[8] ) );
  AOI222XL U190 ( .A0(\multaout[13] ), .A1(n140), .B0(n139), .B1(
        \multfout[19] ), .C0(n1), .C1(\multcout[14] ), .Y(n92) );
  XOR2X1 U191 ( .A(n88), .B(n96), .Y(\toACC2t2[4] ) );
  AOI222XL U192 ( .A0(\multaout[9] ), .A1(n140), .B0(n139), .B1(\multfout[15] ), .C0(n91), .C1(\multcout[10] ), .Y(n96) );
  XOR2X1 U193 ( .A(n146), .B(n95), .Y(\toACC2t2[5] ) );
  AOI222XL U194 ( .A0(\multaout[10] ), .A1(n87), .B0(n90), .B1(\multfout[16] ), 
        .C0(n1), .C1(\multcout[11] ), .Y(n95) );
  XOR2X1 U195 ( .A(n147), .B(n94), .Y(\toACC2t2[6] ) );
  AOI222XL U196 ( .A0(\multaout[11] ), .A1(n140), .B0(n139), .B1(
        \multfout[17] ), .C0(n86), .C1(\multcout[12] ), .Y(n94) );
  XOR2X1 U197 ( .A(n88), .B(n99), .Y(\toACC2t2[1] ) );
  AOI222XL U198 ( .A0(\multaout[6] ), .A1(n87), .B0(n90), .B1(\multfout[12] ), 
        .C0(n86), .C1(\multcout[7] ), .Y(n99) );
  XOR2X1 U199 ( .A(n146), .B(n98), .Y(\toACC2t2[2] ) );
  AOI222XL U200 ( .A0(\multaout[7] ), .A1(n140), .B0(n139), .B1(\multfout[13] ), .C0(n1), .C1(\multcout[8] ), .Y(n98) );
  XOR2X1 U201 ( .A(n147), .B(n97), .Y(\toACC2t2[3] ) );
  AOI222XL U202 ( .A0(\multaout[8] ), .A1(n87), .B0(n90), .B1(\multfout[14] ), 
        .C0(n86), .C1(\multcout[9] ), .Y(n97) );
  XOR2X1 U203 ( .A(n146), .B(n110), .Y(\toACC2t2[0] ) );
  AOI222XL U204 ( .A0(\multaout[5] ), .A1(n140), .B0(n90), .B1(\multfout[11] ), 
        .C0(n1), .C1(\multcout[6] ), .Y(n110) );
  CLKINVX1 U205 ( .A(HALT), .Y(n169) );
  NOR3X1 U206 ( .A(\Count[1] ), .B(DoDCT), .C(n135), .Y(n139) );
  NOR3X1 U207 ( .A(\Count[0] ), .B(DoDCT), .C(n136), .Y(n91) );
  OAI21XL U208 ( .A0(n135), .A1(n136), .B0(n111), .Y(n133) );
  NAND2X1 U209 ( .A(n135), .B(n136), .Y(n111) );
  OAI2BB1X1 U210 ( .A0N(n135), .A1N(n169), .B0(RESET_), .Y(N31) );
  NAND2X1 U211 ( .A(n168), .B(RESET_), .Y(N32) );
  NOR3X1 U212 ( .A(\Count[0] ), .B(DoDCT), .C(n136), .Y(n1) );
  NOR3X1 U213 ( .A(\Count[0] ), .B(DoDCT), .C(n136), .Y(n86) );
  OA21XL U214 ( .A0(\Count[0] ), .A1(n167), .B0(n140), .Y(n176) );
  OA21XL U215 ( .A0(\Count[0] ), .A1(n167), .B0(n140), .Y(n177) );
  XOR2X1 U216 ( .A(\Count[1] ), .B(\Count[0] ), .Y(N30) );
  CLKINVX1 U217 ( .A(\multaout[24] ), .Y(n45) );
  CLKINVX1 U218 ( .A(\multcout[6] ), .Y(n83) );
  CLKINVX1 U219 ( .A(\multcout[7] ), .Y(n39) );
  CLKINVX1 U220 ( .A(\multcout[8] ), .Y(n35) );
  CLKINVX1 U221 ( .A(\multcout[9] ), .Y(n310) );
  CLKINVX1 U222 ( .A(\multcout[10] ), .Y(n27) );
  CLKINVX1 U223 ( .A(\multcout[11] ), .Y(n23) );
  CLKINVX1 U224 ( .A(\multcout[12] ), .Y(n19) );
  CLKINVX1 U225 ( .A(\multcout[13] ), .Y(n15) );
  CLKINVX1 U226 ( .A(\multcout[14] ), .Y(n11) );
  CLKINVX1 U227 ( .A(\multcout[15] ), .Y(n5) );
  CLKINVX1 U228 ( .A(\multcout[16] ), .Y(n79) );
  CLKINVX1 U229 ( .A(\multcout[17] ), .Y(n75) );
  CLKINVX1 U230 ( .A(\multcout[18] ), .Y(n71) );
  CLKINVX1 U231 ( .A(\multcout[19] ), .Y(n67) );
  CLKINVX1 U232 ( .A(\multcout[20] ), .Y(n63) );
  CLKINVX1 U233 ( .A(\multcout[21] ), .Y(n59) );
  CLKINVX1 U234 ( .A(\multcout[22] ), .Y(n55) );
  CLKINVX1 U235 ( .A(\multcout[23] ), .Y(n51) );
  CLKINVX1 U236 ( .A(\multcout[24] ), .Y(n47) );
  CLKINVX1 U237 ( .A(\multcout[25] ), .Y(n43) );
  SDFFQXL toACC0_reg_19_ ( .D(\toACC0t2[19] ), .SI(\toACC0[18] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[19] ) );
  SDFFQXL toACC0_reg_18_ ( .D(\toACC0t2[18] ), .SI(\toACC0[17] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[18] ) );
  SDFFQXL toACC0_reg_17_ ( .D(\toACC0t2[17] ), .SI(\toACC0[16] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[17] ) );
  SDFFQXL toACC0_reg_16_ ( .D(\toACC0t2[16] ), .SI(\toACC0[15] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[16] ) );
  SDFFQXL toACC0_reg_15_ ( .D(\toACC0t2[15] ), .SI(\toACC0[14] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[15] ) );
  SDFFQXL toACC0_reg_14_ ( .D(\toACC0t2[14] ), .SI(\toACC0[13] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[14] ) );
  SDFFQXL toACC0_reg_13_ ( .D(\toACC0t2[13] ), .SI(\toACC0[12] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[13] ) );
  SDFFQXL toACC0_reg_12_ ( .D(\toACC0t2[12] ), .SI(\toACC0[11] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[12] ) );
  SDFFQXL toACC0_reg_11_ ( .D(\toACC0t2[11] ), .SI(\toACC0[10] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[11] ) );
  SDFFQXL toACC1_reg_19_ ( .D(\toACC1t2[19] ), .SI(\toACC1[18] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[19] ) );
  SDFFQXL toACC1_reg_18_ ( .D(\toACC1t2[18] ), .SI(\toACC1[17] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[18] ) );
  SDFFQXL toACC1_reg_17_ ( .D(\toACC1t2[17] ), .SI(\toACC1[16] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[17] ) );
  SDFFQXL toACC1_reg_16_ ( .D(\toACC1t2[16] ), .SI(\toACC1[15] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[16] ) );
  SDFFQXL toACC1_reg_15_ ( .D(\toACC1t2[15] ), .SI(\toACC1[14] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[15] ) );
  SDFFQXL toACC1_reg_14_ ( .D(\toACC1t2[14] ), .SI(\toACC1[13] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[14] ) );
  SDFFQXL toACC1_reg_13_ ( .D(\toACC1t2[13] ), .SI(\toACC1[12] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[13] ) );
  SDFFQXL toACC1_reg_12_ ( .D(\toACC1t2[12] ), .SI(\toACC1[11] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[12] ) );
  SDFFQXL toACC1_reg_11_ ( .D(\toACC1t2[11] ), .SI(\toACC1[10] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[11] ) );
  SDFFQXL toACC2_reg_19_ ( .D(\toACC2t2[19] ), .SI(\toACC2[18] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[19] ) );
  SDFFQXL toACC2_reg_18_ ( .D(\toACC2t2[18] ), .SI(\toACC2[17] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[18] ) );
  SDFFQXL toACC2_reg_17_ ( .D(\toACC2t2[17] ), .SI(\toACC2[16] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[17] ) );
  SDFFQXL toACC2_reg_16_ ( .D(\toACC2t2[16] ), .SI(\toACC2[15] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[16] ) );
  SDFFQXL toACC2_reg_15_ ( .D(\toACC2t2[15] ), .SI(\toACC2[14] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[15] ) );
  SDFFQXL toACC2_reg_14_ ( .D(\toACC2t2[14] ), .SI(\toACC2[13] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[14] ) );
  SDFFQXL toACC2_reg_13_ ( .D(\toACC2t2[13] ), .SI(\toACC2[12] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[13] ) );
  SDFFQXL toACC2_reg_12_ ( .D(\toACC2t2[12] ), .SI(\toACC2[11] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[12] ) );
  SDFFQXL toACC2_reg_11_ ( .D(\toACC2t2[11] ), .SI(\toACC2[10] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[11] ) );
  SDFFQXL toACC3_reg_19_ ( .D(\toACC3t2[19] ), .SI(\toACC3[18] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[19] ) );
  SDFFQXL toACC3_reg_18_ ( .D(\toACC3t2[18] ), .SI(\toACC3[17] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[18] ) );
  SDFFQXL toACC3_reg_17_ ( .D(\toACC3t2[17] ), .SI(\toACC3[16] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[17] ) );
  SDFFQXL toACC3_reg_16_ ( .D(\toACC3t2[16] ), .SI(\toACC3[15] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[16] ) );
  SDFFQXL toACC3_reg_15_ ( .D(\toACC3t2[15] ), .SI(\toACC3[14] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[15] ) );
  SDFFQXL toACC3_reg_14_ ( .D(\toACC3t2[14] ), .SI(\toACC3[13] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[14] ) );
  SDFFQXL toACC3_reg_13_ ( .D(\toACC3t2[13] ), .SI(\toACC3[12] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[13] ) );
  SDFFQXL toACC3_reg_12_ ( .D(\toACC3t2[12] ), .SI(\toACC3[11] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[12] ) );
  SDFFQXL toACC3_reg_11_ ( .D(\toACC3t2[11] ), .SI(\toACC3[10] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[11] ) );
  SDFFQXL toACC0_reg_10_ ( .D(\toACC0t2[10] ), .SI(\toACC0[9] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[10] ) );
  SDFFQXL toACC0_reg_9_ ( .D(\toACC0t2[9] ), .SI(\toACC0[8] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[9] ) );
  SDFFQXL toACC0_reg_8_ ( .D(\toACC0t2[8] ), .SI(\toACC0[7] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[8] ) );
  SDFFQXL toACC0_reg_7_ ( .D(\toACC0t2[7] ), .SI(\toACC0[6] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[7] ) );
  SDFFQXL toACC0_reg_6_ ( .D(\toACC0t2[6] ), .SI(\toACC0[5] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[6] ) );
  SDFFQXL toACC1_reg_10_ ( .D(\toACC1t2[10] ), .SI(\toACC1[9] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[10] ) );
  SDFFQXL toACC1_reg_9_ ( .D(\toACC1t2[9] ), .SI(\toACC1[8] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[9] ) );
  SDFFQXL toACC1_reg_8_ ( .D(\toACC1t2[8] ), .SI(\toACC1[7] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[8] ) );
  SDFFQXL toACC1_reg_7_ ( .D(\toACC1t2[7] ), .SI(\toACC1[6] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[7] ) );
  SDFFQXL toACC1_reg_6_ ( .D(\toACC1t2[6] ), .SI(\toACC1[5] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[6] ) );
  SDFFQXL toACC2_reg_10_ ( .D(\toACC2t2[10] ), .SI(\toACC2[9] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[10] ) );
  SDFFQXL toACC2_reg_9_ ( .D(\toACC2t2[9] ), .SI(\toACC2[8] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[9] ) );
  SDFFQXL toACC2_reg_8_ ( .D(\toACC2t2[8] ), .SI(\toACC2[7] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[8] ) );
  SDFFQXL toACC2_reg_7_ ( .D(\toACC2t2[7] ), .SI(\toACC2[6] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[7] ) );
  SDFFQXL toACC2_reg_6_ ( .D(\toACC2t2[6] ), .SI(\toACC2[5] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[6] ) );
  SDFFQXL toACC3_reg_10_ ( .D(\toACC3t2[10] ), .SI(\toACC3[9] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[10] ) );
  SDFFQXL toACC3_reg_9_ ( .D(\toACC3t2[9] ), .SI(\toACC3[8] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[9] ) );
  SDFFQXL toACC3_reg_8_ ( .D(\toACC3t2[8] ), .SI(\toACC3[7] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[8] ) );
  SDFFQXL toACC3_reg_7_ ( .D(\toACC3t2[7] ), .SI(\toACC3[6] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[7] ) );
  SDFFQXL toACC3_reg_6_ ( .D(\toACC3t2[6] ), .SI(\toACC3[5] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[6] ) );
  SDFFQXL toACC0_reg_0_ ( .D(\toACC0t2[0] ), .SI(n261), .SE(test_se), .CK(CLK), 
        .Q(\toACC0[0] ) );
  SDFFQXL toACC1_reg_0_ ( .D(\toACC1t2[0] ), .SI(\toACC0[19] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[0] ) );
  SDFFQXL toACC2_reg_0_ ( .D(\toACC2t2[0] ), .SI(\toACC1[19] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[0] ) );
  SDFFQXL toACC3_reg_0_ ( .D(\toACC3t2[0] ), .SI(\toACC2[19] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[0] ) );
  SDFFQXL toACC0_reg_5_ ( .D(\toACC0t2[5] ), .SI(\toACC0[4] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[5] ) );
  SDFFQXL toACC0_reg_4_ ( .D(\toACC0t2[4] ), .SI(\toACC0[3] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[4] ) );
  SDFFQXL toACC0_reg_3_ ( .D(\toACC0t2[3] ), .SI(\toACC0[2] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[3] ) );
  SDFFQXL toACC0_reg_2_ ( .D(\toACC0t2[2] ), .SI(\toACC0[1] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[2] ) );
  SDFFQXL toACC0_reg_1_ ( .D(\toACC0t2[1] ), .SI(\toACC0[0] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC0[1] ) );
  SDFFQXL toACC1_reg_5_ ( .D(\toACC1t2[5] ), .SI(\toACC1[4] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[5] ) );
  SDFFQXL toACC1_reg_4_ ( .D(\toACC1t2[4] ), .SI(\toACC1[3] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[4] ) );
  SDFFQXL toACC1_reg_3_ ( .D(\toACC1t2[3] ), .SI(\toACC1[2] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[3] ) );
  SDFFQXL toACC1_reg_2_ ( .D(\toACC1t2[2] ), .SI(\toACC1[1] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[2] ) );
  SDFFQXL toACC1_reg_1_ ( .D(\toACC1t2[1] ), .SI(\toACC1[0] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC1[1] ) );
  SDFFQXL toACC2_reg_5_ ( .D(\toACC2t2[5] ), .SI(\toACC2[4] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[5] ) );
  SDFFQXL toACC2_reg_4_ ( .D(\toACC2t2[4] ), .SI(\toACC2[3] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[4] ) );
  SDFFQXL toACC2_reg_3_ ( .D(\toACC2t2[3] ), .SI(\toACC2[2] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[3] ) );
  SDFFQXL toACC2_reg_2_ ( .D(\toACC2t2[2] ), .SI(\toACC2[1] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[2] ) );
  SDFFQXL toACC2_reg_1_ ( .D(\toACC2t2[1] ), .SI(\toACC2[0] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC2[1] ) );
  SDFFQXL toACC3_reg_5_ ( .D(\toACC3t2[5] ), .SI(\toACC3[4] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[5] ) );
  SDFFQXL toACC3_reg_4_ ( .D(\toACC3t2[4] ), .SI(\toACC3[3] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[4] ) );
  SDFFQXL toACC3_reg_3_ ( .D(\toACC3t2[3] ), .SI(\toACC3[2] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[3] ) );
  SDFFQXL toACC3_reg_2_ ( .D(\toACC3t2[2] ), .SI(\toACC3[1] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[2] ) );
  SDFFQXL toACC3_reg_1_ ( .D(\toACC3t2[1] ), .SI(\toACC3[0] ), .SE(test_se), 
        .CK(CLK), .Q(\toACC3[1] ) );
  SEDFFTRXL Count_reg_1_ ( .RN(RESET_), .D(N30), .E(n169), .SI(\Count[0] ), 
        .SE(test_se), .CK(CLK), .Q(\Count[1] ), .QN(n136) );
  SEDFFXL Count_reg_0_ ( .D(N31), .SI(n264), .E(N32), .SE(test_se), .CK(CLK), 
        .Q(\Count[0] ), .QN(n135) );
  ACC_test_0 ACC0 ( .CLK(CLK), .ACCin({\toACC0[19] , \toACC0[18] , 
        \toACC0[17] , \toACC0[16] , \toACC0[15] , \toACC0[14] , \toACC0[13] , 
        \toACC0[12] , \toACC0[11] , \toACC0[10] , \toACC0[9] , \toACC0[8] , 
        \toACC0[7] , \toACC0[6] , \toACC0[5] , \toACC0[4] , \toACC0[3] , 
        \toACC0[2] , \toACC0[1] , \toACC0[0] }), .HALT(n168), .Count({
        \Count[1] , \Count[0] }), .accout(ACFout0), .test_se(test_se), 
        .test_si(test_si), .test_so(n267) );
  ACC_test_1 ACC1 ( .CLK(CLK), .ACCin({\toACC1[19] , \toACC1[18] , 
        \toACC1[17] , \toACC1[16] , \toACC1[15] , \toACC1[14] , \toACC1[13] , 
        \toACC1[12] , \toACC1[11] , \toACC1[10] , \toACC1[9] , \toACC1[8] , 
        \toACC1[7] , \toACC1[6] , \toACC1[5] , \toACC1[4] , \toACC1[3] , 
        \toACC1[2] , \toACC1[1] , \toACC1[0] }), .HALT(n168), .Count({
        \Count[1] , \Count[0] }), .accout(ACFout1), .test_se(test_se), 
        .test_si(n267), .test_so(n266) );
  ACC_test_2 ACC2 ( .CLK(CLK), .ACCin({\toACC2[19] , \toACC2[18] , 
        \toACC2[17] , \toACC2[16] , \toACC2[15] , \toACC2[14] , \toACC2[13] , 
        \toACC2[12] , \toACC2[11] , \toACC2[10] , \toACC2[9] , \toACC2[8] , 
        \toACC2[7] , \toACC2[6] , \toACC2[5] , \toACC2[4] , \toACC2[3] , 
        \toACC2[2] , \toACC2[1] , \toACC2[0] }), .HALT(n168), .Count({
        \Count[1] , \Count[0] }), .accout(ACFout2), .test_se(test_se), 
        .test_si(n266), .test_so(n265) );
  ACC_test_3 ACC3 ( .CLK(CLK), .ACCin({\toACC3[19] , \toACC3[18] , 
        \toACC3[17] , \toACC3[16] , \toACC3[15] , \toACC3[14] , \toACC3[13] , 
        \toACC3[12] , \toACC3[11] , \toACC3[10] , \toACC3[9] , \toACC3[8] , 
        \toACC3[7] , \toACC3[6] , \toACC3[5] , \toACC3[4] , \toACC3[3] , 
        \toACC3[2] , \toACC3[1] , \toACC3[0] }), .HALT(n168), .Count({
        \Count[1] , \Count[0] }), .accout(ACFout3), .test_se(test_se), 
        .test_si(n265), .test_so(n264) );
  acf_DW02_mult_3_stage_0_test_1 mult_f ( .A(ACFin), .CLK(CLK), .test_se(
        test_se), .test_si(n262), .test_so(n261), .\PRODUCT[30] (
        \multfout[30] ), .\PRODUCT[29] (\multfout[29] ), .\PRODUCT[28] (
        \multfout[28] ), .\PRODUCT[27] (\multfout[27] ), .\PRODUCT[26] (
        \multfout[26] ), .\PRODUCT[25] (\multfout[25] ), .\PRODUCT[24] (
        \multfout[24] ), .\PRODUCT[23] (\multfout[23] ), .\PRODUCT[22] (
        \multfout[22] ), .\PRODUCT[21] (\multfout[21] ), .\PRODUCT[20] (
        \multfout[20] ), .\PRODUCT[19] (\multfout[19] ), .\PRODUCT[18] (
        \multfout[18] ), .\PRODUCT[17] (\multfout[17] ), .\PRODUCT[16] (
        \multfout[16] ), .\PRODUCT[15] (\multfout[15] ), .\PRODUCT[14] (
        \multfout[14] ), .\PRODUCT[13] (\multfout[13] ), .\PRODUCT[12] (
        \multfout[12] ), .\PRODUCT[11] (\multfout[11] ) );
  acf_DW02_mult_3_stage_1_test_1 mult_c ( .A(ACFin), .CLK(CLK), .test_se(
        test_se), .test_si(n263), .test_so(n262), .\PRODUCT[25] (
        \multcout[25] ), .\PRODUCT[24] (\multcout[24] ), .\PRODUCT[23] (
        \multcout[23] ), .\PRODUCT[22] (\multcout[22] ), .\PRODUCT[21] (
        \multcout[21] ), .\PRODUCT[20] (\multcout[20] ), .\PRODUCT[19] (
        \multcout[19] ), .\PRODUCT[18] (\multcout[18] ), .\PRODUCT[17] (
        \multcout[17] ), .\PRODUCT[16] (\multcout[16] ), .\PRODUCT[15] (
        \multcout[15] ), .\PRODUCT[14] (\multcout[14] ), .\PRODUCT[13] (
        \multcout[13] ), .\PRODUCT[12] (\multcout[12] ), .\PRODUCT[11] (
        \multcout[11] ), .\PRODUCT[10] (\multcout[10] ), .\PRODUCT[9] (
        \multcout[9] ), .\PRODUCT[8] (\multcout[8] ), .\PRODUCT[7] (
        \multcout[7] ), .\PRODUCT[6] (\multcout[6] ) );
  acf_DW02_mult_3_stage_2_test_1 mult_a ( .A(ACFin), .CLK(CLK), .test_si(n136), 
        .test_se(test_se), .test_so(n263), .\PRODUCT[24] (\multaout[24] ), 
        .\PRODUCT[23] (\multaout[23] ), .\PRODUCT[22] (\multaout[22] ), 
        .\PRODUCT[21] (\multaout[21] ), .\PRODUCT[20] (\multaout[20] ), 
        .\PRODUCT[19] (\multaout[19] ), .\PRODUCT[18] (\multaout[18] ), 
        .\PRODUCT[17] (\multaout[17] ), .\PRODUCT[16] (\multaout[16] ), 
        .\PRODUCT[15] (\multaout[15] ), .\PRODUCT[14] (\multaout[14] ), 
        .\PRODUCT[13] (\multaout[13] ), .\PRODUCT[12] (\multaout[12] ), 
        .\PRODUCT[11] (\multaout[11] ), .\PRODUCT[10] (\multaout[10] ), 
        .\PRODUCT[9] (\multaout[9] ), .\PRODUCT[8] (\multaout[8] ), 
        .\PRODUCT[7] (\multaout[7] ), .\PRODUCT[6] (\multaout[6] ), 
        .\PRODUCT[5] (\multaout[5] ) );
endmodule


module IDRU8_test_1 ( ACC0, ACC1, ACC2, ACC3, ACC4, ACC5, ACC6, ACC7, CLK, 
        HALT, RESET_, DoDCT, Z, ToMEM, test_se, test_si, test_so );
  input [17:0] ACC0;
  input [17:0] ACC1;
  input [17:0] ACC2;
  input [17:0] ACC3;
  input [17:0] ACC4;
  input [17:0] ACC5;
  input [17:0] ACC6;
  input [17:0] ACC7;
  output [11:0] Z;
  output [15:0] ToMEM;
  input CLK, HALT, RESET_, DoDCT, test_se, test_si;
  output test_so;
  wire   N21, N22, \Count[2] , \Count[1] , \Count[0] , N27, N28, N30, N31,
         \MUXAout[17] , \MUXAout[16] , \MUXAout[15] , \MUXAout[14] ,
         \MUXAout[13] , \MUXAout[12] , \MUXAout[11] , \MUXAout[10] ,
         \MUXAout[9] , \MUXAout[8] , \MUXAout[7] , \MUXAout[6] , \MUXAout[5] ,
         \MUXAout[4] , \MUXAout[3] , \MUXAout[2] , \MUXAout[1] , \MUXAout[0] ,
         \MUXBout[17] , \MUXBout[16] , \MUXBout[15] , \MUXBout[14] ,
         \MUXBout[13] , \MUXBout[12] , \MUXBout[11] , \MUXBout[10] ,
         \MUXBout[9] , \MUXBout[8] , \MUXBout[7] , \MUXBout[6] , \MUXBout[5] ,
         \MUXBout[4] , \MUXBout[3] , \MUXBout[2] , \MUXBout[1] , \MUXBout[0] ,
         \ADDout[17] , \ADDout[16] , \ADDout[15] , \ADDout[14] , \ADDout[13] ,
         \ADDout[12] , \ADDout[11] , \ADDout[10] , \ADDout[9] , \ADDout[8] ,
         \ADDout[7] , \ADDout[6] , \ADDout[5] , \ADDout[4] , \ADDout[3] ,
         \ADDout[2] , \SUBout[17] , \SUBout[16] , \SUBout[15] , \SUBout[14] ,
         \SUBout[13] , \SUBout[12] , \SUBout[11] , \SUBout[10] , \SUBout[9] ,
         \SUBout[8] , \SUBout[7] , \SUBout[6] , \SUBout[5] , \SUBout[4] ,
         \SUBout[3] , \SUBout[2] , \MUXDout[15] , \MUXDout[14] , \MUXDout[13] ,
         \MUXDout[12] , \MUXDout[11] , \MUXDout[10] , \MUXDout[9] ,
         \MUXDout[8] , \MUXDout[7] , \MUXDout[6] , \MUXDout[5] , \MUXDout[4] ,
         \MUXDout[3] , \MUXDout[2] , \MUXDout[1] , \MUXDout[0] , \LIFO[3][15] ,
         \LIFO[3][14] , \LIFO[3][13] , \LIFO[3][12] , \LIFO[3][11] ,
         \LIFO[3][10] , \LIFO[3][9] , \LIFO[3][8] , \LIFO[3][7] , \LIFO[3][6] ,
         \LIFO[3][5] , \LIFO[3][4] , \LIFO[3][3] , \LIFO[3][2] , \LIFO[3][1] ,
         \LIFO[3][0] , \LIFO[2][15] , \LIFO[2][14] , \LIFO[2][13] ,
         \LIFO[2][12] , \LIFO[2][11] , \LIFO[2][10] , \LIFO[2][9] ,
         \LIFO[2][8] , \LIFO[2][7] , \LIFO[2][6] , \LIFO[2][5] , \LIFO[2][4] ,
         \LIFO[2][3] , \LIFO[2][2] , \LIFO[2][1] , \LIFO[2][0] , \LIFO[1][15] ,
         \LIFO[1][14] , \LIFO[1][13] , \LIFO[1][12] , \LIFO[1][11] ,
         \LIFO[1][10] , \LIFO[1][9] , \LIFO[1][8] , \LIFO[1][7] , \LIFO[1][6] ,
         \LIFO[1][5] , \LIFO[1][4] , \LIFO[1][3] , \LIFO[1][2] , \LIFO[1][1] ,
         \LIFO[1][0] , \LIFO[0][15] , \LIFO[0][14] , \LIFO[0][13] ,
         \LIFO[0][12] , \LIFO[0][11] , \LIFO[0][10] , \LIFO[0][9] ,
         \LIFO[0][8] , \LIFO[0][7] , \LIFO[0][6] , \LIFO[0][5] , \LIFO[0][4] ,
         \LIFO[0][3] , \LIFO[0][2] , \LIFO[0][1] , \LIFO[0][0] , N65, N81, N97,
         N99, \LIFOout[15] , \LIFOout[14] , \LIFOout[13] , \LIFOout[12] ,
         \LIFOout[11] , \LIFOout[10] , \LIFOout[9] , \LIFOout[8] ,
         \LIFOout[7] , \LIFOout[6] , \LIFOout[5] , \LIFOout[4] , \LIFOout[3] ,
         \LIFOout[2] , \LIFOout[1] , \LIFOout[0] , N144, N145, N146, N147,
         N148, N149, N151, N152, N153, N154, N155, n6, n8, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n210, n220, n23, n24, n25, n26,
         n270, n29, n300, n310, n33, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n52, n53, n54, n55, n56, n58,
         n59, n60, n61, n62, n63, n64, n650, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n810, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n970, n98, n990,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n1440, n1450, n1460, n1470, n1480, n1490, n150, n1510, n1520, n1530,
         n1540, n1550, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n3, n4, n280, n191, n192, n193, n194, n195,
         n197, n199, n274, n275, n276, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434;

  XNOR2X2 U3 ( .A(\Count[1] ), .B(n43), .Y(N22) );
  OR2X1 U4 ( .A(n310), .B(n274), .Y(n199) );
  AOI222XL U5 ( .A0(\MUXAout[15] ), .A1(n45), .B0(\ADDout[15] ), .B1(n44), 
        .C0(n43), .C1(\LIFOout[13] ), .Y(n33) );
  OAI22XL U6 ( .A0(DoDCT), .A1(n124), .B0(\Count[0] ), .B1(n192), .Y(n118) );
  OAI22XL U9 ( .A0(\Count[1] ), .A1(n192), .B0(DoDCT), .B1(n123), .Y(n119) );
  OAI22XL U10 ( .A0(DoDCT), .A1(n124), .B0(n192), .B1(n123), .Y(n185) );
  OAI22XL U11 ( .A0(n192), .A1(n124), .B0(DoDCT), .B1(n123), .Y(n188) );
  AOI222XL U12 ( .A0(\MUXAout[13] ), .A1(n45), .B0(\ADDout[13] ), .B1(n44), 
        .C0(n43), .C1(\LIFOout[11] ), .Y(n36) );
  AOI222XL U13 ( .A0(\MUXAout[12] ), .A1(n45), .B0(\ADDout[12] ), .B1(n44), 
        .C0(n43), .C1(\LIFOout[10] ), .Y(n37) );
  AOI222XL U14 ( .A0(\MUXAout[14] ), .A1(n45), .B0(\ADDout[14] ), .B1(n44), 
        .C0(n43), .C1(\LIFOout[12] ), .Y(n35) );
  AOI222XL U15 ( .A0(\MUXAout[11] ), .A1(n45), .B0(\ADDout[11] ), .B1(n44), 
        .C0(n43), .C1(\LIFOout[9] ), .Y(n40) );
  XNOR2X1 U16 ( .A(\Count[0] ), .B(n43), .Y(N21) );
  CLKINVX1 U17 ( .A(HALT), .Y(n197) );
  NAND2X1 U18 ( .A(n189), .B(DoDCT), .Y(n125) );
  AND2X2 U19 ( .A(n122), .B(n192), .Y(n650) );
  AND2X2 U20 ( .A(n120), .B(n192), .Y(n66) );
  OA21XL U21 ( .A0(n52), .A1(n53), .B0(n192), .Y(n274) );
  NOR2BX1 U22 ( .AN(n52), .B(DoDCT), .Y(n39) );
  CLKBUFX3 U23 ( .A(n132), .Y(n4) );
  NOR2BX1 U24 ( .AN(n187), .B(DoDCT), .Y(n132) );
  AND2X2 U25 ( .A(n120), .B(DoDCT), .Y(n63) );
  AND2X2 U26 ( .A(n187), .B(DoDCT), .Y(n130) );
  AND2X2 U27 ( .A(n53), .B(n192), .Y(n41) );
  NAND2X1 U28 ( .A(n189), .B(n192), .Y(n133) );
  NOR2X1 U29 ( .A(n186), .B(n190), .Y(n189) );
  NAND2X1 U30 ( .A(n122), .B(DoDCT), .Y(n59) );
  NOR3X1 U31 ( .A(n300), .B(HALT), .C(n29), .Y(N99) );
  CLKINVX1 U32 ( .A(n24), .Y(ToMEM[12]) );
  AOI222XL U33 ( .A0(\MUXAout[14] ), .A1(n11), .B0(n12), .B1(\ADDout[14] ), 
        .C0(n280), .C1(\LIFOout[12] ), .Y(n24) );
  CLKINVX1 U34 ( .A(n23), .Y(ToMEM[13]) );
  AOI222XL U35 ( .A0(\MUXAout[15] ), .A1(n11), .B0(n12), .B1(\ADDout[15] ), 
        .C0(n280), .C1(\LIFOout[13] ), .Y(n23) );
  CLKINVX1 U36 ( .A(n19), .Y(ToMEM[2]) );
  AOI222XL U37 ( .A0(\MUXAout[4] ), .A1(n11), .B0(n12), .B1(\ADDout[4] ), .C0(
        n280), .C1(\LIFOout[2] ), .Y(n19) );
  CLKINVX1 U38 ( .A(n18), .Y(ToMEM[3]) );
  AOI222XL U39 ( .A0(\MUXAout[5] ), .A1(n11), .B0(n12), .B1(\ADDout[5] ), .C0(
        n280), .C1(\LIFOout[3] ), .Y(n18) );
  CLKINVX1 U40 ( .A(n17), .Y(ToMEM[4]) );
  AOI222XL U41 ( .A0(\MUXAout[6] ), .A1(n11), .B0(n12), .B1(\ADDout[6] ), .C0(
        n280), .C1(\LIFOout[4] ), .Y(n17) );
  CLKINVX1 U42 ( .A(n16), .Y(ToMEM[5]) );
  AOI222XL U43 ( .A0(\MUXAout[7] ), .A1(n11), .B0(n12), .B1(\ADDout[7] ), .C0(
        n280), .C1(\LIFOout[5] ), .Y(n16) );
  CLKINVX1 U44 ( .A(n15), .Y(ToMEM[6]) );
  AOI222XL U45 ( .A0(\MUXAout[8] ), .A1(n11), .B0(n12), .B1(\ADDout[8] ), .C0(
        n280), .C1(\LIFOout[6] ), .Y(n15) );
  CLKINVX1 U46 ( .A(n14), .Y(ToMEM[7]) );
  AOI222XL U47 ( .A0(\MUXAout[9] ), .A1(n11), .B0(n12), .B1(\ADDout[9] ), .C0(
        n280), .C1(\LIFOout[7] ), .Y(n14) );
  CLKINVX1 U48 ( .A(n13), .Y(ToMEM[8]) );
  AOI222XL U49 ( .A0(\MUXAout[10] ), .A1(n11), .B0(n12), .B1(\ADDout[10] ), 
        .C0(n280), .C1(\LIFOout[8] ), .Y(n13) );
  CLKINVX1 U50 ( .A(n10), .Y(ToMEM[9]) );
  AOI222XL U51 ( .A0(\MUXAout[11] ), .A1(n11), .B0(n12), .B1(\ADDout[11] ), 
        .C0(n280), .C1(\LIFOout[9] ), .Y(n10) );
  CLKINVX1 U52 ( .A(n26), .Y(ToMEM[10]) );
  AOI222XL U53 ( .A0(\MUXAout[12] ), .A1(n11), .B0(n12), .B1(\ADDout[12] ), 
        .C0(n280), .C1(\LIFOout[10] ), .Y(n26) );
  CLKINVX1 U54 ( .A(n25), .Y(ToMEM[11]) );
  AOI222XL U55 ( .A0(\MUXAout[13] ), .A1(n11), .B0(n12), .B1(\ADDout[13] ), 
        .C0(n280), .C1(\LIFOout[11] ), .Y(n25) );
  NOR2X1 U56 ( .A(n185), .B(n188), .Y(n129) );
  NOR2X1 U57 ( .A(n185), .B(n186), .Y(n131) );
  NOR2X1 U58 ( .A(n118), .B(n121), .Y(n122) );
  NOR2X1 U59 ( .A(n119), .B(n118), .Y(n120) );
  CLKINVX1 U60 ( .A(n188), .Y(n186) );
  CLKINVX1 U61 ( .A(n185), .Y(n190) );
  NOR2X1 U62 ( .A(n188), .B(n190), .Y(n187) );
  AND2X2 U63 ( .A(n118), .B(n121), .Y(n62) );
  AND2X2 U64 ( .A(n118), .B(n119), .Y(n64) );
  CLKINVX1 U65 ( .A(n119), .Y(n121) );
  NOR2X1 U66 ( .A(n35), .B(n199), .Y(N153) );
  NOR2X1 U67 ( .A(n37), .B(n199), .Y(N151) );
  NOR2X1 U68 ( .A(n36), .B(n199), .Y(N152) );
  NOR2X1 U69 ( .A(n275), .B(n33), .Y(n53) );
  NOR4X1 U70 ( .A(n40), .B(n37), .C(n36), .D(n35), .Y(n275) );
  NOR2X1 U71 ( .A(n33), .B(n199), .Y(N155) );
  AND2X2 U72 ( .A(n33), .B(n56), .Y(n52) );
  NAND4X1 U73 ( .A(n35), .B(n36), .C(n37), .D(n40), .Y(n56) );
  CLKINVX1 U74 ( .A(n38), .Y(n8) );
  AOI2BB1X1 U75 ( .A0N(n39), .A1N(n40), .B0(n41), .Y(n38) );
  AO22X1 U76 ( .A0(\SUBout[13] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[13] ), 
        .Y(\MUXDout[11] ) );
  AO22X1 U77 ( .A0(\SUBout[14] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[14] ), 
        .Y(\MUXDout[12] ) );
  AO22X1 U78 ( .A0(\SUBout[15] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[15] ), 
        .Y(\MUXDout[13] ) );
  AO22X1 U79 ( .A0(\SUBout[16] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[16] ), 
        .Y(\MUXDout[14] ) );
  AO22X1 U80 ( .A0(\SUBout[17] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[17] ), 
        .Y(\MUXDout[15] ) );
  AO22X1 U81 ( .A0(\SUBout[6] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[6] ), .Y(
        \MUXDout[4] ) );
  AO22X1 U82 ( .A0(\SUBout[7] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[7] ), .Y(
        \MUXDout[5] ) );
  AO22X1 U83 ( .A0(\SUBout[8] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[8] ), .Y(
        \MUXDout[6] ) );
  AO22X1 U84 ( .A0(\SUBout[9] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[9] ), .Y(
        \MUXDout[7] ) );
  AO22X1 U85 ( .A0(\SUBout[10] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[10] ), 
        .Y(\MUXDout[8] ) );
  AO22X1 U86 ( .A0(\SUBout[11] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[11] ), 
        .Y(\MUXDout[9] ) );
  AO22X1 U87 ( .A0(\SUBout[12] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[12] ), 
        .Y(\MUXDout[10] ) );
  NOR3X1 U88 ( .A(N22), .B(HALT), .C(N21), .Y(N65) );
  NOR3X1 U89 ( .A(N22), .B(HALT), .C(n300), .Y(N81) );
  NOR3X1 U90 ( .A(N21), .B(HALT), .C(n29), .Y(N97) );
  NAND2X1 U91 ( .A(n195), .B(n310), .Y(N154) );
  CLKBUFX3 U92 ( .A(N21), .Y(n3) );
  AO22X1 U93 ( .A0(\SUBout[2] ), .A1(n192), .B0(DoDCT), .B1(\MUXBout[2] ), .Y(
        \MUXDout[0] ) );
  AO22X1 U94 ( .A0(\SUBout[3] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[3] ), .Y(
        \MUXDout[1] ) );
  AO22X1 U95 ( .A0(\SUBout[4] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[4] ), .Y(
        \MUXDout[2] ) );
  AO22X1 U96 ( .A0(\SUBout[5] ), .A1(n193), .B0(DoDCT), .B1(\MUXBout[5] ), .Y(
        \MUXDout[3] ) );
  NAND2X1 U97 ( .A(n195), .B(n197), .Y(n310) );
  NAND2X1 U98 ( .A(HALT), .B(n195), .Y(N31) );
  CLKINVX1 U99 ( .A(N22), .Y(n29) );
  NOR2X1 U100 ( .A(n191), .B(n280), .Y(n11) );
  NOR2X1 U101 ( .A(n280), .B(DoDCT), .Y(n12) );
  CLKINVX1 U102 ( .A(N21), .Y(n300) );
  CLKBUFX3 U103 ( .A(n194), .Y(n191) );
  CLKBUFX3 U104 ( .A(n194), .Y(n192) );
  CLKBUFX3 U105 ( .A(n194), .Y(n193) );
  CLKINVX1 U106 ( .A(n220), .Y(ToMEM[14]) );
  AOI222XL U107 ( .A0(\LIFOout[14] ), .A1(n280), .B0(\ADDout[16] ), .B1(n12), 
        .C0(n11), .C1(\MUXAout[16] ), .Y(n220) );
  MX4X1 U108 ( .A(\LIFO[0][14] ), .B(\LIFO[1][14] ), .C(\LIFO[2][14] ), .D(
        \LIFO[3][14] ), .S0(n3), .S1(N22), .Y(\LIFOout[14] ) );
  CLKINVX1 U109 ( .A(n210), .Y(ToMEM[15]) );
  AOI222XL U110 ( .A0(\LIFOout[15] ), .A1(n280), .B0(\ADDout[17] ), .B1(n12), 
        .C0(n11), .C1(\MUXAout[17] ), .Y(n210) );
  MX4X1 U111 ( .A(\LIFO[0][15] ), .B(\LIFO[1][15] ), .C(\LIFO[2][15] ), .D(
        \LIFO[3][15] ), .S0(n3), .S1(N22), .Y(\LIFOout[15] ) );
  CLKINVX1 U112 ( .A(n270), .Y(ToMEM[0]) );
  AOI222XL U113 ( .A0(\LIFOout[0] ), .A1(n280), .B0(\ADDout[2] ), .B1(n12), 
        .C0(n11), .C1(\MUXAout[2] ), .Y(n270) );
  MX4X1 U114 ( .A(\LIFO[0][0] ), .B(\LIFO[1][0] ), .C(\LIFO[2][0] ), .D(
        \LIFO[3][0] ), .S0(n3), .S1(N22), .Y(\LIFOout[0] ) );
  CLKINVX1 U115 ( .A(n20), .Y(ToMEM[1]) );
  AOI222XL U116 ( .A0(\LIFOout[1] ), .A1(n280), .B0(\ADDout[3] ), .B1(n12), 
        .C0(n11), .C1(\MUXAout[3] ), .Y(n20) );
  MX4X1 U117 ( .A(\LIFO[0][1] ), .B(\LIFO[1][1] ), .C(\LIFO[2][1] ), .D(
        \LIFO[3][1] ), .S0(n3), .S1(N22), .Y(\LIFOout[1] ) );
  OAI211X1 U118 ( .A0(n85), .A1(n59), .B0(n86), .C0(n87), .Y(\MUXBout[2] ) );
  AOI22X1 U119 ( .A0(n650), .A1(ACC5[2]), .B0(n66), .B1(ACC4[2]), .Y(n86) );
  AOI222XL U120 ( .A0(ACC6[2]), .A1(n62), .B0(n63), .B1(ACC2[2]), .C0(ACC7[2]), 
        .C1(n64), .Y(n87) );
  OAI211X1 U121 ( .A0(n82), .A1(n59), .B0(n83), .C0(n84), .Y(\MUXBout[3] ) );
  AOI22X1 U122 ( .A0(n650), .A1(ACC5[3]), .B0(n66), .B1(ACC4[3]), .Y(n83) );
  AOI222XL U123 ( .A0(ACC6[3]), .A1(n62), .B0(n63), .B1(ACC2[3]), .C0(ACC7[3]), 
        .C1(n64), .Y(n84) );
  OAI211X1 U124 ( .A0(n125), .A1(n1520), .B0(n1530), .C0(n1540), .Y(
        \MUXAout[2] ) );
  CLKINVX1 U125 ( .A(ACC5[2]), .Y(n1520) );
  AOI2BB2X1 U126 ( .B0(n4), .B1(ACC2[2]), .A0N(n133), .A1N(n85), .Y(n1530) );
  AOI222XL U127 ( .A0(ACC0[2]), .A1(n129), .B0(ACC4[2]), .B1(n130), .C0(
        ACC1[2]), .C1(n131), .Y(n1540) );
  OAI211X1 U128 ( .A0(n125), .A1(n1490), .B0(n150), .C0(n1510), .Y(
        \MUXAout[3] ) );
  CLKINVX1 U129 ( .A(ACC5[3]), .Y(n1490) );
  AOI2BB2X1 U130 ( .B0(n4), .B1(ACC2[3]), .A0N(n133), .A1N(n82), .Y(n150) );
  AOI222XL U131 ( .A0(ACC0[3]), .A1(n129), .B0(ACC4[3]), .B1(n130), .C0(
        ACC1[3]), .C1(n131), .Y(n1510) );
  NOR2X1 U132 ( .A(n50), .B(n199), .Y(N144) );
  AOI222XL U133 ( .A0(\LIFOout[3] ), .A1(n43), .B0(n44), .B1(\ADDout[5] ), 
        .C0(n45), .C1(\MUXAout[5] ), .Y(n50) );
  NOR2X1 U134 ( .A(n49), .B(n199), .Y(N145) );
  AOI222XL U135 ( .A0(\LIFOout[4] ), .A1(n43), .B0(n44), .B1(\ADDout[6] ), 
        .C0(n45), .C1(\MUXAout[6] ), .Y(n49) );
  NOR2X1 U136 ( .A(n48), .B(n199), .Y(N146) );
  AOI222XL U137 ( .A0(\LIFOout[5] ), .A1(n43), .B0(n44), .B1(\ADDout[7] ), 
        .C0(n45), .C1(\MUXAout[7] ), .Y(n48) );
  NOR2X1 U138 ( .A(n47), .B(n199), .Y(N147) );
  AOI222XL U139 ( .A0(\LIFOout[6] ), .A1(n43), .B0(n44), .B1(\ADDout[8] ), 
        .C0(n45), .C1(\MUXAout[8] ), .Y(n47) );
  NOR2X1 U140 ( .A(n46), .B(n199), .Y(N148) );
  AOI222XL U141 ( .A0(\LIFOout[7] ), .A1(n43), .B0(n44), .B1(\ADDout[9] ), 
        .C0(n45), .C1(\MUXAout[9] ), .Y(n46) );
  NOR2X1 U142 ( .A(n42), .B(n199), .Y(N149) );
  AOI222XL U143 ( .A0(\LIFOout[8] ), .A1(n43), .B0(n44), .B1(\ADDout[10] ), 
        .C0(n45), .C1(\MUXAout[10] ), .Y(n42) );
  OAI211X1 U144 ( .A0(n59), .A1(n88), .B0(n89), .C0(n90), .Y(\MUXBout[1] ) );
  AOI22X1 U145 ( .A0(ACC5[1]), .A1(n650), .B0(ACC4[1]), .B1(n66), .Y(n89) );
  AOI222XL U146 ( .A0(ACC6[1]), .A1(n62), .B0(ACC2[1]), .B1(n63), .C0(ACC7[1]), 
        .C1(n64), .Y(n90) );
  OAI211X1 U147 ( .A0(n125), .A1(n182), .B0(n183), .C0(n184), .Y(\MUXAout[0] )
         );
  CLKINVX1 U148 ( .A(ACC5[0]), .Y(n182) );
  AOI2BB2X1 U149 ( .B0(n4), .B1(ACC2[0]), .A0N(n133), .A1N(n115), .Y(n183) );
  AOI222XL U150 ( .A0(ACC0[0]), .A1(n129), .B0(ACC4[0]), .B1(n130), .C0(
        ACC1[0]), .C1(n131), .Y(n184) );
  OAI211X1 U151 ( .A0(n59), .A1(n115), .B0(n116), .C0(n117), .Y(\MUXBout[0] )
         );
  AOI22X1 U152 ( .A0(ACC5[0]), .A1(n650), .B0(ACC4[0]), .B1(n66), .Y(n116) );
  AOI222XL U153 ( .A0(ACC6[0]), .A1(n62), .B0(ACC2[0]), .B1(n63), .C0(ACC7[0]), 
        .C1(n64), .Y(n117) );
  OAI211X1 U154 ( .A0(n125), .A1(n1550), .B0(n156), .C0(n157), .Y(\MUXAout[1] ) );
  CLKINVX1 U155 ( .A(ACC5[1]), .Y(n1550) );
  AOI2BB2X1 U156 ( .B0(n4), .B1(ACC2[1]), .A0N(n133), .A1N(n88), .Y(n156) );
  AOI222XL U157 ( .A0(ACC0[1]), .A1(n129), .B0(ACC4[1]), .B1(n130), .C0(
        ACC1[1]), .C1(n131), .Y(n157) );
  CLKINVX1 U158 ( .A(n54), .Y(n6) );
  AOI2BB1X1 U159 ( .A0N(n41), .A1N(n55), .B0(n39), .Y(n54) );
  AOI222XL U160 ( .A0(\LIFOout[2] ), .A1(n43), .B0(n44), .B1(\ADDout[4] ), 
        .C0(n45), .C1(\MUXAout[4] ), .Y(n55) );
  OAI211X1 U161 ( .A0(n79), .A1(n59), .B0(n80), .C0(n810), .Y(\MUXBout[4] ) );
  AOI22X1 U162 ( .A0(n650), .A1(ACC5[4]), .B0(n66), .B1(ACC4[4]), .Y(n80) );
  AOI222XL U163 ( .A0(ACC6[4]), .A1(n62), .B0(n63), .B1(ACC2[4]), .C0(ACC7[4]), 
        .C1(n64), .Y(n810) );
  OAI211X1 U164 ( .A0(n76), .A1(n59), .B0(n77), .C0(n78), .Y(\MUXBout[5] ) );
  AOI22X1 U165 ( .A0(n650), .A1(ACC5[5]), .B0(n66), .B1(ACC4[5]), .Y(n77) );
  AOI222XL U166 ( .A0(ACC6[5]), .A1(n62), .B0(n63), .B1(ACC2[5]), .C0(ACC7[5]), 
        .C1(n64), .Y(n78) );
  OAI211X1 U167 ( .A0(n73), .A1(n59), .B0(n74), .C0(n75), .Y(\MUXBout[6] ) );
  AOI22X1 U168 ( .A0(n650), .A1(ACC5[6]), .B0(n66), .B1(ACC4[6]), .Y(n74) );
  AOI222XL U169 ( .A0(ACC6[6]), .A1(n62), .B0(n63), .B1(ACC2[6]), .C0(ACC7[6]), 
        .C1(n64), .Y(n75) );
  OAI211X1 U170 ( .A0(n70), .A1(n59), .B0(n71), .C0(n72), .Y(\MUXBout[7] ) );
  AOI22X1 U171 ( .A0(n650), .A1(ACC5[7]), .B0(n66), .B1(ACC4[7]), .Y(n71) );
  AOI222XL U172 ( .A0(ACC6[7]), .A1(n62), .B0(n63), .B1(ACC2[7]), .C0(ACC7[7]), 
        .C1(n64), .Y(n72) );
  OAI211X1 U173 ( .A0(n67), .A1(n59), .B0(n68), .C0(n69), .Y(\MUXBout[8] ) );
  AOI22X1 U174 ( .A0(n650), .A1(ACC5[8]), .B0(n66), .B1(ACC4[8]), .Y(n68) );
  AOI222XL U175 ( .A0(ACC6[8]), .A1(n62), .B0(n63), .B1(ACC2[8]), .C0(ACC7[8]), 
        .C1(n64), .Y(n69) );
  OAI211X1 U176 ( .A0(n125), .A1(n1460), .B0(n1470), .C0(n1480), .Y(
        \MUXAout[4] ) );
  CLKINVX1 U177 ( .A(ACC5[4]), .Y(n1460) );
  AOI2BB2X1 U178 ( .B0(n4), .B1(ACC2[4]), .A0N(n133), .A1N(n79), .Y(n1470) );
  AOI222XL U179 ( .A0(ACC0[4]), .A1(n129), .B0(ACC4[4]), .B1(n130), .C0(
        ACC1[4]), .C1(n131), .Y(n1480) );
  OAI211X1 U180 ( .A0(n125), .A1(n143), .B0(n1440), .C0(n1450), .Y(
        \MUXAout[5] ) );
  CLKINVX1 U181 ( .A(ACC5[5]), .Y(n143) );
  AOI2BB2X1 U182 ( .B0(n4), .B1(ACC2[5]), .A0N(n133), .A1N(n76), .Y(n1440) );
  AOI222XL U183 ( .A0(ACC0[5]), .A1(n129), .B0(ACC4[5]), .B1(n130), .C0(
        ACC1[5]), .C1(n131), .Y(n1450) );
  OAI211X1 U184 ( .A0(n125), .A1(n140), .B0(n141), .C0(n142), .Y(\MUXAout[6] )
         );
  CLKINVX1 U185 ( .A(ACC5[6]), .Y(n140) );
  AOI2BB2X1 U186 ( .B0(n4), .B1(ACC2[6]), .A0N(n133), .A1N(n73), .Y(n141) );
  AOI222XL U187 ( .A0(ACC0[6]), .A1(n129), .B0(ACC4[6]), .B1(n130), .C0(
        ACC1[6]), .C1(n131), .Y(n142) );
  OAI211X1 U188 ( .A0(n125), .A1(n137), .B0(n138), .C0(n139), .Y(\MUXAout[7] )
         );
  CLKINVX1 U189 ( .A(ACC5[7]), .Y(n137) );
  AOI2BB2X1 U190 ( .B0(n4), .B1(ACC2[7]), .A0N(n133), .A1N(n70), .Y(n138) );
  AOI222XL U191 ( .A0(ACC0[7]), .A1(n129), .B0(ACC4[7]), .B1(n130), .C0(
        ACC1[7]), .C1(n131), .Y(n139) );
  OAI211X1 U192 ( .A0(n125), .A1(n134), .B0(n135), .C0(n136), .Y(\MUXAout[8] )
         );
  CLKINVX1 U193 ( .A(ACC5[8]), .Y(n134) );
  AOI2BB2X1 U194 ( .B0(n4), .B1(ACC2[8]), .A0N(n133), .A1N(n67), .Y(n135) );
  AOI222XL U195 ( .A0(ACC0[8]), .A1(n129), .B0(ACC4[8]), .B1(n130), .C0(
        ACC1[8]), .C1(n131), .Y(n136) );
  OAI211X1 U196 ( .A0(n125), .A1(n126), .B0(n127), .C0(n128), .Y(\MUXAout[9] )
         );
  CLKINVX1 U197 ( .A(ACC5[9]), .Y(n126) );
  AOI2BB2X1 U198 ( .B0(n4), .B1(ACC2[9]), .A0N(n133), .A1N(n58), .Y(n127) );
  AOI222XL U199 ( .A0(ACC0[9]), .A1(n129), .B0(ACC4[9]), .B1(n130), .C0(
        ACC1[9]), .C1(n131), .Y(n128) );
  CLKINVX1 U200 ( .A(ACC3[2]), .Y(n85) );
  CLKINVX1 U201 ( .A(ACC3[3]), .Y(n82) );
  CLKINVX1 U202 ( .A(ACC3[1]), .Y(n88) );
  CLKINVX1 U203 ( .A(ACC3[0]), .Y(n115) );
  OAI211X1 U204 ( .A0(n58), .A1(n59), .B0(n60), .C0(n61), .Y(\MUXBout[9] ) );
  AOI22X1 U205 ( .A0(n650), .A1(ACC5[9]), .B0(n66), .B1(ACC4[9]), .Y(n60) );
  AOI222XL U206 ( .A0(ACC6[9]), .A1(n62), .B0(n63), .B1(ACC2[9]), .C0(ACC7[9]), 
        .C1(n64), .Y(n61) );
  OAI211X1 U207 ( .A0(n112), .A1(n59), .B0(n113), .C0(n114), .Y(\MUXBout[10] )
         );
  AOI22X1 U208 ( .A0(n650), .A1(ACC5[10]), .B0(n66), .B1(ACC4[10]), .Y(n113)
         );
  AOI222XL U209 ( .A0(ACC6[10]), .A1(n62), .B0(n63), .B1(ACC2[10]), .C0(
        ACC7[10]), .C1(n64), .Y(n114) );
  OAI211X1 U210 ( .A0(n109), .A1(n59), .B0(n110), .C0(n111), .Y(\MUXBout[11] )
         );
  AOI22X1 U211 ( .A0(n650), .A1(ACC5[11]), .B0(n66), .B1(ACC4[11]), .Y(n110)
         );
  AOI222XL U212 ( .A0(ACC6[11]), .A1(n62), .B0(n63), .B1(ACC2[11]), .C0(
        ACC7[11]), .C1(n64), .Y(n111) );
  OAI211X1 U213 ( .A0(n106), .A1(n59), .B0(n107), .C0(n108), .Y(\MUXBout[12] )
         );
  AOI22X1 U214 ( .A0(n650), .A1(ACC5[12]), .B0(n66), .B1(ACC4[12]), .Y(n107)
         );
  AOI222XL U215 ( .A0(ACC6[12]), .A1(n62), .B0(n63), .B1(ACC2[12]), .C0(
        ACC7[12]), .C1(n64), .Y(n108) );
  OAI211X1 U216 ( .A0(n103), .A1(n59), .B0(n104), .C0(n105), .Y(\MUXBout[13] )
         );
  AOI22X1 U217 ( .A0(n650), .A1(ACC5[13]), .B0(n66), .B1(ACC4[13]), .Y(n104)
         );
  AOI222XL U218 ( .A0(ACC6[13]), .A1(n62), .B0(n63), .B1(ACC2[13]), .C0(
        ACC7[13]), .C1(n64), .Y(n105) );
  OAI211X1 U219 ( .A0(n100), .A1(n59), .B0(n101), .C0(n102), .Y(\MUXBout[14] )
         );
  AOI22X1 U220 ( .A0(n650), .A1(ACC5[14]), .B0(n66), .B1(ACC4[14]), .Y(n101)
         );
  AOI222XL U221 ( .A0(ACC6[14]), .A1(n62), .B0(n63), .B1(ACC2[14]), .C0(
        ACC7[14]), .C1(n64), .Y(n102) );
  OAI211X1 U222 ( .A0(n125), .A1(n176), .B0(n177), .C0(n178), .Y(\MUXAout[11] ) );
  CLKINVX1 U223 ( .A(ACC5[11]), .Y(n176) );
  AOI2BB2X1 U224 ( .B0(n4), .B1(ACC2[11]), .A0N(n133), .A1N(n109), .Y(n177) );
  AOI222XL U225 ( .A0(ACC0[11]), .A1(n129), .B0(ACC4[11]), .B1(n130), .C0(
        ACC1[11]), .C1(n131), .Y(n178) );
  OAI211X1 U226 ( .A0(n125), .A1(n173), .B0(n174), .C0(n175), .Y(\MUXAout[12] ) );
  CLKINVX1 U227 ( .A(ACC5[12]), .Y(n173) );
  AOI2BB2X1 U228 ( .B0(n4), .B1(ACC2[12]), .A0N(n133), .A1N(n106), .Y(n174) );
  AOI222XL U229 ( .A0(ACC0[12]), .A1(n129), .B0(ACC4[12]), .B1(n130), .C0(
        ACC1[12]), .C1(n131), .Y(n175) );
  OAI211X1 U230 ( .A0(n125), .A1(n170), .B0(n171), .C0(n172), .Y(\MUXAout[13] ) );
  CLKINVX1 U231 ( .A(ACC5[13]), .Y(n170) );
  AOI2BB2X1 U232 ( .B0(n4), .B1(ACC2[13]), .A0N(n133), .A1N(n103), .Y(n171) );
  AOI222XL U233 ( .A0(ACC0[13]), .A1(n129), .B0(ACC4[13]), .B1(n130), .C0(
        ACC1[13]), .C1(n131), .Y(n172) );
  OAI211X1 U234 ( .A0(n125), .A1(n167), .B0(n168), .C0(n169), .Y(\MUXAout[14] ) );
  CLKINVX1 U235 ( .A(ACC5[14]), .Y(n167) );
  AOI2BB2X1 U236 ( .B0(n4), .B1(ACC2[14]), .A0N(n133), .A1N(n100), .Y(n168) );
  AOI222XL U237 ( .A0(ACC0[14]), .A1(n129), .B0(ACC4[14]), .B1(n130), .C0(
        ACC1[14]), .C1(n131), .Y(n169) );
  OAI211X1 U238 ( .A0(n125), .A1(n179), .B0(n180), .C0(n181), .Y(\MUXAout[10] ) );
  CLKINVX1 U239 ( .A(ACC5[10]), .Y(n179) );
  AOI2BB2X1 U240 ( .B0(n4), .B1(ACC2[10]), .A0N(n133), .A1N(n112), .Y(n180) );
  AOI222XL U241 ( .A0(ACC0[10]), .A1(n129), .B0(ACC4[10]), .B1(n130), .C0(
        ACC1[10]), .C1(n131), .Y(n181) );
  CLKINVX1 U242 ( .A(ACC3[4]), .Y(n79) );
  CLKINVX1 U243 ( .A(ACC3[5]), .Y(n76) );
  CLKINVX1 U244 ( .A(ACC3[6]), .Y(n73) );
  CLKINVX1 U245 ( .A(ACC3[7]), .Y(n70) );
  CLKINVX1 U246 ( .A(ACC3[8]), .Y(n67) );
  CLKINVX1 U247 ( .A(ACC3[9]), .Y(n58) );
  OAI211X1 U248 ( .A0(n970), .A1(n59), .B0(n98), .C0(n990), .Y(\MUXBout[15] )
         );
  AOI22X1 U249 ( .A0(n650), .A1(ACC5[15]), .B0(n66), .B1(ACC4[15]), .Y(n98) );
  AOI222XL U250 ( .A0(ACC6[15]), .A1(n62), .B0(n63), .B1(ACC2[15]), .C0(
        ACC7[15]), .C1(n64), .Y(n990) );
  OAI211X1 U251 ( .A0(n94), .A1(n59), .B0(n95), .C0(n96), .Y(\MUXBout[16] ) );
  AOI22X1 U252 ( .A0(n650), .A1(ACC5[16]), .B0(n66), .B1(ACC4[16]), .Y(n95) );
  AOI222XL U253 ( .A0(ACC6[16]), .A1(n62), .B0(n63), .B1(ACC2[16]), .C0(
        ACC7[16]), .C1(n64), .Y(n96) );
  OAI211X1 U254 ( .A0(n91), .A1(n59), .B0(n92), .C0(n93), .Y(\MUXBout[17] ) );
  AOI22X1 U255 ( .A0(n650), .A1(ACC5[17]), .B0(n66), .B1(ACC4[17]), .Y(n92) );
  AOI222XL U256 ( .A0(ACC6[17]), .A1(n62), .B0(n63), .B1(ACC2[17]), .C0(
        ACC7[17]), .C1(n64), .Y(n93) );
  OAI211X1 U257 ( .A0(n125), .A1(n164), .B0(n165), .C0(n166), .Y(\MUXAout[15] ) );
  CLKINVX1 U258 ( .A(ACC5[15]), .Y(n164) );
  AOI2BB2X1 U259 ( .B0(n4), .B1(ACC2[15]), .A0N(n133), .A1N(n970), .Y(n165) );
  AOI222XL U260 ( .A0(ACC0[15]), .A1(n129), .B0(ACC4[15]), .B1(n130), .C0(
        ACC1[15]), .C1(n131), .Y(n166) );
  OAI211X1 U261 ( .A0(n125), .A1(n161), .B0(n162), .C0(n163), .Y(\MUXAout[16] ) );
  CLKINVX1 U262 ( .A(ACC5[16]), .Y(n161) );
  AOI2BB2X1 U263 ( .B0(n4), .B1(ACC2[16]), .A0N(n133), .A1N(n94), .Y(n162) );
  AOI222XL U264 ( .A0(ACC0[16]), .A1(n129), .B0(ACC4[16]), .B1(n130), .C0(
        ACC1[16]), .C1(n131), .Y(n163) );
  OAI211X1 U265 ( .A0(n125), .A1(n158), .B0(n159), .C0(n160), .Y(\MUXAout[17] ) );
  CLKINVX1 U266 ( .A(ACC5[17]), .Y(n158) );
  AOI2BB2X1 U267 ( .B0(n4), .B1(ACC2[17]), .A0N(n133), .A1N(n91), .Y(n159) );
  AOI222XL U268 ( .A0(ACC0[17]), .A1(n129), .B0(ACC4[17]), .B1(n130), .C0(
        ACC1[17]), .C1(n131), .Y(n160) );
  MX4X1 U269 ( .A(\LIFO[0][12] ), .B(\LIFO[1][12] ), .C(\LIFO[2][12] ), .D(
        \LIFO[3][12] ), .S0(n3), .S1(N22), .Y(\LIFOout[12] ) );
  MX4X1 U270 ( .A(\LIFO[0][11] ), .B(\LIFO[1][11] ), .C(\LIFO[2][11] ), .D(
        \LIFO[3][11] ), .S0(n3), .S1(N22), .Y(\LIFOout[11] ) );
  MX4X1 U271 ( .A(\LIFO[0][10] ), .B(\LIFO[1][10] ), .C(\LIFO[2][10] ), .D(
        \LIFO[3][10] ), .S0(n3), .S1(N22), .Y(\LIFOout[10] ) );
  MX4X1 U272 ( .A(\LIFO[0][9] ), .B(\LIFO[1][9] ), .C(\LIFO[2][9] ), .D(
        \LIFO[3][9] ), .S0(n3), .S1(N22), .Y(\LIFOout[9] ) );
  MX4X1 U273 ( .A(\LIFO[0][13] ), .B(\LIFO[1][13] ), .C(\LIFO[2][13] ), .D(
        \LIFO[3][13] ), .S0(n3), .S1(N22), .Y(\LIFOout[13] ) );
  CLKBUFX3 U274 ( .A(RESET_), .Y(n195) );
  OAI2BB1X1 U275 ( .A0N(N27), .A1N(n197), .B0(n195), .Y(N30) );
  XNOR2X1 U276 ( .A(\Count[1] ), .B(n123), .Y(N27) );
  CLKINVX1 U277 ( .A(ACC3[10]), .Y(n112) );
  CLKINVX1 U278 ( .A(ACC3[11]), .Y(n109) );
  CLKINVX1 U279 ( .A(ACC3[12]), .Y(n106) );
  CLKINVX1 U280 ( .A(ACC3[13]), .Y(n103) );
  CLKINVX1 U281 ( .A(ACC3[14]), .Y(n100) );
  NOR2X1 U282 ( .A(n43), .B(n191), .Y(n45) );
  NOR2X1 U283 ( .A(n43), .B(DoDCT), .Y(n44) );
  MX4X1 U284 ( .A(\LIFO[0][3] ), .B(\LIFO[1][3] ), .C(\LIFO[2][3] ), .D(
        \LIFO[3][3] ), .S0(n3), .S1(N22), .Y(\LIFOout[3] ) );
  MX4X1 U285 ( .A(\LIFO[0][4] ), .B(\LIFO[1][4] ), .C(\LIFO[2][4] ), .D(
        \LIFO[3][4] ), .S0(n3), .S1(N22), .Y(\LIFOout[4] ) );
  MX4X1 U286 ( .A(\LIFO[0][5] ), .B(\LIFO[1][5] ), .C(\LIFO[2][5] ), .D(
        \LIFO[3][5] ), .S0(n3), .S1(N22), .Y(\LIFOout[5] ) );
  MX4X1 U287 ( .A(\LIFO[0][6] ), .B(\LIFO[1][6] ), .C(\LIFO[2][6] ), .D(
        \LIFO[3][6] ), .S0(n3), .S1(N22), .Y(\LIFOout[6] ) );
  MX4X1 U288 ( .A(\LIFO[0][7] ), .B(\LIFO[1][7] ), .C(\LIFO[2][7] ), .D(
        \LIFO[3][7] ), .S0(n3), .S1(N22), .Y(\LIFOout[7] ) );
  MX4X1 U289 ( .A(\LIFO[0][8] ), .B(\LIFO[1][8] ), .C(\LIFO[2][8] ), .D(
        \LIFO[3][8] ), .S0(n3), .S1(N22), .Y(\LIFOout[8] ) );
  MX4X1 U290 ( .A(\LIFO[0][2] ), .B(\LIFO[1][2] ), .C(\LIFO[2][2] ), .D(
        \LIFO[3][2] ), .S0(n3), .S1(N22), .Y(\LIFOout[2] ) );
  CLKINVX1 U291 ( .A(ACC3[15]), .Y(n970) );
  CLKINVX1 U292 ( .A(ACC3[16]), .Y(n94) );
  CLKINVX1 U293 ( .A(ACC3[17]), .Y(n91) );
  CLKBUFX3 U294 ( .A(\Count[2] ), .Y(n280) );
  XNOR2X1 U295 ( .A(n280), .B(n276), .Y(N28) );
  NAND2X1 U296 ( .A(\Count[1] ), .B(\Count[0] ), .Y(n276) );
  CLKINVX1 U297 ( .A(DoDCT), .Y(n194) );
  SEDFFTRXL Z_reg_7_ ( .RN(n195), .D(n8), .E(n197), .SI(n364), .SE(test_se), 
        .CK(CLK), .Q(Z[7]), .QN(n363) );
  SEDFFTRXL Z_reg_0_ ( .RN(n195), .D(n6), .E(n197), .SI(n371), .SE(test_se), 
        .CK(CLK), .Q(Z[0]), .QN(n370) );
  SEDFFTRXL Count_reg_0_ ( .RN(n195), .D(n123), .E(n197), .SI(test_si), .SE(
        test_se), .CK(CLK), .Q(\Count[0] ), .QN(n123) );
  SEDFFXL Count_reg_1_ ( .D(N30), .SI(n123), .E(N31), .SE(test_se), .CK(CLK), 
        .Q(\Count[1] ), .QN(n124) );
  SEDFFTRXL Count_reg_2_ ( .RN(n195), .D(N28), .E(n197), .SI(\Count[1] ), .SE(
        test_se), .CK(CLK), .Q(\Count[2] ), .QN(n43) );
  SEDFFXL LIFO_reg_3__0_ ( .D(\MUXDout[0] ), .SI(n387), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][0] ), .QN(n386) );
  SEDFFXL LIFO_reg_2__0_ ( .D(\MUXDout[0] ), .SI(n403), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][0] ), .QN(n402) );
  SEDFFXL LIFO_reg_1__0_ ( .D(\MUXDout[0] ), .SI(n419), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][0] ), .QN(n418) );
  SEDFFXL LIFO_reg_0__0_ ( .D(\MUXDout[0] ), .SI(n280), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][0] ), .QN(n434) );
  SEDFFXL LIFO_reg_3__1_ ( .D(\MUXDout[1] ), .SI(n386), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][1] ), .QN(n385) );
  SEDFFXL LIFO_reg_2__1_ ( .D(\MUXDout[1] ), .SI(n402), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][1] ), .QN(n401) );
  SEDFFXL LIFO_reg_1__1_ ( .D(\MUXDout[1] ), .SI(n418), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][1] ), .QN(n417) );
  SEDFFXL LIFO_reg_0__1_ ( .D(\MUXDout[1] ), .SI(n434), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][1] ), .QN(n433) );
  SEDFFXL LIFO_reg_3__2_ ( .D(\MUXDout[2] ), .SI(n385), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][2] ), .QN(n384) );
  SEDFFXL LIFO_reg_2__2_ ( .D(\MUXDout[2] ), .SI(n401), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][2] ), .QN(n400) );
  SEDFFXL LIFO_reg_1__2_ ( .D(\MUXDout[2] ), .SI(n417), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][2] ), .QN(n416) );
  SEDFFXL LIFO_reg_0__2_ ( .D(\MUXDout[2] ), .SI(n433), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][2] ), .QN(n432) );
  SEDFFXL LIFO_reg_3__3_ ( .D(\MUXDout[3] ), .SI(n384), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][3] ), .QN(n383) );
  SEDFFXL LIFO_reg_2__3_ ( .D(\MUXDout[3] ), .SI(n400), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][3] ), .QN(n399) );
  SEDFFXL LIFO_reg_1__3_ ( .D(\MUXDout[3] ), .SI(n416), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][3] ), .QN(n415) );
  SEDFFXL LIFO_reg_0__3_ ( .D(\MUXDout[3] ), .SI(n432), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][3] ), .QN(n431) );
  SEDFFXL LIFO_reg_3__4_ ( .D(\MUXDout[4] ), .SI(n383), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][4] ), .QN(n382) );
  SEDFFXL LIFO_reg_2__4_ ( .D(\MUXDout[4] ), .SI(n399), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][4] ), .QN(n398) );
  SEDFFXL LIFO_reg_1__4_ ( .D(\MUXDout[4] ), .SI(n415), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][4] ), .QN(n414) );
  SEDFFXL LIFO_reg_0__4_ ( .D(\MUXDout[4] ), .SI(n431), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][4] ), .QN(n430) );
  SEDFFXL LIFO_reg_3__5_ ( .D(\MUXDout[5] ), .SI(n382), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][5] ), .QN(n381) );
  SEDFFXL LIFO_reg_2__5_ ( .D(\MUXDout[5] ), .SI(n398), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][5] ), .QN(n397) );
  SEDFFXL LIFO_reg_1__5_ ( .D(\MUXDout[5] ), .SI(n414), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][5] ), .QN(n413) );
  SEDFFXL LIFO_reg_0__5_ ( .D(\MUXDout[5] ), .SI(n430), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][5] ), .QN(n429) );
  SEDFFXL LIFO_reg_3__6_ ( .D(\MUXDout[6] ), .SI(n381), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][6] ), .QN(n380) );
  SEDFFXL LIFO_reg_2__6_ ( .D(\MUXDout[6] ), .SI(n397), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][6] ), .QN(n396) );
  SEDFFXL LIFO_reg_1__6_ ( .D(\MUXDout[6] ), .SI(n413), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][6] ), .QN(n412) );
  SEDFFXL LIFO_reg_0__6_ ( .D(\MUXDout[6] ), .SI(n429), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][6] ), .QN(n428) );
  SEDFFXL LIFO_reg_3__7_ ( .D(\MUXDout[7] ), .SI(n380), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][7] ), .QN(n379) );
  SEDFFXL LIFO_reg_2__7_ ( .D(\MUXDout[7] ), .SI(n396), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][7] ), .QN(n395) );
  SEDFFXL LIFO_reg_1__7_ ( .D(\MUXDout[7] ), .SI(n412), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][7] ), .QN(n411) );
  SEDFFXL LIFO_reg_0__7_ ( .D(\MUXDout[7] ), .SI(n428), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][7] ), .QN(n427) );
  SEDFFXL LIFO_reg_3__8_ ( .D(\MUXDout[8] ), .SI(n379), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][8] ), .QN(n378) );
  SEDFFXL LIFO_reg_2__8_ ( .D(\MUXDout[8] ), .SI(n395), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][8] ), .QN(n394) );
  SEDFFXL LIFO_reg_1__8_ ( .D(\MUXDout[8] ), .SI(n411), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][8] ), .QN(n410) );
  SEDFFXL LIFO_reg_0__8_ ( .D(\MUXDout[8] ), .SI(n427), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][8] ), .QN(n426) );
  SEDFFXL LIFO_reg_3__9_ ( .D(\MUXDout[9] ), .SI(n378), .E(N99), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][9] ), .QN(n377) );
  SEDFFXL LIFO_reg_2__9_ ( .D(\MUXDout[9] ), .SI(n394), .E(N97), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][9] ), .QN(n393) );
  SEDFFXL LIFO_reg_1__9_ ( .D(\MUXDout[9] ), .SI(n410), .E(N81), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][9] ), .QN(n409) );
  SEDFFXL LIFO_reg_0__9_ ( .D(\MUXDout[9] ), .SI(n426), .E(N65), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][9] ), .QN(n425) );
  SEDFFXL LIFO_reg_3__10_ ( .D(\MUXDout[10] ), .SI(n377), .E(N99), .SE(test_se), .CK(CLK), .Q(\LIFO[3][10] ), .QN(n376) );
  SEDFFXL LIFO_reg_2__10_ ( .D(\MUXDout[10] ), .SI(n393), .E(N97), .SE(test_se), .CK(CLK), .Q(\LIFO[2][10] ), .QN(n392) );
  SEDFFXL LIFO_reg_1__10_ ( .D(\MUXDout[10] ), .SI(n409), .E(N81), .SE(test_se), .CK(CLK), .Q(\LIFO[1][10] ), .QN(n408) );
  SEDFFXL LIFO_reg_0__10_ ( .D(\MUXDout[10] ), .SI(n425), .E(N65), .SE(test_se), .CK(CLK), .Q(\LIFO[0][10] ), .QN(n424) );
  SEDFFXL LIFO_reg_3__11_ ( .D(\MUXDout[11] ), .SI(n376), .E(N99), .SE(test_se), .CK(CLK), .Q(\LIFO[3][11] ), .QN(n375) );
  SEDFFXL LIFO_reg_2__11_ ( .D(\MUXDout[11] ), .SI(n392), .E(N97), .SE(test_se), .CK(CLK), .Q(\LIFO[2][11] ), .QN(n391) );
  SEDFFXL LIFO_reg_1__11_ ( .D(\MUXDout[11] ), .SI(n408), .E(N81), .SE(test_se), .CK(CLK), .Q(\LIFO[1][11] ), .QN(n407) );
  SEDFFXL LIFO_reg_0__11_ ( .D(\MUXDout[11] ), .SI(n424), .E(N65), .SE(test_se), .CK(CLK), .Q(\LIFO[0][11] ), .QN(n423) );
  SEDFFXL LIFO_reg_3__12_ ( .D(\MUXDout[12] ), .SI(n375), .E(N99), .SE(test_se), .CK(CLK), .Q(\LIFO[3][12] ), .QN(n374) );
  SEDFFXL LIFO_reg_2__12_ ( .D(\MUXDout[12] ), .SI(n391), .E(N97), .SE(test_se), .CK(CLK), .Q(\LIFO[2][12] ), .QN(n390) );
  SEDFFXL LIFO_reg_1__12_ ( .D(\MUXDout[12] ), .SI(n407), .E(N81), .SE(test_se), .CK(CLK), .Q(\LIFO[1][12] ), .QN(n406) );
  SEDFFXL LIFO_reg_0__12_ ( .D(\MUXDout[12] ), .SI(n423), .E(N65), .SE(test_se), .CK(CLK), .Q(\LIFO[0][12] ), .QN(n422) );
  SEDFFXL LIFO_reg_3__13_ ( .D(\MUXDout[13] ), .SI(n374), .E(N99), .SE(test_se), .CK(CLK), .Q(\LIFO[3][13] ), .QN(n373) );
  SEDFFXL LIFO_reg_2__13_ ( .D(\MUXDout[13] ), .SI(n390), .E(N97), .SE(test_se), .CK(CLK), .Q(\LIFO[2][13] ), .QN(n389) );
  SEDFFXL LIFO_reg_1__13_ ( .D(\MUXDout[13] ), .SI(n406), .E(N81), .SE(test_se), .CK(CLK), .Q(\LIFO[1][13] ), .QN(n405) );
  SEDFFXL LIFO_reg_0__13_ ( .D(\MUXDout[13] ), .SI(n422), .E(N65), .SE(test_se), .CK(CLK), .Q(\LIFO[0][13] ), .QN(n421) );
  SEDFFXL LIFO_reg_3__14_ ( .D(\MUXDout[14] ), .SI(n373), .E(N99), .SE(test_se), .CK(CLK), .Q(\LIFO[3][14] ), .QN(n372) );
  SEDFFXL LIFO_reg_2__14_ ( .D(\MUXDout[14] ), .SI(n389), .E(N97), .SE(test_se), .CK(CLK), .Q(\LIFO[2][14] ), .QN(n388) );
  SEDFFXL LIFO_reg_1__14_ ( .D(\MUXDout[14] ), .SI(n405), .E(N81), .SE(test_se), .CK(CLK), .Q(\LIFO[1][14] ), .QN(n404) );
  SEDFFXL LIFO_reg_0__14_ ( .D(\MUXDout[14] ), .SI(n421), .E(N65), .SE(test_se), .CK(CLK), .Q(\LIFO[0][14] ), .QN(n420) );
  SEDFFXL LIFO_reg_3__15_ ( .D(\MUXDout[15] ), .SI(n372), .E(N99), .SE(test_se), .CK(CLK), .Q(\LIFO[3][15] ), .QN(n371) );
  SEDFFXL LIFO_reg_2__15_ ( .D(\MUXDout[15] ), .SI(n388), .E(N97), .SE(test_se), .CK(CLK), .Q(\LIFO[2][15] ), .QN(n387) );
  SEDFFXL LIFO_reg_1__15_ ( .D(\MUXDout[15] ), .SI(n404), .E(N81), .SE(test_se), .CK(CLK), .Q(\LIFO[1][15] ), .QN(n403) );
  SEDFFXL LIFO_reg_0__15_ ( .D(\MUXDout[15] ), .SI(n420), .E(N65), .SE(test_se), .CK(CLK), .Q(\LIFO[0][15] ), .QN(n419) );
  SEDFFXL Z_reg_6_ ( .D(N149), .SI(n365), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[6]), .QN(n364) );
  SEDFFXL Z_reg_5_ ( .D(N148), .SI(n366), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[5]), .QN(n365) );
  SEDFFXL Z_reg_4_ ( .D(N147), .SI(n367), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[4]), .QN(n366) );
  SEDFFXL Z_reg_3_ ( .D(N146), .SI(n368), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[3]), .QN(n367) );
  SEDFFXL Z_reg_2_ ( .D(N145), .SI(n369), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[2]), .QN(n368) );
  SEDFFXL Z_reg_1_ ( .D(N144), .SI(n370), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[1]), .QN(n369) );
  SEDFFXL Z_reg_11_ ( .D(N155), .SI(n360), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[11]), .QN(test_so) );
  SEDFFXL Z_reg_10_ ( .D(N153), .SI(n361), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[10]), .QN(n360) );
  SEDFFXL Z_reg_8_ ( .D(N151), .SI(n363), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[8]), .QN(n362) );
  SEDFFXL Z_reg_9_ ( .D(N152), .SI(n362), .E(N154), .SE(test_se), .CK(CLK), 
        .Q(Z[9]), .QN(n361) );
  IDRU8_DW01_sub_0 sub_87 ( .A({\MUXAout[17] , \MUXAout[16] , \MUXAout[15] , 
        \MUXAout[14] , \MUXAout[13] , \MUXAout[12] , \MUXAout[11] , 
        \MUXAout[10] , \MUXAout[9] , \MUXAout[8] , \MUXAout[7] , \MUXAout[6] , 
        \MUXAout[5] , \MUXAout[4] , \MUXAout[3] , \MUXAout[2] , \MUXAout[1] , 
        \MUXAout[0] }), .B({\MUXBout[17] , \MUXBout[16] , \MUXBout[15] , 
        \MUXBout[14] , \MUXBout[13] , \MUXBout[12] , \MUXBout[11] , 
        \MUXBout[10] , \MUXBout[9] , \MUXBout[8] , \MUXBout[7] , \MUXBout[6] , 
        \MUXBout[5] , \MUXBout[4] , \MUXBout[3] , \MUXBout[2] , \MUXBout[1] , 
        \MUXBout[0] }), .\DIFF[17] (\SUBout[17] ), .\DIFF[16] (\SUBout[16] ), 
        .\DIFF[15] (\SUBout[15] ), .\DIFF[14] (\SUBout[14] ), .\DIFF[13] (
        \SUBout[13] ), .\DIFF[12] (\SUBout[12] ), .\DIFF[11] (\SUBout[11] ), 
        .\DIFF[10] (\SUBout[10] ), .\DIFF[9] (\SUBout[9] ), .\DIFF[8] (
        \SUBout[8] ), .\DIFF[7] (\SUBout[7] ), .\DIFF[6] (\SUBout[6] ), 
        .\DIFF[5] (\SUBout[5] ), .\DIFF[4] (\SUBout[4] ), .\DIFF[3] (
        \SUBout[3] ), .\DIFF[2] (\SUBout[2] ) );
  IDRU8_DW01_add_0 add_86 ( .A({\MUXAout[17] , \MUXAout[16] , \MUXAout[15] , 
        \MUXAout[14] , \MUXAout[13] , \MUXAout[12] , \MUXAout[11] , 
        \MUXAout[10] , \MUXAout[9] , \MUXAout[8] , \MUXAout[7] , \MUXAout[6] , 
        \MUXAout[5] , \MUXAout[4] , \MUXAout[3] , \MUXAout[2] , \MUXAout[1] , 
        \MUXAout[0] }), .B({\MUXBout[17] , \MUXBout[16] , \MUXBout[15] , 
        \MUXBout[14] , \MUXBout[13] , \MUXBout[12] , \MUXBout[11] , 
        \MUXBout[10] , \MUXBout[9] , \MUXBout[8] , \MUXBout[7] , \MUXBout[6] , 
        \MUXBout[5] , \MUXBout[4] , \MUXBout[3] , \MUXBout[2] , \MUXBout[1] , 
        \MUXBout[0] }), .\SUM[17] (\ADDout[17] ), .\SUM[16] (\ADDout[16] ), 
        .\SUM[15] (\ADDout[15] ), .\SUM[14] (\ADDout[14] ), .\SUM[13] (
        \ADDout[13] ), .\SUM[12] (\ADDout[12] ), .\SUM[11] (\ADDout[11] ), 
        .\SUM[10] (\ADDout[10] ), .\SUM[9] (\ADDout[9] ), .\SUM[8] (
        \ADDout[8] ), .\SUM[7] (\ADDout[7] ), .\SUM[6] (\ADDout[6] ), 
        .\SUM[5] (\ADDout[5] ), .\SUM[4] (\ADDout[4] ), .\SUM[3] (\ADDout[3] ), 
        .\SUM[2] (\ADDout[2] ) );
endmodule


module DRU_test_1 ( X, Y, ToBDEG, ToACF, CLK, HALT, DoDCT, RESET_, test_se, 
        test_si, test_so );
  input [11:0] X;
  input [15:0] Y;
  output [16:0] ToBDEG;
  output [16:0] ToACF;
  input CLK, HALT, DoDCT, RESET_, test_se, test_si;
  output test_so;
  wire   N9, N10, \Count[2] , \Count[1] , \Count[0] , N15, N16, N19, N20,
         \MUXAout[15] , \MUXAout[14] , \MUXAout[13] , \MUXAout[12] ,
         \MUXAout[11] , \MUXAout[10] , \MUXAout[9] , \MUXAout[8] ,
         \MUXAout[7] , \MUXAout[6] , \MUXAout[5] , \MUXAout[4] , \MUXAout[3] ,
         \MUXAout[2] , \MUXBout[15] , \MUXBout[14] , \MUXBout[13] ,
         \MUXBout[12] , \MUXBout[11] , \MUXBout[10] , \MUXBout[9] ,
         \MUXBout[8] , \MUXBout[7] , \MUXBout[6] , \MUXBout[5] , \MUXBout[4] ,
         \MUXBout[3] , \MUXBout[2] , \MUXBout[1] , \MUXBout[0] , \LIFO[3][15] ,
         \LIFO[3][14] , \LIFO[3][13] , \LIFO[3][12] , \LIFO[3][11] ,
         \LIFO[3][10] , \LIFO[3][9] , \LIFO[3][8] , \LIFO[3][7] , \LIFO[3][6] ,
         \LIFO[3][5] , \LIFO[3][4] , \LIFO[3][3] , \LIFO[3][2] , \LIFO[3][1] ,
         \LIFO[3][0] , \LIFO[2][15] , \LIFO[2][14] , \LIFO[2][13] ,
         \LIFO[2][12] , \LIFO[2][11] , \LIFO[2][10] , \LIFO[2][9] ,
         \LIFO[2][8] , \LIFO[2][7] , \LIFO[2][6] , \LIFO[2][5] , \LIFO[2][4] ,
         \LIFO[2][3] , \LIFO[2][2] , \LIFO[2][1] , \LIFO[2][0] , \LIFO[1][15] ,
         \LIFO[1][14] , \LIFO[1][13] , \LIFO[1][12] , \LIFO[1][11] ,
         \LIFO[1][10] , \LIFO[1][9] , \LIFO[1][8] , \LIFO[1][7] , \LIFO[1][6] ,
         \LIFO[1][5] , \LIFO[1][4] , \LIFO[1][3] , \LIFO[1][2] , \LIFO[1][1] ,
         \LIFO[1][0] , \LIFO[0][15] , \LIFO[0][14] , \LIFO[0][13] ,
         \LIFO[0][12] , \LIFO[0][11] , \LIFO[0][10] , \LIFO[0][9] ,
         \LIFO[0][8] , \LIFO[0][7] , \LIFO[0][6] , \LIFO[0][5] , \LIFO[0][4] ,
         \LIFO[0][3] , \LIFO[0][2] , \LIFO[0][1] , \LIFO[0][0] , N43, N59, N75,
         N91, \LIFOout[15] , \LIFOout[14] , \LIFOout[13] , \LIFOout[12] ,
         \LIFOout[11] , \LIFOout[10] , \LIFOout[9] , \LIFOout[8] ,
         \LIFOout[7] , \LIFOout[6] , \LIFOout[5] , \LIFOout[4] , \LIFOout[3] ,
         \LIFOout[2] , \LIFOout[1] , \LIFOout[0] , \ADDout[16] , \ADDout[15] ,
         \ADDout[14] , \ADDout[13] , \ADDout[12] , \ADDout[11] , \ADDout[10] ,
         \ADDout[9] , \ADDout[8] , \ADDout[7] , \ADDout[6] , \ADDout[5] ,
         \ADDout[4] , \ADDout[3] , \ADDout[2] , \ADDout[1] , \ADDout[0] ,
         \SUBout[16] , \SUBout[15] , \SUBout[14] , \SUBout[13] , \SUBout[12] ,
         \SUBout[11] , \SUBout[10] , \SUBout[9] , \SUBout[8] , \SUBout[7] ,
         \SUBout[6] , \SUBout[5] , \SUBout[4] , \SUBout[3] , \SUBout[2] ,
         \SUBout[1] , \SUBout[0] , N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, n8, n900, n1010, n11, n12, n13, n14, n150,
         n160, n17, n18, n190, n200, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n430,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n590, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n750, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n901, n910, n92, n930, n940, n950, n960, n970,
         n980, n990, n1000, n1011, n1020, n1030, n3, n4, n5, n1040, n1070,
         n1080, n1090, n1100, n1120, n1130, n1140, n1150, n1160, n1170, n1180,
         n217, n218, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421;

  OAI22X2 U3 ( .A0(n1040), .A1(n92), .B0(\Count[2] ), .B1(n910), .Y(
        \MUXAout[2] ) );
  CLKINVX1 U4 ( .A(Y[2]), .Y(n92) );
  AND2X6 U5 ( .A(Y[0]), .B(n5), .Y(n217) );
  OAI22XL U6 ( .A0(n1040), .A1(n84), .B0(\Count[2] ), .B1(n83), .Y(
        \MUXAout[6] ) );
  MX4X1 U9 ( .A(\LIFO[0][6] ), .B(\LIFO[1][6] ), .C(\LIFO[2][6] ), .D(
        \LIFO[3][6] ), .S0(N9), .S1(N10), .Y(\LIFOout[6] ) );
  AND2X8 U10 ( .A(Y[1]), .B(n5), .Y(n218) );
  NAND2X1 U11 ( .A(\ADDout[10] ), .B(n1100), .Y(n73) );
  OAI21XL U12 ( .A0(n1040), .A1(n930), .B0(n1030), .Y(\MUXAout[15] ) );
  OAI22XL U13 ( .A0(n1040), .A1(n80), .B0(n5), .B1(n79), .Y(\MUXAout[8] ) );
  MX4X1 U14 ( .A(\LIFO[0][2] ), .B(\LIFO[1][2] ), .C(\LIFO[2][2] ), .D(
        \LIFO[3][2] ), .S0(N9), .S1(N10), .Y(\LIFOout[2] ) );
  MX4X1 U15 ( .A(\LIFO[0][15] ), .B(\LIFO[1][15] ), .C(\LIFO[2][15] ), .D(
        \LIFO[3][15] ), .S0(N9), .S1(N10), .Y(\LIFOout[15] ) );
  MX4X1 U16 ( .A(\LIFO[0][8] ), .B(\LIFO[1][8] ), .C(\LIFO[2][8] ), .D(
        \LIFO[3][8] ), .S0(N9), .S1(N10), .Y(\LIFOout[8] ) );
  OAI22XL U17 ( .A0(n1040), .A1(n1000), .B0(\Count[2] ), .B1(n990), .Y(
        \MUXAout[11] ) );
  OAI22XL U18 ( .A0(n1040), .A1(n901), .B0(\Count[2] ), .B1(n89), .Y(
        \MUXAout[3] ) );
  OAI22XL U19 ( .A0(n1040), .A1(n78), .B0(n5), .B1(n77), .Y(\MUXAout[9] ) );
  MX4X1 U20 ( .A(\LIFO[0][11] ), .B(\LIFO[1][11] ), .C(\LIFO[2][11] ), .D(
        \LIFO[3][11] ), .S0(N9), .S1(N10), .Y(\LIFOout[11] ) );
  MX4X1 U21 ( .A(\LIFO[0][9] ), .B(\LIFO[1][9] ), .C(\LIFO[2][9] ), .D(
        \LIFO[3][9] ), .S0(N9), .S1(N10), .Y(\LIFOout[9] ) );
  MX4X1 U22 ( .A(\LIFO[0][3] ), .B(\LIFO[1][3] ), .C(\LIFO[2][3] ), .D(
        \LIFO[3][3] ), .S0(N9), .S1(N10), .Y(\LIFOout[3] ) );
  INVXL U23 ( .A(\MUXAout[2] ), .Y(n22) );
  NAND2XL U24 ( .A(\ADDout[11] ), .B(n1090), .Y(n72) );
  NAND2XL U25 ( .A(\SUBout[8] ), .B(n1080), .Y(n57) );
  NAND2XL U26 ( .A(\ADDout[9] ), .B(n1100), .Y(n74) );
  NAND2XL U27 ( .A(\ADDout[8] ), .B(n1100), .Y(n750) );
  OAI22XL U28 ( .A0(n1040), .A1(n88), .B0(\Count[2] ), .B1(n87), .Y(
        \MUXAout[4] ) );
  OAI22XL U29 ( .A0(n1040), .A1(n86), .B0(\Count[2] ), .B1(n85), .Y(
        \MUXAout[5] ) );
  OAI22XL U30 ( .A0(n1040), .A1(n82), .B0(\Count[2] ), .B1(n81), .Y(
        \MUXAout[7] ) );
  OAI22XL U31 ( .A0(n1040), .A1(n1020), .B0(n5), .B1(n1011), .Y(\MUXAout[10] )
         );
  OAI22XL U32 ( .A0(n1040), .A1(n980), .B0(n5), .B1(n970), .Y(\MUXAout[12] )
         );
  OAI21XL U33 ( .A0(n1040), .A1(n960), .B0(n1030), .Y(\MUXAout[13] ) );
  OAI21XL U34 ( .A0(n1040), .A1(n950), .B0(n1030), .Y(\MUXAout[14] ) );
  XOR2X1 U35 ( .A(\Count[0] ), .B(n1040), .Y(n31) );
  MX4X1 U36 ( .A(\LIFO[0][13] ), .B(\LIFO[1][13] ), .C(\LIFO[2][13] ), .D(
        \LIFO[3][13] ), .S0(N9), .S1(N10), .Y(\LIFOout[13] ) );
  OAI2BB1X1 U37 ( .A0N(\SUBout[15] ), .A1N(n1100), .B0(n34), .Y(N125) );
  OAI2BB1X1 U38 ( .A0N(\ADDout[15] ), .A1N(n1100), .B0(n68), .Y(N108) );
  CLKINVX1 U39 ( .A(\MUXAout[13] ), .Y(n41) );
  CLKINVX1 U40 ( .A(\MUXAout[3] ), .Y(n190) );
  CLKINVX1 U41 ( .A(\MUXAout[4] ), .Y(n160) );
  CLKINVX1 U42 ( .A(\MUXAout[5] ), .Y(n13) );
  CLKINVX1 U43 ( .A(\MUXAout[6] ), .Y(n8) );
  CLKINVX1 U44 ( .A(\MUXAout[7] ), .Y(n590) );
  CLKINVX1 U45 ( .A(\MUXAout[8] ), .Y(n56) );
  CLKINVX1 U46 ( .A(\MUXAout[9] ), .Y(n53) );
  CLKINVX1 U47 ( .A(\MUXAout[10] ), .Y(n50) );
  CLKINVX1 U48 ( .A(\MUXAout[11] ), .Y(n47) );
  CLKINVX1 U49 ( .A(\MUXAout[12] ), .Y(n44) );
  CLKINVX1 U50 ( .A(\MUXAout[15] ), .Y(n35) );
  CLKINVX1 U51 ( .A(\MUXAout[14] ), .Y(n38) );
  NAND2XL U52 ( .A(Y[0]), .B(n5), .Y(n28) );
  NAND2XL U53 ( .A(Y[1]), .B(n5), .Y(n25) );
  OAI2BB1X1 U54 ( .A0N(\SUBout[16] ), .A1N(n1100), .B0(n34), .Y(N126) );
  OAI2BB1X1 U55 ( .A0N(\ADDout[16] ), .A1N(n1100), .B0(n68), .Y(N109) );
  OAI221XL U56 ( .A0(n41), .A1(n900), .B0(n1010), .B1(n40), .C0(n70), .Y(N106)
         );
  NAND2X1 U57 ( .A(\ADDout[13] ), .B(n1090), .Y(n70) );
  OAI221XL U58 ( .A0(n44), .A1(n3), .B0(n4), .B1(n430), .C0(n71), .Y(N105) );
  NAND2X1 U59 ( .A(\ADDout[12] ), .B(n1090), .Y(n71) );
  OAI221XL U60 ( .A0(n38), .A1(n3), .B0(n4), .B1(n37), .C0(n69), .Y(N107) );
  NAND2X1 U61 ( .A(\ADDout[14] ), .B(n1090), .Y(n69) );
  OAI221XL U62 ( .A0(n900), .A1(n46), .B0(n47), .B1(n1010), .C0(n48), .Y(N121)
         );
  NAND2X1 U63 ( .A(\SUBout[11] ), .B(n1080), .Y(n48) );
  OAI221XL U64 ( .A0(n3), .A1(n430), .B0(n44), .B1(n4), .C0(n45), .Y(N122) );
  NAND2X1 U65 ( .A(\SUBout[12] ), .B(n1080), .Y(n45) );
  OAI221XL U66 ( .A0(n3), .A1(n37), .B0(n38), .B1(n4), .C0(n39), .Y(N124) );
  NAND2X1 U67 ( .A(\SUBout[14] ), .B(n1080), .Y(n39) );
  OAI221XL U68 ( .A0(n900), .A1(n40), .B0(n41), .B1(n1010), .C0(n42), .Y(N123)
         );
  NAND2X1 U69 ( .A(\SUBout[13] ), .B(n1080), .Y(n42) );
  OAI221XL U70 ( .A0(n50), .A1(n3), .B0(n4), .B1(n49), .C0(n73), .Y(N103) );
  OAI221XL U71 ( .A0(n47), .A1(n900), .B0(n1010), .B1(n46), .C0(n72), .Y(N104)
         );
  OAI221XL U72 ( .A0(n3), .A1(n55), .B0(n56), .B1(n4), .C0(n57), .Y(N118) );
  OAI221XL U73 ( .A0(n900), .A1(n52), .B0(n53), .B1(n1010), .C0(n54), .Y(N119)
         );
  NAND2X1 U74 ( .A(\SUBout[9] ), .B(n1080), .Y(n54) );
  OAI221XL U75 ( .A0(n3), .A1(n49), .B0(n50), .B1(n4), .C0(n51), .Y(N120) );
  NAND2X1 U76 ( .A(\SUBout[10] ), .B(n1080), .Y(n51) );
  OAI221XL U77 ( .A0(n900), .A1(n14), .B0(n13), .B1(n1010), .C0(n62), .Y(N115)
         );
  NAND2X1 U78 ( .A(\SUBout[5] ), .B(n1090), .Y(n62) );
  OAI221XL U79 ( .A0(n3), .A1(n11), .B0(n8), .B1(n4), .C0(n61), .Y(N116) );
  NAND2X1 U80 ( .A(\SUBout[6] ), .B(n1090), .Y(n61) );
  OAI221XL U81 ( .A0(n900), .A1(n58), .B0(n590), .B1(n1010), .C0(n60), .Y(N117) );
  NAND2X1 U82 ( .A(\SUBout[7] ), .B(n1090), .Y(n60) );
  OAI221XL U83 ( .A0(n8), .A1(n900), .B0(n1010), .B1(n11), .C0(n12), .Y(N99)
         );
  NAND2X1 U84 ( .A(n1080), .B(\ADDout[6] ), .Y(n12) );
  OAI221XL U85 ( .A0(n590), .A1(n900), .B0(n1010), .B1(n58), .C0(n76), .Y(N100) );
  NAND2X1 U86 ( .A(\ADDout[7] ), .B(n1100), .Y(n76) );
  OAI221XL U87 ( .A0(n56), .A1(n3), .B0(n4), .B1(n55), .C0(n750), .Y(N101) );
  OAI221XL U88 ( .A0(n53), .A1(n900), .B0(n1010), .B1(n52), .C0(n74), .Y(N102)
         );
  OAI221XL U89 ( .A0(n3), .A1(n29), .B0(n1010), .B1(n28), .C0(n67), .Y(N110)
         );
  NAND2X1 U90 ( .A(\SUBout[0] ), .B(n1090), .Y(n67) );
  OAI221XL U91 ( .A0(n3), .A1(n25), .B0(n4), .B1(n26), .C0(n27), .Y(N94) );
  NAND2X1 U92 ( .A(\ADDout[1] ), .B(n1080), .Y(n27) );
  OAI221XL U93 ( .A0(n190), .A1(n3), .B0(n4), .B1(n200), .C0(n21), .Y(N96) );
  NAND2X1 U94 ( .A(\ADDout[3] ), .B(n1080), .Y(n21) );
  OAI221XL U95 ( .A0(n160), .A1(n900), .B0(n1010), .B1(n17), .C0(n18), .Y(N97)
         );
  NAND2X1 U96 ( .A(\ADDout[4] ), .B(n1080), .Y(n18) );
  OAI221XL U97 ( .A0(n13), .A1(n3), .B0(n4), .B1(n14), .C0(n150), .Y(N98) );
  NAND2X1 U98 ( .A(\ADDout[5] ), .B(n1080), .Y(n150) );
  OAI221XL U99 ( .A0(n900), .A1(n28), .B0(n1010), .B1(n29), .C0(n30), .Y(N93)
         );
  NAND2X1 U100 ( .A(\ADDout[0] ), .B(n1080), .Y(n30) );
  OAI221XL U101 ( .A0(n900), .A1(n26), .B0(n4), .B1(n25), .C0(n66), .Y(N111)
         );
  NAND2X1 U102 ( .A(\SUBout[1] ), .B(n1090), .Y(n66) );
  OAI221XL U103 ( .A0(n3), .A1(n23), .B0(n22), .B1(n4), .C0(n65), .Y(N112) );
  NAND2X1 U104 ( .A(\SUBout[2] ), .B(n1090), .Y(n65) );
  OAI221XL U105 ( .A0(n900), .A1(n200), .B0(n190), .B1(n1010), .C0(n64), .Y(
        N113) );
  NAND2X1 U106 ( .A(\SUBout[3] ), .B(n1090), .Y(n64) );
  OAI221XL U107 ( .A0(n3), .A1(n17), .B0(n160), .B1(n4), .C0(n63), .Y(N114) );
  NAND2X1 U108 ( .A(\SUBout[4] ), .B(n1090), .Y(n63) );
  OAI221XL U109 ( .A0(n22), .A1(n900), .B0(n1010), .B1(n23), .C0(n24), .Y(N95)
         );
  NAND2X1 U110 ( .A(\ADDout[2] ), .B(n1090), .Y(n24) );
  OAI22XL U111 ( .A0(n1040), .A1(n910), .B0(n5), .B1(n92), .Y(\MUXBout[2] ) );
  NOR2BXL U112 ( .AN(Y[0]), .B(\Count[2] ), .Y(\MUXBout[0] ) );
  NOR2BXL U113 ( .AN(Y[1]), .B(n5), .Y(\MUXBout[1] ) );
  INVX3 U114 ( .A(n31), .Y(N9) );
  CLKINVX1 U115 ( .A(n1040), .Y(n5) );
  NOR3X1 U116 ( .A(N10), .B(n1150), .C(N9), .Y(N43) );
  NOR3X1 U117 ( .A(N10), .B(n1140), .C(n31), .Y(N59) );
  NOR3X1 U118 ( .A(N9), .B(n1140), .C(n32), .Y(N75) );
  NOR3X1 U119 ( .A(n31), .B(n1150), .C(n32), .Y(N91) );
  OA22X1 U120 ( .A0(n35), .A1(n4), .B0(n900), .B1(n36), .Y(n34) );
  OA22X1 U121 ( .A0(n1010), .A1(n36), .B0(n35), .B1(n3), .Y(n68) );
  CLKINVX1 U122 ( .A(n1150), .Y(n1120) );
  CLKINVX1 U123 ( .A(n1140), .Y(n1130) );
  OAI22XL U124 ( .A0(n1040), .A1(n89), .B0(n5), .B1(n901), .Y(\MUXBout[3] ) );
  OAI22XL U125 ( .A0(n1040), .A1(n87), .B0(n5), .B1(n88), .Y(\MUXBout[4] ) );
  OAI22XL U126 ( .A0(n1040), .A1(n85), .B0(n5), .B1(n86), .Y(\MUXBout[5] ) );
  OAI22XL U127 ( .A0(n83), .A1(n1040), .B0(n5), .B1(n84), .Y(\MUXBout[6] ) );
  OAI22XL U128 ( .A0(n1040), .A1(n81), .B0(n5), .B1(n82), .Y(\MUXBout[7] ) );
  OAI22XL U129 ( .A0(n1040), .A1(n79), .B0(n5), .B1(n80), .Y(\MUXBout[8] ) );
  OAI22XL U130 ( .A0(n1040), .A1(n77), .B0(n5), .B1(n78), .Y(\MUXBout[9] ) );
  OAI22XL U131 ( .A0(n1040), .A1(n1011), .B0(n5), .B1(n1020), .Y(\MUXBout[10] ) );
  OAI22XL U132 ( .A0(n1040), .A1(n990), .B0(n5), .B1(n1000), .Y(\MUXBout[11] )
         );
  OAI22XL U133 ( .A0(n1040), .A1(n970), .B0(n5), .B1(n980), .Y(\MUXBout[12] )
         );
  OAI21XL U134 ( .A0(n5), .A1(n960), .B0(n940), .Y(\MUXBout[13] ) );
  OAI21XL U135 ( .A0(n5), .A1(n950), .B0(n940), .Y(\MUXBout[14] ) );
  OAI21XL U136 ( .A0(n5), .A1(n930), .B0(n940), .Y(\MUXBout[15] ) );
  CLKINVX1 U137 ( .A(N10), .Y(n32) );
  CLKINVX1 U138 ( .A(\LIFOout[13] ), .Y(n40) );
  CLKINVX1 U139 ( .A(\LIFOout[15] ), .Y(n36) );
  CLKINVX1 U140 ( .A(\LIFOout[1] ), .Y(n26) );
  CLKINVX1 U141 ( .A(\LIFOout[2] ), .Y(n23) );
  CLKINVX1 U142 ( .A(\LIFOout[3] ), .Y(n200) );
  CLKINVX1 U143 ( .A(\LIFOout[4] ), .Y(n17) );
  CLKINVX1 U144 ( .A(\LIFOout[5] ), .Y(n14) );
  CLKINVX1 U145 ( .A(\LIFOout[6] ), .Y(n11) );
  CLKINVX1 U146 ( .A(\LIFOout[7] ), .Y(n58) );
  CLKINVX1 U147 ( .A(\LIFOout[8] ), .Y(n55) );
  CLKINVX1 U148 ( .A(\LIFOout[9] ), .Y(n52) );
  CLKINVX1 U149 ( .A(\LIFOout[10] ), .Y(n49) );
  CLKINVX1 U150 ( .A(\LIFOout[11] ), .Y(n46) );
  CLKINVX1 U151 ( .A(\LIFOout[12] ), .Y(n430) );
  CLKINVX1 U152 ( .A(\LIFOout[14] ), .Y(n37) );
  CLKINVX1 U153 ( .A(\LIFOout[0] ), .Y(n29) );
  CLKBUFX3 U154 ( .A(n1070), .Y(n1080) );
  CLKBUFX3 U155 ( .A(n1070), .Y(n1090) );
  CLKBUFX3 U156 ( .A(n1070), .Y(n1100) );
  CLKINVX1 U157 ( .A(X[0]), .Y(n910) );
  CLKINVX1 U158 ( .A(X[1]), .Y(n89) );
  CLKXOR2X2 U159 ( .A(n5), .B(\Count[1] ), .Y(N10) );
  MX4X1 U160 ( .A(\LIFO[0][1] ), .B(\LIFO[1][1] ), .C(\LIFO[2][1] ), .D(
        \LIFO[3][1] ), .S0(N9), .S1(N10), .Y(\LIFOout[1] ) );
  MX4X1 U161 ( .A(\LIFO[0][0] ), .B(\LIFO[1][0] ), .C(\LIFO[2][0] ), .D(
        \LIFO[3][0] ), .S0(N9), .S1(N10), .Y(\LIFOout[0] ) );
  CLKINVX1 U162 ( .A(Y[3]), .Y(n901) );
  CLKINVX1 U163 ( .A(Y[4]), .Y(n88) );
  CLKINVX1 U164 ( .A(Y[5]), .Y(n86) );
  CLKINVX1 U165 ( .A(Y[6]), .Y(n84) );
  CLKINVX1 U166 ( .A(X[4]), .Y(n83) );
  CLKINVX1 U167 ( .A(X[2]), .Y(n87) );
  CLKINVX1 U168 ( .A(X[3]), .Y(n85) );
  CLKINVX1 U169 ( .A(X[5]), .Y(n81) );
  CLKINVX1 U170 ( .A(X[6]), .Y(n79) );
  MX4X1 U171 ( .A(\LIFO[0][4] ), .B(\LIFO[1][4] ), .C(\LIFO[2][4] ), .D(
        \LIFO[3][4] ), .S0(N9), .S1(N10), .Y(\LIFOout[4] ) );
  MX4X1 U172 ( .A(\LIFO[0][5] ), .B(\LIFO[1][5] ), .C(\LIFO[2][5] ), .D(
        \LIFO[3][5] ), .S0(N9), .S1(N10), .Y(\LIFOout[5] ) );
  MX4X1 U173 ( .A(\LIFO[0][7] ), .B(\LIFO[1][7] ), .C(\LIFO[2][7] ), .D(
        \LIFO[3][7] ), .S0(N9), .S1(N10), .Y(\LIFOout[7] ) );
  NAND2X1 U174 ( .A(X[11]), .B(n1040), .Y(n1030) );
  CLKINVX1 U175 ( .A(Y[7]), .Y(n82) );
  CLKINVX1 U176 ( .A(Y[8]), .Y(n80) );
  CLKINVX1 U177 ( .A(Y[9]), .Y(n78) );
  CLKINVX1 U178 ( .A(Y[10]), .Y(n1020) );
  CLKINVX1 U179 ( .A(Y[11]), .Y(n1000) );
  CLKINVX1 U180 ( .A(Y[13]), .Y(n960) );
  CLKINVX1 U181 ( .A(Y[12]), .Y(n980) );
  CLKINVX1 U182 ( .A(X[7]), .Y(n77) );
  CLKINVX1 U183 ( .A(X[8]), .Y(n1011) );
  CLKINVX1 U184 ( .A(X[9]), .Y(n990) );
  CLKINVX1 U185 ( .A(X[10]), .Y(n970) );
  MX4X1 U186 ( .A(\LIFO[0][10] ), .B(\LIFO[1][10] ), .C(\LIFO[2][10] ), .D(
        \LIFO[3][10] ), .S0(N9), .S1(N10), .Y(\LIFOout[10] ) );
  MX4X1 U187 ( .A(\LIFO[0][12] ), .B(\LIFO[1][12] ), .C(\LIFO[2][12] ), .D(
        \LIFO[3][12] ), .S0(N9), .S1(N10), .Y(\LIFOout[12] ) );
  CLKBUFX3 U188 ( .A(HALT), .Y(n1150) );
  CLKBUFX3 U189 ( .A(HALT), .Y(n1140) );
  CLKBUFX3 U190 ( .A(HALT), .Y(n1160) );
  CLKINVX1 U191 ( .A(Y[14]), .Y(n950) );
  CLKINVX1 U192 ( .A(Y[15]), .Y(n930) );
  OAI2BB1X1 U193 ( .A0N(N16), .A1N(n1130), .B0(RESET_), .Y(N20) );
  XOR2X1 U194 ( .A(n5), .B(n1170), .Y(N16) );
  AND2X2 U195 ( .A(\Count[1] ), .B(\Count[0] ), .Y(n1170) );
  NAND2X1 U196 ( .A(RESET_), .B(n1160), .Y(N19) );
  MX4X1 U197 ( .A(\LIFO[0][14] ), .B(\LIFO[1][14] ), .C(\LIFO[2][14] ), .D(
        \LIFO[3][14] ), .S0(N9), .S1(N10), .Y(\LIFOout[14] ) );
  NAND2X1 U198 ( .A(X[11]), .B(n5), .Y(n940) );
  XNOR2X1 U199 ( .A(\Count[1] ), .B(n1180), .Y(N15) );
  NAND2BX1 U200 ( .AN(n1100), .B(\Count[0] ), .Y(n1010) );
  NAND2BX1 U201 ( .AN(n1100), .B(\Count[0] ), .Y(n4) );
  OR2X1 U202 ( .A(\Count[0] ), .B(n1100), .Y(n900) );
  OR2X1 U203 ( .A(\Count[0] ), .B(n1100), .Y(n3) );
  CLKBUFX3 U204 ( .A(DoDCT), .Y(n1070) );
  SEDFFTRXL Count_reg_1_ ( .RN(RESET_), .D(N15), .E(n1130), .SI(n1180), .SE(
        test_se), .CK(CLK), .Q(\Count[1] ), .QN(n421) );
  SEDFFTRXL Count_reg_0_ ( .RN(RESET_), .D(n1180), .E(n1130), .SI(test_si), 
        .SE(test_se), .CK(CLK), .Q(\Count[0] ), .QN(n1180) );
  SEDFFXL LIFO_reg_3__15_ ( .D(\MUXBout[15] ), .SI(n358), .E(N91), .SE(test_se), .CK(CLK), .Q(\LIFO[3][15] ), .QN(n357) );
  SEDFFXL LIFO_reg_3__14_ ( .D(\MUXBout[14] ), .SI(n359), .E(N91), .SE(test_se), .CK(CLK), .Q(\LIFO[3][14] ), .QN(n358) );
  SEDFFXL LIFO_reg_3__13_ ( .D(\MUXBout[13] ), .SI(n360), .E(N91), .SE(test_se), .CK(CLK), .Q(\LIFO[3][13] ), .QN(n359) );
  SEDFFXL LIFO_reg_3__12_ ( .D(\MUXBout[12] ), .SI(n361), .E(N91), .SE(test_se), .CK(CLK), .Q(\LIFO[3][12] ), .QN(n360) );
  SEDFFXL LIFO_reg_3__11_ ( .D(\MUXBout[11] ), .SI(n362), .E(N91), .SE(test_se), .CK(CLK), .Q(\LIFO[3][11] ), .QN(n361) );
  SEDFFXL LIFO_reg_3__10_ ( .D(\MUXBout[10] ), .SI(n363), .E(N91), .SE(test_se), .CK(CLK), .Q(\LIFO[3][10] ), .QN(n362) );
  SEDFFXL LIFO_reg_3__9_ ( .D(\MUXBout[9] ), .SI(n364), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][9] ), .QN(n363) );
  SEDFFXL LIFO_reg_3__8_ ( .D(\MUXBout[8] ), .SI(n365), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][8] ), .QN(n364) );
  SEDFFXL LIFO_reg_3__7_ ( .D(\MUXBout[7] ), .SI(n366), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][7] ), .QN(n365) );
  SEDFFXL LIFO_reg_3__6_ ( .D(\MUXBout[6] ), .SI(n367), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][6] ), .QN(n366) );
  SEDFFXL LIFO_reg_3__5_ ( .D(\MUXBout[5] ), .SI(n368), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][5] ), .QN(n367) );
  SEDFFXL LIFO_reg_3__4_ ( .D(\MUXBout[4] ), .SI(n369), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][4] ), .QN(n368) );
  SEDFFXL LIFO_reg_3__3_ ( .D(\MUXBout[3] ), .SI(n370), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][3] ), .QN(n369) );
  SEDFFXL LIFO_reg_2__15_ ( .D(\MUXBout[15] ), .SI(n374), .E(N75), .SE(test_se), .CK(CLK), .Q(\LIFO[2][15] ), .QN(n373) );
  SEDFFXL LIFO_reg_2__14_ ( .D(\MUXBout[14] ), .SI(n375), .E(N75), .SE(test_se), .CK(CLK), .Q(\LIFO[2][14] ), .QN(n374) );
  SEDFFXL LIFO_reg_2__13_ ( .D(\MUXBout[13] ), .SI(n376), .E(N75), .SE(test_se), .CK(CLK), .Q(\LIFO[2][13] ), .QN(n375) );
  SEDFFXL LIFO_reg_2__12_ ( .D(\MUXBout[12] ), .SI(n377), .E(N75), .SE(test_se), .CK(CLK), .Q(\LIFO[2][12] ), .QN(n376) );
  SEDFFXL LIFO_reg_2__11_ ( .D(\MUXBout[11] ), .SI(n378), .E(N75), .SE(test_se), .CK(CLK), .Q(\LIFO[2][11] ), .QN(n377) );
  SEDFFXL LIFO_reg_2__10_ ( .D(\MUXBout[10] ), .SI(n379), .E(N75), .SE(test_se), .CK(CLK), .Q(\LIFO[2][10] ), .QN(n378) );
  SEDFFXL LIFO_reg_2__9_ ( .D(\MUXBout[9] ), .SI(n380), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][9] ), .QN(n379) );
  SEDFFXL LIFO_reg_2__8_ ( .D(\MUXBout[8] ), .SI(n381), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][8] ), .QN(n380) );
  SEDFFXL LIFO_reg_2__7_ ( .D(\MUXBout[7] ), .SI(n382), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][7] ), .QN(n381) );
  SEDFFXL LIFO_reg_2__6_ ( .D(\MUXBout[6] ), .SI(n383), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][6] ), .QN(n382) );
  SEDFFXL LIFO_reg_2__5_ ( .D(\MUXBout[5] ), .SI(n384), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][5] ), .QN(n383) );
  SEDFFXL LIFO_reg_2__4_ ( .D(\MUXBout[4] ), .SI(n385), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][4] ), .QN(n384) );
  SEDFFXL LIFO_reg_2__3_ ( .D(\MUXBout[3] ), .SI(n386), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][3] ), .QN(n385) );
  SEDFFXL LIFO_reg_1__15_ ( .D(\MUXBout[15] ), .SI(n390), .E(N59), .SE(test_se), .CK(CLK), .Q(\LIFO[1][15] ), .QN(n389) );
  SEDFFXL LIFO_reg_1__14_ ( .D(\MUXBout[14] ), .SI(n391), .E(N59), .SE(test_se), .CK(CLK), .Q(\LIFO[1][14] ), .QN(n390) );
  SEDFFXL LIFO_reg_1__13_ ( .D(\MUXBout[13] ), .SI(n392), .E(N59), .SE(test_se), .CK(CLK), .Q(\LIFO[1][13] ), .QN(n391) );
  SEDFFXL LIFO_reg_1__12_ ( .D(\MUXBout[12] ), .SI(n393), .E(N59), .SE(test_se), .CK(CLK), .Q(\LIFO[1][12] ), .QN(n392) );
  SEDFFXL LIFO_reg_1__11_ ( .D(\MUXBout[11] ), .SI(n394), .E(N59), .SE(test_se), .CK(CLK), .Q(\LIFO[1][11] ), .QN(n393) );
  SEDFFXL LIFO_reg_1__10_ ( .D(\MUXBout[10] ), .SI(n395), .E(N59), .SE(test_se), .CK(CLK), .Q(\LIFO[1][10] ), .QN(n394) );
  SEDFFXL LIFO_reg_1__9_ ( .D(\MUXBout[9] ), .SI(n396), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][9] ), .QN(n395) );
  SEDFFXL LIFO_reg_1__8_ ( .D(\MUXBout[8] ), .SI(n397), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][8] ), .QN(n396) );
  SEDFFXL LIFO_reg_1__7_ ( .D(\MUXBout[7] ), .SI(n398), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][7] ), .QN(n397) );
  SEDFFXL LIFO_reg_1__6_ ( .D(\MUXBout[6] ), .SI(n399), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][6] ), .QN(n398) );
  SEDFFXL LIFO_reg_1__5_ ( .D(\MUXBout[5] ), .SI(n400), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][5] ), .QN(n399) );
  SEDFFXL LIFO_reg_1__4_ ( .D(\MUXBout[4] ), .SI(n401), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][4] ), .QN(n400) );
  SEDFFXL LIFO_reg_1__3_ ( .D(\MUXBout[3] ), .SI(n402), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][3] ), .QN(n401) );
  SEDFFXL LIFO_reg_0__15_ ( .D(\MUXBout[15] ), .SI(n406), .E(N43), .SE(test_se), .CK(CLK), .Q(\LIFO[0][15] ), .QN(n405) );
  SEDFFXL LIFO_reg_0__14_ ( .D(\MUXBout[14] ), .SI(n407), .E(N43), .SE(test_se), .CK(CLK), .Q(\LIFO[0][14] ), .QN(n406) );
  SEDFFXL LIFO_reg_0__13_ ( .D(\MUXBout[13] ), .SI(n408), .E(N43), .SE(test_se), .CK(CLK), .Q(\LIFO[0][13] ), .QN(n407) );
  SEDFFXL LIFO_reg_0__12_ ( .D(\MUXBout[12] ), .SI(n409), .E(N43), .SE(test_se), .CK(CLK), .Q(\LIFO[0][12] ), .QN(n408) );
  SEDFFXL LIFO_reg_0__11_ ( .D(\MUXBout[11] ), .SI(n410), .E(N43), .SE(test_se), .CK(CLK), .Q(\LIFO[0][11] ), .QN(n409) );
  SEDFFXL LIFO_reg_0__10_ ( .D(\MUXBout[10] ), .SI(n411), .E(N43), .SE(test_se), .CK(CLK), .Q(\LIFO[0][10] ), .QN(n410) );
  SEDFFXL LIFO_reg_0__9_ ( .D(\MUXBout[9] ), .SI(n412), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][9] ), .QN(n411) );
  SEDFFXL LIFO_reg_0__8_ ( .D(\MUXBout[8] ), .SI(n413), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][8] ), .QN(n412) );
  SEDFFXL LIFO_reg_0__7_ ( .D(\MUXBout[7] ), .SI(n414), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][7] ), .QN(n413) );
  SEDFFXL LIFO_reg_0__6_ ( .D(\MUXBout[6] ), .SI(n415), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][6] ), .QN(n414) );
  SEDFFXL LIFO_reg_0__5_ ( .D(\MUXBout[5] ), .SI(n416), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][5] ), .QN(n415) );
  SEDFFXL LIFO_reg_0__4_ ( .D(\MUXBout[4] ), .SI(n417), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][4] ), .QN(n416) );
  SEDFFXL LIFO_reg_0__3_ ( .D(\MUXBout[3] ), .SI(n418), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][3] ), .QN(n417) );
  SEDFFXL LIFO_reg_3__1_ ( .D(\MUXBout[1] ), .SI(n372), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][1] ), .QN(n371) );
  SEDFFXL LIFO_reg_2__1_ ( .D(\MUXBout[1] ), .SI(n388), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][1] ), .QN(n387) );
  SEDFFXL LIFO_reg_1__1_ ( .D(\MUXBout[1] ), .SI(n404), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][1] ), .QN(n403) );
  SEDFFXL LIFO_reg_0__1_ ( .D(\MUXBout[1] ), .SI(n420), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][1] ), .QN(n419) );
  SEDFFXL LIFO_reg_3__0_ ( .D(\MUXBout[0] ), .SI(n373), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][0] ), .QN(n372) );
  SEDFFXL LIFO_reg_2__0_ ( .D(\MUXBout[0] ), .SI(n389), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][0] ), .QN(n388) );
  SEDFFXL LIFO_reg_1__0_ ( .D(\MUXBout[0] ), .SI(n405), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][0] ), .QN(n404) );
  SEDFFXL LIFO_reg_0__0_ ( .D(\MUXBout[0] ), .SI(\Count[2] ), .E(N43), .SE(
        test_se), .CK(CLK), .Q(\LIFO[0][0] ), .QN(n420) );
  SEDFFXL LIFO_reg_3__2_ ( .D(\MUXBout[2] ), .SI(n371), .E(N91), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[3][2] ), .QN(n370) );
  SEDFFXL LIFO_reg_2__2_ ( .D(\MUXBout[2] ), .SI(n387), .E(N75), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[2][2] ), .QN(n386) );
  SEDFFXL LIFO_reg_1__2_ ( .D(\MUXBout[2] ), .SI(n403), .E(N59), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[1][2] ), .QN(n402) );
  SEDFFXL LIFO_reg_0__2_ ( .D(\MUXBout[2] ), .SI(n419), .E(N43), .SE(test_se), 
        .CK(CLK), .Q(\LIFO[0][2] ), .QN(n418) );
  SEDFFXL ToACF_reg_0_ ( .D(N93), .SI(n357), .E(n1120), .SE(test_se), .CK(CLK), 
        .Q(ToACF[0]), .QN(n356) );
  SEDFFXL ToBDEG_reg_0_ ( .D(N110), .SI(n340), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[0]), .QN(n339) );
  SEDFFXL ToACF_reg_1_ ( .D(N94), .SI(n356), .E(n1120), .SE(test_se), .CK(CLK), 
        .Q(ToACF[1]), .QN(n355) );
  SEDFFXL ToBDEG_reg_1_ ( .D(N111), .SI(n339), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[1]), .QN(n338) );
  SEDFFXL ToACF_reg_2_ ( .D(N95), .SI(n355), .E(n1120), .SE(test_se), .CK(CLK), 
        .Q(ToACF[2]), .QN(n354) );
  SEDFFXL ToACF_reg_3_ ( .D(N96), .SI(n354), .E(n1120), .SE(test_se), .CK(CLK), 
        .Q(ToACF[3]), .QN(n353) );
  SEDFFXL ToBDEG_reg_2_ ( .D(N112), .SI(n338), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[2]), .QN(n337) );
  SEDFFXL ToBDEG_reg_3_ ( .D(N113), .SI(n337), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[3]), .QN(n336) );
  SEDFFXL ToACF_reg_4_ ( .D(N97), .SI(n353), .E(n1120), .SE(test_se), .CK(CLK), 
        .Q(ToACF[4]), .QN(n352) );
  SEDFFXL ToBDEG_reg_4_ ( .D(N114), .SI(n336), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[4]), .QN(n335) );
  SEDFFXL ToACF_reg_5_ ( .D(N98), .SI(n352), .E(n1120), .SE(test_se), .CK(CLK), 
        .Q(ToACF[5]), .QN(n351) );
  SEDFFXL ToBDEG_reg_5_ ( .D(N115), .SI(n335), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[5]), .QN(n334) );
  SEDFFXL ToACF_reg_6_ ( .D(N99), .SI(n351), .E(n1120), .SE(test_se), .CK(CLK), 
        .Q(ToACF[6]), .QN(n350) );
  SEDFFXL ToBDEG_reg_6_ ( .D(N116), .SI(n334), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[6]), .QN(n333) );
  SEDFFXL ToACF_reg_7_ ( .D(N100), .SI(n350), .E(n1120), .SE(test_se), .CK(CLK), .Q(ToACF[7]), .QN(n349) );
  SEDFFXL ToBDEG_reg_7_ ( .D(N117), .SI(n333), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[7]), .QN(n332) );
  SEDFFXL ToACF_reg_8_ ( .D(N101), .SI(n349), .E(n1120), .SE(test_se), .CK(CLK), .Q(ToACF[8]), .QN(n348) );
  SEDFFXL ToBDEG_reg_8_ ( .D(N118), .SI(n332), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[8]), .QN(n331) );
  SEDFFXL ToACF_reg_9_ ( .D(N102), .SI(n348), .E(n1130), .SE(test_se), .CK(CLK), .Q(ToACF[9]), .QN(n347) );
  SEDFFXL ToBDEG_reg_9_ ( .D(N119), .SI(n331), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[9]), .QN(n330) );
  SEDFFXL ToACF_reg_10_ ( .D(N103), .SI(n347), .E(n1130), .SE(test_se), .CK(
        CLK), .Q(ToACF[10]), .QN(n346) );
  SEDFFXL ToBDEG_reg_10_ ( .D(N120), .SI(n330), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[10]), .QN(n329) );
  SEDFFXL ToACF_reg_11_ ( .D(N104), .SI(n346), .E(n1130), .SE(test_se), .CK(
        CLK), .Q(ToACF[11]), .QN(n345) );
  SEDFFXL ToBDEG_reg_11_ ( .D(N121), .SI(n329), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[11]), .QN(n328) );
  SEDFFXL ToACF_reg_12_ ( .D(N105), .SI(n345), .E(n1130), .SE(test_se), .CK(
        CLK), .Q(ToACF[12]), .QN(n344) );
  SEDFFXL ToBDEG_reg_12_ ( .D(N122), .SI(n328), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[12]), .QN(n327) );
  SEDFFXL ToACF_reg_13_ ( .D(N106), .SI(n344), .E(n1130), .SE(test_se), .CK(
        CLK), .Q(ToACF[13]), .QN(n343) );
  SEDFFXL ToBDEG_reg_13_ ( .D(N123), .SI(n327), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[13]), .QN(n326) );
  SEDFFXL ToACF_reg_14_ ( .D(N107), .SI(n343), .E(n1130), .SE(test_se), .CK(
        CLK), .Q(ToACF[14]), .QN(n342) );
  SEDFFXL ToBDEG_reg_14_ ( .D(N124), .SI(n326), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[14]), .QN(n325) );
  SEDFFXL ToACF_reg_15_ ( .D(N108), .SI(n342), .E(n1130), .SE(test_se), .CK(
        CLK), .Q(ToACF[15]), .QN(n341) );
  SEDFFXL ToBDEG_reg_15_ ( .D(N125), .SI(n325), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[15]), .QN(n324) );
  SEDFFXL ToACF_reg_16_ ( .D(N109), .SI(n341), .E(n1130), .SE(test_se), .CK(
        CLK), .Q(ToACF[16]), .QN(n340) );
  SEDFFXL ToBDEG_reg_16_ ( .D(N126), .SI(n324), .E(n1120), .SE(test_se), .CK(
        CLK), .Q(ToBDEG[16]), .QN(test_so) );
  DRU_DW01_sub_0 sub_59 ( .A({\LIFOout[13] , \LIFOout[15] , \LIFOout[14] , 
        \LIFOout[13] , \LIFOout[12] , \LIFOout[11] , \LIFOout[10] , 
        \LIFOout[9] , \LIFOout[8] , \LIFOout[7] , \LIFOout[6] , \LIFOout[5] , 
        \LIFOout[4] , \LIFOout[3] , \LIFOout[2] , \LIFOout[1] , \LIFOout[0] }), 
        .DIFF({\SUBout[16] , \SUBout[15] , \SUBout[14] , \SUBout[13] , 
        \SUBout[12] , \SUBout[11] , \SUBout[10] , \SUBout[9] , \SUBout[8] , 
        \SUBout[7] , \SUBout[6] , \SUBout[5] , \SUBout[4] , \SUBout[3] , 
        \SUBout[2] , \SUBout[1] , \SUBout[0] }), .\B[16] (\MUXAout[13] ), 
        .\B[15] (\MUXAout[15] ), .\B[14] (\MUXAout[14] ), .\B[12] (
        \MUXAout[12] ), .\B[11] (\MUXAout[11] ), .\B[10] (\MUXAout[10] ), 
        .\B[9] (\MUXAout[9] ), .\B[8] (\MUXAout[8] ), .\B[7] (\MUXAout[7] ), 
        .\B[6] (\MUXAout[6] ), .\B[5] (\MUXAout[5] ), .\B[4] (\MUXAout[4] ), 
        .\B[3] (\MUXAout[3] ), .\B[2] (\MUXAout[2] ), .\B[1] (n218), .\B[0] (
        n217) );
  DRU_DW01_add_0 add_57 ( .A({\LIFOout[13] , \LIFOout[15] , \LIFOout[14] , 
        \LIFOout[13] , \LIFOout[12] , \LIFOout[11] , \LIFOout[10] , 
        \LIFOout[9] , \LIFOout[8] , \LIFOout[7] , \LIFOout[6] , \LIFOout[5] , 
        \LIFOout[4] , \LIFOout[3] , \LIFOout[2] , \LIFOout[1] , \LIFOout[0] }), 
        .B({\MUXAout[13] , \MUXAout[15] , \MUXAout[14] , \MUXAout[13] , 
        \MUXAout[12] , \MUXAout[11] , \MUXAout[10] , \MUXAout[9] , 
        \MUXAout[8] , \MUXAout[7] , \MUXAout[6] , \MUXAout[5] , \MUXAout[4] , 
        \MUXAout[3] , \MUXAout[2] , n218, n217}), .SUM({\ADDout[16] , 
        \ADDout[15] , \ADDout[14] , \ADDout[13] , \ADDout[12] , \ADDout[11] , 
        \ADDout[10] , \ADDout[9] , \ADDout[8] , \ADDout[7] , \ADDout[6] , 
        \ADDout[5] , \ADDout[4] , \ADDout[3] , \ADDout[2] , \ADDout[1] , 
        \ADDout[0] }) );
  SEDFFX1 Count_reg_2_ ( .D(N20), .SI(n421), .E(N19), .SE(test_se), .CK(CLK), 
        .Q(\Count[2] ), .QN(n1040) );
endmodule


module ST_MAL_RF2SH64x16_test_1 ( Tclk, BistMode, BistFail, S12, S13, S14, 
        ErrMap, test_se, test_si, test_so );
  input [15:0] S13;
  input [15:0] S14;
  input Tclk, BistMode, S12, test_se, test_si;
  output BistFail, ErrMap, test_so;
  wire   N9, n3, n4, n5, n6, n7, n8, n90, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n1;
  BUFX2 ASSIGN88 (.Y(test_so), .A(n24));

  CLKINVX1 U4 ( .A(BistMode), .Y(n1) );
  NOR3BXL U5 ( .AN(S12), .B(n3), .C(n1), .Y(N9) );
  NOR4X1 U6 ( .A(n4), .B(n5), .C(n6), .D(n7), .Y(n3) );
  NAND4X1 U7 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n4) );
  XNOR2X1 U8 ( .A(S14[3]), .B(S13[3]), .Y(n8) );
  XNOR2X1 U9 ( .A(S14[4]), .B(S13[4]), .Y(n15) );
  XNOR2X1 U10 ( .A(S14[15]), .B(S13[15]), .Y(n20) );
  XNOR2X1 U11 ( .A(S14[8]), .B(S13[8]), .Y(n19) );
  XNOR2X1 U12 ( .A(S14[12]), .B(S13[12]), .Y(n23) );
  XNOR2X1 U13 ( .A(S14[13]), .B(S13[13]), .Y(n22) );
  XNOR2X1 U14 ( .A(S14[14]), .B(S13[14]), .Y(n21) );
  NAND4X1 U15 ( .A(n8), .B(n90), .C(n10), .D(n11), .Y(n7) );
  XNOR2X1 U16 ( .A(S14[2]), .B(S13[2]), .Y(n90) );
  XNOR2X1 U17 ( .A(S14[1]), .B(S13[1]), .Y(n10) );
  XNOR2X1 U18 ( .A(S14[0]), .B(S13[0]), .Y(n11) );
  NAND4X1 U19 ( .A(n12), .B(n13), .C(n14), .D(n15), .Y(n6) );
  XNOR2X1 U20 ( .A(S14[7]), .B(S13[7]), .Y(n12) );
  XNOR2X1 U21 ( .A(S14[6]), .B(S13[6]), .Y(n13) );
  XNOR2X1 U22 ( .A(S14[5]), .B(S13[5]), .Y(n14) );
  NAND4X1 U23 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n5) );
  XNOR2X1 U24 ( .A(S14[11]), .B(S13[11]), .Y(n16) );
  XNOR2X1 U25 ( .A(S14[10]), .B(S13[10]), .Y(n17) );
  XNOR2X1 U26 ( .A(S14[9]), .B(S13[9]), .Y(n18) );
  AOI21X1 U28 ( .A0(n25), .A1(n24), .B0(n1), .Y(n27) );
  SDFFNSRXL S17_reg ( .D(n27), .SI(n25), .SE(test_se), .CKN(Tclk), .SN(1'b1), 
        .RN(1'b1), .Q(BistFail), .QN(n24) );
  SDFFNSRXL S16_reg ( .D(N9), .SI(test_si), .SE(test_se), .CKN(Tclk), .SN(1'b1), .RN(1'b1), .Q(ErrMap), .QN(n25) );
endmodule


module ST_MTC_RF2SH64x16_test_1 ( Tclk, BistMode, S18, S19, S4, S2, S3, S1, S8, 
        S9, S12, Finish, test_se, test_si, test_so );
  output [1:0] S8;
  input Tclk, BistMode, S2, S3, test_se, test_si;
  output S18, S19, S4, S1, S9, S12, Finish, test_so;
  wire   \State[3] , \State[2] , \State[1] , \State[0] , N23, N24, N25, N26,
         N29, N30, N31, n2, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n230, n240, n250, n260, n27, n28, n290,
         n300, n310, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n63,
         n67, n1, n3, n62, n73;
  BUFX2 ASSIGN89 (.Y(test_so), .A(n17));

  OA21XL U9 ( .A0(n290), .A1(n250), .B0(n300), .Y(n19) );
  CLKINVX1 U10 ( .A(n1), .Y(n3) );
  CLKBUFX3 U11 ( .A(BistMode), .Y(n1) );
  CLKINVX1 U12 ( .A(n12), .Y(n27) );
  CLKINVX1 U13 ( .A(n42), .Y(n4) );
  NOR2X1 U14 ( .A(n260), .B(n27), .Y(n18) );
  NAND2X1 U15 ( .A(n9), .B(n230), .Y(n12) );
  NAND2X1 U16 ( .A(n19), .B(n14), .Y(S18) );
  NAND4X1 U17 ( .A(n19), .B(n28), .C(n20), .D(n21), .Y(S1) );
  NAND2X1 U18 ( .A(n310), .B(n230), .Y(n42) );
  NAND3X1 U19 ( .A(n290), .B(n39), .C(n1), .Y(n33) );
  NOR4X1 U20 ( .A(n310), .B(n17), .C(n32), .D(n33), .Y(N31) );
  CLKINVX1 U21 ( .A(n240), .Y(n310) );
  OAI21XL U22 ( .A0(n34), .A1(n17), .B0(n35), .Y(N26) );
  NAND4X1 U23 ( .A(S3), .B(n36), .C(n16), .D(n310), .Y(n35) );
  AOI22X1 U24 ( .A0(n36), .A1(n37), .B0(n11), .B1(n1), .Y(n34) );
  CLKINVX1 U25 ( .A(n33), .Y(n36) );
  NOR2X1 U26 ( .A(n43), .B(n3), .Y(N24) );
  NOR4X1 U27 ( .A(n44), .B(n45), .C(n46), .D(n27), .Y(n43) );
  NOR3X1 U28 ( .A(n40), .B(n47), .C(n290), .Y(n45) );
  OAI222XL U29 ( .A0(S2), .A1(n20), .B0(n48), .B1(n250), .C0(n15), .C1(n21), 
        .Y(n44) );
  NOR2X1 U30 ( .A(n50), .B(n3), .Y(N23) );
  AOI211X1 U31 ( .A0(S3), .A1(n27), .B0(n51), .C0(n260), .Y(n50) );
  OAI211X1 U32 ( .A0(S2), .A1(n21), .B0(n55), .C0(n300), .Y(n51) );
  OAI21XL U33 ( .A0(n5), .A1(N29), .B0(n4), .Y(n55) );
  AOI31X1 U34 ( .A0(n16), .A1(n53), .A2(n54), .B0(n46), .Y(n28) );
  CLKINVX1 U35 ( .A(n18), .Y(S12) );
  NAND2X1 U36 ( .A(n10), .B(n49), .Y(n21) );
  NAND2X1 U37 ( .A(n49), .B(n310), .Y(n20) );
  OAI211X1 U38 ( .A0(n250), .A1(n39), .B0(n52), .C0(n28), .Y(n260) );
  NAND3X1 U39 ( .A(n54), .B(n53), .C(n230), .Y(n52) );
  CLKINVX1 U40 ( .A(n290), .Y(n10) );
  CLKINVX1 U41 ( .A(n47), .Y(n230) );
  NAND3X1 U42 ( .A(n54), .B(n53), .C(n49), .Y(n300) );
  AND2X2 U43 ( .A(n49), .B(n9), .Y(n46) );
  CLKINVX1 U44 ( .A(n39), .Y(n9) );
  AND3X2 U45 ( .A(n20), .B(n21), .C(n22), .Y(n14) );
  AOI2BB2X1 U46 ( .B0(n10), .B1(n230), .A0N(n240), .A1N(n250), .Y(n22) );
  CLKINVX1 U47 ( .A(n250), .Y(n16) );
  OAI21XL U48 ( .A0(n11), .A1(n17), .B0(n18), .Y(S19) );
  CLKINVX1 U49 ( .A(S3), .Y(n40) );
  OAI211XL U50 ( .A0(S3), .A1(n12), .B0(n13), .C0(n14), .Y(S4) );
  NAND3X1 U51 ( .A(n10), .B(n15), .C(n16), .Y(n13) );
  CLKINVX1 U52 ( .A(S2), .Y(n15) );
  AOI221XL U53 ( .A0(S2), .A1(n10), .B0(n310), .B1(n40), .C0(n9), .Y(n48) );
  NOR3BXL U54 ( .AN(n62), .B(n9), .C(n10), .Y(S9) );
  XNOR2X1 U55 ( .A(\State[3] ), .B(n11), .Y(n62) );
  NOR2X1 U56 ( .A(n310), .B(\State[2] ), .Y(n11) );
  NAND2X1 U57 ( .A(\State[1] ), .B(\State[0] ), .Y(n240) );
  NOR2X1 U58 ( .A(n2), .B(n3), .Y(n63) );
  AOI2BB2X1 U59 ( .B0(N30), .B1(n4), .A0N(n4), .A1N(n5), .Y(n2) );
  XOR2X1 U60 ( .A(S8[1]), .B(S8[0]), .Y(N30) );
  NOR2X1 U61 ( .A(n6), .B(n3), .Y(n67) );
  AOI2BB2X1 U62 ( .B0(N29), .B1(n4), .A0N(n4), .A1N(N29), .Y(n6) );
  OAI32X1 U63 ( .A0(n250), .A1(n310), .A2(n3), .B0(n38), .B1(n33), .Y(N25) );
  AOI221XL U64 ( .A0(\State[2] ), .A1(n240), .B0(n16), .B1(n40), .C0(n41), .Y(
        n38) );
  OAI32X1 U65 ( .A0(N29), .A1(n5), .A2(n42), .B0(n20), .B1(n15), .Y(n41) );
  NOR2X1 U66 ( .A(\State[3] ), .B(\State[2] ), .Y(n49) );
  NAND2X1 U67 ( .A(\State[0] ), .B(n53), .Y(n290) );
  NAND2X1 U68 ( .A(\State[3] ), .B(n32), .Y(n47) );
  NAND2X1 U69 ( .A(\State[2] ), .B(n17), .Y(n250) );
  NAND2X1 U71 ( .A(\State[1] ), .B(n54), .Y(n39) );
  OAI31XL U72 ( .A0(N29), .A1(\State[2] ), .A2(n5), .B0(n310), .Y(n37) );
  SDFFNSRXL Finish_reg ( .D(N31), .SI(test_si), .SE(test_se), .CKN(Tclk), .SN(
        1'b1), .RN(1'b1), .Q(Finish), .QN(n73) );
  SDFFNSRXL S20_reg_1_ ( .D(n63), .SI(N29), .SE(test_se), .CKN(Tclk), .SN(1'b1), .RN(1'b1), .Q(S8[1]), .QN(n5) );
  SDFFNSRXL S20_reg_0_ ( .D(n67), .SI(n73), .SE(test_se), .CKN(Tclk), .SN(1'b1), .RN(1'b1), .Q(S8[0]), .QN(N29) );
  SDFFNSRXL State_reg_0_ ( .D(N23), .SI(n5), .SE(test_se), .CKN(Tclk), .SN(
        1'b1), .RN(1'b1), .Q(\State[0] ), .QN(n54) );
  SDFFNSRXL State_reg_1_ ( .D(N24), .SI(n54), .SE(test_se), .CKN(Tclk), .SN(
        1'b1), .RN(1'b1), .Q(\State[1] ), .QN(n53) );
  SDFFNSRXL State_reg_2_ ( .D(N25), .SI(n53), .SE(test_se), .CKN(Tclk), .SN(
        1'b1), .RN(1'b1), .Q(\State[2] ), .QN(n32) );
  SDFFNSRXL State_reg_3_ ( .D(N26), .SI(n32), .SE(test_se), .CKN(Tclk), .SN(
        1'b1), .RN(1'b1), .Q(\State[3] ), .QN(n17) );
endmodule


module BistCtrl_RF2SH64x16_test_1 ( Tclk, mem_ctrl, QA_i, bist_ctrl, BistFail, 
        ErrMap, Finish, BistMode, test_si, test_se, test_so );
  output [1:0] mem_ctrl;
  input [15:0] QA_i;
  output [22:0] bist_ctrl;
  input Tclk, BistMode, test_si, test_se;
  output BistFail, ErrMap, Finish, test_so;
  wire   S38, S40, S41, S39, \S36[1] , \S36[0] , S37, S42, n5, n6;

  CLKBUFX2 U1 ( .A(BistMode), .Y(bist_ctrl[22]) );
  ST_MAG_RF2SH64x16_test_1 S43 ( .Tclk(Tclk), .BistMode(bist_ctrl[22]), .S0(
        bist_ctrl[5:0]), .S1(S38), .S2(S40), .S3(S41), .S4(S39), .test_se(
        test_se), .test_si(test_si), .test_so(n6) );
  ST_MPG_RF2SH64x16 ST_MPG_i0 ( .S7(bist_ctrl[21:6]), .S8({\S36[1] , \S36[0] }), .S9(S37) );
  ST_MAL_RF2SH64x16_test_1 ST_MAL_i0 ( .Tclk(Tclk), .BistMode(bist_ctrl[22]), 
        .BistFail(BistFail), .S12(S42), .S13(bist_ctrl[21:6]), .S14(QA_i), 
        .ErrMap(ErrMap), .test_se(test_se), .test_si(n5), .test_so(test_so) );
  ST_MTC_RF2SH64x16_test_1 S44 ( .Tclk(Tclk), .BistMode(bist_ctrl[22]), .S18(
        mem_ctrl[1]), .S19(mem_ctrl[0]), .S4(S39), .S2(S40), .S3(S41), .S1(S38), .S8({\S36[1] , \S36[0] }), .S9(S37), .S12(S42), .Finish(Finish), .test_se(
        test_se), .test_si(n6), .test_so(n5) );
endmodule


module Bisted_RF2SH64x16_test_1 ( CLKA, QA, AA, CLKB, DB, AB, BistFail, ErrMap, 
        Finish, BistMode, test_si, test_se, test_so );
  output [15:0] QA;
  input [5:0] AA;
  input [15:0] DB;
  input [5:0] AB;
  input CLKA, CLKB, BistMode, test_si, test_se;
  output BistFail, ErrMap, Finish, test_so;
  wire   \mem_ctrl_n[1] , \mem_ctrl_n[0] , \bist_ctrl_n[22] ,
         \bist_ctrl_n[21] , \bist_ctrl_n[20] , \bist_ctrl_n[19] ,
         \bist_ctrl_n[18] , \bist_ctrl_n[17] , \bist_ctrl_n[16] ,
         \bist_ctrl_n[15] , \bist_ctrl_n[14] , \bist_ctrl_n[13] ,
         \bist_ctrl_n[12] , \bist_ctrl_n[11] , \bist_ctrl_n[10] ,
         \bist_ctrl_n[9] , \bist_ctrl_n[8] , \bist_ctrl_n[7] ,
         \bist_ctrl_n[6] , \bist_ctrl_n[5] , \bist_ctrl_n[4] ,
         \bist_ctrl_n[3] , \bist_ctrl_n[2] , \bist_ctrl_n[1] ,
         \bist_ctrl_n[0] ;

  BistCtrl_RF2SH64x16_test_1 BistCtrl_i0 ( .Tclk(CLKA), .mem_ctrl({
        \mem_ctrl_n[1] , \mem_ctrl_n[0] }), .QA_i(QA), .bist_ctrl({
        \bist_ctrl_n[22] , \bist_ctrl_n[21] , \bist_ctrl_n[20] , 
        \bist_ctrl_n[19] , \bist_ctrl_n[18] , \bist_ctrl_n[17] , 
        \bist_ctrl_n[16] , \bist_ctrl_n[15] , \bist_ctrl_n[14] , 
        \bist_ctrl_n[13] , \bist_ctrl_n[12] , \bist_ctrl_n[11] , 
        \bist_ctrl_n[10] , \bist_ctrl_n[9] , \bist_ctrl_n[8] , 
        \bist_ctrl_n[7] , \bist_ctrl_n[6] , \bist_ctrl_n[5] , \bist_ctrl_n[4] , 
        \bist_ctrl_n[3] , \bist_ctrl_n[2] , \bist_ctrl_n[1] , \bist_ctrl_n[0] }), .BistFail(BistFail), .ErrMap(ErrMap), .Finish(Finish), .BistMode(BistMode), 
        .test_si(test_si), .test_se(test_se), .test_so(test_so) );
  RF2SH64x16_wrapper_RF2SH64x16 RF2SH64x16_u0 ( .CLKA(CLKA), .QA(QA), .AA(AA), 
        .CLKB(CLKB), .DB(DB), .AB(AB), .mem_ctrl({\mem_ctrl_n[1] , 
        \mem_ctrl_n[0] }), .bist_ctrl({\bist_ctrl_n[22] , \bist_ctrl_n[21] , 
        \bist_ctrl_n[20] , \bist_ctrl_n[19] , \bist_ctrl_n[18] , 
        \bist_ctrl_n[17] , \bist_ctrl_n[16] , \bist_ctrl_n[15] , 
        \bist_ctrl_n[14] , \bist_ctrl_n[13] , \bist_ctrl_n[12] , 
        \bist_ctrl_n[11] , \bist_ctrl_n[10] , \bist_ctrl_n[9] , 
        \bist_ctrl_n[8] , \bist_ctrl_n[7] , \bist_ctrl_n[6] , \bist_ctrl_n[5] , 
        \bist_ctrl_n[4] , \bist_ctrl_n[3] , \bist_ctrl_n[2] , \bist_ctrl_n[1] , 
        \bist_ctrl_n[0] }) );
endmodule


module tposemem_test_1 ( Datain, CLK, HALT, RESET_, Y, BistMode, test_se, 
        test_si1, test_si2, test_so1, test_so2 );
  input [15:0] Datain;
  output [15:0] Y;
  input CLK, HALT, RESET_, BistMode, test_se, test_si1, test_si2;
  output test_so1, test_so2;
  wire   \Count[5] , \Count[4] , \Count[3] , \Count[2] , Transport, N10, N11,
         N12, N13, N14, N15, N16, N17, N19, N20, N21, N22, N23, N24, \Radr[5] ,
         \Radr[4] , \Radr[3] , \Radr[2] , \Radr[1] , \Radr[0] , \Count_d6[5] ,
         \Count_d6[4] , \Count_d6[3] , \Count_d6[1] , \Count_d6[0] ,
         Transport_d, \Wadr[5] , \Wadr[4] , \Wadr[3] , \Wadr[2] , \Wadr[1] ,
         \Wadr[0] , N28, N29, N30, N31, N32, N33, N37, N38, \QA[2] , \QA[1] ,
         \QA[0] , ErrMap, Finish, BistFail, n5, n6, n7, n8, n100, n110, n120,
         n160, n170, n18, n190, n200, n210, n220, \sub_33_carry[2] ,
         \sub_33_carry[3] , \sub_33_carry[4] , \sub_33_carry[5] , n1, n2, n3,
         n4, n230, n300, n310, n320, n330, n34, n51, n52, n53, n54, n55;

  XNOR2X1 U42 ( .A(\Count[5] ), .B(\sub_33_carry[5] ), .Y(\Count_d6[5] ) );
  OR2X1 U43 ( .A(\Count[4] ), .B(\sub_33_carry[4] ), .Y(\sub_33_carry[5] ) );
  XNOR2X1 U44 ( .A(\sub_33_carry[4] ), .B(\Count[4] ), .Y(\Count_d6[4] ) );
  AND2X1 U45 ( .A(\sub_33_carry[3] ), .B(\Count[3] ), .Y(\sub_33_carry[4] ) );
  XOR2X1 U46 ( .A(\Count[3] ), .B(\sub_33_carry[3] ), .Y(\Count_d6[3] ) );
  OR2X1 U47 ( .A(\Count[2] ), .B(\sub_33_carry[2] ), .Y(\sub_33_carry[3] ) );
  CLKINVX1 U3 ( .A(BistMode), .Y(n2) );
  CLKINVX1 U4 ( .A(n2), .Y(n1) );
  NAND2X1 U5 ( .A(n300), .B(n310), .Y(Y[2]) );
  NAND2X1 U6 ( .A(\QA[2] ), .B(n2), .Y(n310) );
  NAND2X1 U7 ( .A(ErrMap), .B(n1), .Y(n300) );
  NAND2X1 U8 ( .A(BistFail), .B(n1), .Y(n330) );
  AO22X2 U9 ( .A0(Finish), .A1(n1), .B0(\QA[1] ), .B1(n2), .Y(Y[1]) );
  NAND2X2 U10 ( .A(n320), .B(n330), .Y(Y[0]) );
  NAND2X1 U11 ( .A(\QA[0] ), .B(n2), .Y(n320) );
  CLKINVX1 U12 ( .A(n220), .Y(n210) );
  NAND2X1 U13 ( .A(n120), .B(n3), .Y(N37) );
  NAND4X1 U14 ( .A(\sub_33_carry[2] ), .B(n34), .C(n110), .D(n160), .Y(n120)
         );
  NOR4X1 U15 ( .A(n4), .B(\Count_d6[5] ), .C(\Count_d6[4] ), .D(\Count_d6[3] ), 
        .Y(n160) );
  NAND2X1 U16 ( .A(n3), .B(n230), .Y(n220) );
  NAND2X1 U17 ( .A(n3), .B(n220), .Y(N23) );
  OAI2BB1X1 U18 ( .A0N(N13), .A1N(n210), .B0(n3), .Y(N20) );
  OAI2BB1X1 U19 ( .A0N(N14), .A1N(n210), .B0(n3), .Y(N21) );
  OAI2BB1X1 U20 ( .A0N(N12), .A1N(n210), .B0(n3), .Y(N19) );
  OAI2BB1X1 U21 ( .A0N(N15), .A1N(n210), .B0(n3), .Y(N22) );
  CLKINVX1 U22 ( .A(n4), .Y(n230) );
  CLKINVX1 U23 ( .A(\Count_d6[4] ), .Y(n190) );
  CLKINVX1 U24 ( .A(\Count_d6[5] ), .Y(n170) );
  CLKINVX1 U25 ( .A(\Count_d6[3] ), .Y(n200) );
  OAI22XL U26 ( .A0(n7), .A1(n5), .B0(Transport), .B1(n6), .Y(\Radr[2] ) );
  OAI22XL U27 ( .A0(n7), .A1(n100), .B0(Transport), .B1(n110), .Y(\Radr[0] )
         );
  OAI22XL U28 ( .A0(n7), .A1(n8), .B0(Transport), .B1(\Count_d6[1] ), .Y(
        \Radr[1] ) );
  OAI22XL U29 ( .A0(Transport), .A1(n100), .B0(n7), .B1(n110), .Y(\Radr[3] )
         );
  OAI22XL U30 ( .A0(Transport), .A1(n8), .B0(n7), .B1(\Count_d6[1] ), .Y(
        \Radr[4] ) );
  OAI22XL U31 ( .A0(Transport), .A1(n5), .B0(n6), .B1(n7), .Y(\Radr[5] ) );
  OAI21XL U32 ( .A0(Transport_d), .A1(n4), .B0(n3), .Y(N38) );
  CLKBUFX3 U33 ( .A(RESET_), .Y(n3) );
  CLKBUFX3 U34 ( .A(HALT), .Y(n4) );
  OAI2BB1X1 U35 ( .A0N(N16), .A1N(n210), .B0(n3), .Y(N24) );
  OAI2BB1X1 U36 ( .A0N(N10), .A1N(n210), .B0(n3), .Y(N17) );
  OAI22XL U37 ( .A0(n18), .A1(n190), .B0(Transport_d), .B1(\sub_33_carry[2] ), 
        .Y(N29) );
  OAI22XL U38 ( .A0(n18), .A1(n170), .B0(Transport_d), .B1(n34), .Y(N30) );
  OAI22XL U39 ( .A0(Transport_d), .A1(n190), .B0(n18), .B1(\sub_33_carry[2] ), 
        .Y(N32) );
  OAI22XL U40 ( .A0(Transport_d), .A1(n170), .B0(n18), .B1(n34), .Y(N33) );
  OAI22XL U41 ( .A0(n18), .A1(n200), .B0(Transport_d), .B1(n110), .Y(N28) );
  OAI22XL U48 ( .A0(Transport_d), .A1(n200), .B0(n18), .B1(n110), .Y(N31) );
  XOR2X1 U49 ( .A(\sub_33_carry[2] ), .B(\Count[2] ), .Y(n34) );
  SEDFFXL Transport_reg ( .D(N24), .SI(n18), .E(N23), .SE(test_se), .CK(CLK), 
        .Q(Transport), .QN(n7) );
  SEDFFXL Transport_d_reg ( .D(N38), .SI(n5), .E(N37), .SE(test_se), .CK(CLK), 
        .Q(Transport_d), .QN(n18) );
  SEDFFXL Count_reg_5_ ( .D(N22), .SI(n8), .E(N23), .SE(test_se), .CK(CLK), 
        .Q(\Count[5] ), .QN(n5) );
  SEDFFXL Count_reg_2_ ( .D(N19), .SI(\Count_d6[1] ), .E(N23), .SE(test_se), 
        .CK(CLK), .Q(\Count[2] ), .QN(n6) );
  SEDFFXL Count_reg_4_ ( .D(N21), .SI(n100), .E(N23), .SE(test_se), .CK(CLK), 
        .Q(\Count[4] ), .QN(n8) );
  SEDFFXL Count_reg_3_ ( .D(N20), .SI(n6), .E(N23), .SE(test_se), .CK(CLK), 
        .Q(\Count[3] ), .QN(n100) );
  SEDFFXL Count_reg_0_ ( .D(N17), .SI(test_si1), .E(N23), .SE(test_se), .CK(
        CLK), .Q(\Count_d6[0] ), .QN(n110) );
  SEDFFTRXL Count_reg_1_ ( .RN(RESET_), .D(N11), .E(n230), .SI(n110), .SE(
        test_se), .CK(CLK), .Q(\sub_33_carry[2] ), .QN(\Count_d6[1] ) );
  SEDFFXL Wadr_reg_5_ ( .D(N33), .SI(n51), .E(n230), .SE(test_se), .CK(CLK), 
        .Q(\Wadr[5] ), .QN(test_so1) );
  SEDFFXL Wadr_reg_4_ ( .D(N32), .SI(n52), .E(n230), .SE(test_se), .CK(CLK), 
        .Q(\Wadr[4] ), .QN(n51) );
  SEDFFXL Wadr_reg_3_ ( .D(N31), .SI(n53), .E(n230), .SE(test_se), .CK(CLK), 
        .Q(\Wadr[3] ), .QN(n52) );
  SEDFFXL Wadr_reg_2_ ( .D(N30), .SI(n54), .E(n230), .SE(test_se), .CK(CLK), 
        .Q(\Wadr[2] ), .QN(n53) );
  SEDFFXL Wadr_reg_1_ ( .D(N29), .SI(n55), .E(n230), .SE(test_se), .CK(CLK), 
        .Q(\Wadr[1] ), .QN(n54) );
  SEDFFXL Wadr_reg_0_ ( .D(N28), .SI(n7), .E(n230), .SE(test_se), .CK(CLK), 
        .Q(\Wadr[0] ), .QN(n55) );
  Bisted_RF2SH64x16_test_1 Bisted_RF2SH64x16 ( .CLKA(CLK), .QA({Y[15:3], 
        \QA[2] , \QA[1] , \QA[0] }), .AA({\Radr[5] , \Radr[4] , \Radr[3] , 
        \Radr[2] , \Radr[1] , \Radr[0] }), .CLKB(CLK), .DB(Datain), .AB({
        \Wadr[5] , \Wadr[4] , \Wadr[3] , \Wadr[2] , \Wadr[1] , \Wadr[0] }), 
        .BistFail(BistFail), .ErrMap(ErrMap), .Finish(Finish), .BistMode(n1), 
        .test_si(test_si2), .test_se(test_se), .test_so(test_so2) );
  tposemem_DW01_inc_0 add_26 ( .A({Transport, \Count[5] , \Count[4] , 
        \Count[3] , \Count[2] , \sub_33_carry[2] , \Count_d6[0] }), .SUM({N16, 
        N15, N14, N13, N12, N11, N10}) );
endmodule


module ST_MAG_RF2SH64x16_DW01_dec_0 ( A, SUM );
  input [5:0] A;
  output [5:0] SUM;
  wire   n1, n2, n3, n4;

  XOR2X1 U1 ( .A(A[5]), .B(n1), .Y(SUM[5]) );
  NOR2X1 U2 ( .A(A[4]), .B(n2), .Y(n1) );
  XNOR2X1 U3 ( .A(A[4]), .B(n2), .Y(SUM[4]) );
  OAI2BB1X1 U4 ( .A0N(n3), .A1N(A[3]), .B0(n2), .Y(SUM[3]) );
  OR2X1 U5 ( .A(n3), .B(A[3]), .Y(n2) );
  OAI2BB1X1 U6 ( .A0N(n4), .A1N(A[2]), .B0(n3), .Y(SUM[2]) );
  OR2X1 U7 ( .A(n4), .B(A[2]), .Y(n3) );
  OAI2BB1X1 U8 ( .A0N(A[0]), .A1N(A[1]), .B0(n4), .Y(SUM[1]) );
  NAND2BX1 U9 ( .AN(A[1]), .B(SUM[0]), .Y(n4) );
  CLKINVX1 U10 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ST_MAG_RF2SH64x16_DW01_inc_0 ( A, SUM );
  input [5:0] A;
  output [5:0] SUM;
  wire   \carry[5] , \carry[4] , \carry[3] , \carry[2] ;

  XOR2X1 U1 ( .A(\carry[5] ), .B(A[5]), .Y(SUM[5]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(\carry[4] ), .CO(\carry[5] ), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(\carry[3] ), .CO(\carry[4] ), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(\carry[2] ), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(\carry[2] ), .CO(\carry[3] ), .S(SUM[2]) );
endmodule


module ST_MPG_RF2SH64x16 ( S7, S8, S9 );
  output [15:0] S7;
  input [1:0] S8;
  input S9;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17;

  CLKINVX1 U1 ( .A(S9), .Y(n14) );
  INVX1 U2 ( .A(n12), .Y(n11) );
  OAI31XL U3 ( .A0(n13), .A1(n14), .A2(n15), .B0(n16), .Y(n12) );
  NAND2XL U4 ( .A(S9), .B(n13), .Y(n10) );
  NAND2XL U5 ( .A(S9), .B(n15), .Y(n7) );
  NAND3XL U6 ( .A(n13), .B(n15), .C(S9), .Y(n16) );
  CLKINVX1 U7 ( .A(n17), .Y(n8) );
  OAI31XL U8 ( .A0(n13), .A1(S9), .A2(n15), .B0(n16), .Y(n17) );
  NAND3X1 U9 ( .A(n15), .B(n14), .C(S8[0]), .Y(n9) );
  CLKINVX1 U10 ( .A(S8[0]), .Y(n13) );
  NAND3X1 U11 ( .A(n13), .B(n14), .C(S8[1]), .Y(n6) );
  CLKINVX1 U12 ( .A(S8[1]), .Y(n15) );
  CLKBUFX3 U13 ( .A(S7[7]), .Y(S7[15]) );
  NAND3X1 U14 ( .A(n10), .B(n7), .C(n11), .Y(S7[7]) );
  CLKBUFX3 U15 ( .A(S7[6]), .Y(S7[14]) );
  NAND3X1 U16 ( .A(n10), .B(n9), .C(n11), .Y(S7[6]) );
  CLKBUFX3 U17 ( .A(S7[5]), .Y(S7[13]) );
  NAND3X1 U18 ( .A(n6), .B(n7), .C(n11), .Y(S7[5]) );
  CLKBUFX3 U19 ( .A(S7[4]), .Y(S7[12]) );
  NAND3X1 U20 ( .A(n9), .B(n6), .C(n11), .Y(S7[4]) );
  CLKBUFX3 U21 ( .A(S7[3]), .Y(S7[11]) );
  NAND3X1 U22 ( .A(n10), .B(n7), .C(n8), .Y(S7[3]) );
  CLKBUFX3 U23 ( .A(S7[2]), .Y(S7[10]) );
  NAND3X1 U24 ( .A(n10), .B(n9), .C(n8), .Y(S7[2]) );
  CLKBUFX3 U25 ( .A(S7[1]), .Y(S7[9]) );
  NAND3X1 U26 ( .A(n6), .B(n7), .C(n8), .Y(S7[1]) );
  CLKBUFX3 U27 ( .A(S7[0]), .Y(S7[8]) );
  NAND3X1 U28 ( .A(n9), .B(n6), .C(n8), .Y(S7[0]) );
endmodule


module add_pipe1_0_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_0_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
endmodule


module add_pipe1_1_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_1_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
endmodule


module add_pipe1_2_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_2_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
endmodule


module add_pipe1_3_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_3_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
endmodule


module add_pipe1_4_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_4_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
endmodule


module add_pipe1_5_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_5_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
endmodule


module add_pipe1_6_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_6_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
endmodule


module add_pipe1_7_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_7_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
endmodule


module add_pipe1_8_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_8_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
endmodule


module add_pipe1_9_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_9_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
endmodule


module add_pipe1_10_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_10_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
endmodule


module add_pipe1_11_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_11_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
endmodule


module add_pipe1_12_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_12_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
endmodule


module add_pipe1_13_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_13_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
endmodule


module add_pipe1_14_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_14_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
endmodule


module add_pipe1_15_DW01_add_1 ( SUM, \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , 
        \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] 
 );
  output [11:0] SUM;
  input \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] ,
         \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[10] , \carry[9] , \carry[8] , \carry[7] , \carry[6] ,
         \carry[5] , \carry[4] , \carry[3] , \carry[2] , \carry[1] ;

  AND2X1 U1 ( .A(\A[0] ), .B(\B[0] ), .Y(\carry[1] ) );
  XOR2X1 U2 ( .A(\B[0] ), .B(\A[0] ), .Y(SUM[0]) );
  ADDFXL U1_10 ( .A(\A[10] ), .B(\B[10] ), .CI(\carry[10] ), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(\A[9] ), .B(\B[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  ADDFXL U1_8 ( .A(\A[8] ), .B(\B[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  ADDFXL U1_7 ( .A(\A[7] ), .B(\B[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(\A[6] ), .B(\B[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(\A[5] ), .B(\B[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(\A[4] ), .B(\B[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(\A[3] ), .B(\B[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(\A[2] ), .B(\B[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(\A[1] ), .B(\B[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
endmodule


module add_pipe1_15_DW01_add_0 ( A, B, CI, SUM );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  wire   \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] ;

  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(\carry[8] ), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(\carry[1] ), .S(SUM[0]) );
endmodule


module RF2SH64x16_wrapper_RF2SH64x16 ( CLKA, QA, AA, CLKB, DB, AB, mem_ctrl, 
        bist_ctrl );
  output [15:0] QA;
  input [5:0] AA;
  input [15:0] DB;
  input [5:0] AB;
  input [1:0] mem_ctrl;
  input [22:0] bist_ctrl;
  input CLKA, CLKB;
  wire   CENA_n, CENB_n, n1, n3, n4;
  wire   [5:0] AA_n;
  wire   [15:0] DB_n;
  wire   [5:0] AB_n;

  RF2SH64x16 SRAM_i0 ( .AB(AB_n), .DB(DB_n), .AA(AA_n), .QA(QA), .CENB(CENB_n), 
        .CENA(CENA_n), .CLKB(CLKB), .CLKA(CLKA) );
  CLKINVX1 U1 ( .A(n3), .Y(n1) );
  CLKBUFX3 U2 ( .A(bist_ctrl[22]), .Y(n3) );
  CLKBUFX3 U3 ( .A(bist_ctrl[22]), .Y(n4) );
  NOR2BX1 U4 ( .AN(mem_ctrl[1]), .B(n1), .Y(CENA_n) );
  AO22X1 U5 ( .A0(bist_ctrl[18]), .A1(n4), .B0(DB[12]), .B1(n1), .Y(DB_n[12])
         );
  AO22X1 U6 ( .A0(bist_ctrl[19]), .A1(n4), .B0(DB[13]), .B1(n1), .Y(DB_n[13])
         );
  NOR2BX1 U7 ( .AN(mem_ctrl[0]), .B(n1), .Y(CENB_n) );
  AO22X1 U8 ( .A0(bist_ctrl[8]), .A1(n4), .B0(DB[2]), .B1(n1), .Y(DB_n[2]) );
  AO22X1 U9 ( .A0(bist_ctrl[9]), .A1(n4), .B0(DB[3]), .B1(n1), .Y(DB_n[3]) );
  AO22X1 U10 ( .A0(bist_ctrl[10]), .A1(n4), .B0(DB[4]), .B1(n1), .Y(DB_n[4])
         );
  AO22X1 U11 ( .A0(bist_ctrl[11]), .A1(n4), .B0(DB[5]), .B1(n1), .Y(DB_n[5])
         );
  AO22X1 U12 ( .A0(bist_ctrl[12]), .A1(n4), .B0(DB[6]), .B1(n1), .Y(DB_n[6])
         );
  AO22X1 U13 ( .A0(bist_ctrl[13]), .A1(n3), .B0(DB[7]), .B1(n1), .Y(DB_n[7])
         );
  AO22X1 U14 ( .A0(bist_ctrl[14]), .A1(n3), .B0(DB[8]), .B1(n1), .Y(DB_n[8])
         );
  AO22X1 U15 ( .A0(n4), .A1(bist_ctrl[15]), .B0(DB[9]), .B1(n1), .Y(DB_n[9])
         );
  AO22X1 U16 ( .A0(bist_ctrl[16]), .A1(n4), .B0(DB[10]), .B1(n1), .Y(DB_n[10])
         );
  AO22X1 U17 ( .A0(bist_ctrl[17]), .A1(n4), .B0(DB[11]), .B1(n1), .Y(DB_n[11])
         );
  AO22X1 U18 ( .A0(bist_ctrl[20]), .A1(n4), .B0(DB[14]), .B1(n1), .Y(DB_n[14])
         );
  AO22X1 U19 ( .A0(bist_ctrl[21]), .A1(n4), .B0(DB[15]), .B1(n1), .Y(DB_n[15])
         );
  AO22X1 U20 ( .A0(bist_ctrl[6]), .A1(n4), .B0(DB[0]), .B1(n1), .Y(DB_n[0]) );
  AO22X1 U21 ( .A0(bist_ctrl[7]), .A1(n4), .B0(DB[1]), .B1(n1), .Y(DB_n[1]) );
  AO22X1 U22 ( .A0(n4), .A1(bist_ctrl[2]), .B0(AA[2]), .B1(n1), .Y(AA_n[2]) );
  AO22X1 U23 ( .A0(n4), .A1(bist_ctrl[2]), .B0(AB[2]), .B1(n1), .Y(AB_n[2]) );
  AO22X1 U24 ( .A0(n4), .A1(bist_ctrl[0]), .B0(AB[0]), .B1(n1), .Y(AB_n[0]) );
  AO22X1 U25 ( .A0(n4), .A1(bist_ctrl[1]), .B0(AB[1]), .B1(n1), .Y(AB_n[1]) );
  AO22X1 U26 ( .A0(n4), .A1(bist_ctrl[3]), .B0(AB[3]), .B1(n1), .Y(AB_n[3]) );
  AO22X1 U27 ( .A0(n4), .A1(bist_ctrl[4]), .B0(AB[4]), .B1(n1), .Y(AB_n[4]) );
  AO22X1 U28 ( .A0(n4), .A1(bist_ctrl[5]), .B0(AB[5]), .B1(n1), .Y(AB_n[5]) );
  AO22X1 U29 ( .A0(n4), .A1(bist_ctrl[0]), .B0(AA[0]), .B1(n1), .Y(AA_n[0]) );
  AO22X1 U30 ( .A0(n4), .A1(bist_ctrl[1]), .B0(AA[1]), .B1(n1), .Y(AA_n[1]) );
  AO22X1 U31 ( .A0(n4), .A1(bist_ctrl[3]), .B0(AA[3]), .B1(n1), .Y(AA_n[3]) );
  AO22X1 U32 ( .A0(n4), .A1(bist_ctrl[4]), .B0(AA[4]), .B1(n1), .Y(AA_n[4]) );
  AO22X1 U33 ( .A0(n4), .A1(bist_ctrl[5]), .B0(AA[5]), .B1(n1), .Y(AA_n[5]) );
endmodule


module tposemem_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;
  wire   \carry[6] , \carry[5] , \carry[4] , \carry[3] , \carry[2] ;

  XOR2X1 U1 ( .A(\carry[6] ), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(\carry[5] ), .CO(\carry[6] ), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(\carry[4] ), .CO(\carry[5] ), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(\carry[3] ), .CO(\carry[4] ), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(\carry[2] ), .CO(\carry[3] ), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(\carry[2] ), .S(SUM[1]) );
endmodule


module IDRU8_DW01_add_0 ( A, B, \SUM[17] , \SUM[16] , \SUM[15] , \SUM[14] , 
        \SUM[13] , \SUM[12] , \SUM[11] , \SUM[10] , \SUM[9] , \SUM[8] , 
        \SUM[7] , \SUM[6] , \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2]  );
  input [17:0] A;
  input [17:0] B;
  output \SUM[17] , \SUM[16] , \SUM[15] , \SUM[14] , \SUM[13] , \SUM[12] ,
         \SUM[11] , \SUM[10] , \SUM[9] , \SUM[8] , \SUM[7] , \SUM[6] ,
         \SUM[5] , \SUM[4] , \SUM[3] , \SUM[2] ;
  wire   \carry[17] , \carry[16] , \carry[15] , \carry[14] , \carry[13] ,
         \carry[12] , \carry[11] , \carry[10] , \carry[9] , \carry[8] ,
         \carry[7] , \carry[6] , \carry[5] , \carry[4] , \carry[3] ,
         \carry[2] , n1;

  OAI2BB1X1 U1 ( .A0N(A[1]), .A1N(B[1]), .B0(n1), .Y(\carry[2] ) );
  OAI211X1 U2 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n1) );
  XOR3X1 U1_17 ( .A(A[17]), .B(B[17]), .C(\carry[17] ), .Y(\SUM[17] ) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(\carry[15] ), .CO(\carry[16] ), .S(
        \SUM[15] ) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(\carry[14] ), .CO(\carry[15] ), .S(
        \SUM[14] ) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(\carry[16] ), .CO(\carry[17] ), .S(
        \SUM[16] ) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        \SUM[3] ) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(\carry[13] ), .CO(\carry[14] ), .S(
        \SUM[13] ) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(\carry[12] ), .CO(\carry[13] ), .S(
        \SUM[12] ) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(\carry[11] ), .CO(\carry[12] ), .S(
        \SUM[11] ) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(\carry[10] ), .CO(\carry[11] ), .S(
        \SUM[10] ) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        \SUM[9] ) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        \SUM[8] ) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        \SUM[7] ) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        \SUM[6] ) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        \SUM[5] ) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        \SUM[4] ) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        \SUM[2] ) );
endmodule


module IDRU8_DW01_sub_0 ( A, B, \DIFF[17] , \DIFF[16] , \DIFF[15] , \DIFF[14] , 
        \DIFF[13] , \DIFF[12] , \DIFF[11] , \DIFF[10] , \DIFF[9] , \DIFF[8] , 
        \DIFF[7] , \DIFF[6] , \DIFF[5] , \DIFF[4] , \DIFF[3] , \DIFF[2]  );
  input [17:0] A;
  input [17:0] B;
  output \DIFF[17] , \DIFF[16] , \DIFF[15] , \DIFF[14] , \DIFF[13] ,
         \DIFF[12] , \DIFF[11] , \DIFF[10] , \DIFF[9] , \DIFF[8] , \DIFF[7] ,
         \DIFF[6] , \DIFF[5] , \DIFF[4] , \DIFF[3] , \DIFF[2] ;
  wire   \carry[17] , \carry[16] , \carry[15] , \carry[14] , \carry[13] ,
         \carry[12] , \carry[11] , \carry[10] , \carry[9] , \carry[8] ,
         \carry[7] , \carry[6] , \carry[5] , \carry[4] , \carry[3] ,
         \carry[2] , \B_not[17] , \B_not[16] , \B_not[15] , \B_not[14] ,
         \B_not[13] , \B_not[12] , \B_not[11] , \B_not[10] , \B_not[9] ,
         \B_not[8] , \B_not[7] , \B_not[6] , \B_not[5] , \B_not[4] ,
         \B_not[3] , \B_not[2] , n1, n2, n3;

  OAI22XL U1 ( .A0(n1), .A1(n2), .B0(B[1]), .B1(n3), .Y(\carry[2] ) );
  AND2X1 U2 ( .A(n1), .B(n2), .Y(n3) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n2) );
  NOR2BX1 U4 ( .AN(B[0]), .B(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[9]), .Y(\B_not[9] ) );
  CLKINVX1 U6 ( .A(B[8]), .Y(\B_not[8] ) );
  CLKINVX1 U7 ( .A(B[7]), .Y(\B_not[7] ) );
  CLKINVX1 U8 ( .A(B[6]), .Y(\B_not[6] ) );
  CLKINVX1 U9 ( .A(B[5]), .Y(\B_not[5] ) );
  CLKINVX1 U10 ( .A(B[4]), .Y(\B_not[4] ) );
  CLKINVX1 U11 ( .A(B[3]), .Y(\B_not[3] ) );
  CLKINVX1 U12 ( .A(B[2]), .Y(\B_not[2] ) );
  CLKINVX1 U13 ( .A(B[17]), .Y(\B_not[17] ) );
  CLKINVX1 U14 ( .A(B[16]), .Y(\B_not[16] ) );
  CLKINVX1 U15 ( .A(B[15]), .Y(\B_not[15] ) );
  CLKINVX1 U16 ( .A(B[14]), .Y(\B_not[14] ) );
  CLKINVX1 U17 ( .A(B[13]), .Y(\B_not[13] ) );
  CLKINVX1 U18 ( .A(B[12]), .Y(\B_not[12] ) );
  CLKINVX1 U19 ( .A(B[11]), .Y(\B_not[11] ) );
  CLKINVX1 U20 ( .A(B[10]), .Y(\B_not[10] ) );
  XOR3X1 U2_17 ( .A(A[17]), .B(\B_not[17] ), .C(\carry[17] ), .Y(\DIFF[17] )
         );
  ADDFXL U2_16 ( .A(A[16]), .B(\B_not[16] ), .CI(\carry[16] ), .CO(\carry[17] ), .S(\DIFF[16] ) );
  ADDFXL U2_15 ( .A(A[15]), .B(\B_not[15] ), .CI(\carry[15] ), .CO(\carry[16] ), .S(\DIFF[15] ) );
  ADDFXL U2_14 ( .A(A[14]), .B(\B_not[14] ), .CI(\carry[14] ), .CO(\carry[15] ), .S(\DIFF[14] ) );
  ADDFXL U2_13 ( .A(A[13]), .B(\B_not[13] ), .CI(\carry[13] ), .CO(\carry[14] ), .S(\DIFF[13] ) );
  ADDFXL U2_12 ( .A(A[12]), .B(\B_not[12] ), .CI(\carry[12] ), .CO(\carry[13] ), .S(\DIFF[12] ) );
  ADDFXL U2_11 ( .A(A[11]), .B(\B_not[11] ), .CI(\carry[11] ), .CO(\carry[12] ), .S(\DIFF[11] ) );
  ADDFXL U2_10 ( .A(A[10]), .B(\B_not[10] ), .CI(\carry[10] ), .CO(\carry[11] ), .S(\DIFF[10] ) );
  ADDFXL U2_9 ( .A(A[9]), .B(\B_not[9] ), .CI(\carry[9] ), .CO(\carry[10] ), 
        .S(\DIFF[9] ) );
  ADDFXL U2_8 ( .A(A[8]), .B(\B_not[8] ), .CI(\carry[8] ), .CO(\carry[9] ), 
        .S(\DIFF[8] ) );
  ADDFXL U2_7 ( .A(A[7]), .B(\B_not[7] ), .CI(\carry[7] ), .CO(\carry[8] ), 
        .S(\DIFF[7] ) );
  ADDFXL U2_6 ( .A(A[6]), .B(\B_not[6] ), .CI(\carry[6] ), .CO(\carry[7] ), 
        .S(\DIFF[6] ) );
  ADDFXL U2_5 ( .A(A[5]), .B(\B_not[5] ), .CI(\carry[5] ), .CO(\carry[6] ), 
        .S(\DIFF[5] ) );
  ADDFXL U2_4 ( .A(A[4]), .B(\B_not[4] ), .CI(\carry[4] ), .CO(\carry[5] ), 
        .S(\DIFF[4] ) );
  ADDFXL U2_3 ( .A(A[3]), .B(\B_not[3] ), .CI(\carry[3] ), .CO(\carry[4] ), 
        .S(\DIFF[3] ) );
  ADDFXL U2_2 ( .A(A[2]), .B(\B_not[2] ), .CI(\carry[2] ), .CO(\carry[3] ), 
        .S(\DIFF[2] ) );
endmodule


module DRU_DW01_add_0 ( A, B, SUM );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  wire   \carry[16] , \carry[15] , \carry[14] , \carry[13] , \carry[12] ,
         \carry[11] , \carry[10] , \carry[9] , \carry[8] , \carry[7] ,
         \carry[6] , \carry[5] , \carry[4] , \carry[3] , \carry[2] ,
         \carry[1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36;

  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(\carry[16] ), .Y(SUM[16]) );
  ADDFHX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(\carry[10] ), .CO(\carry[11] ), 
        .S(SUM[10]) );
  ADDFHX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(\carry[14] ), .CO(\carry[15] ), 
        .S(SUM[14]) );
  ADDFHX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(\carry[12] ), .CO(\carry[13] ), 
        .S(SUM[12]) );
  ADDFHX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  ADDFHX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  NAND3X1 U1 ( .A(n18), .B(n19), .C(n20), .Y(\carry[9] ) );
  NAND3X1 U3 ( .A(n2), .B(n3), .C(n4), .Y(\carry[6] ) );
  NAND2X1 U4 ( .A(A[2]), .B(B[2]), .Y(n16) );
  AND2X2 U5 ( .A(A[0]), .B(B[0]), .Y(\carry[1] ) );
  NAND3XL U6 ( .A(n10), .B(n11), .C(n12), .Y(\carry[16] ) );
  NAND3X2 U7 ( .A(n14), .B(n15), .C(n16), .Y(\carry[3] ) );
  NAND2X2 U8 ( .A(A[2]), .B(\carry[2] ), .Y(n15) );
  XOR2XL U9 ( .A(A[5]), .B(B[5]), .Y(n1) );
  XOR2XL U10 ( .A(n1), .B(\carry[5] ), .Y(SUM[5]) );
  NAND2X1 U11 ( .A(B[5]), .B(\carry[5] ), .Y(n2) );
  NAND2X1 U12 ( .A(A[5]), .B(\carry[5] ), .Y(n3) );
  NAND2X1 U13 ( .A(A[5]), .B(B[5]), .Y(n4) );
  XOR2XL U14 ( .A(A[6]), .B(B[6]), .Y(n5) );
  XOR2XL U15 ( .A(n5), .B(\carry[6] ), .Y(SUM[6]) );
  NAND2X1 U16 ( .A(B[6]), .B(\carry[6] ), .Y(n6) );
  NAND2X1 U17 ( .A(A[6]), .B(\carry[6] ), .Y(n7) );
  NAND2X1 U18 ( .A(A[6]), .B(B[6]), .Y(n8) );
  NAND3X1 U19 ( .A(n6), .B(n7), .C(n8), .Y(\carry[7] ) );
  XOR2XL U20 ( .A(n9), .B(\carry[15] ), .Y(SUM[15]) );
  NAND2X1 U21 ( .A(B[8]), .B(\carry[8] ), .Y(n18) );
  NAND2X1 U22 ( .A(A[8]), .B(\carry[8] ), .Y(n19) );
  NAND2X1 U23 ( .A(A[8]), .B(B[8]), .Y(n20) );
  XOR2XL U24 ( .A(n21), .B(\carry[11] ), .Y(SUM[11]) );
  NAND2XL U25 ( .A(B[15]), .B(\carry[15] ), .Y(n10) );
  NAND2XL U26 ( .A(A[15]), .B(\carry[15] ), .Y(n11) );
  NAND2X1 U27 ( .A(A[15]), .B(B[15]), .Y(n12) );
  XOR2XL U28 ( .A(A[15]), .B(B[15]), .Y(n9) );
  XOR2XL U29 ( .A(A[2]), .B(B[2]), .Y(n13) );
  XOR2XL U30 ( .A(n13), .B(\carry[2] ), .Y(SUM[2]) );
  NAND2X2 U31 ( .A(B[2]), .B(\carry[2] ), .Y(n14) );
  XOR2XL U32 ( .A(A[8]), .B(B[8]), .Y(n17) );
  XOR2XL U33 ( .A(n17), .B(\carry[8] ), .Y(SUM[8]) );
  NAND2XL U34 ( .A(B[11]), .B(\carry[11] ), .Y(n22) );
  NAND2XL U35 ( .A(A[11]), .B(\carry[11] ), .Y(n23) );
  NAND2X1 U36 ( .A(A[11]), .B(B[11]), .Y(n24) );
  NAND3X1 U37 ( .A(n22), .B(n23), .C(n24), .Y(\carry[12] ) );
  NAND2X1 U38 ( .A(B[3]), .B(\carry[3] ), .Y(n26) );
  NAND2X1 U39 ( .A(A[3]), .B(\carry[3] ), .Y(n27) );
  NAND2X1 U40 ( .A(A[3]), .B(B[3]), .Y(n28) );
  NAND3X1 U41 ( .A(n26), .B(n27), .C(n28), .Y(\carry[4] ) );
  NAND2X1 U42 ( .A(B[9]), .B(\carry[9] ), .Y(n30) );
  NAND2X1 U43 ( .A(A[9]), .B(\carry[9] ), .Y(n31) );
  NAND2X1 U44 ( .A(A[9]), .B(B[9]), .Y(n32) );
  NAND3X1 U45 ( .A(n30), .B(n31), .C(n32), .Y(\carry[10] ) );
  XOR2XL U46 ( .A(A[11]), .B(B[11]), .Y(n21) );
  XOR2XL U47 ( .A(A[3]), .B(B[3]), .Y(n25) );
  XOR2XL U48 ( .A(n25), .B(\carry[3] ), .Y(SUM[3]) );
  XOR2XL U49 ( .A(A[9]), .B(B[9]), .Y(n29) );
  XOR2XL U50 ( .A(n29), .B(\carry[9] ), .Y(SUM[9]) );
  XOR2XL U51 ( .A(A[13]), .B(B[13]), .Y(n33) );
  XOR2XL U52 ( .A(n33), .B(\carry[13] ), .Y(SUM[13]) );
  NAND2X1 U53 ( .A(B[13]), .B(\carry[13] ), .Y(n34) );
  NAND2X1 U54 ( .A(A[13]), .B(\carry[13] ), .Y(n35) );
  NAND2X1 U55 ( .A(A[13]), .B(B[13]), .Y(n36) );
  NAND3X1 U56 ( .A(n34), .B(n35), .C(n36), .Y(\carry[14] ) );
endmodule


module DRU_DW01_sub_0 ( A, DIFF, \B[16] , \B[15] , \B[14] , \B[12] , \B[11] , 
        \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , 
        \B[2] , \B[1] , \B[0]  );
  input [16:0] A;
  output [16:0] DIFF;
  input \B[16] , \B[15] , \B[14] , \B[12] , \B[11] , \B[10] , \B[9] , \B[8] ,
         \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   \carry[16] , \carry[15] , \carry[14] , \carry[13] , \carry[12] ,
         \carry[11] , \carry[10] , \carry[9] , \carry[8] , \carry[7] ,
         \carry[6] , \carry[5] , \carry[4] , \carry[3] , \carry[2] ,
         \carry[1] , \B_not[16] , \B_not[15] , \B_not[14] , \B_not[12] ,
         \B_not[11] , \B_not[10] , \B_not[9] , \B_not[8] , \B_not[7] ,
         \B_not[6] , \B_not[5] , \B_not[4] , \B_not[3] , \B_not[2] ,
         \B_not[1] , \B_not[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  XNOR2X1 U2 ( .A(A[0]), .B(\B_not[0] ), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(\B[9] ), .Y(\B_not[9] ) );
  CLKINVX1 U4 ( .A(\B[8] ), .Y(\B_not[8] ) );
  CLKINVX1 U5 ( .A(\B[7] ), .Y(\B_not[7] ) );
  CLKINVX1 U8 ( .A(\B[4] ), .Y(\B_not[4] ) );
  CLKINVX1 U9 ( .A(\B[3] ), .Y(\B_not[3] ) );
  CLKINVX1 U10 ( .A(\B[2] ), .Y(\B_not[2] ) );
  CLKINVX1 U11 ( .A(\B[1] ), .Y(\B_not[1] ) );
  CLKINVX1 U12 ( .A(\B[15] ), .Y(\B_not[15] ) );
  CLKINVX1 U13 ( .A(\B[14] ), .Y(\B_not[14] ) );
  CLKINVX1 U14 ( .A(\B[16] ), .Y(\B_not[16] ) );
  CLKINVX1 U15 ( .A(\B[12] ), .Y(\B_not[12] ) );
  CLKINVX1 U16 ( .A(\B[11] ), .Y(\B_not[11] ) );
  CLKINVX1 U17 ( .A(\B[10] ), .Y(\B_not[10] ) );
  CLKINVX1 U18 ( .A(\B[0] ), .Y(\B_not[0] ) );
  XOR3X1 U2_16 ( .A(A[16]), .B(\B_not[16] ), .C(\carry[16] ), .Y(DIFF[16]) );
  ADDFHX2 U2_9 ( .A(A[9]), .B(\B_not[9] ), .CI(\carry[9] ), .CO(\carry[10] ), 
        .S(DIFF[9]) );
  ADDFHX2 U2_1 ( .A(A[1]), .B(\B_not[1] ), .CI(\carry[1] ), .CO(\carry[2] ), 
        .S(DIFF[1]) );
  ADDFHX2 U2_8 ( .A(A[8]), .B(\B_not[8] ), .CI(\carry[8] ), .CO(\carry[9] ), 
        .S(DIFF[8]) );
  ADDFHX2 U2_7 ( .A(A[7]), .B(\B_not[7] ), .CI(\carry[7] ), .CO(\carry[8] ), 
        .S(DIFF[7]) );
  ADDFHX2 U2_12 ( .A(A[12]), .B(\B_not[12] ), .CI(\carry[12] ), .CO(
        \carry[13] ), .S(DIFF[12]) );
  ADDFHX2 U2_15 ( .A(A[15]), .B(\B_not[15] ), .CI(\carry[15] ), .CO(
        \carry[16] ), .S(DIFF[15]) );
  ADDFHX2 U2_11 ( .A(A[11]), .B(\B_not[11] ), .CI(\carry[11] ), .CO(
        \carry[12] ), .S(DIFF[11]) );
  ADDFHX2 U2_4 ( .A(A[4]), .B(\B_not[4] ), .CI(\carry[4] ), .CO(\carry[5] ), 
        .S(DIFF[4]) );
  ADDFHX2 U2_14 ( .A(A[14]), .B(\B_not[14] ), .CI(\carry[14] ), .CO(
        \carry[15] ), .S(DIFF[14]) );
  XOR2X1 U1 ( .A(A[2]), .B(\carry[2] ), .Y(n1) );
  XOR2X1 U6 ( .A(n1), .B(\B_not[2] ), .Y(DIFF[2]) );
  NAND2X1 U7 ( .A(\carry[2] ), .B(\B_not[2] ), .Y(n2) );
  NAND2X1 U19 ( .A(A[2]), .B(\B_not[2] ), .Y(n3) );
  NAND2X1 U20 ( .A(A[2]), .B(\carry[2] ), .Y(n4) );
  NAND3X1 U21 ( .A(n2), .B(n3), .C(n4), .Y(\carry[3] ) );
  NAND3X1 U22 ( .A(n6), .B(n7), .C(n8), .Y(\carry[4] ) );
  NAND2X1 U23 ( .A(\B_not[3] ), .B(\carry[3] ), .Y(n6) );
  NAND2X1 U24 ( .A(A[3]), .B(\carry[3] ), .Y(n7) );
  XOR2XL U25 ( .A(A[3]), .B(\B_not[3] ), .Y(n5) );
  XOR2XL U26 ( .A(n5), .B(\carry[3] ), .Y(DIFF[3]) );
  NAND2X1 U27 ( .A(A[3]), .B(\B_not[3] ), .Y(n8) );
  NAND3X1 U28 ( .A(n14), .B(n15), .C(n16), .Y(\carry[7] ) );
  NAND2X1 U29 ( .A(\B_not[6] ), .B(\carry[6] ), .Y(n14) );
  NAND2X1 U30 ( .A(A[6]), .B(\carry[6] ), .Y(n15) );
  NAND2X1 U31 ( .A(A[6]), .B(\B_not[6] ), .Y(n16) );
  CLKINVX1 U32 ( .A(\B[5] ), .Y(\B_not[5] ) );
  NAND2X1 U33 ( .A(A[5]), .B(\B_not[5] ), .Y(n12) );
  NAND3X2 U34 ( .A(n10), .B(n11), .C(n12), .Y(\carry[6] ) );
  XOR2XL U35 ( .A(A[5]), .B(\B_not[5] ), .Y(n9) );
  XOR2XL U36 ( .A(n9), .B(\carry[5] ), .Y(DIFF[5]) );
  NAND2X2 U37 ( .A(\B_not[5] ), .B(\carry[5] ), .Y(n10) );
  NAND2X2 U38 ( .A(A[5]), .B(\carry[5] ), .Y(n11) );
  XOR2XL U39 ( .A(A[6]), .B(\B_not[6] ), .Y(n13) );
  XOR2XL U40 ( .A(n13), .B(\carry[6] ), .Y(DIFF[6]) );
  INVX1 U41 ( .A(\B[6] ), .Y(\B_not[6] ) );
  XOR2XL U42 ( .A(n21), .B(\carry[13] ), .Y(DIFF[13]) );
  OR2X4 U43 ( .A(\B_not[0] ), .B(A[0]), .Y(\carry[1] ) );
  NAND2XL U44 ( .A(\B_not[16] ), .B(\carry[13] ), .Y(n22) );
  NAND2XL U45 ( .A(A[13]), .B(\carry[13] ), .Y(n23) );
  XOR2X1 U46 ( .A(A[10]), .B(\B_not[10] ), .Y(n17) );
  XOR2XL U47 ( .A(n17), .B(\carry[10] ), .Y(DIFF[10]) );
  NAND2X1 U48 ( .A(\B_not[10] ), .B(\carry[10] ), .Y(n18) );
  NAND2X1 U49 ( .A(A[10]), .B(\carry[10] ), .Y(n19) );
  NAND2X1 U50 ( .A(A[10]), .B(\B_not[10] ), .Y(n20) );
  NAND3X1 U51 ( .A(n18), .B(n19), .C(n20), .Y(\carry[11] ) );
  XOR2X1 U52 ( .A(A[13]), .B(\B_not[16] ), .Y(n21) );
  NAND2X1 U53 ( .A(A[13]), .B(\B_not[16] ), .Y(n24) );
  NAND3X1 U54 ( .A(n22), .B(n24), .C(n23), .Y(\carry[14] ) );
endmodule


module DCT ( CLK, HALT, RESET_, DoDCT, X, Z, Mode, test_si, test_so, test_se
 );
  input [11:0] X;
  output [11:0] Z;
  input CLK, HALT, RESET_, DoDCT, Mode, test_si, test_se;
  output test_so;
  wire   n3, n4, n5, n7, n9, n11, n13, n15, n17, n19, n21, n23, n25, n27, n29,
         n30, n31, n32, n33, n34, n37, n38, n39, n40, n41;
  wire   [15:0] Y;
  wire   [16:0] ToBDEG;
  wire   [16:0] ToACF;
  wire   [17:0] ACC0;
  wire   [17:0] ACC1;
  wire   [17:0] ACC2;
  wire   [17:0] ACC3;
  wire   [17:0] ACC4;
  wire   [17:0] ACC5;
  wire   [17:0] ACC6;
  wire   [17:0] ACC7;
  wire   [11:0] IDRUout;
  wire   [15:0] ToMEM;

  CLKINVX1 U14 ( .A(n4), .Y(n3) );
  NOR2XL U15 ( .A(n29), .B(n30), .Y(n5) );
  INVX12 U16 ( .A(n5), .Y(Z[1]) );
  NOR2XL U17 ( .A(n31), .B(n32), .Y(n7) );
  INVX12 U18 ( .A(n7), .Y(Z[2]) );
  NOR2XL U19 ( .A(n33), .B(n34), .Y(n9) );
  INVX12 U20 ( .A(n9), .Y(Z[0]) );
  AOI22X1 U21 ( .A0(Y[11]), .A1(n3), .B0(IDRUout[11]), .B1(n4), .Y(n11) );
  INVX12 U22 ( .A(n11), .Y(Z[11]) );
  AOI22X1 U23 ( .A0(Y[10]), .A1(n3), .B0(IDRUout[10]), .B1(n4), .Y(n13) );
  INVX12 U24 ( .A(n13), .Y(Z[10]) );
  AOI22X1 U25 ( .A0(Y[9]), .A1(n3), .B0(IDRUout[9]), .B1(n4), .Y(n15) );
  INVX12 U26 ( .A(n15), .Y(Z[9]) );
  AOI22X1 U27 ( .A0(Y[8]), .A1(n3), .B0(IDRUout[8]), .B1(n4), .Y(n17) );
  INVX12 U28 ( .A(n17), .Y(Z[8]) );
  AOI22X1 U29 ( .A0(Y[7]), .A1(n3), .B0(IDRUout[7]), .B1(n4), .Y(n19) );
  INVX12 U30 ( .A(n19), .Y(Z[7]) );
  AOI22X1 U31 ( .A0(Y[6]), .A1(n3), .B0(IDRUout[6]), .B1(n4), .Y(n21) );
  INVX12 U32 ( .A(n21), .Y(Z[6]) );
  AOI22X1 U33 ( .A0(Y[5]), .A1(n3), .B0(IDRUout[5]), .B1(n4), .Y(n23) );
  INVX12 U34 ( .A(n23), .Y(Z[5]) );
  AOI22X1 U35 ( .A0(Y[4]), .A1(n3), .B0(IDRUout[4]), .B1(n4), .Y(n25) );
  INVX12 U36 ( .A(n25), .Y(Z[4]) );
  AOI22X1 U37 ( .A0(Y[3]), .A1(n3), .B0(IDRUout[3]), .B1(n4), .Y(n27) );
  INVX12 U38 ( .A(n27), .Y(Z[3]) );
  AND2XL U39 ( .A(Y[1]), .B(n3), .Y(n29) );
  AND2XL U40 ( .A(IDRUout[1]), .B(n4), .Y(n30) );
  AND2XL U41 ( .A(Y[2]), .B(n3), .Y(n31) );
  AND2XL U42 ( .A(IDRUout[2]), .B(n4), .Y(n32) );
  AND2XL U43 ( .A(Y[0]), .B(n3), .Y(n33) );
  AND2XL U44 ( .A(IDRUout[0]), .B(n4), .Y(n34) );
  CLKINVX1 U45 ( .A(Mode), .Y(n4) );
  DRU_test_1 DRU ( .X(X), .Y(Y), .ToBDEG(ToBDEG), .ToACF(ToACF), .CLK(CLK), 
        .HALT(HALT), .DoDCT(DoDCT), .RESET_(RESET_), .test_se(test_se), 
        .test_si(n41), .test_so(n40) );
  acf_test_1 acf ( .RESET_(RESET_), .CLK(CLK), .ACFin(ToACF), .DoDCT(DoDCT), 
        .HALT(HALT), .ACFout0(ACC0), .ACFout1(ACC1), .ACFout2(ACC2), .ACFout3(
        ACC3), .test_se(test_se), .test_si(n39), .test_so(n38) );
  bdeg_test_1 bdeg ( .RESET_(RESET_), .CLK(CLK), .BDEGin(ToBDEG), .DoDCT(DoDCT), .HALT(HALT), .BDEGout0(ACC4), .BDEGout1(ACC5), .BDEGout2(ACC6), .BDEGout3(
        ACC7), .test_se(test_se), .test_si(n38), .test_so(n37) );
  IDRU8_test_1 IDRU8 ( .ACC0(ACC0), .ACC1(ACC1), .ACC2(ACC2), .ACC3(ACC3), 
        .ACC4(ACC4), .ACC5(ACC5), .ACC6(ACC6), .ACC7(ACC7), .CLK(CLK), .HALT(
        HALT), .RESET_(RESET_), .DoDCT(DoDCT), .Z(IDRUout), .ToMEM(ToMEM), 
        .test_se(test_se), .test_si(n40), .test_so(n39) );
  tposemem_test_1 tposemem ( .Datain(ToMEM), .CLK(CLK), .HALT(HALT), .RESET_(
        RESET_), .Y(Y), .BistMode(n3), .test_se(test_se), .test_si1(n37), 
        .test_si2(test_si), .test_so1(test_so), .test_so2(n41) );
endmodule


module CHIP(CLK,HALT,RESET_,DoDCT,X,Z,Mode,SCAN_IN,SCAN_OUT,SCAN_EN);
input CLK,HALT,RESET_,DoDCT;
input [11:0] X;
input Mode;
input SCAN_IN,SCAN_EN;
output SCAN_OUT;
output [11:0] Z; 

wire i_CLK,i_HALT,i_RESET_,i_DoDCT;
wire [11:0] i_X;
wire i_Mode;
wire [11:0] i_Z; 
wire i_SCAN_IN,i_SCAN_EN;
wire i_SCAN_OUT;
  
DCT DCT(.CLK(i_CLK),.HALT(i_HALT),.RESET_(i_RESET_),.DoDCT(i_DoDCT),.X(i_X),.Z(i_Z),.Mode(i_Mode),.test_si(i_SCAN_IN),.test_so(i_SCAN_OUT),.test_se(i_SCAN_EN));

PDIDGZ ipad_CLK   (.PAD(CLK), .C(i_CLK));
PDIDGZ ipad_HALT  (.PAD(HALT), .C(i_HALT));
PDIDGZ ipad_RESET_(.PAD(RESET_),.C(i_RESET_));
PDIDGZ ipad_DoDCT (.PAD(DoDCT), .C(i_DoDCT));
PDIDGZ ipad_Mode  (.PAD(Mode), .C(i_Mode));
PDIDGZ ipad_X0    (.PAD(X[0]), .C(i_X[0]));
PDIDGZ ipad_X1    (.PAD(X[1]), .C(i_X[1]));
PDIDGZ ipad_X2    (.PAD(X[2]), .C(i_X[2]));
PDIDGZ ipad_X3    (.PAD(X[3]), .C(i_X[3]));
PDIDGZ ipad_X4    (.PAD(X[4]), .C(i_X[4]));
PDIDGZ ipad_X5    (.PAD(X[5]), .C(i_X[5]));
PDIDGZ ipad_X6    (.PAD(X[6]), .C(i_X[6]));
PDIDGZ ipad_X7    (.PAD(X[7]), .C(i_X[7]));
PDIDGZ ipad_X8    (.PAD(X[8]), .C(i_X[8]));
PDIDGZ ipad_X9    (.PAD(X[9]), .C(i_X[9]));
PDIDGZ ipad_X10   (.PAD(X[10]), .C(i_X[10]));
PDIDGZ ipad_X11   (.PAD(X[11]), .C(i_X[11]));
PDIDGZ ipad_SCAN_IN   (.PAD(SCAN_IN), .C(i_SCAN_IN));
PDIDGZ ipad_SCAN_EN   (.PAD(SCAN_EN), .C(i_SCAN_EN));

PDO12CDG opad_SCAN_OUT  (.I(i_SCAN_OUT), .PAD(SCAN_OUT));
PDO12CDG opad_Z0  (.I(i_Z[0]), .PAD(Z[0]));
PDO12CDG opad_Z1  (.I(i_Z[1]), .PAD(Z[1]));
PDO12CDG opad_Z2  (.I(i_Z[2]), .PAD(Z[2]));
PDO12CDG opad_Z3  (.I(i_Z[3]), .PAD(Z[3]));
PDO12CDG opad_Z4  (.I(i_Z[4]), .PAD(Z[4]));
PDO12CDG opad_Z5  (.I(i_Z[5]), .PAD(Z[5]));
PDO12CDG opad_Z6  (.I(i_Z[6]), .PAD(Z[6]));
PDO12CDG opad_Z7  (.I(i_Z[7]), .PAD(Z[7]));
PDO12CDG opad_Z8  (.I(i_Z[8]), .PAD(Z[8]));
PDO12CDG opad_Z9  (.I(i_Z[9]), .PAD(Z[9]));
PDO12CDG opad_Z10 (.I(i_Z[10]), .PAD(Z[10]));
PDO12CDG opad_Z11 (.I(i_Z[11]), .PAD(Z[11]));
  
endmodule                                                             
