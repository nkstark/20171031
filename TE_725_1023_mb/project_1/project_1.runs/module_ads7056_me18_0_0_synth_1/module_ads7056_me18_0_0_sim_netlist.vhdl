-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue Oct 31 01:16:04 2017
-- Host        : DESKTOP-I9PFHR4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ module_ads7056_me18_0_0_sim_netlist.vhdl
-- Design      : module_ads7056_me18_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_me18 is
  port (
    tx : out STD_LOGIC;
    clk2x : in STD_LOGIC;
    TxD_start : in STD_LOGIC;
    TxD_data : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_me18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_me18 is
  signal BitTick : STD_LOGIC;
  signal \TxD_shift[17]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[10]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[11]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[12]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[13]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[14]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[15]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[16]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[17]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[8]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[9]\ : STD_LOGIC;
  signal TxD_state : STD_LOGIC;
  signal \TxD_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \TxD_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \TxD_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \TxD_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \TxD_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \TxD_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \TxD_state_reg_n_0_[4]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal p_1_in_0 : STD_LOGIC;
  signal tx_i_1_n_0 : STD_LOGIC;
  signal txdat : STD_LOGIC;
  signal txdat_i_1_n_0 : STD_LOGIC;
  signal txdat_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of BitTick_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \TxD_shift[17]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \TxD_shift[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \TxD_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \TxD_state[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tx_i_1 : label is "soft_lutpair2";
begin
BitTick_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitTick,
      O => p_0_in
    );
BitTick_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => '1',
      D => p_0_in,
      Q => BitTick,
      R => '0'
    );
\TxD_shift[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[1]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(0),
      O => p_1_in(0)
    );
\TxD_shift[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[11]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(10),
      O => p_1_in(10)
    );
\TxD_shift[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[12]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(11),
      O => p_1_in(11)
    );
\TxD_shift[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[13]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(12),
      O => p_1_in(12)
    );
\TxD_shift[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[14]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(13),
      O => p_1_in(13)
    );
\TxD_shift[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[15]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(14),
      O => p_1_in(14)
    );
\TxD_shift[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[16]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(15),
      O => p_1_in(15)
    );
\TxD_shift[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[17]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(16),
      O => p_1_in(16)
    );
\TxD_shift[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => BitTick,
      I1 => p_1_in_0,
      I2 => TxD_start,
      I3 => \TxD_state[5]_i_3_n_0\,
      O => \TxD_shift[17]_i_1_n_0\
    );
\TxD_shift[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TxD_data(17),
      I1 => TxD_start,
      I2 => \TxD_state[5]_i_3_n_0\,
      O => p_1_in(17)
    );
\TxD_shift[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[2]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(1),
      O => p_1_in(1)
    );
\TxD_shift[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[3]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(2),
      O => p_1_in(2)
    );
\TxD_shift[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[4]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(3),
      O => p_1_in(3)
    );
\TxD_shift[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[5]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(4),
      O => p_1_in(4)
    );
\TxD_shift[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[6]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(5),
      O => p_1_in(5)
    );
\TxD_shift[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[7]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(6),
      O => p_1_in(6)
    );
\TxD_shift[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[8]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(7),
      O => p_1_in(7)
    );
\TxD_shift[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[9]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(8),
      O => p_1_in(8)
    );
\TxD_shift[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[10]\,
      I1 => \TxD_state[5]_i_3_n_0\,
      I2 => TxD_start,
      I3 => TxD_data(9),
      O => p_1_in(9)
    );
\TxD_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(0),
      Q => \TxD_shift_reg_n_0_[0]\,
      R => '0'
    );
\TxD_shift_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(10),
      Q => \TxD_shift_reg_n_0_[10]\,
      R => '0'
    );
\TxD_shift_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(11),
      Q => \TxD_shift_reg_n_0_[11]\,
      R => '0'
    );
\TxD_shift_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(12),
      Q => \TxD_shift_reg_n_0_[12]\,
      R => '0'
    );
\TxD_shift_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(13),
      Q => \TxD_shift_reg_n_0_[13]\,
      R => '0'
    );
\TxD_shift_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(14),
      Q => \TxD_shift_reg_n_0_[14]\,
      R => '0'
    );
\TxD_shift_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(15),
      Q => \TxD_shift_reg_n_0_[15]\,
      R => '0'
    );
\TxD_shift_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(16),
      Q => \TxD_shift_reg_n_0_[16]\,
      R => '0'
    );
\TxD_shift_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(17),
      Q => \TxD_shift_reg_n_0_[17]\,
      R => '0'
    );
\TxD_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(1),
      Q => \TxD_shift_reg_n_0_[1]\,
      R => '0'
    );
\TxD_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(2),
      Q => \TxD_shift_reg_n_0_[2]\,
      R => '0'
    );
\TxD_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(3),
      Q => \TxD_shift_reg_n_0_[3]\,
      R => '0'
    );
\TxD_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(4),
      Q => \TxD_shift_reg_n_0_[4]\,
      R => '0'
    );
\TxD_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(5),
      Q => \TxD_shift_reg_n_0_[5]\,
      R => '0'
    );
\TxD_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(6),
      Q => \TxD_shift_reg_n_0_[6]\,
      R => '0'
    );
\TxD_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(7),
      Q => \TxD_shift_reg_n_0_[7]\,
      R => '0'
    );
\TxD_shift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(8),
      Q => \TxD_shift_reg_n_0_[8]\,
      R => '0'
    );
\TxD_shift_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => \TxD_shift[17]_i_1_n_0\,
      D => p_1_in(9),
      Q => \TxD_shift_reg_n_0_[9]\,
      R => '0'
    );
\TxD_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557555500000000"
    )
        port map (
      I0 => \TxD_state_reg_n_0_[0]\,
      I1 => \TxD_state_reg_n_0_[2]\,
      I2 => \TxD_state_reg_n_0_[3]\,
      I3 => \TxD_state_reg_n_0_[1]\,
      I4 => \TxD_state_reg_n_0_[4]\,
      I5 => p_1_in_0,
      O => \TxD_state[0]_i_1_n_0\
    );
\TxD_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \TxD_state_reg_n_0_[0]\,
      I1 => p_1_in_0,
      I2 => \TxD_state_reg_n_0_[1]\,
      O => \TxD_state[1]_i_1_n_0\
    );
\TxD_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFF00000000001"
    )
        port map (
      I0 => \TxD_state_reg_n_0_[3]\,
      I1 => \TxD_state_reg_n_0_[4]\,
      I2 => \TxD_state_reg_n_0_[0]\,
      I3 => \TxD_state_reg_n_0_[1]\,
      I4 => \TxD_state_reg_n_0_[2]\,
      I5 => p_1_in_0,
      O => \TxD_state[2]_i_1_n_0\
    );
\TxD_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \TxD_state_reg_n_0_[1]\,
      I1 => \TxD_state_reg_n_0_[0]\,
      I2 => \TxD_state_reg_n_0_[2]\,
      I3 => p_1_in_0,
      I4 => \TxD_state_reg_n_0_[3]\,
      O => \TxD_state[3]_i_1_n_0\
    );
\TxD_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7800F000F000D000"
    )
        port map (
      I0 => \TxD_state_reg_n_0_[0]\,
      I1 => \TxD_state_reg_n_0_[1]\,
      I2 => \TxD_state_reg_n_0_[4]\,
      I3 => p_1_in_0,
      I4 => \TxD_state_reg_n_0_[3]\,
      I5 => \TxD_state_reg_n_0_[2]\,
      O => \TxD_state[4]_i_1_n_0\
    );
\TxD_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BitTick,
      I1 => TxD_start,
      I2 => \TxD_state[5]_i_3_n_0\,
      O => TxD_state
    );
\TxD_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCCCCC4CCCCCDCC"
    )
        port map (
      I0 => \TxD_state_reg_n_0_[4]\,
      I1 => p_1_in_0,
      I2 => \TxD_state_reg_n_0_[3]\,
      I3 => \TxD_state_reg_n_0_[2]\,
      I4 => \TxD_state_reg_n_0_[1]\,
      I5 => \TxD_state_reg_n_0_[0]\,
      O => \TxD_state[5]_i_2_n_0\
    );
\TxD_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \TxD_state_reg_n_0_[2]\,
      I1 => \TxD_state_reg_n_0_[3]\,
      I2 => \TxD_state_reg_n_0_[4]\,
      I3 => p_1_in_0,
      I4 => \TxD_state_reg_n_0_[1]\,
      I5 => \TxD_state_reg_n_0_[0]\,
      O => \TxD_state[5]_i_3_n_0\
    );
\TxD_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => TxD_state,
      D => \TxD_state[0]_i_1_n_0\,
      Q => \TxD_state_reg_n_0_[0]\,
      R => '0'
    );
\TxD_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => TxD_state,
      D => \TxD_state[1]_i_1_n_0\,
      Q => \TxD_state_reg_n_0_[1]\,
      R => '0'
    );
\TxD_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => TxD_state,
      D => \TxD_state[2]_i_1_n_0\,
      Q => \TxD_state_reg_n_0_[2]\,
      R => '0'
    );
\TxD_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => TxD_state,
      D => \TxD_state[3]_i_1_n_0\,
      Q => \TxD_state_reg_n_0_[3]\,
      R => '0'
    );
\TxD_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => TxD_state,
      D => \TxD_state[4]_i_1_n_0\,
      Q => \TxD_state_reg_n_0_[4]\,
      R => '0'
    );
\TxD_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk2x,
      CE => TxD_state,
      D => \TxD_state[5]_i_2_n_0\,
      Q => p_1_in_0,
      R => '0'
    );
tx_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => txdat,
      I1 => BitTick,
      O => tx_i_1_n_0
    );
tx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk2x,
      CE => '1',
      D => tx_i_1_n_0,
      Q => tx,
      R => '0'
    );
txdat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA03FFFFAA030000"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[0]\,
      I1 => txdat_i_2_n_0,
      I2 => \TxD_state_reg_n_0_[4]\,
      I3 => p_1_in_0,
      I4 => BitTick,
      I5 => txdat,
      O => txdat_i_1_n_0
    );
txdat_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \TxD_state_reg_n_0_[2]\,
      I1 => \TxD_state_reg_n_0_[3]\,
      O => txdat_i_2_n_0
    );
txdat_reg: unisim.vcomponents.FDRE
     port map (
      C => clk2x,
      CE => '1',
      D => txdat_i_1_n_0,
      Q => txdat,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk2x : in STD_LOGIC;
    TxD_data : in STD_LOGIC_VECTOR ( 17 downto 0 );
    TxD_start : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ads7056_me18_0_0,me18,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "me18,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_me18
     port map (
      TxD_data(17 downto 0) => TxD_data(17 downto 0),
      TxD_start => TxD_start,
      clk2x => clk2x,
      tx => tx
    );
end STRUCTURE;
