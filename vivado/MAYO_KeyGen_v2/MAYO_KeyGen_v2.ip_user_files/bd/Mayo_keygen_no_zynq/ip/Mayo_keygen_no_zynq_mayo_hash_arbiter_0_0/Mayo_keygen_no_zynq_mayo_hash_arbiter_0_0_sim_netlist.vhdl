-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Oct 23 16:36:09 2022
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0/Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_sim_netlist.vhdl
-- Design      : Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_mayo_hash_arbiter is
  port (
    o_key_done : out STD_LOGIC;
    o_key_dyn_done : out STD_LOGIC;
    o_sam_done : out STD_LOGIC;
    o_sam_dyn_done : out STD_LOGIC;
    o_mlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_olen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_write_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_read_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_done : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_dyn_done : in STD_LOGIC;
    i_key_en : in STD_LOGIC;
    i_sam_en : in STD_LOGIC;
    i_key_mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_mayo_hash_arbiter : entity is "mayo_hash_arbiter";
end Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_mayo_hash_arbiter;

architecture STRUCTURE of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_mayo_hash_arbiter is
  signal key_en : STD_LOGIC;
  signal key_en_i_1_n_0 : STD_LOGIC;
  signal sam_en_i_1_n_0 : STD_LOGIC;
  signal sam_en_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of key_en_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_key_done_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_key_dyn_done_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_sam_done_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_sam_dyn_done_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sam_en_i_1 : label is "soft_lutpair0";
begin
key_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_key_en,
      I1 => key_en,
      O => key_en_i_1_n_0
    );
key_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_done,
      CE => '1',
      CLR => rst,
      D => key_en_i_1_n_0,
      Q => key_en
    );
o_key_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_done,
      I1 => key_en,
      O => o_key_done
    );
o_key_dyn_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_dyn_done,
      I1 => key_en,
      O => o_key_dyn_done
    );
\o_mlen[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(0),
      I4 => i_key_en,
      I5 => i_sam_mlen(0),
      O => o_mlen(0)
    );
\o_mlen[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(10),
      I4 => i_key_en,
      I5 => i_sam_mlen(10),
      O => o_mlen(10)
    );
\o_mlen[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(11),
      I4 => i_key_en,
      I5 => i_sam_mlen(11),
      O => o_mlen(11)
    );
\o_mlen[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(12),
      I4 => i_key_en,
      I5 => i_sam_mlen(12),
      O => o_mlen(12)
    );
\o_mlen[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(13),
      I4 => i_key_en,
      I5 => i_sam_mlen(13),
      O => o_mlen(13)
    );
\o_mlen[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(14),
      I4 => i_key_en,
      I5 => i_sam_mlen(14),
      O => o_mlen(14)
    );
\o_mlen[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(15),
      I4 => i_key_en,
      I5 => i_sam_mlen(15),
      O => o_mlen(15)
    );
\o_mlen[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(16),
      I4 => i_key_en,
      I5 => i_sam_mlen(16),
      O => o_mlen(16)
    );
\o_mlen[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(17),
      I4 => i_key_en,
      I5 => i_sam_mlen(17),
      O => o_mlen(17)
    );
\o_mlen[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(18),
      I4 => i_key_en,
      I5 => i_sam_mlen(18),
      O => o_mlen(18)
    );
\o_mlen[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(19),
      I4 => i_key_en,
      I5 => i_sam_mlen(19),
      O => o_mlen(19)
    );
\o_mlen[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(1),
      I4 => i_key_en,
      I5 => i_sam_mlen(1),
      O => o_mlen(1)
    );
\o_mlen[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(20),
      I4 => i_key_en,
      I5 => i_sam_mlen(20),
      O => o_mlen(20)
    );
\o_mlen[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(21),
      I4 => i_key_en,
      I5 => i_sam_mlen(21),
      O => o_mlen(21)
    );
\o_mlen[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(22),
      I4 => i_key_en,
      I5 => i_sam_mlen(22),
      O => o_mlen(22)
    );
\o_mlen[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(23),
      I4 => i_key_en,
      I5 => i_sam_mlen(23),
      O => o_mlen(23)
    );
\o_mlen[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(24),
      I4 => i_key_en,
      I5 => i_sam_mlen(24),
      O => o_mlen(24)
    );
\o_mlen[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(25),
      I4 => i_key_en,
      I5 => i_sam_mlen(25),
      O => o_mlen(25)
    );
\o_mlen[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(26),
      I4 => i_key_en,
      I5 => i_sam_mlen(26),
      O => o_mlen(26)
    );
\o_mlen[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(27),
      I4 => i_key_en,
      I5 => i_sam_mlen(27),
      O => o_mlen(27)
    );
\o_mlen[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(28),
      I4 => i_key_en,
      I5 => i_sam_mlen(28),
      O => o_mlen(28)
    );
\o_mlen[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(29),
      I4 => i_key_en,
      I5 => i_sam_mlen(29),
      O => o_mlen(29)
    );
\o_mlen[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(2),
      I4 => i_key_en,
      I5 => i_sam_mlen(2),
      O => o_mlen(2)
    );
\o_mlen[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(30),
      I4 => i_key_en,
      I5 => i_sam_mlen(30),
      O => o_mlen(30)
    );
\o_mlen[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(31),
      I4 => i_key_en,
      I5 => i_sam_mlen(31),
      O => o_mlen(31)
    );
\o_mlen[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(3),
      I4 => i_key_en,
      I5 => i_sam_mlen(3),
      O => o_mlen(3)
    );
\o_mlen[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(4),
      I4 => i_key_en,
      I5 => i_sam_mlen(4),
      O => o_mlen(4)
    );
\o_mlen[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(5),
      I4 => i_key_en,
      I5 => i_sam_mlen(5),
      O => o_mlen(5)
    );
\o_mlen[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(6),
      I4 => i_key_en,
      I5 => i_sam_mlen(6),
      O => o_mlen(6)
    );
\o_mlen[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(7),
      I4 => i_key_en,
      I5 => i_sam_mlen(7),
      O => o_mlen(7)
    );
\o_mlen[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(8),
      I4 => i_key_en,
      I5 => i_sam_mlen(8),
      O => o_mlen(8)
    );
\o_mlen[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_mlen(9),
      I4 => i_key_en,
      I5 => i_sam_mlen(9),
      O => o_mlen(9)
    );
\o_olen[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(0),
      I4 => i_key_en,
      I5 => i_sam_olen(0),
      O => o_olen(0)
    );
\o_olen[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(10),
      I4 => i_key_en,
      I5 => i_sam_olen(10),
      O => o_olen(10)
    );
\o_olen[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(11),
      I4 => i_key_en,
      I5 => i_sam_olen(11),
      O => o_olen(11)
    );
\o_olen[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(12),
      I4 => i_key_en,
      I5 => i_sam_olen(12),
      O => o_olen(12)
    );
\o_olen[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(13),
      I4 => i_key_en,
      I5 => i_sam_olen(13),
      O => o_olen(13)
    );
\o_olen[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(14),
      I4 => i_key_en,
      I5 => i_sam_olen(14),
      O => o_olen(14)
    );
\o_olen[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(15),
      I4 => i_key_en,
      I5 => i_sam_olen(15),
      O => o_olen(15)
    );
\o_olen[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(16),
      I4 => i_key_en,
      I5 => i_sam_olen(16),
      O => o_olen(16)
    );
\o_olen[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(17),
      I4 => i_key_en,
      I5 => i_sam_olen(17),
      O => o_olen(17)
    );
\o_olen[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(18),
      I4 => i_key_en,
      I5 => i_sam_olen(18),
      O => o_olen(18)
    );
\o_olen[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(19),
      I4 => i_key_en,
      I5 => i_sam_olen(19),
      O => o_olen(19)
    );
\o_olen[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(1),
      I4 => i_key_en,
      I5 => i_sam_olen(1),
      O => o_olen(1)
    );
\o_olen[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(20),
      I4 => i_key_en,
      I5 => i_sam_olen(20),
      O => o_olen(20)
    );
\o_olen[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(21),
      I4 => i_key_en,
      I5 => i_sam_olen(21),
      O => o_olen(21)
    );
\o_olen[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(22),
      I4 => i_key_en,
      I5 => i_sam_olen(22),
      O => o_olen(22)
    );
\o_olen[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(23),
      I4 => i_key_en,
      I5 => i_sam_olen(23),
      O => o_olen(23)
    );
\o_olen[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(24),
      I4 => i_key_en,
      I5 => i_sam_olen(24),
      O => o_olen(24)
    );
\o_olen[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(25),
      I4 => i_key_en,
      I5 => i_sam_olen(25),
      O => o_olen(25)
    );
\o_olen[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(26),
      I4 => i_key_en,
      I5 => i_sam_olen(26),
      O => o_olen(26)
    );
\o_olen[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(27),
      I4 => i_key_en,
      I5 => i_sam_olen(27),
      O => o_olen(27)
    );
\o_olen[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(28),
      I4 => i_key_en,
      I5 => i_sam_olen(28),
      O => o_olen(28)
    );
\o_olen[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(29),
      I4 => i_key_en,
      I5 => i_sam_olen(29),
      O => o_olen(29)
    );
\o_olen[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(2),
      I4 => i_key_en,
      I5 => i_sam_olen(2),
      O => o_olen(2)
    );
\o_olen[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(30),
      I4 => i_key_en,
      I5 => i_sam_olen(30),
      O => o_olen(30)
    );
\o_olen[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(31),
      I4 => i_key_en,
      I5 => i_sam_olen(31),
      O => o_olen(31)
    );
\o_olen[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(3),
      I4 => i_key_en,
      I5 => i_sam_olen(3),
      O => o_olen(3)
    );
\o_olen[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(4),
      I4 => i_key_en,
      I5 => i_sam_olen(4),
      O => o_olen(4)
    );
\o_olen[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(5),
      I4 => i_key_en,
      I5 => i_sam_olen(5),
      O => o_olen(5)
    );
\o_olen[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(6),
      I4 => i_key_en,
      I5 => i_sam_olen(6),
      O => o_olen(6)
    );
\o_olen[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(7),
      I4 => i_key_en,
      I5 => i_sam_olen(7),
      O => o_olen(7)
    );
\o_olen[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(8),
      I4 => i_key_en,
      I5 => i_sam_olen(8),
      O => o_olen(8)
    );
\o_olen[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_olen(9),
      I4 => i_key_en,
      I5 => i_sam_olen(9),
      O => o_olen(9)
    );
\o_read_adr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(0),
      I4 => i_key_en,
      I5 => i_sam_read_adr(0),
      O => o_read_adr(0)
    );
\o_read_adr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(10),
      I4 => i_key_en,
      I5 => i_sam_read_adr(10),
      O => o_read_adr(10)
    );
\o_read_adr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(11),
      I4 => i_key_en,
      I5 => i_sam_read_adr(11),
      O => o_read_adr(11)
    );
\o_read_adr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(12),
      I4 => i_key_en,
      I5 => i_sam_read_adr(12),
      O => o_read_adr(12)
    );
\o_read_adr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(13),
      I4 => i_key_en,
      I5 => i_sam_read_adr(13),
      O => o_read_adr(13)
    );
\o_read_adr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(14),
      I4 => i_key_en,
      I5 => i_sam_read_adr(14),
      O => o_read_adr(14)
    );
\o_read_adr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(15),
      I4 => i_key_en,
      I5 => i_sam_read_adr(15),
      O => o_read_adr(15)
    );
\o_read_adr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(16),
      I4 => i_key_en,
      I5 => i_sam_read_adr(16),
      O => o_read_adr(16)
    );
\o_read_adr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(17),
      I4 => i_key_en,
      I5 => i_sam_read_adr(17),
      O => o_read_adr(17)
    );
\o_read_adr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(18),
      I4 => i_key_en,
      I5 => i_sam_read_adr(18),
      O => o_read_adr(18)
    );
\o_read_adr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(19),
      I4 => i_key_en,
      I5 => i_sam_read_adr(19),
      O => o_read_adr(19)
    );
\o_read_adr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(1),
      I4 => i_key_en,
      I5 => i_sam_read_adr(1),
      O => o_read_adr(1)
    );
\o_read_adr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(20),
      I4 => i_key_en,
      I5 => i_sam_read_adr(20),
      O => o_read_adr(20)
    );
\o_read_adr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(21),
      I4 => i_key_en,
      I5 => i_sam_read_adr(21),
      O => o_read_adr(21)
    );
\o_read_adr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(22),
      I4 => i_key_en,
      I5 => i_sam_read_adr(22),
      O => o_read_adr(22)
    );
\o_read_adr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(23),
      I4 => i_key_en,
      I5 => i_sam_read_adr(23),
      O => o_read_adr(23)
    );
\o_read_adr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(24),
      I4 => i_key_en,
      I5 => i_sam_read_adr(24),
      O => o_read_adr(24)
    );
\o_read_adr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(25),
      I4 => i_key_en,
      I5 => i_sam_read_adr(25),
      O => o_read_adr(25)
    );
\o_read_adr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(26),
      I4 => i_key_en,
      I5 => i_sam_read_adr(26),
      O => o_read_adr(26)
    );
\o_read_adr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(27),
      I4 => i_key_en,
      I5 => i_sam_read_adr(27),
      O => o_read_adr(27)
    );
\o_read_adr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(28),
      I4 => i_key_en,
      I5 => i_sam_read_adr(28),
      O => o_read_adr(28)
    );
\o_read_adr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(29),
      I4 => i_key_en,
      I5 => i_sam_read_adr(29),
      O => o_read_adr(29)
    );
\o_read_adr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(2),
      I4 => i_key_en,
      I5 => i_sam_read_adr(2),
      O => o_read_adr(2)
    );
\o_read_adr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(30),
      I4 => i_key_en,
      I5 => i_sam_read_adr(30),
      O => o_read_adr(30)
    );
\o_read_adr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(31),
      I4 => i_key_en,
      I5 => i_sam_read_adr(31),
      O => o_read_adr(31)
    );
\o_read_adr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(3),
      I4 => i_key_en,
      I5 => i_sam_read_adr(3),
      O => o_read_adr(3)
    );
\o_read_adr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(4),
      I4 => i_key_en,
      I5 => i_sam_read_adr(4),
      O => o_read_adr(4)
    );
\o_read_adr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(5),
      I4 => i_key_en,
      I5 => i_sam_read_adr(5),
      O => o_read_adr(5)
    );
\o_read_adr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(6),
      I4 => i_key_en,
      I5 => i_sam_read_adr(6),
      O => o_read_adr(6)
    );
\o_read_adr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(7),
      I4 => i_key_en,
      I5 => i_sam_read_adr(7),
      O => o_read_adr(7)
    );
\o_read_adr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(8),
      I4 => i_key_en,
      I5 => i_sam_read_adr(8),
      O => o_read_adr(8)
    );
\o_read_adr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_read_adr(9),
      I4 => i_key_en,
      I5 => i_sam_read_adr(9),
      O => o_read_adr(9)
    );
o_sam_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_done,
      I1 => sam_en_reg_n_0,
      O => o_sam_done
    );
o_sam_dyn_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_dyn_done,
      I1 => sam_en_reg_n_0,
      O => o_sam_dyn_done
    );
\o_write_adr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(0),
      I4 => i_key_en,
      I5 => i_sam_write_adr(0),
      O => o_write_adr(0)
    );
\o_write_adr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(10),
      I4 => i_key_en,
      I5 => i_sam_write_adr(10),
      O => o_write_adr(10)
    );
\o_write_adr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(11),
      I4 => i_key_en,
      I5 => i_sam_write_adr(11),
      O => o_write_adr(11)
    );
\o_write_adr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(12),
      I4 => i_key_en,
      I5 => i_sam_write_adr(12),
      O => o_write_adr(12)
    );
\o_write_adr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(13),
      I4 => i_key_en,
      I5 => i_sam_write_adr(13),
      O => o_write_adr(13)
    );
\o_write_adr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(14),
      I4 => i_key_en,
      I5 => i_sam_write_adr(14),
      O => o_write_adr(14)
    );
\o_write_adr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(15),
      I4 => i_key_en,
      I5 => i_sam_write_adr(15),
      O => o_write_adr(15)
    );
\o_write_adr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(16),
      I4 => i_key_en,
      I5 => i_sam_write_adr(16),
      O => o_write_adr(16)
    );
\o_write_adr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(17),
      I4 => i_key_en,
      I5 => i_sam_write_adr(17),
      O => o_write_adr(17)
    );
\o_write_adr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(18),
      I4 => i_key_en,
      I5 => i_sam_write_adr(18),
      O => o_write_adr(18)
    );
\o_write_adr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(19),
      I4 => i_key_en,
      I5 => i_sam_write_adr(19),
      O => o_write_adr(19)
    );
\o_write_adr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(1),
      I4 => i_key_en,
      I5 => i_sam_write_adr(1),
      O => o_write_adr(1)
    );
\o_write_adr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(20),
      I4 => i_key_en,
      I5 => i_sam_write_adr(20),
      O => o_write_adr(20)
    );
\o_write_adr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(21),
      I4 => i_key_en,
      I5 => i_sam_write_adr(21),
      O => o_write_adr(21)
    );
\o_write_adr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(22),
      I4 => i_key_en,
      I5 => i_sam_write_adr(22),
      O => o_write_adr(22)
    );
\o_write_adr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(23),
      I4 => i_key_en,
      I5 => i_sam_write_adr(23),
      O => o_write_adr(23)
    );
\o_write_adr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(24),
      I4 => i_key_en,
      I5 => i_sam_write_adr(24),
      O => o_write_adr(24)
    );
\o_write_adr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(25),
      I4 => i_key_en,
      I5 => i_sam_write_adr(25),
      O => o_write_adr(25)
    );
\o_write_adr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(26),
      I4 => i_key_en,
      I5 => i_sam_write_adr(26),
      O => o_write_adr(26)
    );
\o_write_adr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(27),
      I4 => i_key_en,
      I5 => i_sam_write_adr(27),
      O => o_write_adr(27)
    );
\o_write_adr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(28),
      I4 => i_key_en,
      I5 => i_sam_write_adr(28),
      O => o_write_adr(28)
    );
\o_write_adr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(29),
      I4 => i_key_en,
      I5 => i_sam_write_adr(29),
      O => o_write_adr(29)
    );
\o_write_adr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(2),
      I4 => i_key_en,
      I5 => i_sam_write_adr(2),
      O => o_write_adr(2)
    );
\o_write_adr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(30),
      I4 => i_key_en,
      I5 => i_sam_write_adr(30),
      O => o_write_adr(30)
    );
\o_write_adr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(31),
      I4 => i_key_en,
      I5 => i_sam_write_adr(31),
      O => o_write_adr(31)
    );
\o_write_adr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(3),
      I4 => i_key_en,
      I5 => i_sam_write_adr(3),
      O => o_write_adr(3)
    );
\o_write_adr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(4),
      I4 => i_key_en,
      I5 => i_sam_write_adr(4),
      O => o_write_adr(4)
    );
\o_write_adr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(5),
      I4 => i_key_en,
      I5 => i_sam_write_adr(5),
      O => o_write_adr(5)
    );
\o_write_adr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(6),
      I4 => i_key_en,
      I5 => i_sam_write_adr(6),
      O => o_write_adr(6)
    );
\o_write_adr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(7),
      I4 => i_key_en,
      I5 => i_sam_write_adr(7),
      O => o_write_adr(7)
    );
\o_write_adr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(8),
      I4 => i_key_en,
      I5 => i_sam_write_adr(8),
      O => o_write_adr(8)
    );
\o_write_adr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE0EFF00F000"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_write_adr(9),
      I4 => i_key_en,
      I5 => i_sam_write_adr(9),
      O => o_write_adr(9)
    );
sam_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => sam_en_reg_n_0,
      I1 => i_sam_en,
      I2 => key_en,
      I3 => i_key_en,
      O => sam_en_i_1_n_0
    );
sam_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_done,
      CE => '1',
      CLR => rst,
      D => sam_en_i_1_n_0,
      Q => sam_en_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 is
  port (
    rst : in STD_LOGIC;
    o_en : out STD_LOGIC;
    o_mlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_olen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_write_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_read_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_done : in STD_LOGIC;
    i_dyn_done : in STD_LOGIC;
    i_key_en : in STD_LOGIC;
    i_key_mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_key_done : out STD_LOGIC;
    o_key_dyn_done : out STD_LOGIC;
    i_sam_en : in STD_LOGIC;
    i_sam_mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_sam_done : out STD_LOGIC;
    o_sam_dyn_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 : entity is "Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0,mayo_hash_arbiter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 : entity is "mayo_hash_arbiter,Vivado 2020.2";
end Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0;

architecture STRUCTURE of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_mayo_hash_arbiter
     port map (
      i_done => i_done,
      i_dyn_done => i_dyn_done,
      i_key_en => i_key_en,
      i_key_mlen(31 downto 0) => i_key_mlen(31 downto 0),
      i_key_olen(31 downto 0) => i_key_olen(31 downto 0),
      i_key_read_adr(31 downto 0) => i_key_read_adr(31 downto 0),
      i_key_write_adr(31 downto 0) => i_key_write_adr(31 downto 0),
      i_sam_en => i_sam_en,
      i_sam_mlen(31 downto 0) => i_sam_mlen(31 downto 0),
      i_sam_olen(31 downto 0) => i_sam_olen(31 downto 0),
      i_sam_read_adr(31 downto 0) => i_sam_read_adr(31 downto 0),
      i_sam_write_adr(31 downto 0) => i_sam_write_adr(31 downto 0),
      o_key_done => o_key_done,
      o_key_dyn_done => o_key_dyn_done,
      o_mlen(31 downto 0) => o_mlen(31 downto 0),
      o_olen(31 downto 0) => o_olen(31 downto 0),
      o_read_adr(31 downto 0) => o_read_adr(31 downto 0),
      o_sam_done => o_sam_done,
      o_sam_dyn_done => o_sam_dyn_done,
      o_write_adr(31 downto 0) => o_write_adr(31 downto 0),
      rst => rst
    );
o_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_sam_en,
      I1 => i_key_en,
      O => o_en
    );
end STRUCTURE;
