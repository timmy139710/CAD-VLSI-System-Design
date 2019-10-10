module LMFE ( clk, reset, Din, in_en, busy, out_valid, Dout);
input   clk;
input   reset;
input   in_en;
output  busy;
output  out_valid;
input   [7:0]  Din;
output  [7:0]  Dout;

parameter IDLE =            4'd0;  //IDLE
parameter INITIAL =         4'd1;  //Read First 7*128 block
parameter COMPUTE_B_UL =    4'd2;  //Top Left border case
parameter COMPUTE_B_U  =    4'd3;  //Top border case
parameter COMPUTE_B_R =     4'd4;  //Right border case
parameter COMPUTE_B_L    =  4'd5;  //Left border case
parameter COMPUTE      =    4'd7;  //General computation
parameter UPDATE_R =        4'd8;  //Read new values
parameter COMPUTE_B_BL =    4'd9;  //Bottom Left border case
parameter COMPUTE_B_B =     4'd11; //Bottom border case
parameter UPDATE_M =        4'd12; //Update Median Filter mask
parameter CLEARMASK =       4'd13; //Clear all the values in mask

////////////////// Memory Declaration ///////////////
reg CEN, nxt_CEN;
reg WEN, nxt_WEN;
reg [9:0] R1_addr, nxt_R1_addr;
reg [7:0] R1_d, nxt_R1_d; //RAM input
wire [7:0] R1_q; //RAM output
reg [7:0] update_counter_r, update_counter_w;

sram_1024x8_t13 sram(.Q(R1_q), .D(R1_d), .CLK(clk), .WEN(WEN), .CEN(CEN), .A(R1_addr));
////////////////// Memory Declaration ///////////////

////////////////// Medaian filter Declaration /////////////////
// `include "./Median.v"
reg [7:0] nxt_INS, INS;
reg [7:0] nxt_DEL, DEL;
reg SEN, nxt_SEN;
wire [7:0] MEDIAN;
MEDIAN49 mask(.clk(clk), .reset(reset), .SEN(SEN), .INS(INS), .DEL(DEL), .MEDIAN(MEDIAN));
////////////////// Median filter Declaration //////////////////

////////////////// Mask Declaration /////////////////////
reg [7:0] m_r [0:48];
reg [7:0] m_w [0:48];
reg [7:0] buffer_r [0:6];
reg [7:0] buffer_w [0:6];
reg [5:0] clear_count_r, clear_count_w;
////////////////// Mask Declaration /////////////////////

///////////////////// Internal Registers //////////////////////
reg [3:0] state_r, state_w;
reg busy_r, busy_w;
reg out_valid_r, out_valid_w;
reg [6:0] rx_r, rx_w, ry_r, ry_w;
reg [6:0] mx_r, mx_w, my_r, my_w;
reg [13:0] addr_r, addr_w;
reg [13:0] read_addr_r, read_addr_w;
integer i, j, k;
//////////////////// Internal Registers ///////////////////////

//////////////////// Output Assignment ////////////////////////
assign out_valid = out_valid_r;
assign busy = busy_r;
assign Dout = MEDIAN;
///////////////////  Output Assignment ////////////////////////


always@( * )begin
  state_w = state_r;
  busy_w = busy_r;
  out_valid_w = out_valid_r;
  rx_w = rx_r; 
  ry_w = ry_r;
  mx_w = mx_r;
  my_w = my_r; 
  addr_w = addr_r;
  read_addr_w = read_addr_r;

  nxt_R1_d = R1_d;
  nxt_R1_addr = R1_addr;
  nxt_CEN = CEN;
  nxt_WEN = WEN;
  update_counter_w = update_counter_r;

  nxt_INS = INS;
  nxt_DEL = DEL;
  nxt_SEN = SEN;

  for(i = 0; i < 49; i = i + 1)begin
    m_w[i] = m_r[i];
  end
  for(j = 0; j < 7; j = j + 1)begin
    buffer_w[j] = buffer_r[j];
  end
  clear_count_w = clear_count_r;

  case(state_r)
    IDLE:begin
      if(in_en)begin
        state_w = INITIAL;
        busy_w = 1'b0;
        nxt_R1_d = Din;
        nxt_R1_addr = addr_r;
        nxt_CEN = 1'b0;
        nxt_WEN = 1'b0;        
        addr_w = addr_r + 1;
      end
      else begin
        state_w = IDLE;
      end
    end
    INITIAL:begin
      if(addr_r <= 895)begin
        nxt_R1_d = Din;
        nxt_R1_addr = R1_addr + 1;
        addr_w = addr_r + 1;
        busy_w = (addr_r == 895)? 1'b1:1'b0;
      end //addr_r = 896 
      else begin
        addr_w = (addr_r>=896)? addr_r-896 : addr_r;
        state_w = COMPUTE_B_UL; //addr_r = 896
        nxt_CEN = 1'b0;
        nxt_WEN = 1'b1; 
        rx_w = 0;  //compute start from point (0,0)
        ry_w = 0;
        mx_w = 0;  //start from mask (0,0)
        my_w = 0;
        read_addr_w = 0;
      end
    end
    COMPUTE_B_UL:begin
      out_valid_w = 0;
      
      if(rx_r < 3 && ry_r < 3)begin
        //new
        if(ry_r==0)begin
          if(mx_r<(4-rx_r) && my_r<4)begin
            m_w[mx_r*7 + my_r] = ((mx_r==(3-rx_r))&&(my_r==3))?  R1_q : 0;
            nxt_R1_addr = ((mx_r==(3-rx_r))&&(my_r>=2))?  read_addr_r+1 : 0;
            read_addr_w = ((mx_r==(3-rx_r))&&(my_r>=2))?  read_addr_r+1 : 0;
            nxt_INS = ((mx_r==(3-rx_r))&&(my_r==3))?  R1_q : 0;
            nxt_DEL = 8'hff;
            nxt_SEN = 0;
          end
          else if((mx_r>=(4-rx_r) && my_r<3) || (mx_r<(3-rx_r) && my_r>=4))begin
            m_w[mx_r*7 + my_r] = 0;
            nxt_R1_addr = (my_r>=2)? read_addr_r+1 : read_addr_r;
            read_addr_w = (my_r>=2)? read_addr_r+1 : read_addr_r;
            nxt_INS = 0;
            nxt_DEL = 8'hff;
            nxt_SEN = 0;
          end
          else begin 
            m_w[mx_r*7 + my_r] = R1_q;
            nxt_R1_addr = (my_r>=5)? (my_r!=6)? (mx_r==6)? read_addr_r-128*(3+rx_r)+1 : read_addr_r-3+128 : read_addr_r : read_addr_r+1;
            read_addr_w = (my_r>=5)? (my_r!=6)? (mx_r==6)? read_addr_r-128*(3+rx_r)+1 : read_addr_r-3+128 : read_addr_r : read_addr_r+1;
            nxt_INS = R1_q;
            nxt_DEL = 8'hff;
            nxt_SEN = 0;
          end
        end
        else begin
          if(mx_r<(2-rx_r))begin //mx = 0 1 2 my = 6
            m_w[mx_r*7 + my_r] = 0; //m_w[6 13 20]
            nxt_INS = 0; 
            nxt_DEL = buffer_r[mx_r]; //del buffer[0 1 2]
            nxt_SEN = 0;
          end
          else if(mx_r>=(2-rx_r))begin //mx = 3 4 5 6 my = 6
            m_w[mx_r*7 + my_r] =  (mx_r==(2-rx_r))? 0 : R1_q; //m_w[27 34 41 48]
            nxt_INS = (mx_r==(2-rx_r))? 0 : R1_q;
            nxt_R1_addr = (my_r==6)? (mx_r>=5)? (mx_r==6)? read_addr_r : read_addr_r-128*(3+rx_r)+1 : read_addr_r+128 : read_addr_r+1;
            read_addr_w = (my_r==6)? (mx_r>=5)? (mx_r==6)? read_addr_r : read_addr_r-128*(3+rx_r)+1 : read_addr_r+128 : read_addr_r+1;
            nxt_DEL = buffer_r[mx_r]; //delete buffer[3 4 5 6]
            nxt_SEN = 0;
          end
        end
        //new


        if(mx_r==6 && my_r==6)begin // 7x7 done
          ry_w = ry_r + 1;
          state_w = UPDATE_M;
          mx_w = 0;
          my_w = (ry_r>0)? my_r : 0;
        end 
        else if(my_r==6)begin
          mx_w = mx_r + 1;
          my_w = (ry_r>0)? my_r : 0;
        end
        else begin
          mx_w =  mx_r;
          my_w = my_r + 1;
        end

      end
    end
    COMPUTE_B_BL:begin
      out_valid_w = 0;

      if(rx_r>124 && ry_r<3)begin
        if(ry_r==0)begin //first 7x7
        if(my_r<3 || mx_r>(130-rx_r))begin 
          m_w[mx_r*7 + my_r] =  0;
          nxt_R1_addr = (my_r==2 && mx_r<=(130-rx_r))? read_addr_r+1 : read_addr_r;
          read_addr_w = (my_r==2 && mx_r<=(130-rx_r))? read_addr_r+1 : read_addr_r;
          nxt_INS = 0;
          nxt_DEL = 8'hff;
          nxt_SEN = 0;
        end
        else begin 
          m_w[mx_r*7 + my_r] = R1_q;
          if(my_r==5 && mx_r ==(130-rx_r))begin
            nxt_R1_addr = (read_addr_r>(130-rx_r)*128)? read_addr_r-128*(130-rx_r)+1 : read_addr_r+128*(rx_r-123)+1;
            read_addr_w = (read_addr_r>(130-rx_r)*128)? read_addr_r-128*(130-rx_r)+1 : read_addr_r+128*(rx_r-123)+1;
          end
          else if(my_r==5 && mx_r!= (130-rx_r))begin
            nxt_R1_addr = (read_addr_r<768)? read_addr_r-3+128 : read_addr_r-6*128-3;
            read_addr_w = (read_addr_r<768)? read_addr_r-3+128 : read_addr_r-6*128-3;
          end
          else if(my_r==6)begin
            nxt_R1_addr = read_addr_r;
            read_addr_w = read_addr_r;
          end
          else begin
            nxt_R1_addr = read_addr_r + 1;
            read_addr_w = read_addr_r + 1;
          end

          nxt_DEL = 8'hff;
          nxt_INS = R1_q;
          nxt_SEN = 0;
        end
        end

        else begin
        if(mx_r>(130-rx_r))begin //mx = 0   my = 6
          m_w[mx_r*7 + my_r] = 0; //
          nxt_INS = 0; 
          nxt_DEL = buffer_r[mx_r]; //
          nxt_SEN = 0;
        end
        else if(mx_r <= (130-rx_r))begin //mx = 1 2 3 4 5 6 my = 6
          m_w[mx_r*7 + my_r] = R1_q; //m_w[27 34 41 48]
          nxt_INS = R1_q;

          if(my_r!= 6)begin
            nxt_R1_addr = read_addr_r + 1;
            read_addr_w = read_addr_r + 1;
          end
          else if(my_r==6 && mx_r==(130-rx_r-1))begin
          nxt_R1_addr = (read_addr_r>(130-rx_r)*128)? read_addr_r-128*(130-rx_r)+1 : read_addr_r+128*(rx_r-123)+1;
          read_addr_w = (read_addr_r>(130-rx_r)*128)? read_addr_r-128*(130-rx_r)+1 : read_addr_r+128*(rx_r-123)+1;
          end
          else if(my_r==6 && mx_r==(130-rx_r))begin
            nxt_R1_addr = read_addr_r;
            read_addr_w = read_addr_r;
          end
          else begin
            nxt_R1_addr = (read_addr_r>=768)? read_addr_r-128*6 : read_addr_r+128;
            read_addr_w = (read_addr_r>=768)? read_addr_r-128*6 : read_addr_r+128;
          end

          nxt_DEL = buffer_r[mx_r]; //delete buffer[2 3 4 5 6]
          nxt_SEN = 0;
        end
        end

        if(mx_r==6 && my_r==6)begin // 7x7 done
          ry_w = ry_r + 1;
          state_w = UPDATE_M;
          mx_w = 0;
          my_w = (ry_r>0)? my_r : 0;
        end 
        else if(my_r==6)begin
          mx_w = mx_r + 1;
          my_w = (ry_r>0)? my_r : 0;
        end
        else begin
          mx_w =  mx_r;
          my_w = my_r + 1;
        end
        // mx_w = (my_r == 6)? (mx_r == 6)? 0 : mx_r+1 : mx_r;
        // my_w = (my_r == 6)? (ry_r>0)? my_r : 0 : my_r+1;

      end
    end
    COMPUTE_B_B:begin
      out_valid_w = 0;

      if(mx_r>(130-rx_r))begin //mx = 0 1 2 my = 6
        m_w[mx_r*7 + my_r] = 0; //m_w[6 13 20]
        nxt_INS = 0; 
        nxt_DEL = buffer_r[mx_r]; //del buffer[0 1 2]
        nxt_SEN = 0;
      end
      else if(mx_r<=(130-rx_r))begin //mx = 3 4 5 6 my = 6
        m_w[mx_r*7 + my_r] = R1_q; //m_w[27 34 41 48]
        nxt_INS = R1_q;
        if(my_r!= 6)begin
          nxt_R1_addr = read_addr_r + 1;
          read_addr_w = read_addr_r + 1;
        end
        else if(my_r==6 && mx_r==(130-rx_r-1))begin
          nxt_R1_addr = (read_addr_r>(130-rx_r)*128)? read_addr_r-128*(130-rx_r)+1 : read_addr_r+128*(rx_r-123)+1;
          read_addr_w = (read_addr_r>(130-rx_r)*128)? read_addr_r-128*(130-rx_r)+1 : read_addr_r+128*(rx_r-123)+1;
        end
        else if(my_r==6 && mx_r==(130-rx_r))begin
          nxt_R1_addr = read_addr_r;
          read_addr_w = read_addr_r;
        end
        else begin
          nxt_R1_addr = (read_addr_r>=768)? read_addr_r-128*6 : read_addr_r+128;
          read_addr_w = (read_addr_r>=768)? read_addr_r-128*6 : read_addr_r+128;
        end

        nxt_DEL = buffer_r[mx_r]; //delete buffer[2 3 4 5 6]
        nxt_SEN = 0;
      end
      //if ry_r == 124, then after computation read_addr_r = 128 -> next row
      if(mx_r==6 && my_r==6)begin // 7x7 done
        ry_w = ry_r + 1;
        state_w = UPDATE_M;
        mx_w = 0;
        my_w = (ry_r>0)? my_r : 0;
      end 
      else if(my_r==6)begin
        mx_w = mx_r + 1;
        my_w = (ry_r>0)? my_r : 0;
      end
      else begin
        mx_w =  mx_r;
        my_w = my_r + 1;
      end
      // mx_w = (my_r == 6)? (mx_r == 6)? 0 : mx_r+1 : mx_r;
      // my_w = (my_r == 6)? (ry_r>0)? my_r : 0 : my_r+1;

    end
    UPDATE_M:begin
      out_valid_w = 1;
      nxt_SEN = 1;

      for(i = 0; i < 6; i = i + 1)begin
        for(j = 0; j < 7; j = j + 1)begin
          m_w[i+j*7] = m_r[i+j*7+1];
        end
      end
      buffer_w[0] = m_r[0];
      buffer_w[1] = m_r[7];
      buffer_w[2] = m_r[14];
      buffer_w[3] = m_r[21];
      buffer_w[4] = m_r[28];
      buffer_w[5] = m_r[35];
      buffer_w[6] = m_r[42];

      mx_w = 0;
      my_w = 6;

      if(rx_r<3 && ry_r<3)begin
        state_w = COMPUTE_B_UL;  
      end
      else if(rx_r<3 && ry_r>=3 && ry_r<=124)begin
        state_w = COMPUTE_B_U;
      end
      else if(rx_r<3 && ry_r>124)begin
        state_w = COMPUTE_B_R;
      end
      else if(rx_r>=3 && rx_r<=124 && ry_r<3)begin
        nxt_R1_addr = (R1_addr>=768)? R1_addr-768 : R1_addr+128;
        read_addr_w = (R1_addr>=768)? R1_addr-768 : R1_addr+128;
        state_w = COMPUTE_B_L;
      end
      else if(rx_r>=3 && rx_r<=124 && ry_r>124)begin
        state_w = COMPUTE_B_R;
      end
      else if(rx_r>124 && ry_r<3)begin
        state_w = COMPUTE_B_BL;
        if(ry_r>0)begin
          nxt_R1_addr = (R1_addr>=768)? R1_addr-768 : R1_addr+128;
          read_addr_w = (R1_addr>=768)? R1_addr-768 : R1_addr+128;
        end

      end
      else if(rx_r>124 && ry_r>=3 && ry_r<=124)begin
        state_w = COMPUTE_B_B;
        nxt_R1_addr = (R1_addr>=768)? R1_addr-768 : R1_addr+128;
        read_addr_w = (R1_addr>=768)? R1_addr-768 : R1_addr+128;

      end
      else if(rx_r>124 && ry_r>124)begin
        state_w = COMPUTE_B_R;
      end
      else begin
        state_w = COMPUTE;
        nxt_R1_addr = (R1_addr>768)? R1_addr-768 : R1_addr+128;
        read_addr_w = (R1_addr>768)? R1_addr-768 : R1_addr+128;
      end
      
    end
    COMPUTE_B_U:begin
      out_valid_w = 0;
      //rx_r = 0 1 2, 3<=ry_r<=124
      if(rx_r==0)begin
        if(mx_r<2)begin //mx = 0 1 2 my = 6
          m_w[mx_r*7 + my_r] = 0; //m_w[6 13 20]
          nxt_INS = 0; 
          nxt_DEL = buffer_r[mx_r]; //del buffer[0 1 2]
          nxt_SEN = 0;
        end
        else if(mx_r>=2)begin //mx = 3 4 5 6 my = 6
          m_w[mx_r*7 + my_r] = (mx_r==2)? 0 : R1_q; //m_w[27 34 41 48]
          nxt_INS = (mx_r==2)? 0 : R1_q;
          nxt_R1_addr = (my_r==6)? (mx_r>=5)? (mx_r==6)? read_addr_r : read_addr_r-128*3+1 : read_addr_r+128 : read_addr_r+1;
          read_addr_w = (my_r==6)? (mx_r>=5)? (mx_r==6)? read_addr_r : read_addr_r-128*3+1 : read_addr_r+128 : read_addr_r+1;
          nxt_DEL = buffer_r[mx_r]; //delete buffer[3 4 5 6]
          nxt_SEN = 0;
        end
        //if ry_r == 124, then after computation read_addr_r = 128 -> next row
      end

      else if(rx_r==1)begin
        if(mx_r<1)begin //mx = 0 1 2 my = 6
          m_w[mx_r*7 + my_r] = 0; //m_w[6 13 20]
          nxt_INS = 0; 
          nxt_DEL = buffer_r[mx_r]; //del buffer[0 1 2]
          nxt_SEN = 0;
        end
        else if(mx_r>=1)begin //mx = 3 4 5 6 my = 6
          m_w[mx_r*7 + my_r] =  (mx_r==1)? 0 : R1_q; //m_w[27 34 41 48]
          nxt_INS = (mx_r==1)? 0 : R1_q;
          nxt_R1_addr = (my_r==6)? (mx_r>=5)? (mx_r==6)? read_addr_r : read_addr_r-128*4+1 : read_addr_r+128 : read_addr_r+1;
          read_addr_w = (my_r==6)? (mx_r>=5)? (mx_r==6)? read_addr_r : read_addr_r-128*4+1 : read_addr_r+128 : read_addr_r+1;

          nxt_DEL = buffer_r[mx_r]; //delete buffer[3 4 5 6]
          nxt_SEN = 0;
        end
        //if ry_r == 124, then after computation read_addr_r = 128 -> next row
      end

      else begin //rx_r == 2
      if(mx_r<0)begin //mx = 0 1 2 my = 6
        m_w[mx_r*7 + my_r] = 0; //m_w[6 13 20]
        nxt_INS = 0; 
        nxt_DEL = buffer_r[mx_r]; //del buffer[0 1 2]
        nxt_SEN = 0;
      end
      else if(mx_r>=0)begin //mx = 3 4 5 6 my = 6
        m_w[mx_r*7 + my_r] = (mx_r==0)? 0 : R1_q; //m_w[27 34 41 48]
        nxt_INS = (mx_r==0)? 0 : R1_q;
        nxt_R1_addr = (my_r==6)? (mx_r>=5)? (mx_r==6)? read_addr_r : read_addr_r-128*5+1 : read_addr_r+128 : read_addr_r+1;
        read_addr_w = (my_r==6)? (mx_r>=5)? (mx_r==6)? read_addr_r : read_addr_r-128*5+1 : read_addr_r+128 : read_addr_r+1;

        nxt_DEL = buffer_r[mx_r]; //delete buffer[3 4 5 6]
        nxt_SEN = 0;
      end
      end

     //
      if(mx_r==6 && my_r==6)begin // 7x7 done
        ry_w = ry_r + 1;
        state_w = UPDATE_M;
        mx_w = 0;
        my_w = (ry_r>0)? my_r : 0;
      end 
      else if(my_r==6)begin
        mx_w = mx_r + 1;
        my_w = (ry_r>0)? my_r : 0;
      end
      else begin
        mx_w =  mx_r;
        my_w = my_r + 1;
      end
      
    end
    COMPUTE_B_R:begin
      out_valid_w = 0;
      if(mx_r<(3-rx_r))begin //mx = 0 1 2 my = 6
        m_w[mx_r*7 + my_r] = 0; //m_w[6 13 20]
        nxt_INS = 0; 
        nxt_DEL = buffer_r[mx_r]; //del buffer[0 1 2]
        nxt_SEN = 0;
      end
      else if(mx_r>=(3-rx_r))begin //mx = 3 4 5 6 my = 6
        m_w[mx_r*7 + my_r] = 0; //m_w[27 34 41 48]
        nxt_INS = 0;
        nxt_DEL = buffer_r[mx_r]; //delete buffer[3 4 5 6]
        nxt_SEN = 0;
      end

      if(mx_r==6 && my_r==6)begin // 7x7 done
        ry_w = (ry_r==127)? 0 : ry_r+1;
        rx_w = (ry_r==127)? rx_r+1 : rx_r;
        state_w = (ry_r==127)? CLEARMASK : UPDATE_M;
        mx_w = 0;
        my_w = (ry_r>0)? my_r : 0;
      end 
      else if(my_r==6)begin
        mx_w = mx_r + 1;
        my_w = (ry_r>0)? my_r : 0;
      end
      else begin
        mx_w =  mx_r;
        my_w = my_r + 1;
      end

    end
    CLEARMASK:begin
      out_valid_w = (clear_count_r==0)? 1 : 0;
      nxt_INS = 8'hff;
      nxt_DEL = m_r[clear_count_r];
      nxt_SEN = 0;
      clear_count_w = (clear_count_r==48)? 0 : clear_count_r+1;

      // nxt_R1_addr = (rx_r>3)? ((rx_r-4)>=7)? ((rx_r-4)%7)*128 : (rx_r-4)*128 : 0; //rx_r>3, update memory
      // read_addr_w = (rx_r>3)? ((rx_r-3)>=7)? ((rx_r-3)%7)*128 : (rx_r-3)*128 : 0;
      nxt_R1_addr = (rx_r>3)? addr_r : 0;
      read_addr_w = (rx_r>3)? (addr_r>=768)? 0 : addr_r+128 : 0;
      nxt_CEN = 0;
      update_counter_w = 0;
      
      if(clear_count_r < 48) begin
        state_w = CLEARMASK;
      end 
      else begin
        if(rx_r < 3) state_w = COMPUTE_B_UL;
        else if(rx_r == 3) state_w = COMPUTE_B_L;
        else state_w = (rx_r>124)? COMPUTE_B_BL : UPDATE_R;
        busy_w = (rx_r>3 && rx_r<125)? 0 : 1;
        addr_w = (rx_r>3)? (addr_r<768)? addr_r+128 : 0 : addr_r;
      end 

      //reset mask index
      my_w = 0;
      mx_w = 0;

    end
    UPDATE_R:begin
      if(in_en)begin
        if(update_counter_r == 0)begin
          nxt_R1_addr = R1_addr;
        end
        else if(update_counter_r == 128)begin
          nxt_R1_addr = read_addr_r;
        end
        else begin
          nxt_R1_addr = R1_addr + 1;
        end
        // nxt_R1_addr = (update_counter_r==0)? (update_counter_r==127)? read_addr_r : R1_addr+1 : R1_addr;
        nxt_R1_d = Din;
        busy_w = (update_counter_r==127)? 1 : 0;
      end
        // nxt_R1_addr = (update_counter_r==127)? read_addr_r : R1_addr;
        update_counter_w = (update_counter_r==128)? 0 : update_counter_r+1;
        state_w = (update_counter_r==128)?(rx_r>124)? COMPUTE_B_BL : COMPUTE_B_L : UPDATE_R;
        // addr_w = (update_counter_r==128)? (addr_r<768)? addr_r+128 : 0 : addr_r;
        nxt_WEN = (update_counter_r==128)? 1 : 0;

      // else $display("Something wrong in update_R");
    end
    COMPUTE_B_L:begin
      // 3<=rx_r<=124 ry_r = 0 1 2
      out_valid_w = 0;

      if(ry_r==0)begin
        if(my_r<3)begin
            m_w[mx_r*7 + my_r] = 0;
            nxt_R1_addr = (my_r==2)? read_addr_r + 1 : read_addr_r ;
            read_addr_w = (my_r==2)? read_addr_r + 1 : read_addr_r ;
            nxt_INS = 0;
            nxt_DEL = 8'hff;
            nxt_SEN = 0;
        end
        else begin 
          m_w[mx_r*7 + my_r] = R1_q;
          if(my_r==5 && mx_r==6)begin
            nxt_R1_addr = (read_addr_r>=768)? read_addr_r-128*6+1 : read_addr_r+128+1;
            read_addr_w = (read_addr_r>=768)? read_addr_r-128*6+1 : read_addr_r+128+1;
          end
          else if(my_r == 5 && mx_r!= 6)begin
            nxt_R1_addr = (read_addr_r>=768)? read_addr_r-3-128*6 : read_addr_r-3+128;
            read_addr_w = (read_addr_r>=768)? read_addr_r-3-128*6 : read_addr_r-3+128;
          end
          else if(my_r == 6)begin
            nxt_R1_addr = read_addr_r;
            read_addr_w = read_addr_r;
          end
          else begin
            nxt_R1_addr = read_addr_r+1;
            read_addr_w = read_addr_r+1;
          end

          nxt_INS = R1_q;
          nxt_DEL = 8'hff;
          nxt_SEN = 0;
        end
      end
      else begin
        // if(mx_r>=3)begin //mx = 3 4 5 6 my = 6
        //working here
        m_w[mx_r*7 + my_r] = R1_q; //m_w[27 34 41 48]
        nxt_INS = R1_q;
        if(my_r!= 6)begin
          nxt_R1_addr = read_addr_r + 1;
          read_addr_w = read_addr_r + 1;
        end
        else if(my_r==6 && mx_r==5)begin
          nxt_R1_addr = (read_addr_r>=768)? read_addr_r-128*6+1 : read_addr_r+128+1;
          read_addr_w = (read_addr_r>=768)? read_addr_r-128*6+1 : read_addr_r+128+1;
        end
        else if(my_r==6 && mx_r==6)begin
          nxt_R1_addr = read_addr_r;
          read_addr_w = read_addr_r;
        end
        else begin
          nxt_R1_addr = (read_addr_r>=768)? read_addr_r-128*6 : read_addr_r+128;
          read_addr_w = (read_addr_r>=768)? read_addr_r-128*6 : read_addr_r+128;
        end
        nxt_DEL = buffer_r[mx_r]; //delete buffer[3 4 5 6]
        nxt_SEN = 0;
        // end
      end
      
      if(mx_r==6 && my_r==6)begin // 7x7 done
        ry_w = (ry_r==127)? 0 : ry_r+1;
        rx_w = (ry_r==127)? rx_r+1 : rx_r;
        state_w = (ry_r==127)? CLEARMASK : UPDATE_M;
        mx_w = 0;
        my_w = (ry_r>0)? my_r : 0;
      end 
      else if(my_r==6)begin
        mx_w = mx_r + 1;
        my_w = (ry_r>0)? my_r : 0;
      end
      else begin
        mx_w =  mx_r;
        my_w = my_r + 1;
      end
    end

    COMPUTE:begin
      if(my_r!= 6)begin
        nxt_R1_addr = read_addr_r + 1;
        read_addr_w = read_addr_r + 1;
      end
      else if(my_r==6 && mx_r==5)begin
        nxt_R1_addr = (read_addr_r>=768)? read_addr_r-128*6+1 : read_addr_r+128+1;
        read_addr_w = (read_addr_r>=768)? read_addr_r-128*6+1 : read_addr_r+128+1;
      end
      else if(my_r==6 && mx_r==6)begin
        nxt_R1_addr = read_addr_r;
        read_addr_w = read_addr_r;
      end
      else begin
        nxt_R1_addr = (read_addr_r>=768)? read_addr_r-128*6 : read_addr_r+128;
        read_addr_w = (read_addr_r>=768)? read_addr_r-128*6 : read_addr_r+128;
      end
      out_valid_w = 0;
      m_w[mx_r*7 + my_r] = R1_q; //m_w[27 34 41 48]
      nxt_INS = R1_q;
      nxt_DEL = buffer_r[mx_r]; //delete buffer[3 4 5 6]
      nxt_SEN = 0;
      
      if(mx_r==6 && my_r==6)begin // 7x7 done
        ry_w = (ry_r==127)? 0 : ry_r+1;
        rx_w = (ry_r==127)? rx_r+1 : rx_r;
        state_w = (ry_r==127)? CLEARMASK : UPDATE_M;
        mx_w = 0;
        my_w = (ry_r>0)? my_r : 0;
      end 
      else if(my_r==6)begin
        mx_w = mx_r + 1;
        my_w = (ry_r>0)? my_r : 0;
      end
      else begin
        mx_w =  mx_r;
        my_w = my_r + 1;
      end
    end
    default:begin
    end
  endcase
end


always @(posedge clk or posedge reset)begin
  if(reset)begin
    state_r <= IDLE;
    busy_r <= 0;
    out_valid_r <= 0;
    rx_r <= 0;
    ry_r <= 0;
    mx_r <= 0;
    my_r <= 0;
    addr_r <= 0;
    read_addr_r <= 0;

    R1_d <= 0;
    R1_addr <= 0;
    CEN <= 1;
    WEN <= 1;
    update_counter_r <= 0;

    INS <= 8'hff;
    DEL <= 8'hff;
    SEN <= 1'b1;

    for(i = 0; i < 49; i = i + 1)begin
      m_r[i] <= 8'b0;
    end
    for(j = 0; j < 7; j = j + 1)begin
      buffer_r[j] <= 8'b0;
    end
    clear_count_r <= 0;
  end 
  else begin
    state_r <= state_w;
    busy_r <= busy_w;
    out_valid_r <= out_valid_w;
    rx_r <= rx_w;
    ry_r <= ry_w;
    mx_r <= mx_w;
    my_r <= my_w;
    addr_r <= addr_w;
    read_addr_r <= read_addr_w;

    R1_d <= nxt_R1_d;
    R1_addr <= nxt_R1_addr;
    CEN <= nxt_CEN;
    WEN <= nxt_WEN;
    update_counter_r <= update_counter_w;

    INS <= nxt_INS;
    DEL <= nxt_DEL;
    SEN <= nxt_SEN;

    for(i = 0; i < 49; i = i + 1)begin
      m_r[i] <= m_w[i];
    end
    for(j = 0; j < 7; j = j + 1)begin
      buffer_r[j] <= buffer_w[j];
    end
    clear_count_r <= clear_count_w;
  end
end

endmodule
`include "./Median.v"





