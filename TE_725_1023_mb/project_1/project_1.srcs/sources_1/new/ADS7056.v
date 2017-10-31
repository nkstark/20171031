`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/28 01:40:16
// Design Name: 
// Module Name: ADS7056
// Project Name: 
// Target Devices: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ADS7056(
	input data_in,
	input rst,
	input clk_60m,
	//input [3:0]cnv_status,

	output  clk_out,
	output reg cnv,
	output reg[17:0] data
	);

	//user REG
	reg[7:0] cnv_cnt=0;
	reg[7:0] data_cnt=0;

	//cnv_control
always @(posedge clk_60m or posedge rst) begin
	if (rst) begin
		// reset
		cnv_cnt=0;
		// data=18'b00_0000_0000_0000_0000;
	end

	else if ((clk_60m)&(!rst)) begin
		if (cnv_cnt<18) begin
			cnv<=0;
			cnv_cnt=cnv_cnt+1;
			
		end
		else if ((cnv_cnt>=18)&(cnv_cnt<23)) begin
			cnv<=1;
			cnv_cnt=cnv_cnt+1;
		end
		else if (cnv_cnt>=23) begin
			cnv_cnt<=0;
			cnv<=1;
		end
		
	end
end

	//clk_control
	// BUFGCE clk_output_control(
	// 	.O(clk),
	// 	.CE(~cnv),
	// 	.I(clk_60m)
	// 	);
	 assign clk_out =(~cnv)&(clk_60m) ;

	//data_read
always @(negedge clk_60m or posedge rst) begin
	if (rst) begin
		// reset
		 data=18'b00_0000_0000_0000_0000;
		data_cnt=0;
	end
	else if ((!clk_60m) &(!rst))begin
		data_cnt=((data_cnt==17)? 0:(data_cnt+1));

		data[17:0]={data[16:0],data_in};


	end
end




endmodule