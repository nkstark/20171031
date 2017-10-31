// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Oct 30 00:52:39 2017
// Host        : DESKTOP-6EAE6HJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ module_ads7056_ADS7056_0_0_stub.v
// Design      : module_ads7056_ADS7056_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADS7056,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data_in, rst, clk_60m, clk_out, cnv, data)
/* synthesis syn_black_box black_box_pad_pin="data_in,rst,clk_60m,clk_out,cnv,data[17:0]" */;
  input data_in;
  input rst;
  input clk_60m;
  output clk_out;
  output cnv;
  output [17:0]data;
endmodule
