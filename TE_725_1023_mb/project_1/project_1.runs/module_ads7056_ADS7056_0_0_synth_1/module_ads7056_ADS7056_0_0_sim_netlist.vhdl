-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue Oct 31 01:17:12 2017
-- Host        : DESKTOP-I9PFHR4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ module_ads7056_ADS7056_0_0_sim_netlist.vhdl
-- Design      : module_ads7056_ADS7056_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADS7056 is
  port (
    clk_out : out STD_LOGIC;
    cnv : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 17 downto 0 );
    clk_60m : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADS7056;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADS7056 is
  signal \^cnv\ : STD_LOGIC;
  signal \cnv_cnt_reg[0]_C_n_0\ : STD_LOGIC;
  signal \cnv_cnt_reg[1]_C_n_0\ : STD_LOGIC;
  signal \cnv_cnt_reg[2]_C_n_0\ : STD_LOGIC;
  signal \cnv_cnt_reg[3]_C_n_0\ : STD_LOGIC;
  signal \cnv_cnt_reg[4]_C_n_0\ : STD_LOGIC;
  signal cnv_i_1_n_0 : STD_LOGIC;
  signal \^data\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \data[17]_i_1_n_0\ : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnv_cnt[0]_C_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnv_cnt[1]_C_i_1\ : label is "soft_lutpair0";
begin
  cnv <= \^cnv\;
  data(17 downto 0) <= \^data\(17 downto 0);
clk_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_60m,
      I1 => \^cnv\,
      O => clk_out
    );
\cnv_cnt[0]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => rst,
      I1 => \cnv_cnt_reg[3]_C_n_0\,
      I2 => \cnv_cnt_reg[4]_C_n_0\,
      I3 => \cnv_cnt_reg[0]_C_n_0\,
      O => p_3_in(0)
    );
\cnv_cnt[1]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070700"
    )
        port map (
      I0 => \cnv_cnt_reg[4]_C_n_0\,
      I1 => \cnv_cnt_reg[3]_C_n_0\,
      I2 => rst,
      I3 => \cnv_cnt_reg[0]_C_n_0\,
      I4 => \cnv_cnt_reg[1]_C_n_0\,
      O => p_3_in(1)
    );
\cnv_cnt[2]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007070707000000"
    )
        port map (
      I0 => \cnv_cnt_reg[4]_C_n_0\,
      I1 => \cnv_cnt_reg[3]_C_n_0\,
      I2 => rst,
      I3 => \cnv_cnt_reg[1]_C_n_0\,
      I4 => \cnv_cnt_reg[0]_C_n_0\,
      I5 => \cnv_cnt_reg[2]_C_n_0\,
      O => p_3_in(2)
    );
\cnv_cnt[3]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110101010101010"
    )
        port map (
      I0 => \cnv_cnt_reg[4]_C_n_0\,
      I1 => rst,
      I2 => \cnv_cnt_reg[3]_C_n_0\,
      I3 => \cnv_cnt_reg[1]_C_n_0\,
      I4 => \cnv_cnt_reg[0]_C_n_0\,
      I5 => \cnv_cnt_reg[2]_C_n_0\,
      O => p_3_in(3)
    );
\cnv_cnt[4]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1004040404040404"
    )
        port map (
      I0 => rst,
      I1 => \cnv_cnt_reg[4]_C_n_0\,
      I2 => \cnv_cnt_reg[3]_C_n_0\,
      I3 => \cnv_cnt_reg[2]_C_n_0\,
      I4 => \cnv_cnt_reg[0]_C_n_0\,
      I5 => \cnv_cnt_reg[1]_C_n_0\,
      O => p_3_in(4)
    );
\cnv_cnt_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m,
      CE => '1',
      CLR => rst,
      D => p_3_in(0),
      Q => \cnv_cnt_reg[0]_C_n_0\
    );
\cnv_cnt_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m,
      CE => '1',
      CLR => rst,
      D => p_3_in(1),
      Q => \cnv_cnt_reg[1]_C_n_0\
    );
\cnv_cnt_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m,
      CE => '1',
      CLR => rst,
      D => p_3_in(2),
      Q => \cnv_cnt_reg[2]_C_n_0\
    );
\cnv_cnt_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m,
      CE => '1',
      CLR => rst,
      D => p_3_in(3),
      Q => \cnv_cnt_reg[3]_C_n_0\
    );
\cnv_cnt_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk_60m,
      CE => '1',
      CLR => rst,
      D => p_3_in(4),
      Q => \cnv_cnt_reg[4]_C_n_0\
    );
cnv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8888BBB88888"
    )
        port map (
      I0 => \^cnv\,
      I1 => rst,
      I2 => \cnv_cnt_reg[2]_C_n_0\,
      I3 => \cnv_cnt_reg[1]_C_n_0\,
      I4 => \cnv_cnt_reg[4]_C_n_0\,
      I5 => \cnv_cnt_reg[3]_C_n_0\,
      O => cnv_i_1_n_0
    );
cnv_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_60m,
      CE => '1',
      D => cnv_i_1_n_0,
      Q => \^cnv\,
      R => '0'
    );
\data[17]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_60m,
      O => \data[17]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => data_in,
      Q => \^data\(0)
    );
\data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(9),
      Q => \^data\(10)
    );
\data_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(10),
      Q => \^data\(11)
    );
\data_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(11),
      Q => \^data\(12)
    );
\data_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(12),
      Q => \^data\(13)
    );
\data_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(13),
      Q => \^data\(14)
    );
\data_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(14),
      Q => \^data\(15)
    );
\data_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(15),
      Q => \^data\(16)
    );
\data_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(16),
      Q => \^data\(17)
    );
\data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(0),
      Q => \^data\(1)
    );
\data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(1),
      Q => \^data\(2)
    );
\data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(2),
      Q => \^data\(3)
    );
\data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(3),
      Q => \^data\(4)
    );
\data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(4),
      Q => \^data\(5)
    );
\data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(5),
      Q => \^data\(6)
    );
\data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(6),
      Q => \^data\(7)
    );
\data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(7),
      Q => \^data\(8)
    );
\data_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_60m,
      CE => \data[17]_i_1_n_0\,
      CLR => rst,
      D => \^data\(8),
      Q => \^data\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_60m : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    cnv : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ads7056_ADS7056_0_0,ADS7056,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ADS7056,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADS7056
     port map (
      clk_60m => clk_60m,
      clk_out => clk_out,
      cnv => cnv,
      data(17 downto 0) => data(17 downto 0),
      data_in => data_in,
      rst => rst
    );
end STRUCTURE;
