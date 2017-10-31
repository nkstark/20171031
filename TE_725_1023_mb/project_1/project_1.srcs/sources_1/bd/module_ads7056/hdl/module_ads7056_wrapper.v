//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Tue Oct 31 01:14:35 2017
//Host        : DESKTOP-I9PFHR4 running 64-bit major release  (build 9200)
//Command     : generate_target module_ads7056_wrapper.bd
//Design      : module_ads7056_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module module_ads7056_wrapper
   (NCS,
    POF_N,
    POF_P,
    SCK,
    SDO,
    clock_rtl,
    led,
    reset_rtl,
    reset_rtl_0,
    reset_rtl_0_1,
    spi_rtl_io0_io,
    spi_rtl_io1_io,
    spi_rtl_io2_io,
    spi_rtl_io3_io,
    spi_rtl_ss_io);
  output NCS;
  output [0:0]POF_N;
  output [0:0]POF_P;
  output SCK;
  input SDO;
  input clock_rtl;
  output led;
  input reset_rtl;
  input reset_rtl_0;
  input reset_rtl_0_1;
  inout spi_rtl_io0_io;
  inout spi_rtl_io1_io;
  inout spi_rtl_io2_io;
  inout spi_rtl_io3_io;
  inout [0:0]spi_rtl_ss_io;

  wire NCS;
  wire [0:0]POF_N;
  wire [0:0]POF_P;
  wire SCK;
  wire SDO;
  wire clock_rtl;
  wire led;
  wire reset_rtl;
  wire reset_rtl_0;
  wire reset_rtl_0_1;
  wire spi_rtl_io0_i;
  wire spi_rtl_io0_io;
  wire spi_rtl_io0_o;
  wire spi_rtl_io0_t;
  wire spi_rtl_io1_i;
  wire spi_rtl_io1_io;
  wire spi_rtl_io1_o;
  wire spi_rtl_io1_t;
  wire spi_rtl_io2_i;
  wire spi_rtl_io2_io;
  wire spi_rtl_io2_o;
  wire spi_rtl_io2_t;
  wire spi_rtl_io3_i;
  wire spi_rtl_io3_io;
  wire spi_rtl_io3_o;
  wire spi_rtl_io3_t;
  wire [0:0]spi_rtl_ss_i_0;
  wire [0:0]spi_rtl_ss_io_0;
  wire [0:0]spi_rtl_ss_o_0;
  wire spi_rtl_ss_t;

  module_ads7056 module_ads7056_i
       (.NCS(NCS),
        .POF_N(POF_N),
        .POF_P(POF_P),
        .SCK(SCK),
        .SDO(SDO),
        .clock_rtl(clock_rtl),
        .led(led),
        .reset_rtl(reset_rtl),
        .reset_rtl_0(reset_rtl_0),
        .reset_rtl_0_1(reset_rtl_0_1),
        .spi_rtl_io0_i(spi_rtl_io0_i),
        .spi_rtl_io0_o(spi_rtl_io0_o),
        .spi_rtl_io0_t(spi_rtl_io0_t),
        .spi_rtl_io1_i(spi_rtl_io1_i),
        .spi_rtl_io1_o(spi_rtl_io1_o),
        .spi_rtl_io1_t(spi_rtl_io1_t),
        .spi_rtl_io2_i(spi_rtl_io2_i),
        .spi_rtl_io2_o(spi_rtl_io2_o),
        .spi_rtl_io2_t(spi_rtl_io2_t),
        .spi_rtl_io3_i(spi_rtl_io3_i),
        .spi_rtl_io3_o(spi_rtl_io3_o),
        .spi_rtl_io3_t(spi_rtl_io3_t),
        .spi_rtl_ss_i(spi_rtl_ss_i_0),
        .spi_rtl_ss_o(spi_rtl_ss_o_0),
        .spi_rtl_ss_t(spi_rtl_ss_t));
  IOBUF spi_rtl_io0_iobuf
       (.I(spi_rtl_io0_o),
        .IO(spi_rtl_io0_io),
        .O(spi_rtl_io0_i),
        .T(spi_rtl_io0_t));
  IOBUF spi_rtl_io1_iobuf
       (.I(spi_rtl_io1_o),
        .IO(spi_rtl_io1_io),
        .O(spi_rtl_io1_i),
        .T(spi_rtl_io1_t));
  IOBUF spi_rtl_io2_iobuf
       (.I(spi_rtl_io2_o),
        .IO(spi_rtl_io2_io),
        .O(spi_rtl_io2_i),
        .T(spi_rtl_io2_t));
  IOBUF spi_rtl_io3_iobuf
       (.I(spi_rtl_io3_o),
        .IO(spi_rtl_io3_io),
        .O(spi_rtl_io3_i),
        .T(spi_rtl_io3_t));
  IOBUF spi_rtl_ss_iobuf_0
       (.I(spi_rtl_ss_o_0),
        .IO(spi_rtl_ss_io[0]),
        .O(spi_rtl_ss_i_0),
        .T(spi_rtl_ss_t));
endmodule
