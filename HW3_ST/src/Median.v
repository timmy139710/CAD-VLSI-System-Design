module COMPARATOR(
    input clk,
    input reset,
    input [7:0] prev,
    input [7:0] next,
    input [7:0] INS,
    input [7:0] DEL,
    output [7:0] OUT
  );

reg [7:0] out_r, out_w;
assign OUT = out_r;

always@( * )begin
  out_w = out_r;
  if(INS > DEL)begin
    if (out_r < INS && out_r >= DEL)begin
      if (next < INS) begin
	    out_w = next;
	  end 
      else if (next >= INS) begin
	    out_w = INS;
	  end
    end

  end
  else if(INS < DEL)begin
    if(out_r > INS && out_r <= DEL)begin
      if(prev > INS)begin
        out_w = prev;
      end
      else if(prev <= INS)begin
        out_w = INS;
      end
    end
  end

end
always@(posedge clk or posedge reset)begin
  if(reset)begin
    out_r <= 8'd255;
  end
  else begin
    out_r <= out_w;
  end
end

endmodule

module MEDIAN49(
    input clk,
    input reset,
    input [7:0] INS,
    input [7:0] DEL,
    input SEN,
    output [7:0] MEDIAN
  );

wire [7:0] out00, out01, out02, out03, out04, out05, out06, out07, out08, out09, out10, out11, out12, out13, out14, out15,
           out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31, 
           out32, out33, out34, out35, out36, out37, out38, out39, out40, out41, out42, out43, out44, out45, out46, out47, 
           out48;

wire [7:0] w_ins, w_del, w_MIN, w_MAX;

assign MEDIAN = out24;
assign w_MIN = 8'd0;
assign w_MAX = 8'd255;
assign w_ins = (SEN)? 8'd255: INS;
assign w_del = (SEN)? 8'd255: DEL;

COMPARATOR C00 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(w_MIN), .next(out01), .OUT(out00));
COMPARATOR C01 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out00), .next(out02), .OUT(out01));
COMPARATOR C02 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out01), .next(out03), .OUT(out02));
COMPARATOR C03 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out02), .next(out04), .OUT(out03));
COMPARATOR C04 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out03), .next(out05), .OUT(out04));
COMPARATOR C05 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out04), .next(out06), .OUT(out05));
COMPARATOR C06 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out05), .next(out07), .OUT(out06));
COMPARATOR C07 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out06), .next(out08), .OUT(out07));
COMPARATOR C08 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out07), .next(out09), .OUT(out08));
COMPARATOR C09 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out08), .next(out10), .OUT(out09));
COMPARATOR C10 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out09), .next(out11), .OUT(out10));
COMPARATOR C11 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out10), .next(out12), .OUT(out11));
COMPARATOR C12 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out11), .next(out13), .OUT(out12));
COMPARATOR C13 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out12), .next(out14), .OUT(out13));
COMPARATOR C14 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out13), .next(out15), .OUT(out14));
COMPARATOR C15 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out14), .next(out16), .OUT(out15));
COMPARATOR C16 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out15), .next(out17), .OUT(out16));
COMPARATOR C17 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out16), .next(out18), .OUT(out17));
COMPARATOR C18 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out17), .next(out19), .OUT(out18));
COMPARATOR C19 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out18), .next(out20), .OUT(out19));
COMPARATOR C20 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out19), .next(out21), .OUT(out20));
COMPARATOR C21 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out20), .next(out22), .OUT(out21));
COMPARATOR C22 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out21), .next(out23), .OUT(out22));
COMPARATOR C23 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out22), .next(out24), .OUT(out23));
COMPARATOR C24 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out23), .next(out25), .OUT(out24));
COMPARATOR C25 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out24), .next(out26), .OUT(out25));
COMPARATOR C26 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out25), .next(out27), .OUT(out26));
COMPARATOR C27 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out26), .next(out28), .OUT(out27));
COMPARATOR C28 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out27), .next(out29), .OUT(out28));
COMPARATOR C29 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out28), .next(out30), .OUT(out29));
COMPARATOR C30 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out29), .next(out31), .OUT(out30));
COMPARATOR C31 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out30), .next(out32), .OUT(out31));
COMPARATOR C32 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out31), .next(out33), .OUT(out32));
COMPARATOR C33 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out32), .next(out34), .OUT(out33));
COMPARATOR C34 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out33), .next(out35), .OUT(out34));
COMPARATOR C35 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out34), .next(out36), .OUT(out35));
COMPARATOR C36 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out35), .next(out37), .OUT(out36));
COMPARATOR C37 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out36), .next(out38), .OUT(out37));
COMPARATOR C38 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out37), .next(out39), .OUT(out38));
COMPARATOR C39 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out38), .next(out40), .OUT(out39));
COMPARATOR C40 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out39), .next(out41), .OUT(out40));
COMPARATOR C41 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out40), .next(out42), .OUT(out41));
COMPARATOR C42 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out41), .next(out43), .OUT(out42));
COMPARATOR C43 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out42), .next(out44), .OUT(out43));
COMPARATOR C44 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out43), .next(out45), .OUT(out44));
COMPARATOR C45 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out44), .next(out46), .OUT(out45));
COMPARATOR C46 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out45), .next(out47), .OUT(out46));
COMPARATOR C47 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out46), .next(out48), .OUT(out47));
COMPARATOR C48 (.clk(clk), .reset(reset), .INS(w_ins), .DEL(w_del), .prev(out47), .next(w_MAX), .OUT(out48));

endmodule

