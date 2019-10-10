module TIMEDECODE(clk, reset, T_WEN, T_CEN, CR_A, CR_Q, character, Time_Q, INCR, y_addr);

input clk;
input reset;
input T_WEN;
input T_CEN;
input INCR;
input [7:0] y_addr;
input  [23:0] Time_Q;
input  [12:0] CR_Q;
output [8:0]  CR_A;
output [23:0] character;

reg [10:0] time_counter, nxt_time_counter;
reg [3:0] digit_counter, nxt_digit_counter;

reg [8:0] CR_A, nxt_CR_A;
reg [3:0] Time_arr [0:7];
reg [3:0] nxt_Time_arr [0:7];

reg INCR_END, nxt_INCR_END;

wire OUT_ENABLE = T_WEN && !T_CEN;
wire READ = !T_WEN && !T_CEN;
wire COMPUTE = !T_WEN && T_CEN;
reg [7:0] hur, min, sec;
reg [7:0] nxt_hur, nxt_min, nxt_sec;

integer i, j;

assign character = (OUT_ENABLE)? {24{CR_Q[12-time_counter]}} : 24'hffffff;
 
//hour, min, second reg handling
always @ ( * )begin
  if(READ)begin
    nxt_hur = Time_Q[23:16];
    nxt_min = Time_Q[15:8];
    nxt_sec = Time_Q[7:0];
  end else if (INCR) begin
    if(sec == 8'd59) nxt_sec = 0;
    else nxt_sec = sec + 1;

    if(sec == 8'd59 && min == 8'd59) nxt_min = 0;
    else if(sec == 8'd59) nxt_min = min + 1;
    else nxt_min = min;

    if(sec == 8'd59 && min == 8'd59 && hur == 8'd23) nxt_hur = 0;
    else if(sec == 8'd59 && min == 8'd59) nxt_hur = hur + 1;
    else nxt_hur = hur; 
  end else begin
    nxt_hur = hur;
    nxt_min = min;
    nxt_sec = sec;
  end
end

//compute address, address increment handling
always @( * )begin
  for(i = 0; i < 8; i = i + 1)begin
    nxt_Time_arr[i] = Time_arr[i];
  end
  if(COMPUTE || INCR_END)begin
    nxt_Time_arr[2] = 10; 
    nxt_Time_arr[5] = 10; 

    case(hur) //synopsys parallel_case
      8'd0:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd0};
      8'd1:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd1};
      8'd2:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd2};
      8'd3:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd3};
      8'd4:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd4};
      8'd5:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd5};
      8'd6:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd6};
      8'd7:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd7};
      8'd8:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd8};
      8'd9:  {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd9};
      8'd10: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd0};
      8'd11: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd1};
      8'd12: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd2};
      8'd13: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd3};
      8'd14: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd4};
      8'd15: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd5};
      8'd16: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd6};
      8'd17: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd7};
      8'd18: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd8};
      8'd19: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd1, 4'd9};
      8'd20: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd2, 4'd0};
      8'd21: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd2, 4'd1};
      8'd22: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd2, 4'd2};
      8'd23: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd2, 4'd3};
      default: {nxt_Time_arr[0], nxt_Time_arr[1]} = {4'd0, 4'd0};
    endcase

    case(min) //synopsys parallel_case
      8'd0    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd0}; 
      8'd1    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd1}; 
      8'd2    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd2}; 
      8'd3    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd3}; 
      8'd4    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd4}; 
      8'd5    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd5}; 
      8'd6    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd6}; 
      8'd7    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd7}; 
      8'd8    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd8}; 
      8'd9    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd9}; 
     
      8'd10    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd0}; 
      8'd11    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd1}; 
      8'd12    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd2}; 
      8'd13    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd3}; 
      8'd14    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd4}; 
      8'd15    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd5}; 
      8'd16    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd6}; 
      8'd17    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd7}; 
      8'd18    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd8}; 
      8'd19    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd1, 4'd9}; 
     
      8'd20    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd0}; 
      8'd21    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd1}; 
      8'd22    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd2}; 
      8'd23    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd3}; 
      8'd24    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd4}; 
      8'd25    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd5}; 
      8'd26    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd6}; 
      8'd27    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd7}; 
      8'd28    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd8}; 
      8'd29    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd2, 4'd9}; 
     
      8'd30    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd0}; 
      8'd31    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd1}; 
      8'd32    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd2}; 
      8'd33    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd3}; 
      8'd34    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd4}; 
      8'd35    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd5}; 
      8'd36    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd6}; 
      8'd37    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd7}; 
      8'd38    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd8}; 
      8'd39    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd3, 4'd9}; 
     
      8'd40    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd0}; 
      8'd41    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd1}; 
      8'd42    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd2}; 
      8'd43    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd3}; 
      8'd44    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd4}; 
      8'd45    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd5}; 
      8'd46    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd6}; 
      8'd47    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd7}; 
      8'd48    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd8}; 
      8'd49    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd4, 4'd9}; 
     
      8'd50    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd0}; 
      8'd51    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd1}; 
      8'd52    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd2}; 
      8'd53    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd3}; 
      8'd54    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd4}; 
      8'd55    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd5}; 
      8'd56    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd6}; 
      8'd57    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd7}; 
      8'd58    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd8}; 
      8'd59    : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd5, 4'd9}; 
     
      default : {nxt_Time_arr[3], nxt_Time_arr[4]} = {4'd0, 4'd0}; 
    endcase   

    case(sec) //synopsys parallel_case
      8'd0    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd0}; 
      8'd1    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd1}; 
      8'd2    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd2}; 
      8'd3    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd3}; 
      8'd4    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd4}; 
      8'd5    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd5}; 
      8'd6    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd6}; 
      8'd7    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd7}; 
      8'd8    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd8}; 
      8'd9    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd9}; 
     
      8'd10    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd0}; 
      8'd11    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd1}; 
      8'd12    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd2}; 
      8'd13    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd3}; 
      8'd14    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd4}; 
      8'd15    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd5}; 
      8'd16    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd6}; 
      8'd17    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd7}; 
      8'd18    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd8}; 
      8'd19    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd1, 4'd9}; 
     
      8'd20    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd0}; 
      8'd21    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd1}; 
      8'd22    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd2}; 
      8'd23    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd3}; 
      8'd24    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd4}; 
      8'd25    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd5}; 
      8'd26    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd6}; 
      8'd27    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd7}; 
      8'd28    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd8}; 
      8'd29    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd2, 4'd9}; 
     
      8'd30    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd0}; 
      8'd31    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd1}; 
      8'd32    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd2}; 
      8'd33    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd3}; 
      8'd34    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd4}; 
      8'd35    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd5}; 
      8'd36    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd6}; 
      8'd37    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd7}; 
      8'd38    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd8}; 
      8'd39    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd3, 4'd9}; 
     
      8'd40    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd0}; 
      8'd41    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd1}; 
      8'd42    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd2}; 
      8'd43    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd3}; 
      8'd44    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd4}; 
      8'd45    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd5}; 
      8'd46    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd6}; 
      8'd47    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd7}; 
      8'd48    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd8}; 
      8'd49    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd4, 4'd9}; 
     
      8'd50    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd0}; 
      8'd51    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd1}; 
      8'd52    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd2}; 
      8'd53    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd3}; 
      8'd54    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd4}; 
      8'd55    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd5}; 
      8'd56    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd6}; 
      8'd57    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd7}; 
      8'd58    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd8}; 
      8'd59    : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd5, 4'd9}; 
     
      default : {nxt_Time_arr[6], nxt_Time_arr[7]} = {4'd0, 4'd0}; 
    endcase   

  end
  else begin
    for(i = 0; i < 8; i = i + 1)begin
      nxt_Time_arr[i] = Time_arr[i];
    end
  end
end

//output
always @ ( * )begin

  if(OUT_ENABLE)begin
    nxt_CR_A = 24 * Time_arr[digit_counter] + y_addr[4:0] - 8;
    nxt_time_counter = (time_counter == 12)? 0 : time_counter + 1;
    nxt_digit_counter = (time_counter == 12)? (digit_counter == 7)? 0 : digit_counter + 1 : digit_counter;    
  end
  else if(INCR_END && T_WEN && T_CEN)begin // may have problems
    nxt_CR_A = Time_arr[0];
    nxt_time_counter = time_counter;
    nxt_digit_counter = digit_counter;
  end
  else begin
    nxt_CR_A = CR_A;
    nxt_time_counter = time_counter;    
    nxt_digit_counter = digit_counter;
  end
end

//INCR_END
always @ ( * )begin
  if(INCR) nxt_INCR_END = 1;
  else if(INCR_END) nxt_INCR_END = 0;
  else nxt_INCR_END = INCR_END;
end

//negedge triggered registers
always @ (negedge clk or posedge reset)begin
  if(reset)begin
    CR_A <= 0;
  end else begin
    CR_A <= nxt_CR_A;
  end
end 

//posedge triggered registers
always @ (posedge clk or posedge reset)begin
  if(reset)begin
    for(i = 0; i < 8; i = i + 1)begin
      Time_arr[i] <= 0;
    end
    time_counter <= 0;
    digit_counter <= 0;
    INCR_END <= 0;
    hur <= 0;
    min <= 0;
    sec <= 0;
  end else begin
    for(i = 0; i < 8; i = i + 1)begin
      Time_arr[i] <= nxt_Time_arr[i];
    end
    time_counter <= nxt_time_counter;
    digit_counter <= nxt_digit_counter;
    INCR_END <= nxt_INCR_END;
    hur <= nxt_hur;
    min <= nxt_min;
    sec <= nxt_sec;
  end
end

endmodule