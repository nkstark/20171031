-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Sun Oct 29 23:48:57 2017
-- Host        : DESKTOP-6EAE6HJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/nks/Desktop/TE_725_1023/project_1/project_1.srcs/sources_1/bd/module_ads7056/ip/module_ads7056_led_0_0/module_ads7056_led_0_0_stub.vhdl
-- Design      : module_ads7056_led_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity module_ads7056_led_0_0 is
  Port ( 
    clk_led : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC
  );

end module_ads7056_led_0_0;

architecture stub of module_ads7056_led_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_led,control[3:0],led";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "led,Vivado 2016.4";
begin
end;
