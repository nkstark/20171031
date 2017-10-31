// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sat Oct 21 14:43:49 2017
// Host        : DESKTOP-6EAE6HJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MAIN_CLK_stub.v
// Design      : MAIN_CLK
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_250m, clk_100m, clk_10m, clk_out4, reset, 
  clk_100m_p17)
/* synthesis syn_black_box black_box_pad_pin="clk_250m,clk_100m,clk_10m,clk_out4,reset,clk_100m_p17" */;
  output clk_250m;
  output clk_100m;
  output clk_10m;
  output clk_out4;
  input reset;
  input clk_100m_p17;
endmodule
