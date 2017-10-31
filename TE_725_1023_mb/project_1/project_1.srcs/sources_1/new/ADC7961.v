`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2017 13:52:30
// Design Name: 
// Module Name: ADC7961
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


module ADC7961_cnv_clk(
input clk_250m,
input reset,
output reg adc_cnv,
output adc_clk
    );
    reg [7:0] cnt_cnv=0;
    reg [7:0] cnt_clk=0;
    reg adc_clk_status=0;
    reg adc_clk_cnt_start=0;
    assign adc_clk = adc_clk_status & clk_250m;
    
    
    always @ (posedge clk_250m or posedge reset)
    begin
    if(reset)
    begin
        cnt_cnv=0;
        cnt_clk=0;
    end
    else
    begin
    
    //erzeugt cnv Signal
        if(cnt_cnv < 20)
        begin
            cnt_cnv = cnt_cnv + 1;
            adc_cnv=1;
        end
        else if((cnt_cnv>=20) &&(cnt_cnv<49 ))
        begin
            adc_cnv = 0;
            cnt_cnv = cnt_cnv + 1;
        end
        else if((cnt_cnv >= 49))
        begin
            adc_clk_cnt_start=1;
            adc_cnv=1;
            cnt_cnv = 0;
             cnt_clk=0;
        end
 //erzeugt adc_clk       
        if(adc_clk_cnt_start)
        begin
            if(cnt_clk< 16)
            begin
            adc_clk_status=1;
            cnt_clk=cnt_clk+1;
                
            end
            else if(cnt_clk>=16)
            begin
               adc_clk_cnt_start=0;
               adc_clk_status=0;
               cnt_clk=0;               
            end
        end
        
                
    end
      
    end
  
    
endmodule


//////////////////////////////////////////////////////////////////////////////////
module ADC7961_dco_dat(
input adc_dco,
input adc_dat,
input adc_cnv,
input reset,

output reg[15:0] data,
output reg data_ready
);

reg [7:0] cnt=0;
reg [15:0] data_temp=0;
reg data_ready_temp;


//always @ (posedge adc_dco or posedge reset or negedge adc_cnv)
always @ (posedge adc_dco or posedge reset)

begin
    if(reset)
    begin
        data_temp=0;
//        adc_data=0;
//        data_ready=0;
    end
//    if(!adc_cnv)
//    begin
//        data_temp=0;
//    end
    if(adc_dco)
    begin
        data_temp[15:0]={data_temp[14:0],adc_dat};
//        data<=data<<1;
    end
end

always @(negedge adc_dco)
begin
    
    if(cnt < 17)
    begin 
        data_ready_temp=0;
        cnt=cnt+1;
    end
    if(cnt>=17)
    begin
        data_ready_temp=1;
        cnt=0;
    end

end

always @ (posedge data_ready_temp or negedge data_ready_temp)
begin
    if(data_ready_temp==1)
    begin
    data=data_temp;
        data_ready=0;
    end
    if(data_ready_temp==0)
    begin
    data_ready=1;
    end
end


endmodule

//////////////////////////////////////////////////////////////////////////////////

module ADC7961(
//clk input and rst signal
input clk_250m,
input reset,
// adc_interface
input adc_dco,
input adc_dat,
output adc_clk,
output adc_cnv,
//data output
output [15:0] data,
output  data_ready

);

reg adc_read_reset=0;
wire cnv2reset;
assign cnv2reset=~adc_cnv;

ADC7961_cnv_clk ADC_send(
.clk_250m(clk_250m),
.reset(reset),
.adc_cnv(adc_cnv),
.adc_clk(adc_clk)
);
ADC7961_dco_dat ADC_read(
.adc_dco(adc_dco),
.adc_dat(adc_dat),
.adc_cnv(adc_cnv),
.reset(reset),
.data(data),
.data_ready(data_ready)
);


endmodule

