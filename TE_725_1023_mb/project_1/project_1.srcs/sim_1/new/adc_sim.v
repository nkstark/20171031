`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2017 15:04:30
// Design Name: 
// Module Name: adc_sim
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



module adc_sim(

    );
    

    reg ad_clk=0;
    reg rst=0;
    reg ad_data=1;

    
    always #2 ad_clk<= ~ad_clk;
    always #8 ad_data<=~ad_data;
    wire ad_cnv_out;
    wire ad_clk_out;
    wire [17:0] data_18;


ADS7056 test_ads(


     .data_in(ad_data),
     .rst(rst),
     .clk_60m(ad_clk),
//  input cnv_status,

      .clk(ad_clk_out),
      .cnv(ad_cnv_out),
      .data(data_18)
);
    
endmodule