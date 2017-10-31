// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sun Oct 29 21:54:31 2017
// Host        : DESKTOP-6EAE6HJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/nks/Desktop/TE_725_1023/project_1/project_1.srcs/sources_1/bd/module_ads7056/ip/module_ads7056_me18_0_0/module_ads7056_me18_0_0_stub.v
// Design      : module_ads7056_me18_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "me18,Vivado 2016.4" *)
module module_ads7056_me18_0_0(clk2x, TxD_data, TxD_start, tx)
/* synthesis syn_black_box black_box_pad_pin="clk2x,TxD_data[17:0],TxD_start,tx" */;
  input clk2x;
  input [17:0]TxD_data;
  input TxD_start;
  output tx;
endmodule
