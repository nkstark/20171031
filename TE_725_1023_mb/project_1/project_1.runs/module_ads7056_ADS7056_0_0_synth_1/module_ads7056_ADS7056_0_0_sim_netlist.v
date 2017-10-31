// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Oct 31 01:17:12 2017
// Host        : DESKTOP-I9PFHR4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ module_ads7056_ADS7056_0_0_sim_netlist.v
// Design      : module_ads7056_ADS7056_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADS7056
   (clk_out,
    cnv,
    data,
    clk_60m,
    rst,
    data_in);
  output clk_out;
  output cnv;
  output [17:0]data;
  input clk_60m;
  input rst;
  input data_in;

  wire clk_60m;
  wire clk_out;
  wire cnv;
  wire \cnv_cnt_reg[0]_C_n_0 ;
  wire \cnv_cnt_reg[1]_C_n_0 ;
  wire \cnv_cnt_reg[2]_C_n_0 ;
  wire \cnv_cnt_reg[3]_C_n_0 ;
  wire \cnv_cnt_reg[4]_C_n_0 ;
  wire cnv_i_1_n_0;
  wire [17:0]data;
  wire \data[17]_i_1_n_0 ;
  wire data_in;
  wire [4:0]p_3_in;
  wire rst;

  LUT2 #(
    .INIT(4'h2)) 
    clk_out_INST_0
       (.I0(clk_60m),
        .I1(cnv),
        .O(clk_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \cnv_cnt[0]_C_i_1 
       (.I0(rst),
        .I1(\cnv_cnt_reg[3]_C_n_0 ),
        .I2(\cnv_cnt_reg[4]_C_n_0 ),
        .I3(\cnv_cnt_reg[0]_C_n_0 ),
        .O(p_3_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00070700)) 
    \cnv_cnt[1]_C_i_1 
       (.I0(\cnv_cnt_reg[4]_C_n_0 ),
        .I1(\cnv_cnt_reg[3]_C_n_0 ),
        .I2(rst),
        .I3(\cnv_cnt_reg[0]_C_n_0 ),
        .I4(\cnv_cnt_reg[1]_C_n_0 ),
        .O(p_3_in[1]));
  LUT6 #(
    .INIT(64'h0007070707000000)) 
    \cnv_cnt[2]_C_i_1 
       (.I0(\cnv_cnt_reg[4]_C_n_0 ),
        .I1(\cnv_cnt_reg[3]_C_n_0 ),
        .I2(rst),
        .I3(\cnv_cnt_reg[1]_C_n_0 ),
        .I4(\cnv_cnt_reg[0]_C_n_0 ),
        .I5(\cnv_cnt_reg[2]_C_n_0 ),
        .O(p_3_in[2]));
  LUT6 #(
    .INIT(64'h0110101010101010)) 
    \cnv_cnt[3]_C_i_1 
       (.I0(\cnv_cnt_reg[4]_C_n_0 ),
        .I1(rst),
        .I2(\cnv_cnt_reg[3]_C_n_0 ),
        .I3(\cnv_cnt_reg[1]_C_n_0 ),
        .I4(\cnv_cnt_reg[0]_C_n_0 ),
        .I5(\cnv_cnt_reg[2]_C_n_0 ),
        .O(p_3_in[3]));
  LUT6 #(
    .INIT(64'h1004040404040404)) 
    \cnv_cnt[4]_C_i_1 
       (.I0(rst),
        .I1(\cnv_cnt_reg[4]_C_n_0 ),
        .I2(\cnv_cnt_reg[3]_C_n_0 ),
        .I3(\cnv_cnt_reg[2]_C_n_0 ),
        .I4(\cnv_cnt_reg[0]_C_n_0 ),
        .I5(\cnv_cnt_reg[1]_C_n_0 ),
        .O(p_3_in[4]));
  FDCE \cnv_cnt_reg[0]_C 
       (.C(clk_60m),
        .CE(1'b1),
        .CLR(rst),
        .D(p_3_in[0]),
        .Q(\cnv_cnt_reg[0]_C_n_0 ));
  FDCE \cnv_cnt_reg[1]_C 
       (.C(clk_60m),
        .CE(1'b1),
        .CLR(rst),
        .D(p_3_in[1]),
        .Q(\cnv_cnt_reg[1]_C_n_0 ));
  FDCE \cnv_cnt_reg[2]_C 
       (.C(clk_60m),
        .CE(1'b1),
        .CLR(rst),
        .D(p_3_in[2]),
        .Q(\cnv_cnt_reg[2]_C_n_0 ));
  FDCE \cnv_cnt_reg[3]_C 
       (.C(clk_60m),
        .CE(1'b1),
        .CLR(rst),
        .D(p_3_in[3]),
        .Q(\cnv_cnt_reg[3]_C_n_0 ));
  FDCE \cnv_cnt_reg[4]_C 
       (.C(clk_60m),
        .CE(1'b1),
        .CLR(rst),
        .D(p_3_in[4]),
        .Q(\cnv_cnt_reg[4]_C_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8888BBB88888)) 
    cnv_i_1
       (.I0(cnv),
        .I1(rst),
        .I2(\cnv_cnt_reg[2]_C_n_0 ),
        .I3(\cnv_cnt_reg[1]_C_n_0 ),
        .I4(\cnv_cnt_reg[4]_C_n_0 ),
        .I5(\cnv_cnt_reg[3]_C_n_0 ),
        .O(cnv_i_1_n_0));
  FDRE cnv_reg
       (.C(clk_60m),
        .CE(1'b1),
        .D(cnv_i_1_n_0),
        .Q(cnv),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \data[17]_i_1 
       (.I0(clk_60m),
        .O(\data[17]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[0] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data_in),
        .Q(data[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[10] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[9]),
        .Q(data[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[11] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[10]),
        .Q(data[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[12] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[11]),
        .Q(data[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[13] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[12]),
        .Q(data[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[14] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[13]),
        .Q(data[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[15] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[14]),
        .Q(data[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[16] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[15]),
        .Q(data[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[17] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[16]),
        .Q(data[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[1] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[0]),
        .Q(data[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[2] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[1]),
        .Q(data[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[3] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[2]),
        .Q(data[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[4] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[3]),
        .Q(data[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[5] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[4]),
        .Q(data[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[6] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[5]),
        .Q(data[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[7] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[6]),
        .Q(data[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[8] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[7]),
        .Q(data[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_reg[9] 
       (.C(clk_60m),
        .CE(\data[17]_i_1_n_0 ),
        .CLR(rst),
        .D(data[8]),
        .Q(data[9]));
endmodule

(* CHECK_LICENSE_TYPE = "module_ads7056_ADS7056_0_0,ADS7056,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ADS7056,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_in,
    rst,
    clk_60m,
    clk_out,
    cnv,
    data);
  input data_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) input rst;
  input clk_60m;
  output clk_out;
  output cnv;
  output [17:0]data;

  wire clk_60m;
  wire clk_out;
  wire cnv;
  wire [17:0]data;
  wire data_in;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADS7056 inst
       (.clk_60m(clk_60m),
        .clk_out(clk_out),
        .cnv(cnv),
        .data(data),
        .data_in(data_in),
        .rst(rst));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
