`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/22 01:42:36
// Design Name: 
// Module Name: SYN
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


module SYN(
//input clk_100m,
input reset,
input data_ready,

output reg SYN
    );
//    reg [15:0] cnt=0;
    reg [1:0]data_ready_flag=0;
    
 always @ (posedge data_ready or posedge reset)
 begin
    if(reset)
    begin
        data_ready_flag=0;
    end
    else if(data_ready==1)
    begin
        if(data_ready_flag < 1)
        begin
            data_ready_flag=data_ready_flag+1;
            SYN<=0;
        end
        else if(data_ready_flag>=1)
        begin
            data_ready_flag=0;
            SYN<=1;
         end
    end
        
 end
    
    
    
// always @ (posedge clk_100m or posedge data_ready)
// begin   
//    if(data_ready)
//    begin
//        data_ready_flag=data_ready_flag+1; //data ready
//    end
//     if((clk_100m ==1)&(data_ready_flag==2))
//    begin
        
//    end
    
// end  
    
endmodule
