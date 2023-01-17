-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon Jan 16 19:40:29 2023
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ip/Mayo_keygen_mayo_hash_bram_arbit_0_0/Mayo_keygen_mayo_hash_bram_arbit_0_0_sim_netlist.vhdl
-- Design      : Mayo_keygen_mayo_hash_bram_arbit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_keygen_mayo_hash_bram_arbit_0_0_mayo_hash_bram_arbiter is
  port (
    BRAM1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_sel : in STD_LOGIC;
    hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mayo_keygen_mayo_hash_bram_arbit_0_0_mayo_hash_bram_arbiter : entity is "mayo_hash_bram_arbiter";
end Mayo_keygen_mayo_hash_bram_arbit_0_0_mayo_hash_bram_arbiter;

architecture STRUCTURE of Mayo_keygen_mayo_hash_bram_arbit_0_0_mayo_hash_bram_arbiter is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM0_addr[0]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \BRAM0_addr[10]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \BRAM0_addr[11]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \BRAM0_addr[12]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \BRAM0_addr[13]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \BRAM0_addr[14]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \BRAM0_addr[15]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \BRAM0_addr[16]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \BRAM0_addr[17]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \BRAM0_addr[18]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \BRAM0_addr[19]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \BRAM0_addr[1]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \BRAM0_addr[20]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \BRAM0_addr[21]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \BRAM0_addr[22]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \BRAM0_addr[23]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \BRAM0_addr[24]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \BRAM0_addr[25]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \BRAM0_addr[26]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \BRAM0_addr[27]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \BRAM0_addr[28]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \BRAM0_addr[29]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \BRAM0_addr[2]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \BRAM0_addr[30]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \BRAM0_addr[31]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \BRAM0_addr[3]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \BRAM0_addr[4]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \BRAM0_addr[5]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \BRAM0_addr[6]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \BRAM0_addr[7]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \BRAM0_addr[8]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \BRAM0_addr[9]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \BRAM0_din[0]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \BRAM0_din[10]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \BRAM0_din[11]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \BRAM0_din[12]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \BRAM0_din[13]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \BRAM0_din[14]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \BRAM0_din[15]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \BRAM0_din[16]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \BRAM0_din[17]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \BRAM0_din[18]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \BRAM0_din[19]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \BRAM0_din[1]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \BRAM0_din[20]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \BRAM0_din[21]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \BRAM0_din[22]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \BRAM0_din[23]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \BRAM0_din[24]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \BRAM0_din[25]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \BRAM0_din[26]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \BRAM0_din[27]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \BRAM0_din[28]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \BRAM0_din[29]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \BRAM0_din[2]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \BRAM0_din[30]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \BRAM0_din[31]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \BRAM0_din[3]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \BRAM0_din[4]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \BRAM0_din[5]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \BRAM0_din[6]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \BRAM0_din[7]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \BRAM0_din[8]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \BRAM0_din[9]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \BRAM1_we[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \BRAM1_we[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \BRAM1_we[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \BRAM1_we[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hash_dout[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hash_dout[10]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \hash_dout[11]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \hash_dout[12]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hash_dout[13]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hash_dout[14]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hash_dout[15]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hash_dout[16]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hash_dout[17]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hash_dout[18]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \hash_dout[19]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \hash_dout[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hash_dout[20]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hash_dout[21]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hash_dout[22]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \hash_dout[23]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \hash_dout[24]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \hash_dout[25]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \hash_dout[26]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \hash_dout[27]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \hash_dout[28]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \hash_dout[29]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \hash_dout[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hash_dout[30]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \hash_dout[31]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \hash_dout[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hash_dout[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hash_dout[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hash_dout[6]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hash_dout[7]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hash_dout[8]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hash_dout[9]_INST_0\ : label is "soft_lutpair6";
begin
\BRAM0_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(0),
      I1 => bram_sel,
      O => BRAM0_addr(0)
    );
\BRAM0_addr[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(10),
      I1 => bram_sel,
      O => BRAM0_addr(10)
    );
\BRAM0_addr[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(11),
      I1 => bram_sel,
      O => BRAM0_addr(11)
    );
\BRAM0_addr[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(12),
      I1 => bram_sel,
      O => BRAM0_addr(12)
    );
\BRAM0_addr[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(13),
      I1 => bram_sel,
      O => BRAM0_addr(13)
    );
\BRAM0_addr[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(14),
      I1 => bram_sel,
      O => BRAM0_addr(14)
    );
\BRAM0_addr[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(15),
      I1 => bram_sel,
      O => BRAM0_addr(15)
    );
\BRAM0_addr[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(16),
      I1 => bram_sel,
      O => BRAM0_addr(16)
    );
\BRAM0_addr[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(17),
      I1 => bram_sel,
      O => BRAM0_addr(17)
    );
\BRAM0_addr[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(18),
      I1 => bram_sel,
      O => BRAM0_addr(18)
    );
\BRAM0_addr[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(19),
      I1 => bram_sel,
      O => BRAM0_addr(19)
    );
\BRAM0_addr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(1),
      I1 => bram_sel,
      O => BRAM0_addr(1)
    );
\BRAM0_addr[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(20),
      I1 => bram_sel,
      O => BRAM0_addr(20)
    );
\BRAM0_addr[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(21),
      I1 => bram_sel,
      O => BRAM0_addr(21)
    );
\BRAM0_addr[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(22),
      I1 => bram_sel,
      O => BRAM0_addr(22)
    );
\BRAM0_addr[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(23),
      I1 => bram_sel,
      O => BRAM0_addr(23)
    );
\BRAM0_addr[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(24),
      I1 => bram_sel,
      O => BRAM0_addr(24)
    );
\BRAM0_addr[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(25),
      I1 => bram_sel,
      O => BRAM0_addr(25)
    );
\BRAM0_addr[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(26),
      I1 => bram_sel,
      O => BRAM0_addr(26)
    );
\BRAM0_addr[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(27),
      I1 => bram_sel,
      O => BRAM0_addr(27)
    );
\BRAM0_addr[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(28),
      I1 => bram_sel,
      O => BRAM0_addr(28)
    );
\BRAM0_addr[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(29),
      I1 => bram_sel,
      O => BRAM0_addr(29)
    );
\BRAM0_addr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(2),
      I1 => bram_sel,
      O => BRAM0_addr(2)
    );
\BRAM0_addr[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(30),
      I1 => bram_sel,
      O => BRAM0_addr(30)
    );
\BRAM0_addr[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(31),
      I1 => bram_sel,
      O => BRAM0_addr(31)
    );
\BRAM0_addr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(3),
      I1 => bram_sel,
      O => BRAM0_addr(3)
    );
\BRAM0_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(4),
      I1 => bram_sel,
      O => BRAM0_addr(4)
    );
\BRAM0_addr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(5),
      I1 => bram_sel,
      O => BRAM0_addr(5)
    );
\BRAM0_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(6),
      I1 => bram_sel,
      O => BRAM0_addr(6)
    );
\BRAM0_addr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(7),
      I1 => bram_sel,
      O => BRAM0_addr(7)
    );
\BRAM0_addr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(8),
      I1 => bram_sel,
      O => BRAM0_addr(8)
    );
\BRAM0_addr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_addr(9),
      I1 => bram_sel,
      O => BRAM0_addr(9)
    );
\BRAM0_din[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(0),
      I1 => bram_sel,
      O => BRAM0_din(0)
    );
\BRAM0_din[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(10),
      I1 => bram_sel,
      O => BRAM0_din(10)
    );
\BRAM0_din[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(11),
      I1 => bram_sel,
      O => BRAM0_din(11)
    );
\BRAM0_din[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(12),
      I1 => bram_sel,
      O => BRAM0_din(12)
    );
\BRAM0_din[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(13),
      I1 => bram_sel,
      O => BRAM0_din(13)
    );
\BRAM0_din[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(14),
      I1 => bram_sel,
      O => BRAM0_din(14)
    );
\BRAM0_din[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(15),
      I1 => bram_sel,
      O => BRAM0_din(15)
    );
\BRAM0_din[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(16),
      I1 => bram_sel,
      O => BRAM0_din(16)
    );
\BRAM0_din[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(17),
      I1 => bram_sel,
      O => BRAM0_din(17)
    );
\BRAM0_din[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(18),
      I1 => bram_sel,
      O => BRAM0_din(18)
    );
\BRAM0_din[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(19),
      I1 => bram_sel,
      O => BRAM0_din(19)
    );
\BRAM0_din[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(1),
      I1 => bram_sel,
      O => BRAM0_din(1)
    );
\BRAM0_din[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(20),
      I1 => bram_sel,
      O => BRAM0_din(20)
    );
\BRAM0_din[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(21),
      I1 => bram_sel,
      O => BRAM0_din(21)
    );
\BRAM0_din[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(22),
      I1 => bram_sel,
      O => BRAM0_din(22)
    );
\BRAM0_din[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(23),
      I1 => bram_sel,
      O => BRAM0_din(23)
    );
\BRAM0_din[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(24),
      I1 => bram_sel,
      O => BRAM0_din(24)
    );
\BRAM0_din[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(25),
      I1 => bram_sel,
      O => BRAM0_din(25)
    );
\BRAM0_din[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(26),
      I1 => bram_sel,
      O => BRAM0_din(26)
    );
\BRAM0_din[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(27),
      I1 => bram_sel,
      O => BRAM0_din(27)
    );
\BRAM0_din[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(28),
      I1 => bram_sel,
      O => BRAM0_din(28)
    );
\BRAM0_din[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(29),
      I1 => bram_sel,
      O => BRAM0_din(29)
    );
\BRAM0_din[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(2),
      I1 => bram_sel,
      O => BRAM0_din(2)
    );
\BRAM0_din[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(30),
      I1 => bram_sel,
      O => BRAM0_din(30)
    );
\BRAM0_din[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(31),
      I1 => bram_sel,
      O => BRAM0_din(31)
    );
\BRAM0_din[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(3),
      I1 => bram_sel,
      O => BRAM0_din(3)
    );
\BRAM0_din[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(4),
      I1 => bram_sel,
      O => BRAM0_din(4)
    );
\BRAM0_din[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(5),
      I1 => bram_sel,
      O => BRAM0_din(5)
    );
\BRAM0_din[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(6),
      I1 => bram_sel,
      O => BRAM0_din(6)
    );
\BRAM0_din[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(7),
      I1 => bram_sel,
      O => BRAM0_din(7)
    );
\BRAM0_din[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(8),
      I1 => bram_sel,
      O => BRAM0_din(8)
    );
\BRAM0_din[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_din(9),
      I1 => bram_sel,
      O => BRAM0_din(9)
    );
\BRAM1_we[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_we(0),
      O => BRAM1_we(0)
    );
\BRAM1_we[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_we(1),
      O => BRAM1_we(1)
    );
\BRAM1_we[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_we(2),
      O => BRAM1_we(2)
    );
\BRAM1_we[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_we(3),
      O => BRAM1_we(3)
    );
\hash_dout[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(0),
      I1 => BRAM0_dout(0),
      I2 => bram_sel,
      O => hash_dout(0)
    );
\hash_dout[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(10),
      I1 => BRAM0_dout(10),
      I2 => bram_sel,
      O => hash_dout(10)
    );
\hash_dout[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(11),
      I1 => BRAM0_dout(11),
      I2 => bram_sel,
      O => hash_dout(11)
    );
\hash_dout[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(12),
      I1 => BRAM0_dout(12),
      I2 => bram_sel,
      O => hash_dout(12)
    );
\hash_dout[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(13),
      I1 => BRAM0_dout(13),
      I2 => bram_sel,
      O => hash_dout(13)
    );
\hash_dout[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(14),
      I1 => BRAM0_dout(14),
      I2 => bram_sel,
      O => hash_dout(14)
    );
\hash_dout[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(15),
      I1 => BRAM0_dout(15),
      I2 => bram_sel,
      O => hash_dout(15)
    );
\hash_dout[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(16),
      I1 => BRAM0_dout(16),
      I2 => bram_sel,
      O => hash_dout(16)
    );
\hash_dout[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(17),
      I1 => BRAM0_dout(17),
      I2 => bram_sel,
      O => hash_dout(17)
    );
\hash_dout[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(18),
      I1 => BRAM0_dout(18),
      I2 => bram_sel,
      O => hash_dout(18)
    );
\hash_dout[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(19),
      I1 => BRAM0_dout(19),
      I2 => bram_sel,
      O => hash_dout(19)
    );
\hash_dout[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(1),
      I1 => BRAM0_dout(1),
      I2 => bram_sel,
      O => hash_dout(1)
    );
\hash_dout[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(20),
      I1 => BRAM0_dout(20),
      I2 => bram_sel,
      O => hash_dout(20)
    );
\hash_dout[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(21),
      I1 => BRAM0_dout(21),
      I2 => bram_sel,
      O => hash_dout(21)
    );
\hash_dout[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(22),
      I1 => BRAM0_dout(22),
      I2 => bram_sel,
      O => hash_dout(22)
    );
\hash_dout[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(23),
      I1 => BRAM0_dout(23),
      I2 => bram_sel,
      O => hash_dout(23)
    );
\hash_dout[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(24),
      I1 => BRAM0_dout(24),
      I2 => bram_sel,
      O => hash_dout(24)
    );
\hash_dout[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(25),
      I1 => BRAM0_dout(25),
      I2 => bram_sel,
      O => hash_dout(25)
    );
\hash_dout[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(26),
      I1 => BRAM0_dout(26),
      I2 => bram_sel,
      O => hash_dout(26)
    );
\hash_dout[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(27),
      I1 => BRAM0_dout(27),
      I2 => bram_sel,
      O => hash_dout(27)
    );
\hash_dout[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(28),
      I1 => BRAM0_dout(28),
      I2 => bram_sel,
      O => hash_dout(28)
    );
\hash_dout[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(29),
      I1 => BRAM0_dout(29),
      I2 => bram_sel,
      O => hash_dout(29)
    );
\hash_dout[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(2),
      I1 => BRAM0_dout(2),
      I2 => bram_sel,
      O => hash_dout(2)
    );
\hash_dout[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(30),
      I1 => BRAM0_dout(30),
      I2 => bram_sel,
      O => hash_dout(30)
    );
\hash_dout[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(31),
      I1 => BRAM0_dout(31),
      I2 => bram_sel,
      O => hash_dout(31)
    );
\hash_dout[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(3),
      I1 => BRAM0_dout(3),
      I2 => bram_sel,
      O => hash_dout(3)
    );
\hash_dout[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(4),
      I1 => BRAM0_dout(4),
      I2 => bram_sel,
      O => hash_dout(4)
    );
\hash_dout[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(5),
      I1 => BRAM0_dout(5),
      I2 => bram_sel,
      O => hash_dout(5)
    );
\hash_dout[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(6),
      I1 => BRAM0_dout(6),
      I2 => bram_sel,
      O => hash_dout(6)
    );
\hash_dout[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(7),
      I1 => BRAM0_dout(7),
      I2 => bram_sel,
      O => hash_dout(7)
    );
\hash_dout[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(8),
      I1 => BRAM0_dout(8),
      I2 => bram_sel,
      O => hash_dout(8)
    );
\hash_dout[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => BRAM1_dout(9),
      I1 => BRAM0_dout(9),
      I2 => bram_sel,
      O => hash_dout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_keygen_mayo_hash_bram_arbit_0_0 is
  port (
    bram_sel : in STD_LOGIC;
    hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_en : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_en : out STD_LOGIC;
    BRAM0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_control : out STD_LOGIC;
    BRAM1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_en : out STD_LOGIC;
    BRAM1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_control : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Mayo_keygen_mayo_hash_bram_arbit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Mayo_keygen_mayo_hash_bram_arbit_0_0 : entity is "Mayo_keygen_mayo_hash_bram_arbit_0_0,mayo_hash_bram_arbiter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Mayo_keygen_mayo_hash_bram_arbit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Mayo_keygen_mayo_hash_bram_arbit_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Mayo_keygen_mayo_hash_bram_arbit_0_0 : entity is "mayo_hash_bram_arbiter,Vivado 2020.2";
end Mayo_keygen_mayo_hash_bram_arbit_0_0;

architecture STRUCTURE of Mayo_keygen_mayo_hash_bram_arbit_0_0 is
begin
BRAM0_control_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_control,
      I1 => bram_sel,
      O => BRAM0_control
    );
BRAM0_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_en,
      I1 => bram_sel,
      O => BRAM0_en
    );
\BRAM0_we[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_we(0),
      I1 => bram_sel,
      O => BRAM0_we(0)
    );
\BRAM0_we[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_we(1),
      I1 => bram_sel,
      O => BRAM0_we(1)
    );
\BRAM0_we[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_we(2),
      I1 => bram_sel,
      O => BRAM0_we(2)
    );
\BRAM0_we[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hash_we(3),
      I1 => bram_sel,
      O => BRAM0_we(3)
    );
\BRAM1_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(0),
      O => BRAM1_addr(0)
    );
\BRAM1_addr[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(10),
      O => BRAM1_addr(10)
    );
\BRAM1_addr[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(11),
      O => BRAM1_addr(11)
    );
\BRAM1_addr[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(12),
      O => BRAM1_addr(12)
    );
\BRAM1_addr[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(13),
      O => BRAM1_addr(13)
    );
\BRAM1_addr[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(14),
      O => BRAM1_addr(14)
    );
\BRAM1_addr[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(15),
      O => BRAM1_addr(15)
    );
\BRAM1_addr[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(16),
      O => BRAM1_addr(16)
    );
\BRAM1_addr[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(17),
      O => BRAM1_addr(17)
    );
\BRAM1_addr[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(18),
      O => BRAM1_addr(18)
    );
\BRAM1_addr[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(19),
      O => BRAM1_addr(19)
    );
\BRAM1_addr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(1),
      O => BRAM1_addr(1)
    );
\BRAM1_addr[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(20),
      O => BRAM1_addr(20)
    );
\BRAM1_addr[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(21),
      O => BRAM1_addr(21)
    );
\BRAM1_addr[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(22),
      O => BRAM1_addr(22)
    );
\BRAM1_addr[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(23),
      O => BRAM1_addr(23)
    );
\BRAM1_addr[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(24),
      O => BRAM1_addr(24)
    );
\BRAM1_addr[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(25),
      O => BRAM1_addr(25)
    );
\BRAM1_addr[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(26),
      O => BRAM1_addr(26)
    );
\BRAM1_addr[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(27),
      O => BRAM1_addr(27)
    );
\BRAM1_addr[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(28),
      O => BRAM1_addr(28)
    );
\BRAM1_addr[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(29),
      O => BRAM1_addr(29)
    );
\BRAM1_addr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(2),
      O => BRAM1_addr(2)
    );
\BRAM1_addr[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(30),
      O => BRAM1_addr(30)
    );
\BRAM1_addr[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(31),
      O => BRAM1_addr(31)
    );
\BRAM1_addr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(3),
      O => BRAM1_addr(3)
    );
\BRAM1_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(4),
      O => BRAM1_addr(4)
    );
\BRAM1_addr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(5),
      O => BRAM1_addr(5)
    );
\BRAM1_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(6),
      O => BRAM1_addr(6)
    );
\BRAM1_addr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(7),
      O => BRAM1_addr(7)
    );
\BRAM1_addr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(8),
      O => BRAM1_addr(8)
    );
\BRAM1_addr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_addr(9),
      O => BRAM1_addr(9)
    );
BRAM1_control_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_control,
      O => BRAM1_control
    );
\BRAM1_din[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(0),
      O => BRAM1_din(0)
    );
\BRAM1_din[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(10),
      O => BRAM1_din(10)
    );
\BRAM1_din[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(11),
      O => BRAM1_din(11)
    );
\BRAM1_din[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(12),
      O => BRAM1_din(12)
    );
\BRAM1_din[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(13),
      O => BRAM1_din(13)
    );
\BRAM1_din[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(14),
      O => BRAM1_din(14)
    );
\BRAM1_din[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(15),
      O => BRAM1_din(15)
    );
\BRAM1_din[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(16),
      O => BRAM1_din(16)
    );
\BRAM1_din[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(17),
      O => BRAM1_din(17)
    );
\BRAM1_din[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(18),
      O => BRAM1_din(18)
    );
\BRAM1_din[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(19),
      O => BRAM1_din(19)
    );
\BRAM1_din[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(1),
      O => BRAM1_din(1)
    );
\BRAM1_din[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(20),
      O => BRAM1_din(20)
    );
\BRAM1_din[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(21),
      O => BRAM1_din(21)
    );
\BRAM1_din[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(22),
      O => BRAM1_din(22)
    );
\BRAM1_din[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(23),
      O => BRAM1_din(23)
    );
\BRAM1_din[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(24),
      O => BRAM1_din(24)
    );
\BRAM1_din[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(25),
      O => BRAM1_din(25)
    );
\BRAM1_din[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(26),
      O => BRAM1_din(26)
    );
\BRAM1_din[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(27),
      O => BRAM1_din(27)
    );
\BRAM1_din[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(28),
      O => BRAM1_din(28)
    );
\BRAM1_din[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(29),
      O => BRAM1_din(29)
    );
\BRAM1_din[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(2),
      O => BRAM1_din(2)
    );
\BRAM1_din[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(30),
      O => BRAM1_din(30)
    );
\BRAM1_din[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(31),
      O => BRAM1_din(31)
    );
\BRAM1_din[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(3),
      O => BRAM1_din(3)
    );
\BRAM1_din[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(4),
      O => BRAM1_din(4)
    );
\BRAM1_din[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(5),
      O => BRAM1_din(5)
    );
\BRAM1_din[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(6),
      O => BRAM1_din(6)
    );
\BRAM1_din[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(7),
      O => BRAM1_din(7)
    );
\BRAM1_din[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(8),
      O => BRAM1_din(8)
    );
\BRAM1_din[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_din(9),
      O => BRAM1_din(9)
    );
BRAM1_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_sel,
      I1 => hash_en,
      O => BRAM1_en
    );
U0: entity work.Mayo_keygen_mayo_hash_bram_arbit_0_0_mayo_hash_bram_arbiter
     port map (
      BRAM0_addr(31 downto 0) => BRAM0_addr(31 downto 0),
      BRAM0_din(31 downto 0) => BRAM0_din(31 downto 0),
      BRAM0_dout(31 downto 0) => BRAM0_dout(31 downto 0),
      BRAM1_dout(31 downto 0) => BRAM1_dout(31 downto 0),
      BRAM1_we(3 downto 0) => BRAM1_we(3 downto 0),
      bram_sel => bram_sel,
      hash_addr(31 downto 0) => hash_addr(31 downto 0),
      hash_din(31 downto 0) => hash_din(31 downto 0),
      hash_dout(31 downto 0) => hash_dout(31 downto 0),
      hash_we(3 downto 0) => hash_we(3 downto 0)
    );
end STRUCTURE;
