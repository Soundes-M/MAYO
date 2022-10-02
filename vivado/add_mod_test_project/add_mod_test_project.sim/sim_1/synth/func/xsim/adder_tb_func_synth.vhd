-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon Aug  1 20:24:18 2022
-- Host        : debian running 64-bit Debian GNU/Linux 11 (bullseye)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/add_mod_test_project/add_mod_test_project.sim/sim_1/synth/func/xsim/adder_tb_func_synth.vhd
-- Design      : adder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    v1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    v2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adder : entity is true;
end adder;

architecture STRUCTURE of adder is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal o_out0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_out00_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_out03_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_out06_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \o_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \o_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \o_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \o_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \o_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \o_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \o_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \o_out[19]_i_2_n_0\ : STD_LOGIC;
  signal \o_out[19]_i_3_n_0\ : STD_LOGIC;
  signal \o_out[19]_i_4_n_0\ : STD_LOGIC;
  signal \o_out[19]_i_5_n_0\ : STD_LOGIC;
  signal \o_out[23]_i_2_n_0\ : STD_LOGIC;
  signal \o_out[23]_i_3_n_0\ : STD_LOGIC;
  signal \o_out[23]_i_4_n_0\ : STD_LOGIC;
  signal \o_out[23]_i_5_n_0\ : STD_LOGIC;
  signal \o_out[27]_i_2_n_0\ : STD_LOGIC;
  signal \o_out[27]_i_3_n_0\ : STD_LOGIC;
  signal \o_out[27]_i_4_n_0\ : STD_LOGIC;
  signal \o_out[27]_i_5_n_0\ : STD_LOGIC;
  signal \o_out[31]_i_3_n_0\ : STD_LOGIC;
  signal \o_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \o_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \o_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \o_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \o_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_out[7]_i_5_n_0\ : STD_LOGIC;
  signal o_out_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \o_out_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_out_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \o_out_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \o_out_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \o_out_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \o_out_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \o_out_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \o_out_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \o_out_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \o_out_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \o_out_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \o_out_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \o_out_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \o_out_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \o_out_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \o_out_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \o_out_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \o_out_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \o_out_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \o_out_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \o_out_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \o_out_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_out_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \o_out_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \o_out_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \o_out_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \o_out_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \o_out_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal v1_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal v2_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_o_out_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_out_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_out_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_out_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \o_out_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_out_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_out_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_out_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_out_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_out_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_out_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_out_reg[7]_i_1\ : label is 35;
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\o_out[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(11),
      I1 => v2_IBUF(11),
      O => \o_out[11]_i_2_n_0\
    );
\o_out[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(10),
      I1 => v2_IBUF(10),
      O => \o_out[11]_i_3_n_0\
    );
\o_out[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(9),
      I1 => v2_IBUF(9),
      O => \o_out[11]_i_4_n_0\
    );
\o_out[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(8),
      I1 => v2_IBUF(8),
      O => \o_out[11]_i_5_n_0\
    );
\o_out[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(15),
      I1 => v2_IBUF(15),
      O => \o_out[15]_i_2_n_0\
    );
\o_out[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(14),
      I1 => v2_IBUF(14),
      O => \o_out[15]_i_3_n_0\
    );
\o_out[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(13),
      I1 => v2_IBUF(13),
      O => \o_out[15]_i_4_n_0\
    );
\o_out[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(12),
      I1 => v2_IBUF(12),
      O => \o_out[15]_i_5_n_0\
    );
\o_out[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(19),
      I1 => v2_IBUF(19),
      O => \o_out[19]_i_2_n_0\
    );
\o_out[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(18),
      I1 => v2_IBUF(18),
      O => \o_out[19]_i_3_n_0\
    );
\o_out[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(17),
      I1 => v2_IBUF(17),
      O => \o_out[19]_i_4_n_0\
    );
\o_out[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(16),
      I1 => v2_IBUF(16),
      O => \o_out[19]_i_5_n_0\
    );
\o_out[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(23),
      I1 => v2_IBUF(23),
      O => \o_out[23]_i_2_n_0\
    );
\o_out[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(22),
      I1 => v2_IBUF(22),
      O => \o_out[23]_i_3_n_0\
    );
\o_out[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(21),
      I1 => v2_IBUF(21),
      O => \o_out[23]_i_4_n_0\
    );
\o_out[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(20),
      I1 => v2_IBUF(20),
      O => \o_out[23]_i_5_n_0\
    );
\o_out[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(27),
      I1 => v2_IBUF(27),
      O => \o_out[27]_i_2_n_0\
    );
\o_out[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(26),
      I1 => v2_IBUF(26),
      O => \o_out[27]_i_3_n_0\
    );
\o_out[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(25),
      I1 => v2_IBUF(25),
      O => \o_out[27]_i_4_n_0\
    );
\o_out[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(24),
      I1 => v2_IBUF(24),
      O => \o_out[27]_i_5_n_0\
    );
\o_out[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      O => p_0_in
    );
\o_out[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(31),
      I1 => v2_IBUF(31),
      O => \o_out[31]_i_3_n_0\
    );
\o_out[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(30),
      I1 => v2_IBUF(30),
      O => \o_out[31]_i_4_n_0\
    );
\o_out[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(29),
      I1 => v2_IBUF(29),
      O => \o_out[31]_i_5_n_0\
    );
\o_out[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(28),
      I1 => v2_IBUF(28),
      O => \o_out[31]_i_6_n_0\
    );
\o_out[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(3),
      I1 => v2_IBUF(3),
      O => \o_out[3]_i_2_n_0\
    );
\o_out[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(2),
      I1 => v2_IBUF(2),
      O => \o_out[3]_i_3_n_0\
    );
\o_out[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(1),
      I1 => v2_IBUF(1),
      O => \o_out[3]_i_4_n_0\
    );
\o_out[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(0),
      I1 => v2_IBUF(0),
      O => \o_out[3]_i_5_n_0\
    );
\o_out[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(7),
      I1 => v2_IBUF(7),
      O => \o_out[7]_i_2_n_0\
    );
\o_out[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(6),
      I1 => v2_IBUF(6),
      O => \o_out[7]_i_3_n_0\
    );
\o_out[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(5),
      I1 => v2_IBUF(5),
      O => \o_out[7]_i_4_n_0\
    );
\o_out[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v1_IBUF(4),
      I1 => v2_IBUF(4),
      O => \o_out[7]_i_5_n_0\
    );
\o_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(0),
      O => o_out(0)
    );
\o_out_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(10),
      O => o_out(10)
    );
\o_out_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(11),
      O => o_out(11)
    );
\o_out_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(12),
      O => o_out(12)
    );
\o_out_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(13),
      O => o_out(13)
    );
\o_out_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(14),
      O => o_out(14)
    );
\o_out_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(15),
      O => o_out(15)
    );
\o_out_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(16),
      O => o_out(16)
    );
\o_out_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(17),
      O => o_out(17)
    );
\o_out_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(18),
      O => o_out(18)
    );
\o_out_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(19),
      O => o_out(19)
    );
\o_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(1),
      O => o_out(1)
    );
\o_out_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(20),
      O => o_out(20)
    );
\o_out_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(21),
      O => o_out(21)
    );
\o_out_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(22),
      O => o_out(22)
    );
\o_out_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(23),
      O => o_out(23)
    );
\o_out_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(24),
      O => o_out(24)
    );
\o_out_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(25),
      O => o_out(25)
    );
\o_out_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(26),
      O => o_out(26)
    );
\o_out_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(27),
      O => o_out(27)
    );
\o_out_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(28),
      O => o_out(28)
    );
\o_out_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(29),
      O => o_out(29)
    );
\o_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(2),
      O => o_out(2)
    );
\o_out_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(30),
      O => o_out(30)
    );
\o_out_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(31),
      O => o_out(31)
    );
\o_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(3),
      O => o_out(3)
    );
\o_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(4),
      O => o_out(4)
    );
\o_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(5),
      O => o_out(5)
    );
\o_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(6),
      O => o_out(6)
    );
\o_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(7),
      O => o_out(7)
    );
\o_out_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(8),
      O => o_out(8)
    );
\o_out_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_out_OBUF(9),
      O => o_out(9)
    );
\o_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out0(0),
      Q => o_out_OBUF(0),
      R => '0'
    );
\o_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out00_out(2),
      Q => o_out_OBUF(10),
      R => '0'
    );
\o_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out00_out(3),
      Q => o_out_OBUF(11),
      R => '0'
    );
\o_out_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_out_reg[11]_i_1_n_0\,
      CO(2) => \o_out_reg[11]_i_1_n_1\,
      CO(1) => \o_out_reg[11]_i_1_n_2\,
      CO(0) => \o_out_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v1_IBUF(11 downto 8),
      O(3 downto 0) => o_out00_out(3 downto 0),
      S(3) => \o_out[11]_i_2_n_0\,
      S(2) => \o_out[11]_i_3_n_0\,
      S(1) => \o_out[11]_i_4_n_0\,
      S(0) => \o_out[11]_i_5_n_0\
    );
\o_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out00_out(4),
      Q => o_out_OBUF(12),
      R => '0'
    );
\o_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out00_out(5),
      Q => o_out_OBUF(13),
      R => '0'
    );
\o_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out00_out(6),
      Q => o_out_OBUF(14),
      R => '0'
    );
\o_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out00_out(7),
      Q => o_out_OBUF(15),
      R => '0'
    );
\o_out_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_out_reg[11]_i_1_n_0\,
      CO(3) => \NLW_o_out_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \o_out_reg[15]_i_1_n_1\,
      CO(1) => \o_out_reg[15]_i_1_n_2\,
      CO(0) => \o_out_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => v1_IBUF(14 downto 12),
      O(3 downto 0) => o_out00_out(7 downto 4),
      S(3) => \o_out[15]_i_2_n_0\,
      S(2) => \o_out[15]_i_3_n_0\,
      S(1) => \o_out[15]_i_4_n_0\,
      S(0) => \o_out[15]_i_5_n_0\
    );
\o_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out03_out(0),
      Q => o_out_OBUF(16),
      R => '0'
    );
\o_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out03_out(1),
      Q => o_out_OBUF(17),
      R => '0'
    );
\o_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out03_out(2),
      Q => o_out_OBUF(18),
      R => '0'
    );
\o_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out03_out(3),
      Q => o_out_OBUF(19),
      R => '0'
    );
\o_out_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_out_reg[19]_i_1_n_0\,
      CO(2) => \o_out_reg[19]_i_1_n_1\,
      CO(1) => \o_out_reg[19]_i_1_n_2\,
      CO(0) => \o_out_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v1_IBUF(19 downto 16),
      O(3 downto 0) => o_out03_out(3 downto 0),
      S(3) => \o_out[19]_i_2_n_0\,
      S(2) => \o_out[19]_i_3_n_0\,
      S(1) => \o_out[19]_i_4_n_0\,
      S(0) => \o_out[19]_i_5_n_0\
    );
\o_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out0(1),
      Q => o_out_OBUF(1),
      R => '0'
    );
\o_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out03_out(4),
      Q => o_out_OBUF(20),
      R => '0'
    );
\o_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out03_out(5),
      Q => o_out_OBUF(21),
      R => '0'
    );
\o_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out03_out(6),
      Q => o_out_OBUF(22),
      R => '0'
    );
\o_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out03_out(7),
      Q => o_out_OBUF(23),
      R => '0'
    );
\o_out_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_out_reg[19]_i_1_n_0\,
      CO(3) => \NLW_o_out_reg[23]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \o_out_reg[23]_i_1_n_1\,
      CO(1) => \o_out_reg[23]_i_1_n_2\,
      CO(0) => \o_out_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => v1_IBUF(22 downto 20),
      O(3 downto 0) => o_out03_out(7 downto 4),
      S(3) => \o_out[23]_i_2_n_0\,
      S(2) => \o_out[23]_i_3_n_0\,
      S(1) => \o_out[23]_i_4_n_0\,
      S(0) => \o_out[23]_i_5_n_0\
    );
\o_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out06_out(0),
      Q => o_out_OBUF(24),
      R => '0'
    );
\o_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out06_out(1),
      Q => o_out_OBUF(25),
      R => '0'
    );
\o_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out06_out(2),
      Q => o_out_OBUF(26),
      R => '0'
    );
\o_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out06_out(3),
      Q => o_out_OBUF(27),
      R => '0'
    );
\o_out_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_out_reg[27]_i_1_n_0\,
      CO(2) => \o_out_reg[27]_i_1_n_1\,
      CO(1) => \o_out_reg[27]_i_1_n_2\,
      CO(0) => \o_out_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v1_IBUF(27 downto 24),
      O(3 downto 0) => o_out06_out(3 downto 0),
      S(3) => \o_out[27]_i_2_n_0\,
      S(2) => \o_out[27]_i_3_n_0\,
      S(1) => \o_out[27]_i_4_n_0\,
      S(0) => \o_out[27]_i_5_n_0\
    );
\o_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out06_out(4),
      Q => o_out_OBUF(28),
      R => '0'
    );
\o_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out06_out(5),
      Q => o_out_OBUF(29),
      R => '0'
    );
\o_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out0(2),
      Q => o_out_OBUF(2),
      R => '0'
    );
\o_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out06_out(6),
      Q => o_out_OBUF(30),
      R => '0'
    );
\o_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out06_out(7),
      Q => o_out_OBUF(31),
      R => '0'
    );
\o_out_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_out_reg[27]_i_1_n_0\,
      CO(3) => \NLW_o_out_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \o_out_reg[31]_i_2_n_1\,
      CO(1) => \o_out_reg[31]_i_2_n_2\,
      CO(0) => \o_out_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => v1_IBUF(30 downto 28),
      O(3 downto 0) => o_out06_out(7 downto 4),
      S(3) => \o_out[31]_i_3_n_0\,
      S(2) => \o_out[31]_i_4_n_0\,
      S(1) => \o_out[31]_i_5_n_0\,
      S(0) => \o_out[31]_i_6_n_0\
    );
\o_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out0(3),
      Q => o_out_OBUF(3),
      R => '0'
    );
\o_out_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_out_reg[3]_i_1_n_0\,
      CO(2) => \o_out_reg[3]_i_1_n_1\,
      CO(1) => \o_out_reg[3]_i_1_n_2\,
      CO(0) => \o_out_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => v1_IBUF(3 downto 0),
      O(3 downto 0) => o_out0(3 downto 0),
      S(3) => \o_out[3]_i_2_n_0\,
      S(2) => \o_out[3]_i_3_n_0\,
      S(1) => \o_out[3]_i_4_n_0\,
      S(0) => \o_out[3]_i_5_n_0\
    );
\o_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out0(4),
      Q => o_out_OBUF(4),
      R => '0'
    );
\o_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out0(5),
      Q => o_out_OBUF(5),
      R => '0'
    );
\o_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out0(6),
      Q => o_out_OBUF(6),
      R => '0'
    );
\o_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out0(7),
      Q => o_out_OBUF(7),
      R => '0'
    );
\o_out_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_out_reg[3]_i_1_n_0\,
      CO(3) => \NLW_o_out_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \o_out_reg[7]_i_1_n_1\,
      CO(1) => \o_out_reg[7]_i_1_n_2\,
      CO(0) => \o_out_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => v1_IBUF(6 downto 4),
      O(3 downto 0) => o_out0(7 downto 4),
      S(3) => \o_out[7]_i_2_n_0\,
      S(2) => \o_out[7]_i_3_n_0\,
      S(1) => \o_out[7]_i_4_n_0\,
      S(0) => \o_out[7]_i_5_n_0\
    );
\o_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out00_out(0),
      Q => o_out_OBUF(8),
      R => '0'
    );
\o_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => o_out00_out(1),
      Q => o_out_OBUF(9),
      R => '0'
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\v1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(0),
      O => v1_IBUF(0)
    );
\v1_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(10),
      O => v1_IBUF(10)
    );
\v1_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(11),
      O => v1_IBUF(11)
    );
\v1_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(12),
      O => v1_IBUF(12)
    );
\v1_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(13),
      O => v1_IBUF(13)
    );
\v1_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(14),
      O => v1_IBUF(14)
    );
\v1_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(15),
      O => v1_IBUF(15)
    );
\v1_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(16),
      O => v1_IBUF(16)
    );
\v1_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(17),
      O => v1_IBUF(17)
    );
\v1_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(18),
      O => v1_IBUF(18)
    );
\v1_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(19),
      O => v1_IBUF(19)
    );
\v1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(1),
      O => v1_IBUF(1)
    );
\v1_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(20),
      O => v1_IBUF(20)
    );
\v1_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(21),
      O => v1_IBUF(21)
    );
\v1_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(22),
      O => v1_IBUF(22)
    );
\v1_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(23),
      O => v1_IBUF(23)
    );
\v1_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(24),
      O => v1_IBUF(24)
    );
\v1_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(25),
      O => v1_IBUF(25)
    );
\v1_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(26),
      O => v1_IBUF(26)
    );
\v1_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(27),
      O => v1_IBUF(27)
    );
\v1_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(28),
      O => v1_IBUF(28)
    );
\v1_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(29),
      O => v1_IBUF(29)
    );
\v1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(2),
      O => v1_IBUF(2)
    );
\v1_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(30),
      O => v1_IBUF(30)
    );
\v1_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(31),
      O => v1_IBUF(31)
    );
\v1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(3),
      O => v1_IBUF(3)
    );
\v1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(4),
      O => v1_IBUF(4)
    );
\v1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(5),
      O => v1_IBUF(5)
    );
\v1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(6),
      O => v1_IBUF(6)
    );
\v1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(7),
      O => v1_IBUF(7)
    );
\v1_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(8),
      O => v1_IBUF(8)
    );
\v1_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v1(9),
      O => v1_IBUF(9)
    );
\v2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(0),
      O => v2_IBUF(0)
    );
\v2_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(10),
      O => v2_IBUF(10)
    );
\v2_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(11),
      O => v2_IBUF(11)
    );
\v2_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(12),
      O => v2_IBUF(12)
    );
\v2_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(13),
      O => v2_IBUF(13)
    );
\v2_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(14),
      O => v2_IBUF(14)
    );
\v2_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(15),
      O => v2_IBUF(15)
    );
\v2_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(16),
      O => v2_IBUF(16)
    );
\v2_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(17),
      O => v2_IBUF(17)
    );
\v2_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(18),
      O => v2_IBUF(18)
    );
\v2_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(19),
      O => v2_IBUF(19)
    );
\v2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(1),
      O => v2_IBUF(1)
    );
\v2_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(20),
      O => v2_IBUF(20)
    );
\v2_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(21),
      O => v2_IBUF(21)
    );
\v2_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(22),
      O => v2_IBUF(22)
    );
\v2_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(23),
      O => v2_IBUF(23)
    );
\v2_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(24),
      O => v2_IBUF(24)
    );
\v2_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(25),
      O => v2_IBUF(25)
    );
\v2_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(26),
      O => v2_IBUF(26)
    );
\v2_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(27),
      O => v2_IBUF(27)
    );
\v2_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(28),
      O => v2_IBUF(28)
    );
\v2_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(29),
      O => v2_IBUF(29)
    );
\v2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(2),
      O => v2_IBUF(2)
    );
\v2_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(30),
      O => v2_IBUF(30)
    );
\v2_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(31),
      O => v2_IBUF(31)
    );
\v2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(3),
      O => v2_IBUF(3)
    );
\v2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(4),
      O => v2_IBUF(4)
    );
\v2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(5),
      O => v2_IBUF(5)
    );
\v2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(6),
      O => v2_IBUF(6)
    );
\v2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(7),
      O => v2_IBUF(7)
    );
\v2_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(8),
      O => v2_IBUF(8)
    );
\v2_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => v2(9),
      O => v2_IBUF(9)
    );
end STRUCTURE;
