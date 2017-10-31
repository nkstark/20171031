`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2017 11:14:11
// Design Name: 
// Module Name: led
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: this module is used to drive the led(M16)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module led(
input clk_led,
input [3:0] control,
output reg led
);
reg [31:0] counter=0;
reg [31:0] counter_compare;

always @(negedge clk_led) begin
    if(control==0)
    begin
        counter_compare=1000000;
    end
    else if(control!=0)
    begin
        counter_compare=10000000;
    end

end

    always@(posedge clk_led)
    begin  
        if(counter<counter_compare)
        begin
        counter<=counter+1;
        end
        else
        begin
        led<=~led;
        counter=0;
        end
    end  
endmodule
