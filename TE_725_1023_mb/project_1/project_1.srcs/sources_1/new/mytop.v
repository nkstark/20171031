`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2017 12:10:06
// Design Name: 
// Module Name: mytop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////mytop test led and Clk
//module mytop(
//    input clk,
//    input reset,
//    output  led
//    );
////code begin
//wire clk_10m;
//MAIN_CLK clock_1(
//      // Clock out ports  
//.clk_10m(clk_10m),
//.clk_250m(clk_250m),
//// Status and control signals               
//.reset(reset), 
//// Clock in ports
//.clk_100m_p17(clk)
//);

//led led_test(
//    .clk_led(clk_10m),
//    .led(led)
//);


////code end    
    
//endmodule

///////////////////////////////mytop test led and Clk
module mytop(
    input clk,
    input reset,
    output  led,
    // interface for ads7056

    input ad_data,
    output ad_clk_out,
    output ad_cnv_out, 


// interface for adc7961    
//    input adc_dco,
//    input adc_dat,
//    output adc_clk,
//    output adc_cnv
    
//    input adc_dco_p,
//    input adc_dat_p,
//    output adc_clk_p,
//    output adc_cnv_p,
    
//    input adc_dco_n,
//    input adc_dat_n,
//    output adc_clk_n,
//    output adc_cnv_n,
//test clk_120m
//    output clk_120m
    output  POF_out_p,
    output POF_out_n

    );
//code begin
wire clk_10m;
wire clk_100m;
wire clk_60m;
wire clk_120m;
 wire[15:0] data;
 wire data_ready;
 wire adc_dco;
 wire adc_dat;
 wire adc_clk;
 wire adc_cnv;
 wire TxD_data;
 wire POF_out;
 wire SYN;
 wire [17:0] data_18;
 
////////////////////////////////////////////////////////////////////////////////////////
MAIN_CLK clock_1(

        .clk_10m(clk_10m),
        .clk_60m(clk_60m),      
        .clk_120m(clk_120m),       
        .reset(reset), 
        .clk_100m_p17(clk)
);
/////////////////////////////////////////////////////////////////////////////////////////////
ADS7056 adc_read(
      .data_in(ad_data),
     .rst(reset),
     .clk_60m(clk_60m),
//  input cnv_status,

      .clk(ad_clk_out),
      .cnv(ad_cnv_out),
      .data(data_18)
  );




//***************************************************************************************//
//SUB_CLK clock_2(
//  // Clock out ports  
//.clk_120m(clk_120m),
//// Status and control signals               
//.reset(reset), 
//// Clock in ports
//.clk_in_100m(clk_100m)
//);



////////////////////////////////////////////////////////////////////////////////
//ADC7961 adc_test(
////clk input and rst signal
//        .clk_250m(clk_250m),
//        .reset(reset),
//// adc_interface
//        .adc_dco(adc_dco),
//        .adc_dat(adc_dat),
//        .adc_clk(adc_clk),
//        .adc_cnv(adc_cnv),
////data output
//        .data(data),
//        .data_ready(data_ready)
//);
////////////////////////transform LVCMOS->LVDS
//  OBUFDS adc_clk_lvds(
//  .O(adc_clk_p),
//  .OB(adc_clk_n),
//  .I(adc_clk)
//  );
  
//   OBUFDS adc_cnv_lvds(
//  .O(adc_cnv_p),
//  .OB(adc_cnv_n),
//  .I(adc_cnv)
//  );
//   IBUFDS adc_dco_lvds(
// .I(adc_dco_p),
// .IB(adc_dco_n),
// .O(adc_dco)
// );
  
// IBUFDS adc_dat_lvds(
//.I(adc_dat_p),
//.IB(adc_dat_n),
//.O(adc_dat)
//);
//*******************************************************************
//SYN ADC2POF(
//    .reset(reset),
//    .data_ready(data_ready),
//    .SYN(SYN)
//);
//******************************************************************
  me18      POF_send(
  .clk2x(clk_120m),
  .TxD_data(data_18),
  .TxD_start(SYN),
  .tx(POF_out));

  OBUFDS POF_TX_lvds(
  .O(POF_out_p),
  .OB(POF_out_n),
  .I(POF_out)
  );

/////////////////////////////////////////////////////////////////////
led led_test(
    .clk_led(clk_10m),
    .led(led)
);


//code end    
    
endmodule

