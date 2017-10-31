// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sat Oct 28 22:32:08 2017
// Host        : DESKTOP-6EAE6HJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/nks/Desktop/TE_725_1023/project_1/project_1.srcs/sources_1/ip/MAIN_CLK/MAIN_CLK_stub.v
// Design      : MAIN_CLK
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MAIN_CLK(clk_10m, clk_60m, clk_120m, reset, clk_100m_p17)
/* synthesis syn_black_box black_box_pad_pin="clk_10m,clk_60m,clk_120m,reset,clk_100m_p17" */;
  output clk_10m;
  output clk_60m;
  output clk_120m;
  input reset;
  input clk_100m_p17;
endmodule