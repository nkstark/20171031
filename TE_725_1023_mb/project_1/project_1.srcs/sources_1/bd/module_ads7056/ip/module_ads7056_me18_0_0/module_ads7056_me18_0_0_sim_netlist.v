// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sun Oct 29 21:54:31 2017
// Host        : DESKTOP-6EAE6HJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/nks/Desktop/TE_725_1023/project_1/project_1.srcs/sources_1/bd/module_ads7056/ip/module_ads7056_me18_0_0/module_ads7056_me18_0_0_sim_netlist.v
// Design      : module_ads7056_me18_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "module_ads7056_me18_0_0,me18,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "me18,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module module_ads7056_me18_0_0
   (clk2x,
    TxD_data,
    TxD_start,
    tx);
  input clk2x;
  input [17:0]TxD_data;
  input TxD_start;
  output tx;

  wire [17:0]TxD_data;
  wire TxD_start;
  wire clk2x;
  wire tx;

  module_ads7056_me18_0_0_me18 inst
       (.TxD_data(TxD_data),
        .TxD_start(TxD_start),
        .clk2x(clk2x),
        .tx(tx));
endmodule

(* ORIG_REF_NAME = "me18" *) 
module module_ads7056_me18_0_0_me18
   (tx,
    clk2x,
    TxD_start,
    TxD_data);
  output tx;
  input clk2x;
  input TxD_start;
  input [17:0]TxD_data;

  wire BitTick;
  wire [17:0]TxD_data;
  wire \TxD_shift[17]_i_1_n_0 ;
  wire \TxD_shift_reg_n_0_[0] ;
  wire \TxD_shift_reg_n_0_[10] ;
  wire \TxD_shift_reg_n_0_[11] ;
  wire \TxD_shift_reg_n_0_[12] ;
  wire \TxD_shift_reg_n_0_[13] ;
  wire \TxD_shift_reg_n_0_[14] ;
  wire \TxD_shift_reg_n_0_[15] ;
  wire \TxD_shift_reg_n_0_[16] ;
  wire \TxD_shift_reg_n_0_[17] ;
  wire \TxD_shift_reg_n_0_[1] ;
  wire \TxD_shift_reg_n_0_[2] ;
  wire \TxD_shift_reg_n_0_[3] ;
  wire \TxD_shift_reg_n_0_[4] ;
  wire \TxD_shift_reg_n_0_[5] ;
  wire \TxD_shift_reg_n_0_[6] ;
  wire \TxD_shift_reg_n_0_[7] ;
  wire \TxD_shift_reg_n_0_[8] ;
  wire \TxD_shift_reg_n_0_[9] ;
  wire TxD_start;
  wire TxD_state;
  wire \TxD_state[0]_i_1_n_0 ;
  wire \TxD_state[1]_i_1_n_0 ;
  wire \TxD_state[2]_i_1_n_0 ;
  wire \TxD_state[3]_i_1_n_0 ;
  wire \TxD_state[4]_i_1_n_0 ;
  wire \TxD_state[5]_i_2_n_0 ;
  wire \TxD_state[5]_i_3_n_0 ;
  wire \TxD_state_reg_n_0_[0] ;
  wire \TxD_state_reg_n_0_[1] ;
  wire \TxD_state_reg_n_0_[2] ;
  wire \TxD_state_reg_n_0_[3] ;
  wire \TxD_state_reg_n_0_[4] ;
  wire clk2x;
  wire p_0_in;
  wire [17:0]p_1_in;
  wire p_1_in_0;
  wire tx;
  wire tx_i_1_n_0;
  wire txdat;
  wire txdat_i_1_n_0;
  wire txdat_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    BitTick_i_1
       (.I0(BitTick),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    BitTick_reg
       (.C(clk2x),
        .CE(1'b1),
        .D(p_0_in),
        .Q(BitTick),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[0]_i_1 
       (.I0(\TxD_shift_reg_n_0_[1] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[10]_i_1 
       (.I0(\TxD_shift_reg_n_0_[11] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[10]),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[11]_i_1 
       (.I0(\TxD_shift_reg_n_0_[12] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[11]),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[12]_i_1 
       (.I0(\TxD_shift_reg_n_0_[13] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[12]),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[13]_i_1 
       (.I0(\TxD_shift_reg_n_0_[14] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[13]),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[14]_i_1 
       (.I0(\TxD_shift_reg_n_0_[15] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[14]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[15]_i_1 
       (.I0(\TxD_shift_reg_n_0_[16] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[15]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[16]_i_1 
       (.I0(\TxD_shift_reg_n_0_[17] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[16]),
        .O(p_1_in[16]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \TxD_shift[17]_i_1 
       (.I0(BitTick),
        .I1(p_1_in_0),
        .I2(TxD_start),
        .I3(\TxD_state[5]_i_3_n_0 ),
        .O(\TxD_shift[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TxD_shift[17]_i_2 
       (.I0(TxD_data[17]),
        .I1(TxD_start),
        .I2(\TxD_state[5]_i_3_n_0 ),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[1]_i_1 
       (.I0(\TxD_shift_reg_n_0_[2] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[2]_i_1 
       (.I0(\TxD_shift_reg_n_0_[3] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[2]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[3]_i_1 
       (.I0(\TxD_shift_reg_n_0_[4] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[3]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[4]_i_1 
       (.I0(\TxD_shift_reg_n_0_[5] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[5]_i_1 
       (.I0(\TxD_shift_reg_n_0_[6] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[5]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[6]_i_1 
       (.I0(\TxD_shift_reg_n_0_[7] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[6]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[7]_i_1 
       (.I0(\TxD_shift_reg_n_0_[8] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[7]),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[8]_i_1 
       (.I0(\TxD_shift_reg_n_0_[9] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[8]),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \TxD_shift[9]_i_1 
       (.I0(\TxD_shift_reg_n_0_[10] ),
        .I1(\TxD_state[5]_i_3_n_0 ),
        .I2(TxD_start),
        .I3(TxD_data[9]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[0] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\TxD_shift_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[10] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\TxD_shift_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[11] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\TxD_shift_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[12] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\TxD_shift_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[13] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\TxD_shift_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[14] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\TxD_shift_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[15] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\TxD_shift_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[16] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\TxD_shift_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[17] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(\TxD_shift_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[1] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\TxD_shift_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[2] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\TxD_shift_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[3] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\TxD_shift_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[4] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\TxD_shift_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[5] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\TxD_shift_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[6] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\TxD_shift_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[7] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\TxD_shift_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[8] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\TxD_shift_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[9] 
       (.C(clk2x),
        .CE(\TxD_shift[17]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\TxD_shift_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5557555500000000)) 
    \TxD_state[0]_i_1 
       (.I0(\TxD_state_reg_n_0_[0] ),
        .I1(\TxD_state_reg_n_0_[2] ),
        .I2(\TxD_state_reg_n_0_[3] ),
        .I3(\TxD_state_reg_n_0_[1] ),
        .I4(\TxD_state_reg_n_0_[4] ),
        .I5(p_1_in_0),
        .O(\TxD_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \TxD_state[1]_i_1 
       (.I0(\TxD_state_reg_n_0_[0] ),
        .I1(p_1_in_0),
        .I2(\TxD_state_reg_n_0_[1] ),
        .O(\TxD_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFF00000000001)) 
    \TxD_state[2]_i_1 
       (.I0(\TxD_state_reg_n_0_[3] ),
        .I1(\TxD_state_reg_n_0_[4] ),
        .I2(\TxD_state_reg_n_0_[0] ),
        .I3(\TxD_state_reg_n_0_[1] ),
        .I4(\TxD_state_reg_n_0_[2] ),
        .I5(p_1_in_0),
        .O(\TxD_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \TxD_state[3]_i_1 
       (.I0(\TxD_state_reg_n_0_[1] ),
        .I1(\TxD_state_reg_n_0_[0] ),
        .I2(\TxD_state_reg_n_0_[2] ),
        .I3(p_1_in_0),
        .I4(\TxD_state_reg_n_0_[3] ),
        .O(\TxD_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7800F000F000D000)) 
    \TxD_state[4]_i_1 
       (.I0(\TxD_state_reg_n_0_[0] ),
        .I1(\TxD_state_reg_n_0_[1] ),
        .I2(\TxD_state_reg_n_0_[4] ),
        .I3(p_1_in_0),
        .I4(\TxD_state_reg_n_0_[3] ),
        .I5(\TxD_state_reg_n_0_[2] ),
        .O(\TxD_state[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \TxD_state[5]_i_1 
       (.I0(BitTick),
        .I1(TxD_start),
        .I2(\TxD_state[5]_i_3_n_0 ),
        .O(TxD_state));
  LUT6 #(
    .INIT(64'h4CCCCCC4CCCCCDCC)) 
    \TxD_state[5]_i_2 
       (.I0(\TxD_state_reg_n_0_[4] ),
        .I1(p_1_in_0),
        .I2(\TxD_state_reg_n_0_[3] ),
        .I3(\TxD_state_reg_n_0_[2] ),
        .I4(\TxD_state_reg_n_0_[1] ),
        .I5(\TxD_state_reg_n_0_[0] ),
        .O(\TxD_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TxD_state[5]_i_3 
       (.I0(\TxD_state_reg_n_0_[2] ),
        .I1(\TxD_state_reg_n_0_[3] ),
        .I2(\TxD_state_reg_n_0_[4] ),
        .I3(p_1_in_0),
        .I4(\TxD_state_reg_n_0_[1] ),
        .I5(\TxD_state_reg_n_0_[0] ),
        .O(\TxD_state[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_state_reg[0] 
       (.C(clk2x),
        .CE(TxD_state),
        .D(\TxD_state[0]_i_1_n_0 ),
        .Q(\TxD_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_state_reg[1] 
       (.C(clk2x),
        .CE(TxD_state),
        .D(\TxD_state[1]_i_1_n_0 ),
        .Q(\TxD_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_state_reg[2] 
       (.C(clk2x),
        .CE(TxD_state),
        .D(\TxD_state[2]_i_1_n_0 ),
        .Q(\TxD_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_state_reg[3] 
       (.C(clk2x),
        .CE(TxD_state),
        .D(\TxD_state[3]_i_1_n_0 ),
        .Q(\TxD_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_state_reg[4] 
       (.C(clk2x),
        .CE(TxD_state),
        .D(\TxD_state[4]_i_1_n_0 ),
        .Q(\TxD_state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_state_reg[5] 
       (.C(clk2x),
        .CE(TxD_state),
        .D(\TxD_state[5]_i_2_n_0 ),
        .Q(p_1_in_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    tx_i_1
       (.I0(txdat),
        .I1(BitTick),
        .O(tx_i_1_n_0));
  FDRE tx_reg
       (.C(clk2x),
        .CE(1'b1),
        .D(tx_i_1_n_0),
        .Q(tx),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA03FFFFAA030000)) 
    txdat_i_1
       (.I0(\TxD_shift_reg_n_0_[0] ),
        .I1(txdat_i_2_n_0),
        .I2(\TxD_state_reg_n_0_[4] ),
        .I3(p_1_in_0),
        .I4(BitTick),
        .I5(txdat),
        .O(txdat_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    txdat_i_2
       (.I0(\TxD_state_reg_n_0_[2] ),
        .I1(\TxD_state_reg_n_0_[3] ),
        .O(txdat_i_2_n_0));
  FDRE txdat_reg
       (.C(clk2x),
        .CE(1'b1),
        .D(txdat_i_1_n_0),
        .Q(txdat),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
