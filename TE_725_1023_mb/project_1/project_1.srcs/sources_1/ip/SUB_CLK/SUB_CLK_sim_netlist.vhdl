-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Sat Oct 21 23:33:13 2017
-- Host        : DESKTOP-6EAE6HJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/nks/Desktop/test_725/project_1/project_1.srcs/sources_1/ip/SUB_CLK/SUB_CLK_sim_netlist.vhdl
-- Design      : SUB_CLK
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SUB_CLK_SUB_CLK_clk_wiz is
  port (
    clk_120m : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in_100m : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SUB_CLK_SUB_CLK_clk_wiz : entity is "SUB_CLK_clk_wiz";
end SUB_CLK_SUB_CLK_clk_wiz;

architecture STRUCTURE of SUB_CLK_SUB_CLK_clk_wiz is
  signal clk_120m_SUB_CLK : STD_LOGIC;
  signal clk_in_100m_SUB_CLK : STD_LOGIC;
  signal clkfbout_SUB_CLK : STD_LOGIC;
  signal clkfbout_buf_SUB_CLK : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_SUB_CLK,
      O => clkfbout_buf_SUB_CLK
    );
clkin1_bufg: unisim.vcomponents.BUFG
     port map (
      I => clk_in_100m,
      O => clk_in_100m_SUB_CLK
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_120m_SUB_CLK,
      O => clk_120m
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 42,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 7,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 5,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_SUB_CLK,
      CLKFBOUT => clkfbout_SUB_CLK,
      CLKIN1 => clk_in_100m_SUB_CLK,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => clk_120m_SUB_CLK,
      CLKOUT1 => NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT2 => NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT3 => NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_plle2_adv_inst_LOCKED_UNCONNECTED,
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SUB_CLK is
  port (
    clk_120m : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in_100m : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SUB_CLK : entity is true;
end SUB_CLK;

architecture STRUCTURE of SUB_CLK is
begin
inst: entity work.SUB_CLK_SUB_CLK_clk_wiz
     port map (
      clk_120m => clk_120m,
      clk_in_100m => clk_in_100m,
      reset => reset
    );
end STRUCTURE;
