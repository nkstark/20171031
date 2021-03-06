// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Oct 31 01:17:12 2017
// Host        : DESKTOP-I9PFHR4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/GIT_Project/20171031/TE_725_1023_mb/project_1/project_1.srcs/sources_1/bd/module_ads7056/ip/module_ads7056_ADS7056_0_0/module_ads7056_ADS7056_0_0_stub.v
// Design      : module_ads7056_ADS7056_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADS7056,Vivado 2017.2" *)
module module_ads7056_ADS7056_0_0(data_in, rst, clk_60m, clk_out, cnv, data)
/* synthesis syn_black_box black_box_pad_pin="data_in,rst,clk_60m,clk_out,cnv,data[17:0]" */;
  input data_in;
  input rst;
  input clk_60m;
  output clk_out;
  output cnv;
  output [17:0]data;
endmodule
