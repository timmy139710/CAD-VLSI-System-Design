// `include "./TIMEDECODE.v"
module DPA (clk,reset,IM_A, IM_Q,IM_D,IM_WEN,CR_A,CR_Q);
input clk;
input reset;
output reg [19:0] IM_A;
input [23:0] IM_Q;
output reg [23:0] IM_D;
output reg IM_WEN;
output [8:0] CR_A;
input [12:0] CR_Q;

//state parameter
    parameter IDLE = 5'd0;
    parameter INITIAL = 5'd1;
    parameter UPDATE_TIME = 5'd6;
    parameter TRAN_256_S = 5'd8;
    parameter TRAN_512_S = 5'd9;
    parameter TRAN_128_S = 5'd10; // 0
    parameter CHANGE_PIC = 5'd11; // a
    parameter SET_TRAN_INITIAL = 5'd12; // 12
    parameter WAIT_TRANSITION = 5'd13; // c
    parameter WAIT_CHANGE_PIC = 5'd17;
//oter parameter

reg [4:0] state, nxt_state;
reg [24:0] global_time, nxt_global_time;
reg [23:0] nxt_IM_D;
reg [19:0] nxt_IM_A;
reg        time_change, nxt_time_change;
reg [7 :0] x_addr, nxt_x_addr;
reg [7 :0] y_addr, nxt_y_addr;
reg [3 :0] pic_counter, nxt_pic_counter;
reg        transition, nxt_transition;
reg        nxt_IM_WEN;
reg [23:0] Frame_start_addr, nxt_Frame_start_addr;
reg [2 :0] Photo_num, nxt_Photo_num;
reg [23:0] p1_start_addr, nxt_p1_start_addr;
reg [9 :0] p1_size, nxt_p1_size;
reg        INCR, nxt_INCR;
reg [ 3:0] compute_counter, nxt_compute_counter;
reg [ 9:0] accu_R, accu_G, accu_B;


wire [ 9:0] accu_Rt, accu_Gt, accu_Bt;
wire [23:0] Frame_addr_w;
wire [23:0] pix_addr_w;
wire [23:0] p_LU_w, p_RU_w, p_LB_w, p_RB_w;
wire [23:0] p_128_LU, p_128_RU, p_128_LB, p_128_RB;
wire [ 6:0] p_128_u, p_128_d;
wire [23:0] character;
wire        time_region_256;
wire        time_region_256_1;
wire        odd_row;

assign p_128_LU = (p1_size[7] == 1'b0)? 0 : {p_128_u, x_addr[7:1]} + p1_start_addr ;
assign p_128_RU = (p1_size[7] == 1'b0)? 0 : {p_128_u, x_addr[7:1]} + ~&x_addr[7:1] + p1_start_addr;
assign p_128_LB = (p1_size[7] == 1'b0)? 0 : {p_128_d, x_addr[7:1]} +p1_start_addr;
assign p_128_RB = (p1_size[7] == 1'b0)? 0 : {p_128_d, x_addr[7:1]} + ~&x_addr[7:1] + p1_start_addr; 
assign p_128_u  = (p1_size[7] == 1'b0)? 0 : y_addr[7:1];
assign p_128_d  = (p1_size[7] == 1'b0)? 0 : y_addr[7:1] + ~&(y_addr[7:1]);
assign p_LU_w = (p1_size[9] == 1'b0)? 0 : {y_addr, 1'b0, x_addr, 1'b0} + p1_start_addr;
assign p_RU_w = (p1_size[9] == 1'b0)? 0 : {y_addr, 1'b0, x_addr, 1'b1} + p1_start_addr;
assign p_LB_w = (p1_size[9] == 1'b0)? 0 : {y_addr, 1'b1, x_addr, 1'b0} + p1_start_addr;
assign p_RB_w = (p1_size[9] == 1'b0)? 0 : {y_addr, 1'b1, x_addr, 1'b1} + p1_start_addr;
assign Frame_addr_w = {y_addr, x_addr} + Frame_start_addr;
assign pix_addr_w = (p1_size[8] == 1'b0)? 0 : {y_addr, x_addr} + p1_start_addr;
assign accu_Rt = (p1_size[8] == 1'b1)? 0 : accu_R + IM_Q[23:16];
assign accu_Gt = (p1_size[8] == 1'b1)? 0 : accu_G + IM_Q[15:8];
assign accu_Bt = (p1_size[8] == 1'b1)? 0 : accu_B + IM_Q[7:0];

assign time_region_256 = (x_addr >= 152 && y_addr >= 232)? 1 : 0;
assign time_region_256_1 = (x_addr >= 151 && y_addr >= 232)? 1 : 0;
assign odd_row = (y_addr%2 == 0)? 0 : 1;


// TIMEDECODE t(.clk(clk), .reset(reset), .CR_A(CR_A), .CR_Q(CR_Q), .character(character), .T_WEN(T_WEN), .Time_Q(Time), .T_CEN(T_CEN),
//              .INCR(INCR), .y_addr(y_addr));

integer i;

//accu_reg
always @ (posedge clk or posedge reset)begin
  if(reset)begin
    accu_R <= 10'd0;
    accu_G <= 10'd0;
    accu_B <= 10'd0;
  end
  else if(compute_counter == 4 || (state != TRAN_128_S && state != TRAN_512_S)) begin
    accu_R <= 10'd0;
    accu_G <= 10'd0;
    accu_B <= 10'd0;    
  end
  else begin
    accu_R <= accu_Rt;
    accu_B <= accu_Bt;
    accu_G <= accu_Gt;
  end
end


always @( * )begin
  nxt_state = state;
  nxt_x_addr = x_addr;
  nxt_y_addr = y_addr;
  nxt_Frame_start_addr = Frame_start_addr;
  nxt_Photo_num = Photo_num;
  nxt_IM_D = IM_D;
  nxt_IM_WEN = IM_WEN;
  nxt_IM_A = IM_A;
  nxt_time_change = time_change;
  nxt_INCR = INCR;
  nxt_compute_counter = compute_counter;
  nxt_transition = transition;
  nxt_pic_counter = pic_counter;
  nxt_p1_size = p1_size;
  nxt_p1_start_addr = p1_start_addr;

  case(state)
    IDLE:begin
      nxt_state = INITIAL;
      nxt_IM_A = 0;
      nxt_IM_WEN = 1;
      nxt_compute_counter = 0;
    end
    INITIAL:begin
      if(compute_counter == 0) begin
      end 
      else if(compute_counter == 1) begin
        nxt_Frame_start_addr = IM_Q;
      end 
      else if(compute_counter == 2) begin
        nxt_Photo_num = IM_Q;
      end 
      else if(compute_counter == 3) begin
        nxt_p1_start_addr = IM_Q;
        nxt_x_addr = 1;
      end
      else if(compute_counter == 4) begin 
        nxt_p1_size = IM_Q; 
      end
      else begin
      end 

      nxt_IM_A = (compute_counter == 5)? (p1_size[9] == 1'b0)? (p1_size[8] == 1'b0)? p_128_LU : pix_addr_w : p_LU_w : IM_A + 1;
      nxt_compute_counter = (compute_counter == 5)? 0 : compute_counter + 1;
      nxt_state = (compute_counter == 5)? (p1_size[9] == 1'b0)? (p1_size[8] == 1'b0)? TRAN_128_S : TRAN_256_S : TRAN_512_S: INITIAL;
      
    end
    CHANGE_PIC:begin
      nxt_IM_WEN = 1;
      nxt_transition = 0;

      if(compute_counter == 0)begin
        if(pic_counter > Photo_num) nxt_IM_A = 3;
        else nxt_IM_A = {pic_counter, 1'b1};
      end else if(compute_counter == 1)begin
        nxt_p1_start_addr = IM_Q;
        nxt_IM_A = IM_A + 1;
      end else if(compute_counter == 2)begin
        nxt_p1_size = IM_Q;
        nxt_IM_A = IM_A;
      end else begin
        nxt_IM_A = IM_A;
      end

      nxt_state = (compute_counter == 4)? SET_TRAN_INITIAL : CHANGE_PIC;
      nxt_compute_counter = (compute_counter==4)? 0 : compute_counter + 1;
    end
    SET_TRAN_INITIAL:begin
      nxt_x_addr = 1;
      nxt_y_addr = 0;
      nxt_state = WAIT_CHANGE_PIC;
      nxt_time_change = 0;
      nxt_INCR = 1;
    end
    TRAN_512_S:begin

      nxt_IM_WEN = (compute_counter == 3 && (~time_region_256 || ~transition || time_change) )? 0 : 1;

      if(compute_counter == 0)begin
        nxt_IM_A = p_RU_w;
      end 
      else if(compute_counter == 1)begin
        nxt_IM_A = p_LB_w;
      end
      else if(compute_counter == 2)begin
        nxt_IM_A = p_RB_w;
      end
      else if(compute_counter == 3)begin
        nxt_IM_D = (time_region_256)? character : {accu_Rt[9:2], accu_Gt[9:2], accu_Bt[9:2]};
        nxt_IM_A = Frame_addr_w;
      end
      else begin //compute counter == 4
        nxt_IM_A = p_LU_w;
      end
      
      if(compute_counter == 3)begin
        if(!time_region_256_1)begin
          nxt_x_addr = (x_addr != 255)? (x_addr != 254)? x_addr + 2 : 1 : 0;
          nxt_y_addr = (x_addr == 255 || x_addr == 254)? (y_addr == 255)? 0 : y_addr + 1 : y_addr;
        end         else if( ~transition || time_change )begin
          nxt_x_addr = (x_addr == 255)? ((odd_row && ~transition) || (~odd_row && transition))? 1 : 0 : x_addr + 1;
          nxt_y_addr = (x_addr == 255)? y_addr + 1: y_addr;        
        end else begin
          nxt_x_addr = (x_addr == 152)? (~odd_row)? 1 : 0 : x_addr + 1;
          nxt_y_addr = (x_addr == 152)? y_addr + 1: y_addr;
        end

      end

      nxt_compute_counter = (compute_counter == 4)? 0 : compute_counter + 1;

      if((x_addr==1 || x_addr==0) && y_addr == 0 && compute_counter == 4)begin
        nxt_state = (transition && ~time_change)? UPDATE_TIME : (time_change)? CHANGE_PIC : WAIT_TRANSITION;
      end
    end
    WAIT_CHANGE_PIC:begin
      nxt_INCR = 0;
      nxt_compute_counter = 0;
      if(p1_size[8] == 1'b1)begin
        nxt_IM_A = pix_addr_w;
      end
      else if(p1_size[9] == 1)begin
        nxt_IM_A = p_LU_w;
      end
      else if(p1_size[7] == 1'b1)begin
        nxt_IM_A = p_128_LU;
      end
      
      if(global_time == 2000000 || global_time == 4000000 || global_time == 6000000)begin
        if(p1_size[9] == 1) nxt_state = TRAN_512_S;
        else if(p1_size[7] == 1'b1) nxt_state = TRAN_128_S;
        else nxt_state = TRAN_256_S;
      end
    end
    TRAN_128_S:begin

      nxt_IM_WEN = (compute_counter == 3 && (~time_region_256 || ~transition || time_change) )? 0 : 1;

      if(compute_counter == 0)begin
        // nxt_IM_A = p_128_RU;
        if(transition)begin
          nxt_IM_A = (y_addr[0])? p_128_RU : p_128_LU;
        end else begin
          nxt_IM_A = (y_addr[0])? p_128_LB : p_128_RU;
        end
      end 
      else if(compute_counter == 1)begin
        // nxt_IM_A = p_128_LB;
        if(transition)begin
          nxt_IM_A = (y_addr[0])? p_128_LB : p_128_LU;
        end else begin
          nxt_IM_A = (y_addr[0])? p_128_LU : p_128_LU;
        end        
      end
      else if(compute_counter == 2)begin
        // nxt_IM_A = p_128_RB;
        if(transition)begin
          nxt_IM_A = (y_addr[0])? p_128_RB : p_128_LU;
        end else begin
          nxt_IM_A = (y_addr[0])? p_128_LB : p_128_RU;
        end
      end
      else if(compute_counter == 3)begin
        nxt_IM_A = Frame_addr_w;
        //output write
        if(time_region_256)begin
          nxt_IM_D = character;
        end
        else if (~transition) begin
          nxt_IM_D = {accu_Rt[9:2], accu_Gt[9:2], accu_Bt[9:2]};
        end else begin
          nxt_IM_D = {accu_Rt[9:2], accu_Gt[9:2], accu_Bt[9:2]};
        end
      end
      else begin //compute counter == 4
        // nxt_IM_A = p_128_LU;
        if(transition)begin
          nxt_IM_A = (y_addr[0])? p_128_LU : p_128_LU;
        end else begin
          nxt_IM_A = (y_addr[0])? p_128_LU : p_128_LU;
        end        
      end
      
      if(compute_counter == 3)begin
        if(!time_region_256_1)begin
          nxt_x_addr = (x_addr != 255)? (x_addr != 254)? x_addr + 2 : 1 : 0;
          nxt_y_addr = (x_addr == 255 || x_addr == 254)? (y_addr == 255)? 0 : y_addr + 1 : y_addr;
        end         else if( ~transition || time_change )begin
          nxt_x_addr = (x_addr == 255)? ((odd_row && ~transition) || (~odd_row && transition))? 1 : 0 : x_addr + 1;
          nxt_y_addr = (x_addr == 255)? y_addr + 1: y_addr;        
        end else begin
          nxt_x_addr = (x_addr == 152)? (~odd_row)? 1 : 0 : x_addr + 1;
          nxt_y_addr = (x_addr == 152)? y_addr + 1: y_addr;
        end

      end

      nxt_compute_counter = (compute_counter == 4)? 0 : compute_counter + 1;

      if((x_addr==1 || x_addr==0) && y_addr == 0 && compute_counter == 4)begin
        nxt_state = (transition && ~time_change)? UPDATE_TIME : (time_change)? CHANGE_PIC : WAIT_TRANSITION;
      end
    end
    TRAN_256_S:begin

      nxt_IM_WEN = (compute_counter == 3 && (~time_region_256 || ~transition || time_change) )? 0 : 1;

      if(compute_counter == 0)begin
        nxt_IM_A = IM_A;
      end 
      else if(compute_counter == 1)begin
        nxt_IM_A = IM_A;
      end
      else if(compute_counter == 2)begin
        nxt_IM_A = pix_addr_w;
      end
      else if(compute_counter == 3)begin
        nxt_IM_A = Frame_addr_w;
        nxt_IM_D = (time_region_256)? character : IM_Q;        
      end
      else begin //compute counter == 2, 3, 4
        nxt_IM_A = IM_A;
      end
      
      if(compute_counter == 3)begin
        if(!time_region_256_1)begin
          nxt_x_addr = (x_addr != 255)? (x_addr != 254)? x_addr + 2 : 1 : 0;
          nxt_y_addr = (x_addr == 255 || x_addr == 254)? (y_addr == 255)? 0 : y_addr + 1 : y_addr;
        end 
        // else begin
        //   nxt_x_addr = (x_addr == 255)? ((odd_row && ~transition) || (~odd_row && transition))? 1 : 0 : x_addr + 1;
        //   nxt_y_addr = (x_addr == 255)? y_addr + 1: y_addr;
        // end        
        else if( ~transition || time_change )begin
          nxt_x_addr = (x_addr == 255)? ((odd_row && ~transition) || (~odd_row && transition))? 1 : 0 : x_addr + 1;
          nxt_y_addr = (x_addr == 255)? y_addr + 1: y_addr;        
        end else begin
          nxt_x_addr = (x_addr == 152)? (~odd_row)? 1 : 0 : x_addr + 1;
          nxt_y_addr = (x_addr == 152)? y_addr + 1: y_addr;
        end
      end

      nxt_compute_counter = (compute_counter == 4)? 0 : compute_counter + 1;

      if((x_addr==1 || x_addr==0) && y_addr == 0 && compute_counter == 4)begin
        nxt_state = (transition && ~time_change)? UPDATE_TIME : (time_change)? CHANGE_PIC : WAIT_TRANSITION;
      end

    end
    WAIT_TRANSITION:begin
      nxt_IM_WEN = 1;
      nxt_IM_A = p1_start_addr; // new for 256
      nxt_compute_counter = 0;
      nxt_transition = 1;
      nxt_x_addr = 0;
      nxt_y_addr = 0;

      if(global_time == 200000 || global_time == 2200000 || global_time == 4200000 || global_time == 6200000)begin
        if(p1_size[8] == 1'b1)begin
          nxt_state = TRAN_256_S;
        end
        else if(p1_size[9] == 1)begin
          nxt_state = TRAN_512_S;
        end 
        else if(p1_size[7] == 1'b1)begin
          nxt_state = TRAN_128_S;
        end
      end
    end
    UPDATE_TIME:begin
      if(~time_change)begin
        nxt_x_addr = 152;
        nxt_y_addr = 232;
        nxt_time_change = 1;
        nxt_compute_counter = 0;
        nxt_IM_WEN = 1;
        nxt_INCR = 1;
      end else begin
        nxt_INCR = 0;
        if(p1_size[9] == 1'b1)begin
          nxt_IM_A = p_LU_w;
        end else if(p1_size[8] == 1'b1)begin
          nxt_IM_A = pix_addr_w;
        end else begin
          nxt_IM_A = p_128_LU;
        end
      end

      if(global_time == 1000000 || global_time == 3000000 || global_time == 5000000 || global_time == 7000000)begin
        if(p1_size[8] == 1'b1)
          nxt_state = TRAN_256_S;
        else if(p1_size[9] == 1)
          nxt_state = TRAN_512_S;
        else 
          nxt_state = TRAN_128_S;
        nxt_pic_counter = pic_counter + 1;
      end
    end
    default:begin
    end

  endcase
end 

//negedge clk triggered registers
always @(negedge clk or posedge reset)begin
  if(reset)begin
    IM_D <= 0;
    IM_A <= 0;
    IM_WEN <= 1;
  end else begin
    IM_D <= nxt_IM_D;
    IM_A <= nxt_IM_A;
    IM_WEN <= nxt_IM_WEN;
  end
end

//posedge clk triggered registers
always @(posedge clk or posedge reset)begin
  if(reset)begin
    state <= 0;
    //header
    Frame_start_addr <= 0;
    Photo_num <= 0;
    p1_size <= 0;
    p1_start_addr <= 0;
    x_addr <= 0;
    y_addr <= 0;
    global_time <= 0;
    time_change <= 0;
    INCR <= 0;
    compute_counter <= 0;
    transition <= 0;
    pic_counter <= 1;
  end else begin
    state <= nxt_state;

    //header
    Frame_start_addr <= nxt_Frame_start_addr;
    Photo_num <= nxt_Photo_num;

    p1_start_addr <= nxt_p1_start_addr;
    p1_size <= nxt_p1_size;

    x_addr <= nxt_x_addr;
    y_addr <= nxt_y_addr;
    global_time <= global_time + 1;
    time_change <= nxt_time_change;
    INCR <= nxt_INCR;
    compute_counter <= nxt_compute_counter;

    transition <= nxt_transition;
    pic_counter <= nxt_pic_counter;
  end
end



//original TIMEDECODE.v
reg [3:0] time_counter, nxt_time_counter;
reg [2:0] digit_counter, nxt_digit_counter;

reg [8:0] CR_A, nxt_CR_A;
reg [3:0] Time_arr [0:7];
reg [3:0] nxt_Time_arr [0:7];

reg INCR_END, nxt_INCR_END;

wire OUT_ENABLE = x_addr >= 152 && y_addr >= 232 && compute_counter == 3 && (~transition || time_change);
wire READ = (compute_counter == 0 && (state == INITIAL));
wire COMPUTE = (compute_counter == 1 && state == INITIAL);
reg [7:0] hur, min, sec;
reg [7:0] nxt_hur, nxt_min, nxt_sec;

assign character = (OUT_ENABLE)? {24{CR_Q[12-time_counter]}} : 24'hffffff;
 
//hour, min, second reg handling
always @ ( * )begin
  if(READ)begin
    nxt_hur = IM_Q[23:16];
    nxt_min = IM_Q[15:8];
    nxt_sec = IM_Q[7:0];
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
