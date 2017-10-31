-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue Oct 31 01:17:12 2017
-- Host        : DESKTOP-I9PFHR4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/GIT_Project/20171031/TE_725_1023_mb/project_1/project_1.srcs/sources_1/bd/module_ads7056/ip/module_ads7056_ADS7056_0_0/module_ads7056_ADS7056_0_0_stub.vhdl
-- Design      : module_ads7056_ADS7056_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity module_ads7056_ADS7056_0_0 is
  Port ( 
    data_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_60m : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    cnv : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );

end module_ads7056_ADS7056_0_0;

architecture stub of module_ads7056_ADS7056_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in,rst,clk_60m,clk_out,cnv,data[17:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADS7056,Vivado 2017.2";
begin
end;
