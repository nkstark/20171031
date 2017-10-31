-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Sat Oct 21 23:33:13 2017
-- Host        : DESKTOP-6EAE6HJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/nks/Desktop/test_725/project_1/project_1.srcs/sources_1/ip/SUB_CLK/SUB_CLK_stub.vhdl
-- Design      : SUB_CLK
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SUB_CLK is
  Port ( 
    clk_120m : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in_100m : in STD_LOGIC
  );

end SUB_CLK;

architecture stub of SUB_CLK is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_120m,reset,clk_in_100m";
begin
end;
