module POINT2 (
  input clk,
  input rst,
  input signed [63:0] a_i,
  input signed [63:0] b_i,
  output reg signed [31:0] a_o,
  output reg signed [31:0] b_o
  );
  parameter signed [31:0] W0_R =  32'h00010000;      //The real part of the reference table about COS(x)+i*SIN(x) value , 0: 001
  parameter signed [31:0] W0_I =  32'h00000000;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 0: 000
  reg signed [63:0] temp_a_r, temp_a_i, temp_b_r, temp_b_i;
  reg signed [31:0] a_i_r, a_i_i, b_i_r, b_i_i, c_i_r, c_i_i, d_i_r, d_i_i;
  reg signed [63:0] temp_real_1, temp_imaginary_1;
  reg signed [63:0] temp_a_o, temp_b_o;
  reg signed [63:0] a_o_d1, b_o_d1;
  reg signed [63:0] next_a_o_d1, next_b_o_d1;

  always @(*)begin
    a_i_r = a_i[63:32];    a_i_i = a_i[31:0];
    b_i_r = b_i[63:32];    b_i_i = b_i[31:0];

    temp_a_r = (a_i_r - b_i_r)*W0_R;
    temp_a_i = (b_i_i - a_i_i)*W0_I;
    temp_b_r = (a_i_r - b_i_r)*W0_I;
    temp_b_i = (a_i_i - b_i_i)*W0_R;
    temp_real_1 = temp_a_r + temp_a_i; //64 bit
    temp_imaginary_1 = temp_b_r + temp_b_i; //64 bit
    temp_a_o = {{a_i_r + b_i_r},{a_i_i + b_i_i}};
    temp_b_o = {{(temp_real_1[63]==1)? {temp_real_1[47:16]+1}:{temp_real_1[47:16]}},{(temp_imaginary_1[63]==1)? {temp_imaginary_1[47:16]+1}:temp_imaginary_1[47:16]}};

    next_a_o_d1 = {temp_a_o[55:40], temp_a_o[23:8]};
    next_b_o_d1 = {temp_b_o[55:40], temp_b_o[23:8]};

    a_o = a_o_d1;
    b_o = b_o_d1;

  end

  always @(posedge clk or posedge rst)begin
    if(rst)begin
      a_o_d1 <= 0;
      b_o_d1 <= 0;
    end else begin
      a_o_d1 <= next_a_o_d1;
      b_o_d1 <= next_b_o_d1;
    end
  end
endmodule

module POINT4 (
  input clk,
  input rst,
  input signed [63:0] a_i,
  input signed [63:0] b_i,
  input signed [63:0] c_i,
  input signed [63:0] d_i,
  output reg signed [31:0] a_o,
  output reg signed [31:0] b_o,
  output reg signed [31:0] c_o,
  output reg signed [31:0] d_o
  );
  parameter signed [31:0] W0_R =  32'h00010000  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 0: 001
  parameter signed [31:0] W1_R =  32'h0000EC83  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 1: 9.238739e-001
  parameter signed [31:0] W2_R =  32'h0000B504  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 2: 7.070923e-001
  parameter signed [31:0] W3_R =  32'h000061F7  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 3: 3.826752e-001
  parameter signed [31:0] W4_R =  32'h00000000  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 4: 000
  parameter signed [31:0] W5_R =  32'hFFFF9E09  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 5: -3.826752e-001
  parameter signed [31:0] W6_R =  32'hFFFF4AFC  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
  parameter signed [31:0] W7_R =  32'hFFFF137D  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 7: -9.238739e-001
  parameter signed [31:0] W0_I =  32'h00000000 ;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 0: 000
  parameter signed [31:0] W1_I =  32'hFFFF9E09 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 1: -3.826752e-001
  parameter signed [31:0] W2_I =  32'hFFFF4AFC ;   //The imag part of the reference table about COS(x)+i*SIN(x) value , 2: -7.070923e-001
  parameter signed [31:0] W3_I =  32'hFFFF137D ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 3: -9.238739e-001
  parameter signed [31:0] W4_I =  32'hFFFF0000 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 4: -01
  parameter signed [31:0] W5_I =  32'hFFFF137D ;   //The imag part of the reference table about COS(x)+i*SIN(x) value , 5: -9.238739e-001
  parameter signed [31:0] W6_I =  32'hFFFF4AFC ;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
  parameter signed [31:0] W7_I =  32'hFFFF9E09 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 7: -3.826752e-001
  reg signed [63:0] temp_a_r, temp_a_i, temp_b_r, temp_b_i;
  reg signed [63:0] temp_c_r, temp_c_i, temp_d_r, temp_d_i;
  reg signed [31:0] a_i_r, a_i_i, b_i_r, b_i_i, c_i_r, c_i_i, d_i_r, d_i_i;
  reg signed [31:0] e_i_r, e_i_i, f_i_r, f_i_i, g_i_r, g_i_i, h_i_r, h_i_i;
  reg signed [63:0] temp_real_1, temp_imaginary_1;
  reg signed [63:0] temp_real_2, temp_imaginary_2;

  
  reg signed [63:0] point2_1_i1, point2_1_i2;
  reg signed [63:0] point2_2_i1, point2_2_i2;

  reg signed [63:0] point2_1_d1, point2_1_d2;
  reg signed [63:0] next_point2_1_d1, next_point2_1_d2;
  reg signed [63:0] point2_2_d1, point2_2_d2;
  reg signed [63:0] next_point2_2_d1, next_point2_2_d2;

  wire signed [31:0] point2_1_o1, point2_1_o2;
  wire signed [31:0] point2_2_o1, point2_2_o2;

  POINT2 point2_1(.a_i(point2_1_d1), .b_i(point2_1_d2), .a_o(point2_1_o1), .b_o(point2_1_o2), .clk(clk), .rst(rst));
  POINT2 point2_2(.a_i(point2_2_d1), .b_i(point2_2_d2), .a_o(point2_2_o1), .b_o(point2_2_o2), .clk(clk), .rst(rst));

  always @(*)begin
    a_i_r = a_i[63:32];    a_i_i = a_i[31:0];
    b_i_r = b_i[63:32];    b_i_i = b_i[31:0];
    c_i_r = c_i[63:32];    c_i_i = c_i[31:0];
    d_i_r = d_i[63:32];    d_i_i = d_i[31:0];

    temp_a_r = (a_i_r - c_i_r)*W0_R;
    temp_a_i = (c_i_i - a_i_i)*W0_I;
    temp_c_r = (a_i_r - c_i_r)*W0_I;
    temp_c_i = (a_i_i - c_i_i)*W0_R;
    temp_real_1 = temp_a_r + temp_a_i; //64 bit
    temp_imaginary_1 = temp_c_r + temp_c_i; //64 bit
    next_point2_1_d1 = {{a_i_r + c_i_r},{a_i_i + c_i_i}};
    next_point2_2_d1 = {{(temp_real_1[63]==1)? {temp_real_1[47:16]+1}:{temp_real_1[47:16]}},{(temp_imaginary_1[63]==1)? {temp_imaginary_1[47:16]+1}:temp_imaginary_1[47:16]}};

    temp_b_r = (b_i_r - d_i_r)*W4_R;
    temp_b_i = (d_i_i - b_i_i)*W4_I;
    temp_d_r = (b_i_r - d_i_r)*W4_I;
    temp_d_i = (b_i_i - d_i_i)*W4_R;
    temp_real_2 = temp_b_r + temp_b_i; //64 bit
    temp_imaginary_2 = temp_d_r + temp_d_i; //64 bit
    next_point2_1_d2 = {{b_i_r + d_i_r},{b_i_i + d_i_i}};
    next_point2_2_d2 = {{(temp_real_2[63]==1)? {temp_real_2[47:16]+1}:{temp_real_2[47:16]}},{(temp_imaginary_2[63]==1)? {temp_imaginary_2[47:16]+1}:temp_imaginary_2[47:16]}};

    a_o = point2_1_o1;
    b_o = point2_1_o2;
    c_o = point2_2_o1;
    d_o = point2_2_o2;
  end
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      point2_1_d1 <= 0;
      point2_1_d2 <= 0;
      point2_2_d1 <= 0;
      point2_2_d2 <= 0;
    end else begin
      point2_1_d1 <= next_point2_1_d1;
      point2_1_d2 <= next_point2_1_d2;
      point2_2_d1 <= next_point2_2_d1;
      point2_2_d2 <= next_point2_2_d2; 
    end
  end
endmodule

module POINT8 (
  input clk,
  input rst,
  input signed [63:0] a_i,
  input signed [63:0] b_i,
  input signed [63:0] c_i,
  input signed [63:0] d_i,
  input signed [63:0] e_i,
  input signed [63:0] f_i,
  input signed [63:0] g_i,
  input signed [63:0] h_i,
  output reg signed [31:0] a_o,
  output reg signed [31:0] b_o,
  output reg signed [31:0] c_o,
  output reg signed [31:0] d_o,
  output reg signed [31:0] e_o,
  output reg signed [31:0] f_o,
  output reg signed [31:0] g_o,
  output reg signed [31:0] h_o
  );
  parameter signed [31:0] W0_R =  32'h00010000  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 0: 001
  parameter signed [31:0] W1_R =  32'h0000EC83  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 1: 9.238739e-001
  parameter signed [31:0] W2_R =  32'h0000B504  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 2: 7.070923e-001
  parameter signed [31:0] W3_R =  32'h000061F7  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 3: 3.826752e-001
  parameter signed [31:0] W4_R =  32'h00000000  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 4: 000
  parameter signed [31:0] W5_R =  32'hFFFF9E09  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 5: -3.826752e-001
  parameter signed [31:0] W6_R =  32'hFFFF4AFC  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
  parameter signed [31:0] W7_R =  32'hFFFF137D  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 7: -9.238739e-001
  parameter signed [31:0] W0_I =  32'h00000000 ;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 0: 000
  parameter signed [31:0] W1_I =  32'hFFFF9E09 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 1: -3.826752e-001
  parameter signed [31:0] W2_I =  32'hFFFF4AFC ;   //The imag part of the reference table about COS(x)+i*SIN(x) value , 2: -7.070923e-001
  parameter signed [31:0] W3_I =  32'hFFFF137D ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 3: -9.238739e-001
  parameter signed [31:0] W4_I =  32'hFFFF0000 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 4: -01
  parameter signed [31:0] W5_I =  32'hFFFF137D ;   //The imag part of the reference table about COS(x)+i*SIN(x) value , 5: -9.238739e-001
  parameter signed [31:0] W6_I =  32'hFFFF4AFC ;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
  parameter signed [31:0] W7_I =  32'hFFFF9E09 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 7: -3.826752e-001
  reg signed [63:0] temp_a_r, temp_a_i, temp_b_r, temp_b_i;
  reg signed [63:0] temp_c_r, temp_c_i, temp_d_r, temp_d_i;
  reg signed [63:0] temp_e_r, temp_e_i, temp_f_r, temp_f_i;
  reg signed [63:0] temp_g_r, temp_g_i, temp_h_r, temp_h_i;
  reg signed [63:0] temp_real_1, temp_imaginary_1;
  reg signed [63:0] temp_real_2, temp_imaginary_2;
  reg signed [63:0] temp_real_3, temp_imaginary_3;
  reg signed [63:0] temp_real_4, temp_imaginary_4;

  reg signed [63:0] point4_1_i1, point4_1_i2, point4_1_i3, point4_1_i4;
  reg signed [63:0] point4_2_i1, point4_2_i2, point4_2_i3, point4_2_i4;

  reg signed [63:0] point4_1_d1, point4_1_d2, point4_1_d3, point4_1_d4;
  reg signed [63:0] next_point4_1_d1, next_point4_1_d2, next_point4_1_d3, next_point4_1_d4;
  reg signed [63:0] point4_2_d1, point4_2_d2, point4_2_d3, point4_2_d4;
  reg signed [63:0] next_point4_2_d1, next_point4_2_d2, next_point4_2_d3, next_point4_2_d4;

  wire signed [31:0] point4_1_o1, point4_1_o2, point4_1_o3, point4_1_o4;
  wire signed [31:0] point4_2_o1, point4_2_o2, point4_2_o3, point4_2_o4;
  reg signed [31:0] a_i_r, a_i_i, b_i_r, b_i_i, c_i_r, c_i_i, d_i_r, d_i_i;
  reg signed [31:0] e_i_r, e_i_i, f_i_r, f_i_i, g_i_r, g_i_i, h_i_r, h_i_i;

  POINT4 point4_1(.a_i(point4_1_d1), .b_i(point4_1_d2),.c_i(point4_1_d3), .d_i(point4_1_d4), .a_o(point4_1_o1), .b_o(point4_1_o2), .c_o(point4_1_o3), .d_o(point4_1_o4),
                  .clk(clk), .rst(rst));
  POINT4 point4_2(.a_i(point4_2_d1), .b_i(point4_2_d2),.c_i(point4_2_d3), .d_i(point4_2_d4), .a_o(point4_2_o1), .b_o(point4_2_o2), .c_o(point4_2_o3), .d_o(point4_2_o4),
                  .clk(clk), .rst(rst));

  always @(*)begin
    a_i_r = a_i[63:32];    a_i_i = a_i[31:0];
    b_i_r = b_i[63:32];    b_i_i = b_i[31:0];
    c_i_r = c_i[63:32];    c_i_i = c_i[31:0];
    d_i_r = d_i[63:32];    d_i_i = d_i[31:0];
    e_i_r = e_i[63:32];    e_i_i = e_i[31:0];
    f_i_r = f_i[63:32];    f_i_i = f_i[31:0];
    g_i_r = g_i[63:32];    g_i_i = g_i[31:0];
    h_i_r = h_i[63:32];    h_i_i = h_i[31:0];

    temp_a_r = (a_i_r - e_i_r)*W0_R;
    temp_a_i = (e_i_i - a_i_i)*W0_I;
    temp_e_r = (a_i_r - e_i_r)*W0_I;
    temp_e_i = (a_i_i - e_i_i)*W0_R;
    temp_real_1 = temp_a_r + temp_a_i; //64 bit
    temp_imaginary_1 = temp_e_r + temp_e_i; //64 bit
    next_point4_1_d1 = {{a_i_r + e_i_r},{a_i_i + e_i_i}};
    next_point4_2_d1 = {{(temp_real_1[63]==1)? {temp_real_1[47:16]+1}:{temp_real_1[47:16]}},{(temp_imaginary_1[63]==1)? {temp_imaginary_1[47:16]+1}:temp_imaginary_1[47:16]}};

    temp_b_r = (b_i_r - f_i_r)*W2_R;
    temp_b_i = (f_i_i - b_i_i)*W2_I;
    temp_f_r = (b_i_r - f_i_r)*W2_I;
    temp_f_i = (b_i_i - f_i_i)*W2_R;
    temp_real_2 = temp_b_r + temp_b_i; //64 bit
    temp_imaginary_2 = temp_f_r + temp_f_i; //64 bit
    next_point4_1_d2 = {{b_i_r + f_i_r},{b_i_i + f_i_i}};
    next_point4_2_d2 = {{(temp_real_2[63]==1)? {temp_real_2[47:16]+1}:{temp_real_2[47:16]}},{(temp_imaginary_2[63]==1)? {temp_imaginary_2[47:16]+1}:temp_imaginary_2[47:16]}};

    temp_c_r = (c_i_r - g_i_r)*W4_R;
    temp_c_i = (g_i_i - c_i_i)*W4_I;
    temp_g_r = (c_i_r - g_i_r)*W4_I;
    temp_g_i = (c_i_i - g_i_i)*W4_R;
    temp_real_3 = temp_c_r + temp_c_i; //64 bit
    temp_imaginary_3 = temp_g_r + temp_g_i; //64 bit
    next_point4_1_d3 = {{c_i_r + g_i_r},{c_i_i + g_i_i}};
    next_point4_2_d3 = {{(temp_real_3[63]==1)? {temp_real_3[47:16]+1}:{temp_real_3[47:16]}},{(temp_imaginary_3[63]==1)? {temp_imaginary_3[47:16]+1}:temp_imaginary_3[47:16]}};

    temp_d_r = (d_i_r - h_i_r)*W6_R;
    temp_d_i = (h_i_i - d_i_i)*W6_I;
    temp_h_r = (d_i_r - h_i_r)*W6_I;
    temp_h_i = (d_i_i - h_i_i)*W6_R;
    temp_real_4 = temp_d_r + temp_d_i; //64 bit
    temp_imaginary_4 = temp_h_r + temp_h_i; //64 bit
    next_point4_1_d4 = {{d_i_r + h_i_r},{d_i_i + h_i_i}};
    next_point4_2_d4 = {{(temp_real_4[63]==1)? {temp_real_4[47:16]+1}:{temp_real_4[47:16]}},{(temp_imaginary_4[63]==1)? {temp_imaginary_4[47:16]+1}:temp_imaginary_4[47:16]}};

    a_o = point4_1_o1;
    b_o = point4_1_o2;
    c_o = point4_1_o3;
    d_o = point4_1_o4;
    e_o = point4_2_o1;
    f_o = point4_2_o2;
    g_o = point4_2_o3;
    h_o = point4_2_o4;

  end

  always @(posedge clk or posedge rst)begin
    if(rst)begin
      point4_1_d1 <= 0;
      point4_1_d2 <= 0;
      point4_1_d3 <= 0;
      point4_1_d4 <= 0;
      point4_2_d1 <= 0;
      point4_2_d2 <= 0;
      point4_2_d3 <= 0;
      point4_2_d4 <= 0;
    end else begin
      point4_1_d1 <= next_point4_1_d1;
      point4_1_d2 <= next_point4_1_d2;
      point4_1_d3 <= next_point4_1_d3;
      point4_1_d4 <= next_point4_1_d4;
      point4_2_d1 <= next_point4_2_d1;
      point4_2_d2 <= next_point4_2_d2;
      point4_2_d3 <= next_point4_2_d3;
      point4_2_d4 <= next_point4_2_d4;
    end
  end

endmodule

module POINT16 (
  input clk,
  input rst,
  input signed [63:0] a_i,
  input signed [63:0] b_i,
  input signed [63:0] c_i,
  input signed [63:0] d_i,
  input signed [63:0] e_i,
  input signed [63:0] f_i,
  input signed [63:0] g_i,
  input signed [63:0] h_i,
  input signed [63:0] i_i,
  input signed [63:0] j_i,
  input signed [63:0] k_i,
  input signed [63:0] l_i,
  input signed [63:0] m_i,
  input signed [63:0] n_i,
  input signed [63:0] o_i,
  input signed [63:0] p_i,
  output reg signed [31:0] a_o, //32bit real, 32bit imaginary
  output reg signed [31:0] b_o, 
  output reg signed [31:0] c_o,
  output reg signed [31:0] d_o,
  output reg signed [31:0] e_o,
  output reg signed [31:0] f_o,
  output reg signed [31:0] g_o,
  output reg signed [31:0] h_o,
  output reg signed [31:0] i_o,
  output reg signed [31:0] j_o,
  output reg signed [31:0] k_o,
  output reg signed [31:0] l_o,
  output reg signed [31:0] m_o,
  output reg signed [31:0] n_o,
  output reg signed [31:0] o_o,
  output reg signed [31:0] p_o
  );
  parameter signed [31:0] W0_R =  32'h00010000  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 0: 001
  parameter signed [31:0] W1_R =  32'h0000EC83  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 1: 9.238739e-001
  parameter signed [31:0] W2_R =  32'h0000B504  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 2: 7.070923e-001
  parameter signed [31:0] W3_R =  32'h000061F7  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 3: 3.826752e-001
  parameter signed [31:0] W4_R =  32'h00000000  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 4: 000
  parameter signed [31:0] W5_R =  32'hFFFF9E09  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 5: -3.826752e-001
  parameter signed [31:0] W6_R =  32'hFFFF4AFC  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
  parameter signed [31:0] W7_R =  32'hFFFF137D  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 7: -9.238739e-001
  parameter signed [31:0] W0_I =  32'h00000000 ;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 0: 000
  parameter signed [31:0] W1_I =  32'hFFFF9E09 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 1: -3.826752e-001
  parameter signed [31:0] W2_I =  32'hFFFF4AFC ;   //The imag part of the reference table about COS(x)+i*SIN(x) value , 2: -7.070923e-001
  parameter signed [31:0] W3_I =  32'hFFFF137D ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 3: -9.238739e-001
  parameter signed [31:0] W4_I =  32'hFFFF0000 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 4: -01
  parameter signed [31:0] W5_I =  32'hFFFF137D ;   //The imag part of the reference table about COS(x)+i*SIN(x) value , 5: -9.238739e-001
  parameter signed [31:0] W6_I =  32'hFFFF4AFC ;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
  parameter signed [31:0] W7_I =  32'hFFFF9E09 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 7: -3.826752e-001
  reg signed [63:0] temp_a_r, temp_a_i, temp_b_r, temp_b_i;
  reg signed [63:0] temp_c_r, temp_c_i, temp_d_r, temp_d_i;
  reg signed [63:0] temp_e_r, temp_e_i, temp_f_r, temp_f_i;
  reg signed [63:0] temp_g_r, temp_g_i, temp_h_r, temp_h_i;
  reg signed [63:0] temp_i_r, temp_i_i, temp_j_r, temp_j_i;
  reg signed [63:0] temp_k_r, temp_k_i, temp_l_r, temp_l_i;
  reg signed [63:0] temp_m_r, temp_m_i, temp_n_r, temp_n_i;
  reg signed [63:0] temp_o_r, temp_o_i, temp_p_r, temp_p_i;
  reg signed [31:0] temp_ac, temp_bd;
  reg signed [63:0] temp_real_1, temp_imaginary_1;
  reg signed [63:0] temp_real_2, temp_imaginary_2;
  reg signed [63:0] temp_real_3, temp_imaginary_3;
  reg signed [63:0] temp_real_4, temp_imaginary_4;
  reg signed [63:0] temp_real_5, temp_imaginary_5;
  reg signed [63:0] temp_real_6, temp_imaginary_6;
  reg signed [63:0] temp_real_7, temp_imaginary_7;
  reg signed [63:0] temp_real_8, temp_imaginary_8;
  reg signed [31:0] b_i_r, b_i_i, c_i_r, c_i_i, d_i_r, d_i_i, e_i_r, e_i_i, f_i_r, f_i_i, g_i_r, g_i_i, h_i_r, h_i_i;
  reg signed [31:0] i_i_r, i_i_i, j_i_r, j_i_i, k_i_r, k_i_i, l_i_r, l_i_i, m_i_r, m_i_i, n_i_r, n_i_i, o_i_r, o_i_i, p_i_r, p_i_i;


  reg signed [63:0] point8_1_i1, point8_1_i2, point8_1_i3, point8_1_i4, point8_1_i5, point8_1_i6, point8_1_i7, point8_1_i8;
  reg signed [63:0] point8_2_i1, point8_2_i2, point8_2_i3, point8_2_i4, point8_2_i5, point8_2_i6, point8_2_i7, point8_2_i8;
  wire signed [31:0] point8_1_o1, point8_1_o2, point8_1_o3, point8_1_o4, point8_1_o5, point8_1_o6, point8_1_o7, point8_1_o8;
  wire signed [31:0] point8_2_o1, point8_2_o2, point8_2_o3, point8_2_o4, point8_2_o5, point8_2_o6, point8_2_o7, point8_2_o8;

  reg signed [63:0] point8_1_d1, point8_1_d2, point8_1_d3, point8_1_d4, point8_1_d5, point8_1_d6, point8_1_d7, point8_1_d8;
  reg signed [63:0] point8_2_d1, point8_2_d2, point8_2_d3, point8_2_d4, point8_2_d5, point8_2_d6, point8_2_d7, point8_2_d8;
  reg signed [63:0] next_point8_1_d1, next_point8_1_d2, next_point8_1_d3, next_point8_1_d4, next_point8_1_d5, next_point8_1_d6, next_point8_1_d7, next_point8_1_d8;
  reg signed [63:0] next_point8_2_d1, next_point8_2_d2, next_point8_2_d3, next_point8_2_d4, next_point8_2_d5, next_point8_2_d6, next_point8_2_d7, next_point8_2_d8;

  

  POINT8 point8_1(.a_i(point8_1_d1), .b_i(point8_1_d2), .c_i(point8_1_d3), .d_i(point8_1_d4), .e_i(point8_1_d5), .f_i(point8_1_d6), .g_i(point8_1_d7), .h_i(point8_1_d8),
                  .a_o(point8_1_o1), .b_o(point8_1_o2), .c_o(point8_1_o3), .d_o(point8_1_o4), .e_o(point8_1_o5), .f_o(point8_1_o6), .g_o(point8_1_o7), .h_o(point8_1_o8),
                  .clk(clk), .rst(rst) );
  POINT8 point8_2(.a_i(point8_2_d1), .b_i(point8_2_d2), .c_i(point8_2_d3), .d_i(point8_2_d4), .e_i(point8_2_d5), .f_i(point8_2_d6), .g_i(point8_2_d7), .h_i(point8_2_d8), 
                  .a_o(point8_2_o1), .b_o(point8_2_o2), .c_o(point8_2_o3), .d_o(point8_2_o4), .e_o(point8_2_o5), .f_o(point8_2_o6), .g_o(point8_2_o7), .h_o(point8_2_o8),
                  .clk(clk), .rst(rst) );

  always @(*)begin
    // $display("W0_R", "%h", W0_R);
    // W0_R: 16 bit + 16 bit floating point, total 32bit 
    temp_a_r = ({{32{a_i[63]}},a_i[63:32]} - {{32{i_i[63]}},i_i[63:32]})*{{32{W0_R[31]}},W0_R};  //32bit * 32bit = 64 bit
    temp_a_i = ({{32{i_i[31]}},i_i[31:0]} - {{32{a_i[31]}},a_i[31:0]})*{{32{W0_I[31]}}, W0_I};
    temp_i_r = (a_i[63:32] - i_i[63:32])*W0_I;
    temp_i_i = (a_i[31:0] - i_i[31:0])*W0_R;
    temp_ac = a_i[63:32] + i_i[63:32]; //32 bit real
    temp_bd = a_i[31:0] + i_i[31:0]; //32 bit imaginary
    temp_real_1 = temp_a_r + temp_a_i; //64 bit
    temp_imaginary_1 = temp_i_r + temp_i_i; //64 bit
    next_point8_1_d1 = {{temp_ac}, {temp_bd}};
    next_point8_2_d1 = {{(temp_real_1[63]==1)? {temp_real_1[47:16]+1}:{temp_real_1[47:16]}},{(temp_imaginary_1[63]==1)? {temp_imaginary_1[47:16]+1}:temp_imaginary_1[47:16]}};


    b_i_r = b_i[63:32];    b_i_i = b_i[31:0];    j_i_r = j_i[63:32];    j_i_i = j_i[31:0];
    temp_b_r = ($signed(b_i_r) - $signed(j_i_r))*$signed(W1_R);
    temp_b_i = (j_i_i - b_i_i)*W1_I;
    temp_j_r = ($signed(b_i_r) - $signed(j_i_r))*$signed(W1_I);
    temp_j_i = (b_i_i - j_i_i)*W1_R;
    temp_real_2 = temp_b_r + temp_b_i; //64 bit
    temp_imaginary_2 = temp_j_r + temp_j_i; //64 bit
    next_point8_1_d2 = {{b_i[63:32] + j_i[63:32]},{b_i[31:0] + j_i[31:0]}};
    next_point8_2_d2 = {{(temp_real_2[63]==1)? {temp_real_2[47:16]+1}:{temp_real_2[47:16]}},{(temp_imaginary_2[63]==1)? {temp_imaginary_2[47:16]+1}:temp_imaginary_2[47:16]}};

    c_i_r = c_i[63:32];  c_i_i = c_i[31:0];  k_i_r = k_i[63:32]; k_i_i = k_i[31:0];
    temp_c_r = (c_i_r - k_i_r)*W2_R;
    temp_c_i = (k_i_i - c_i_i)*W2_I;
    temp_k_r = (c_i_r - k_i_r)*W2_I;
    temp_k_i = (c_i_i - k_i_i)*W2_R;
    temp_real_3 = temp_c_r + temp_c_i; //64 bit
    temp_imaginary_3 = temp_k_r + temp_k_i; //64 bit
    next_point8_1_d3 = {{c_i_r + k_i_r},{c_i_i + k_i_i}};
    next_point8_2_d3 = {{(temp_real_3[63]==1)? {temp_real_3[47:16]+1}:{temp_real_3[47:16]}},{(temp_imaginary_3[47]==1)? {temp_imaginary_3[47:16]+1}:temp_imaginary_3[47:16]}};

    d_i_r = d_i[63:32];  d_i_i = d_i[31:0]; l_i_r = l_i[63:32]; l_i_i = l_i[31:0];
    temp_d_r = (d_i_r - l_i_r)*W3_R;
    temp_d_i = (l_i_i - d_i_i)*W3_I;
    temp_l_r = (d_i_r - l_i_r)*W3_I;
    temp_l_i = (d_i_i - l_i_i)*W3_R;
    temp_real_4 = temp_d_r + temp_d_i; //64 bit
    temp_imaginary_4 = temp_l_r + temp_l_i; //64 bit
    next_point8_1_d4 = {{d_i_r + l_i_r},{d_i_i + l_i_i}};
    next_point8_2_d4 = {{(temp_real_4[63]==1)? {temp_real_4[47:16]+1}:{temp_real_4[47:16]}},{(temp_imaginary_4[63]==1)? {temp_imaginary_4[47:16]+1}:temp_imaginary_4[47:16]}};

    e_i_r = e_i[63:32];  e_i_i = e_i[31:0]; m_i_r = m_i[63:32]; m_i_i = m_i[31:0];
    temp_e_r = (e_i_r - m_i_r)*W4_R;
    temp_e_i = (m_i_i - e_i_i)*W4_I;
    temp_m_r = (e_i_r - m_i_r)*W4_I;
    temp_m_i = (e_i_i - m_i_i)*W4_R;
    temp_real_5 = temp_e_r + temp_e_i; //64 bit
    temp_imaginary_5 = temp_m_r + temp_m_i; //64 bit
    next_point8_1_d5 = {{e_i_r + m_i_r},{e_i_i + m_i_i}};
    next_point8_2_d5 = {{(temp_real_5[63]==1)? {temp_real_5[47:16]+1}:{temp_real_5[47:16]}},{(temp_imaginary_5[63]==1)? {temp_imaginary_5[47:16]+1}:temp_imaginary_5[47:16]}};

    f_i_r = f_i[63:32]; f_i_i = f_i[31:0]; n_i_r = n_i[63:32];  n_i_i = n_i[31:0];
    temp_f_r = (f_i_r - n_i_r)*W5_R;
    temp_f_i = (n_i_i - f_i_i)*W5_I;
    temp_n_r = (f_i_r - n_i_r)*W5_I;
    temp_n_i = (f_i_i - n_i_i)*W5_R;
    temp_real_6 = temp_f_r + temp_f_i; //64 bit
    temp_imaginary_6 = temp_n_r + temp_n_i; //64 bit
    next_point8_1_d6 = {{f_i_r + n_i_r},{f_i_i + n_i_i}};
    next_point8_2_d6 = {{(temp_real_6[63]==1)? {temp_real_6[47:16]+1}:{temp_real_6[47:16]}},{(temp_imaginary_6[63]==1)? {temp_imaginary_6[47:16]+1}:temp_imaginary_6[47:16]}};
  
    g_i_r = g_i[63:32]; g_i_i = g_i[31:0]; o_i_r = o_i[63:32]; o_i_i = o_i[31:0];
    temp_g_r = (g_i_r - o_i_r)*W6_R;
    temp_g_i = (o_i_i - g_i_i)*W6_I;
    temp_o_r = (g_i_r - o_i_r)*W6_I;
    temp_o_i = (g_i_i - o_i_i)*W6_R;
    temp_real_7 = temp_g_r + temp_g_i; //64 bit
    temp_imaginary_7 = temp_o_r + temp_o_i; //64 bit
    next_point8_1_d7 = {{g_i_r + o_i_r},{g_i_i + o_i_i}};
    next_point8_2_d7 = {{(temp_real_7[63]==1)? {temp_real_7[47:16]+1}:{temp_real_7[47:16]}},{(temp_imaginary_7[63]==1)? {temp_imaginary_7[47:16]+1}:temp_imaginary_7[47:16]}};

    h_i_r = h_i[63:32]; h_i_i = h_i[31:0]; p_i_r = p_i[63:32]; p_i_i = p_i[31:0];
    temp_h_r = (h_i_r - p_i_r)*W7_R;
    temp_h_i = (p_i_i - h_i_i)*W7_I;
    temp_p_r = (h_i_r - p_i_r)*W7_I;
    temp_p_i = (h_i_i - p_i_i)*W7_R;
    temp_real_8 = temp_h_r + temp_h_i; //64 bit
    temp_imaginary_8 = temp_p_r + temp_p_i; //64 bit
    next_point8_1_d8 = {{h_i_r + p_i_r},{h_i_i + p_i_i}};
    next_point8_2_d8 = {{(temp_real_8[63]==1)? {temp_real_8[47:16]+1}:{temp_real_8[47:16]}},{(temp_imaginary_8[63]==1)? {temp_imaginary_8[47:16]+1}:temp_imaginary_8[47:16]}};
  
    a_o = point8_1_o1;
    b_o = point8_1_o2;
    c_o = point8_1_o3;
    d_o = point8_1_o4;
    e_o = point8_1_o5;
    f_o = point8_1_o6;
    g_o = point8_1_o7;
    h_o = point8_1_o8;
    i_o = point8_2_o1;
    j_o = point8_2_o2;
    k_o = point8_2_o3;
    l_o = point8_2_o4;
    m_o = point8_2_o5;
    n_o = point8_2_o6;
    o_o = point8_2_o7;
    p_o = point8_2_o8;

  end

  always @(posedge clk or posedge rst)begin
    if(rst)begin
      point8_1_d1 <= 0;
      point8_1_d2 <= 0;
      point8_1_d3 <= 0;
      point8_1_d4 <= 0;
      point8_1_d5 <= 0;
      point8_1_d6 <= 0;
      point8_1_d7 <= 0;
      point8_1_d8 <= 0;
      point8_2_d1 <= 0;
      point8_2_d2 <= 0;
      point8_2_d3 <= 0;
      point8_2_d4 <= 0;
      point8_2_d5 <= 0;
      point8_2_d6 <= 0;
      point8_2_d7 <= 0;
      point8_2_d8 <= 0;
    end else begin
      point8_1_d1 <= next_point8_1_d1;
      point8_1_d2 <= next_point8_1_d2;
      point8_1_d3 <= next_point8_1_d3;
      point8_1_d4 <= next_point8_1_d4;
      point8_1_d5 <= next_point8_1_d5;
      point8_1_d6 <= next_point8_1_d6;
      point8_1_d7 <= next_point8_1_d7;
      point8_1_d8 <= next_point8_1_d8;
      point8_2_d1 <= next_point8_2_d1;
      point8_2_d2 <= next_point8_2_d2;
      point8_2_d3 <= next_point8_2_d3;
      point8_2_d4 <= next_point8_2_d4;
      point8_2_d5 <= next_point8_2_d5;
      point8_2_d6 <= next_point8_2_d6;
      point8_2_d7 <= next_point8_2_d7;
      point8_2_d8 <= next_point8_2_d8;
    end
  end

endmodule

module ANA(
  input signed [31:0] a,
  input signed [31:0] b,
  input signed [31:0] c,
  input signed [31:0] d,
  input signed [31:0] e,
  input signed [31:0] f,
  input signed [31:0] g,
  input signed [31:0] h,
  input signed [31:0] i,
  input signed [31:0] j,
  input signed [31:0] k,
  input signed [31:0] l,
  input signed [31:0] m,
  input signed [31:0] n,
  input signed [31:0] o,
  input signed [31:0] p,
  output reg [3:0] freq
  );
  reg signed [15:0] temp_a_r, temp_a_i, temp_b_r, temp_b_i;
  reg signed [15:0] temp_c_r, temp_c_i, temp_d_r, temp_d_i;
  reg signed [15:0] temp_e_r, temp_e_i, temp_f_r, temp_f_i;
  reg signed [15:0] temp_g_r, temp_g_i, temp_h_r, temp_h_i;
  reg signed [15:0] temp_i_r, temp_i_i, temp_j_r, temp_j_i;
  reg signed [15:0] temp_k_r, temp_k_i, temp_l_r, temp_l_i;
  reg signed [15:0] temp_m_r, temp_m_i, temp_n_r, temp_n_i;
  reg signed [15:0] temp_o_r, temp_o_i, temp_p_r, temp_p_i;
  reg signed [32:0] temp_aa, temp_bb, temp_cc, temp_dd, temp_ee, temp_ff, temp_gg, temp_hh;
  reg signed [32:0] temp_ii, temp_jj, temp_kk, temp_ll, temp_mm, temp_nn, temp_oo, temp_pp;
  reg [3:0] temp_freq_ab, temp_freq_cd, temp_freq_ef, temp_freq_gh;
  reg [3:0] temp_freq_ij, temp_freq_kl, temp_freq_mn, temp_freq_op;
  reg [3:0] temp_freq_abcd, temp_freq_efgh, temp_freq_ijkl, temp_freq_mnop;
  reg [3:0] temp_freq_abcdefgh, temp_freq_ijklmnop;

  always @(*)begin
    temp_a_r = a[31:16]; temp_a_i = a[15:0];
    temp_b_r = b[31:16]; temp_b_i = b[15:0];
    temp_c_r = c[31:16]; temp_c_i = c[15:0];
    temp_d_r = d[31:16]; temp_d_i = d[15:0];
    temp_e_r = e[31:16]; temp_e_i = e[15:0];
    temp_f_r = f[31:16]; temp_f_i = f[15:0];
    temp_g_r = g[31:16]; temp_g_i = g[15:0];
    temp_h_r = h[31:16]; temp_h_i = h[15:0];
    temp_i_r = i[31:16]; temp_i_i = i[15:0];
    temp_j_r = j[31:16]; temp_j_i = j[15:0];
    temp_k_r = k[31:16]; temp_k_i = k[15:0];
    temp_l_r = l[31:16]; temp_l_i = l[15:0];
    temp_m_r = m[31:16]; temp_m_i = m[15:0];
    temp_n_r = n[31:16]; temp_n_i = n[15:0];
    temp_o_r = o[31:16]; temp_o_i = o[15:0];
    temp_p_r = p[31:16]; temp_p_i = p[15:0];
    temp_aa = temp_a_r*temp_a_r + temp_a_i*temp_a_i;
    temp_bb = temp_b_r*temp_b_r + temp_b_i*temp_b_i;
    temp_cc = temp_c_r*temp_c_r + temp_c_i*temp_c_i;
    temp_dd = temp_d_r*temp_d_r + temp_d_i*temp_d_i;
    temp_ee = temp_e_r*temp_e_r + temp_e_i*temp_e_i;
    temp_ff = temp_f_r*temp_f_r + temp_f_i*temp_f_i;
    temp_gg = temp_g_r*temp_g_r + temp_g_i*temp_g_i;
    temp_hh = temp_h_r*temp_h_r + temp_h_i*temp_h_i;
    temp_ii = temp_i_r*temp_i_r + temp_i_i*temp_i_i;
    temp_jj = temp_j_r*temp_j_r + temp_j_i*temp_j_i;
    temp_kk = temp_k_r*temp_k_r + temp_k_i*temp_k_i;
    temp_ll = temp_l_r*temp_l_r + temp_l_i*temp_l_i;
    temp_mm = temp_m_r*temp_m_r + temp_m_i*temp_m_i;
    temp_nn = temp_n_r*temp_n_r + temp_n_i*temp_n_i;
    temp_oo = temp_o_r*temp_o_r + temp_o_i*temp_o_i;
    temp_pp = temp_p_r*temp_p_r + temp_p_i*temp_p_i;

    temp_freq_ab = (temp_aa > temp_bb)? 4'b0000:4'b0001;
    temp_freq_cd = (temp_cc > temp_dd)? 4'b0010:4'b0011;
    temp_freq_ef = (temp_ee > temp_ff)? 4'b0100:4'b0101;
    temp_freq_gh = (temp_gg > temp_hh)? 4'b0110:4'b0111;
    temp_freq_ij = (temp_ii > temp_jj)? 4'b1000:4'b1001;
    temp_freq_kl = (temp_kk > temp_ll)? 4'b1010:4'b1011;
    temp_freq_mn = (temp_mm > temp_nn)? 4'b1100:4'b1101;
    temp_freq_op = (temp_oo > temp_pp)? 4'b1110:4'b1111;
    temp_freq_abcd = (temp_freq_ab > temp_freq_cd)? temp_freq_ab:temp_freq_cd;
    temp_freq_efgh = (temp_freq_ef > temp_freq_gh)? temp_freq_ef:temp_freq_gh;
    temp_freq_ijkl = (temp_freq_ij > temp_freq_kl)? temp_freq_ij:temp_freq_kl;
    temp_freq_mnop = (temp_freq_mn > temp_freq_op)? temp_freq_mn:temp_freq_op;
    temp_freq_abcdefgh = (temp_freq_abcd > temp_freq_efgh)? temp_freq_abcd:temp_freq_efgh;
    temp_freq_ijklmnop = (temp_freq_ijkl > temp_freq_mnop)? temp_freq_ijkl:temp_freq_mnop;
    freq = (temp_freq_abcdefgh > temp_freq_ijklmnop)? temp_freq_abcdefgh:temp_freq_ijklmnop;
    
  end

endmodule

module  FAS (data_valid, data, clk, rst, fir_d, fir_valid, fft_valid, done, freq,
 fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8,
 fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0);
input clk, rst;
input data_valid;
input [15:0] data; 

output fir_valid, fft_valid;
output [15:0] fir_d;
output [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
output [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;
output done;
output [3:0] freq;
`include "./dat/FIR_coefficient.dat"
  parameter signed [31:0] W0_R =  32'h00010000  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 0: 001
  parameter signed [31:0] W1_R =  32'h0000EC83  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 1: 9.238739e-001
  parameter signed [31:0] W2_R =  32'h0000B504  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 2: 7.070923e-001
  parameter signed [31:0] W3_R =  32'h000061F7  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 3: 3.826752e-001
  parameter signed [31:0] W4_R =  32'h00000000  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 4: 000
  parameter signed [31:0] W5_R =  32'hFFFF9E09  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 5: -3.826752e-001
  parameter signed [31:0] W6_R =  32'hFFFF4AFC  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
  parameter signed [31:0] W7_R =  32'hFFFF137D  ;    //The real part of the reference table about COS(x)+i*SIN(x) value , 7: -9.238739e-001
  parameter signed [31:0] W0_I =  32'h00000000 ;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 0: 000
  parameter signed [31:0] W1_I =  32'hFFFF9E09 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 1: -3.826752e-001
  parameter signed [31:0] W2_I =  32'hFFFF4AFC ;   //The imag part of the reference table about COS(x)+i*SIN(x) value , 2: -7.070923e-001
  parameter signed [31:0] W3_I =  32'hFFFF137D ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 3: -9.238739e-001
  parameter signed [31:0] W4_I =  32'hFFFF0000 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 4: -01
  parameter signed [31:0] W5_I =  32'hFFFF137D ;   //The imag part of the reference table about COS(x)+i*SIN(x) value , 5: -9.238739e-001
  parameter signed [31:0] W6_I =  32'hFFFF4AFC ;     //The imag part of the reference table about COS(x)+i*SIN(x) value , 6: -7.070923e-001
  parameter signed [31:0] W7_I =  32'hFFFF9E09 ;    //The imag part of the reference table about COS(x)+i*SIN(x) value , 7: -3.826752e-001

parameter IN = 3'd0;
parameter COMPUTE = 3'd1;

reg [2:0] state, next_state;
reg done, next_done;
reg fir_valid, next_fir_valid;
reg fft_valid_d1, next_fft_valid_d1;
reg fft_valid_d2, next_fft_valid_d2;
reg fft_valid_d3, next_fft_valid_d3;
reg fft_valid_d4, next_fft_valid_d4;
reg fft_valid_d5, next_fft_valid_d5;
reg signed [15:0] data_arr [31:0];
reg signed [15:0] next_data_arr [31:0];
reg [5:0] data_arr_idx, next_data_arr_idx; 
reg [5:0] block16, block32;
// reg signed [15:0] fir_data, next_fir_data;
reg signed [63:0] fir_arr [0:15];
reg signed [63:0] next_fir_arr [0:15];
reg signed [35:0] temp_arr [31:0];
reg [4:0] fir_arr_idx, next_fir_arr_idx;
reg [65:0] temp;
reg [65:0] next_temp;

assign fft_valid = fft_valid_d5;
integer i, j, k;

POINT16 point16(.a_i(fir_arr[0]), .b_i(fir_arr[1]), .c_i(fir_arr[2]), .d_i(fir_arr[3]), .e_i(fir_arr[4]), .f_i(fir_arr[5]), .g_i(fir_arr[6]), .h_i(fir_arr[7]),
                .i_i(fir_arr[8]), .j_i(fir_arr[9]), .k_i(fir_arr[10]), .l_i(fir_arr[11]), .m_i(fir_arr[12]), .n_i(fir_arr[13]), .o_i(fir_arr[14]), .p_i(fir_arr[15]), 
                .a_o(fft_d0), .b_o(fft_d8), .c_o(fft_d4), .d_o(fft_d12), .e_o(fft_d2), .f_o(fft_d10), .g_o(fft_d6), .h_o(fft_d14), 
                .i_o(fft_d1), .j_o(fft_d9), .k_o(fft_d5), .l_o(fft_d13), .m_o(fft_d3), .n_o(fft_d11), .o_o(fft_d7), .p_o(fft_d15), .clk(clk), .rst(rst) );

ANA analysis(.a(fft_d0), .b(fft_d1), .c(fft_d2), .d(fft_d3), .e(fft_d4), .f(fft_d5), .g(fft_d6), .h(fft_d7),
             .i(fft_d8), .j(fft_d9), .k(fft_d10), .l(fft_d11), .m(fft_d12), .n(fft_d13), .o(fft_d14), .p(fft_d15),
             .freq(freq));

assign fir_d = (temp[65]==1)?  {{temp[65], temp[30:16]} + 16'd1}: {temp[65], temp[30:16]};

always @( * )begin
  next_fft_valid_d2 = fft_valid_d1;
  next_fft_valid_d3 = fft_valid_d2;
  next_fft_valid_d4 = fft_valid_d3;
  next_fft_valid_d5 = fft_valid_d4;
end

always@( * )begin
  next_state = state;
  next_data_arr_idx = data_arr_idx;
  next_fir_valid = fir_valid;
  next_fft_valid_d1 = fft_valid_d1;
  // next_fir_data = fir_data;
  for(i = 0; i <= 31; i = i + 1)begin
      next_data_arr[i] = data_arr[i];
  end
  next_fir_arr_idx = fir_arr_idx;
  next_done = done;
  for(i = 0; i < 16; i = i + 1)begin
   next_fir_arr[i] = fir_arr[i];
  end

  next_temp = temp;
  
  case(state)
   
    IN:begin
      if(data_valid == 1)begin
        next_data_arr[data_arr_idx] = data;
      end
      
      if(data_arr_idx == 0)begin
        next_state = COMPUTE;
        next_data_arr_idx = 0;
        block16 = block16 + 1;
      end
      else begin
        next_data_arr_idx = data_arr_idx - 1;
      end
    end

    COMPUTE:begin
      //compute 
      temp_arr[0] = FIR_C00*data_arr[31];
      temp_arr[1] = FIR_C01*data_arr[30];
      temp_arr[2] =  FIR_C02*data_arr[29];
      temp_arr[3] =  FIR_C03*data_arr[28];
      temp_arr[4] = FIR_C04*data_arr[27];
      temp_arr[5] = FIR_C05*data_arr[26];
      temp_arr[6] = FIR_C06*data_arr[25];
      temp_arr[7] = FIR_C07*data_arr[24];
      temp_arr[8] = FIR_C08*data_arr[23];
      temp_arr[9] = FIR_C09*data_arr[22];
      temp_arr[10] = FIR_C10*data_arr[21];
      temp_arr[11] = FIR_C11*data_arr[20];
      temp_arr[12] = FIR_C12*data_arr[19];
      temp_arr[13] = FIR_C13*data_arr[18];
      temp_arr[14] = FIR_C14*data_arr[17];
      temp_arr[15] = FIR_C15*data_arr[16];
      temp_arr[16] = FIR_C16*data_arr[15];
      temp_arr[17] = FIR_C17*data_arr[14];
      temp_arr[18] = FIR_C18*data_arr[13];
      temp_arr[19] = FIR_C19*data_arr[12];
      temp_arr[20] = FIR_C20*data_arr[11];
      temp_arr[21] = FIR_C21*data_arr[10];
      temp_arr[22] = FIR_C22*data_arr[9];
      temp_arr[23] = FIR_C23*data_arr[8];
      temp_arr[24] = FIR_C24*data_arr[7];
      temp_arr[25] = FIR_C25*data_arr[6];
      temp_arr[26] = FIR_C26*data_arr[5];
      temp_arr[27] = FIR_C27*data_arr[4];
      temp_arr[28] = FIR_C28*data_arr[3];
      temp_arr[29] = FIR_C29*data_arr[2];
      temp_arr[30] = FIR_C30*data_arr[1];
      temp_arr[31] = FIR_C31*data_arr[0];
      next_temp = ((({{30{temp_arr[0][35]}}, temp_arr[0]} + {{30{temp_arr[1][35]}}, temp_arr[1]}) + ({{30{temp_arr[2][35]}}, temp_arr[2]} + {{30{temp_arr[3][35]}}, temp_arr[3]})) + 
             (({{30{temp_arr[4][35]}}, temp_arr[4]} + {{30{temp_arr[5][35]}}, temp_arr[5]}) + ({{30{temp_arr[6][35]}}, temp_arr[6]} + {{30{temp_arr[7][35]}}, temp_arr[7]}))) + 
             ((({{30{temp_arr[8][35]}}, temp_arr[8]} + {{30{temp_arr[9][35]}}, temp_arr[9]}) + ({{30{temp_arr[10][35]}}, temp_arr[10]} + {{30{temp_arr[11][35]}}, temp_arr[11]})) + 
             (({{30{temp_arr[12][35]}}, temp_arr[12]} + {{30{temp_arr[13][35]}}, temp_arr[13]}) + ({{30{temp_arr[14][35]}}, temp_arr[14]} + {{30{temp_arr[15][35]}}, temp_arr[15]}))) +
             ((({{30{temp_arr[16][35]}}, temp_arr[16]} + {{30{temp_arr[17][35]}}, temp_arr[17]}) + ({{30{temp_arr[18][35]}}, temp_arr[18]} + {{30{temp_arr[19][35]}}, temp_arr[19]})) +
             (({{30{temp_arr[20][35]}}, temp_arr[20]} + {{30{temp_arr[21][35]}}, temp_arr[21]}) + ({{30{temp_arr[22][35]}}, temp_arr[22]} + {{30{temp_arr[23][35]}}, temp_arr[23]}))) +
             ((({{30{temp_arr[24][35]}}, temp_arr[24]} + {{30{temp_arr[25][35]}}, temp_arr[25]}) + ({{30{temp_arr[26][35]}}, temp_arr[26]} + {{30{temp_arr[27][35]}}, temp_arr[27]})) +
             (({{30{temp_arr[28][35]}}, temp_arr[28]} + {{30{temp_arr[29][35]}}, temp_arr[29]}) + ({{30{temp_arr[30][35]}}, temp_arr[30]} + {{30{temp_arr[31][35]}}, temp_arr[31]})));  

      // $display("temp: ", "%b", temp);
      // next_fir_data = (temp[65]==1)?  {{temp[65], temp[30:16]} + 16'd1}: {temp[65], temp[30:16]};
      if(fir_arr_idx==1) next_fir_valid = 1;
      
      //shift and read input data
      if(data_valid == 1)begin
        for(j = 1; j <= 31; j = j + 1)begin
          next_data_arr[j] = data_arr[j-1];
        end
        next_data_arr[0] = data;
      end
      
      //store in shift register
      if(fir_arr_idx == 0 || fir_arr_idx == 1) next_fir_arr_idx = fir_arr_idx + 1;
      else if(fir_arr_idx <= 17 && fir_arr_idx >= 2)begin
        next_fir_arr[fir_arr_idx-2] = (temp[65]==1)?  {{{{8'hff},{{temp[65], temp[30:16]} + 16'd1}},{8'h00}},{32'h00000000}} : {{{{8'h00},{temp[65], temp[30:16]}},{8'h00}}, {32'h00000000}};
        next_fir_arr_idx = fir_arr_idx + 1;
      end
      
      if(fir_arr_idx == 15)begin
        // next_fft_valid = 1;
      end
      if(fir_arr_idx == 17)begin
        next_fft_valid_d1 = 1;
        next_fir_arr_idx = 2;
        // next_state = FFT;
        // next_fft_valid = 0;
        next_done = 1;
      end
      else begin
        next_fft_valid_d1 = 0;
        next_done = 0;
      end

    end
    default: begin
      next_state = state;
      next_data_arr_idx = data_arr_idx;
      next_fir_valid = fir_valid;
      next_fft_valid_d1 = fft_valid_d1;
      next_fir_arr_idx = fir_arr_idx;
      for(i = 0; i <= 31; i = i + 1)begin
        next_data_arr[i] = data_arr[i];
      end
      next_done = done;
    end
  endcase
end



always@(posedge clk or posedge rst)begin
  if(rst)begin
    for(i = 0; i <= 31; i = i + 1)begin
      data_arr[i] <= 0;
    end
    data_arr_idx <= 31;
    state <= IN;
    fir_valid <= 0;
    fft_valid_d1 <= 0;
    fft_valid_d2 <= 0;
    fft_valid_d3 <= 0;
    fft_valid_d4 <= 0;
    fft_valid_d5 <= 0;
    fir_arr_idx <= 0;
    done <= 0;
    temp <= 0;

    for(i = 0; i < 16; i = i + 1)begin
      fir_arr[i] <= 0;
    end

  end
  else begin
    for(i = 0; i <= 31; i = i + 1)begin
      data_arr[i] <= next_data_arr[i];
    end
    state <= next_state;
    data_arr_idx <= next_data_arr_idx;
    fir_valid <= next_fir_valid;
    fft_valid_d1 <= next_fft_valid_d1;
    fft_valid_d2 <= next_fft_valid_d2;
    fft_valid_d3 <= next_fft_valid_d3;
    fft_valid_d4 <= next_fft_valid_d4; 
    fft_valid_d5 <= next_fft_valid_d5; 
    fir_arr_idx <= next_fir_arr_idx;
    done <= next_done;
    temp <= next_temp;
    for(i = 0; i < 16; i = i + 1)begin
      fir_arr[i] <= next_fir_arr[i];
    end

  end

end

endmodule
