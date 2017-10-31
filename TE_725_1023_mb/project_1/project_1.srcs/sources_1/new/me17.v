`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2017 15:48:38
// Design Name: 
// Module Name: me17
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


module me17
(
input clk2x,
input [16:0] TxD_data,
input TxD_start,
output reg tx
);

reg [5:0] TxD_state = 0; // state machine declaration
wire TxD_ready = (TxD_state==0);
//assign TxD_busy = ~TxD_ready;

reg BitTick = 0;
reg [16:0] TxD_shift = 0;
always @(posedge clk2x)
begin
	BitTick <= ~BitTick; //data clk
	if(TxD_ready & TxD_start)
		TxD_shift <= TxD_data;
	else
	if(TxD_state[5] & BitTick)
		TxD_shift <= (TxD_shift >> 1);

	casex(TxD_state)
		6'b000000: 	if(TxD_start) TxD_state <= 6'b000100;
		6'b000100: 	if(BitTick)   TxD_state <= 6'b100000;  // start bit
		6'b1xxxxx: 	if(BitTick) begin //bit x
					   TxD_state <= (TxD_state == 6'b110000)? 6'b000011 : TxD_state + 1;
					end
		6'b000011: 	if(BitTick)   TxD_state <= 6'b000000;  // stop
		default:  	if(BitTick)   TxD_state <= 6'b000000;
	endcase
end

reg txdat;
wire TxD = (TxD_state<4) | (TxD_state[5] & TxD_shift[0]); //uart data
always @(posedge clk2x) if(BitTick) txdat <= TxD;
always @(posedge clk2x) tx <= txdat^BitTick; //manchester data

endmodule
