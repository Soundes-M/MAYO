-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed May 17 00:49:29 2023
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_trng_arbiter_0_0/Mayo_sign_with_zynq_mayo_trng_arbiter_0_0_sim_netlist.vhdl
-- Design      : Mayo_sign_with_zynq_mayo_trng_arbiter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_sign_with_zynq_mayo_trng_arbiter_0_0_mayo_trng_arbiter is
  port (
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng1_valid : out STD_LOGIC;
    o_trng1_done : out STD_LOGIC;
    o_trng2_valid : out STD_LOGIC;
    o_trng2_done : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng2_r : in STD_LOGIC;
    i_trng_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_trng1_r : in STD_LOGIC;
    i_trng0_r : in STD_LOGIC;
    i_trng2_w : in STD_LOGIC;
    i_trng1_w : in STD_LOGIC;
    i_trng0_w : in STD_LOGIC;
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    i_trng2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng0_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mayo_sign_with_zynq_mayo_trng_arbiter_0_0_mayo_trng_arbiter : entity is "mayo_trng_arbiter";
end Mayo_sign_with_zynq_mayo_trng_arbiter_0_0_mayo_trng_arbiter;

architecture STRUCTURE of Mayo_sign_with_zynq_mayo_trng_arbiter_0_0_mayo_trng_arbiter is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_trng0_data[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_trng0_data[10]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_trng0_data[11]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_trng0_data[12]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_trng0_data[13]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_trng0_data[14]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_trng0_data[15]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_trng0_data[16]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_trng0_data[17]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_trng0_data[18]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_trng0_data[19]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_trng0_data[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_trng0_data[20]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \o_trng0_data[21]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \o_trng0_data[22]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_trng0_data[23]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \o_trng0_data[24]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \o_trng0_data[25]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \o_trng0_data[26]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_trng0_data[27]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_trng0_data[28]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \o_trng0_data[29]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_trng0_data[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_trng0_data[30]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \o_trng0_data[31]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \o_trng0_data[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_trng0_data[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_trng0_data[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_trng0_data[6]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_trng0_data[7]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_trng0_data[8]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_trng0_data[9]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_trng1_data[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_trng1_data[10]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_trng1_data[11]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_trng1_data[12]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_trng1_data[13]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_trng1_data[14]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_trng1_data[15]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_trng1_data[16]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_trng1_data[17]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_trng1_data[18]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_trng1_data[19]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_trng1_data[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_trng1_data[20]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \o_trng1_data[21]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \o_trng1_data[22]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_trng1_data[23]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \o_trng1_data[24]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \o_trng1_data[25]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \o_trng1_data[26]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_trng1_data[27]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_trng1_data[28]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \o_trng1_data[29]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_trng1_data[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_trng1_data[30]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \o_trng1_data[31]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \o_trng1_data[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_trng1_data[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_trng1_data[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_trng1_data[6]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_trng1_data[7]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_trng1_data[8]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_trng1_data[9]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_trng1_done__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_trng1_valid__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_trng2_data[0]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_trng2_data[10]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_trng2_data[11]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_trng2_data[12]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \o_trng2_data[13]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \o_trng2_data[14]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \o_trng2_data[15]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \o_trng2_data[16]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \o_trng2_data[17]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \o_trng2_data[18]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \o_trng2_data[19]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \o_trng2_data[1]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_trng2_data[20]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \o_trng2_data[21]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \o_trng2_data[22]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \o_trng2_data[23]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \o_trng2_data[24]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \o_trng2_data[25]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \o_trng2_data[26]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \o_trng2_data[27]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \o_trng2_data[28]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \o_trng2_data[29]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \o_trng2_data[2]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_trng2_data[30]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \o_trng2_data[31]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \o_trng2_data[3]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_trng2_data[4]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \o_trng2_data[5]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \o_trng2_data[6]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \o_trng2_data[7]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \o_trng2_data[8]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_trng2_data[9]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_trng2_done__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_trng2_valid__0\ : label is "soft_lutpair0";
begin
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_r,
      I1 => i_trng_sel(1),
      I2 => i_trng1_r,
      I3 => i_trng_sel(0),
      I4 => i_trng0_r,
      O => o_trng_r
    );
\/i___0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_w,
      I1 => i_trng_sel(1),
      I2 => i_trng1_w,
      I3 => i_trng_sel(0),
      I4 => i_trng0_w,
      O => o_trng_w
    );
\o_trng0_data[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(0),
      I2 => i_trng_sel(1),
      O => o_trng0_data(0)
    );
\o_trng0_data[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(10),
      I2 => i_trng_sel(1),
      O => o_trng0_data(10)
    );
\o_trng0_data[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(11),
      I2 => i_trng_sel(1),
      O => o_trng0_data(11)
    );
\o_trng0_data[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(12),
      I2 => i_trng_sel(1),
      O => o_trng0_data(12)
    );
\o_trng0_data[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(13),
      I2 => i_trng_sel(1),
      O => o_trng0_data(13)
    );
\o_trng0_data[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(14),
      I2 => i_trng_sel(1),
      O => o_trng0_data(14)
    );
\o_trng0_data[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(15),
      I2 => i_trng_sel(1),
      O => o_trng0_data(15)
    );
\o_trng0_data[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(16),
      I2 => i_trng_sel(1),
      O => o_trng0_data(16)
    );
\o_trng0_data[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(17),
      I2 => i_trng_sel(1),
      O => o_trng0_data(17)
    );
\o_trng0_data[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(18),
      I2 => i_trng_sel(1),
      O => o_trng0_data(18)
    );
\o_trng0_data[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(19),
      I2 => i_trng_sel(1),
      O => o_trng0_data(19)
    );
\o_trng0_data[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(1),
      I2 => i_trng_sel(1),
      O => o_trng0_data(1)
    );
\o_trng0_data[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(20),
      I2 => i_trng_sel(1),
      O => o_trng0_data(20)
    );
\o_trng0_data[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(21),
      I2 => i_trng_sel(1),
      O => o_trng0_data(21)
    );
\o_trng0_data[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(22),
      I2 => i_trng_sel(1),
      O => o_trng0_data(22)
    );
\o_trng0_data[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(23),
      I2 => i_trng_sel(1),
      O => o_trng0_data(23)
    );
\o_trng0_data[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(24),
      I2 => i_trng_sel(1),
      O => o_trng0_data(24)
    );
\o_trng0_data[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(25),
      I2 => i_trng_sel(1),
      O => o_trng0_data(25)
    );
\o_trng0_data[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(26),
      I2 => i_trng_sel(1),
      O => o_trng0_data(26)
    );
\o_trng0_data[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(27),
      I2 => i_trng_sel(1),
      O => o_trng0_data(27)
    );
\o_trng0_data[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(28),
      I2 => i_trng_sel(1),
      O => o_trng0_data(28)
    );
\o_trng0_data[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(29),
      I2 => i_trng_sel(1),
      O => o_trng0_data(29)
    );
\o_trng0_data[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(2),
      I2 => i_trng_sel(1),
      O => o_trng0_data(2)
    );
\o_trng0_data[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(30),
      I2 => i_trng_sel(1),
      O => o_trng0_data(30)
    );
\o_trng0_data[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(31),
      I2 => i_trng_sel(1),
      O => o_trng0_data(31)
    );
\o_trng0_data[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(3),
      I2 => i_trng_sel(1),
      O => o_trng0_data(3)
    );
\o_trng0_data[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(4),
      I2 => i_trng_sel(1),
      O => o_trng0_data(4)
    );
\o_trng0_data[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(5),
      I2 => i_trng_sel(1),
      O => o_trng0_data(5)
    );
\o_trng0_data[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(6),
      I2 => i_trng_sel(1),
      O => o_trng0_data(6)
    );
\o_trng0_data[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(7),
      I2 => i_trng_sel(1),
      O => o_trng0_data(7)
    );
\o_trng0_data[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(8),
      I2 => i_trng_sel(1),
      O => o_trng0_data(8)
    );
\o_trng0_data[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_data(9),
      I2 => i_trng_sel(1),
      O => o_trng0_data(9)
    );
\o_trng1_data[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(0),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(0)
    );
\o_trng1_data[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(10),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(10)
    );
\o_trng1_data[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(11),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(11)
    );
\o_trng1_data[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(12),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(12)
    );
\o_trng1_data[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(13),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(13)
    );
\o_trng1_data[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(14),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(14)
    );
\o_trng1_data[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(15),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(15)
    );
\o_trng1_data[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(16),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(16)
    );
\o_trng1_data[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(17),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(17)
    );
\o_trng1_data[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(18),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(18)
    );
\o_trng1_data[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(19),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(19)
    );
\o_trng1_data[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(1),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(1)
    );
\o_trng1_data[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(20),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(20)
    );
\o_trng1_data[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(21),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(21)
    );
\o_trng1_data[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(22),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(22)
    );
\o_trng1_data[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(23),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(23)
    );
\o_trng1_data[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(24),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(24)
    );
\o_trng1_data[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(25),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(25)
    );
\o_trng1_data[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(26),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(26)
    );
\o_trng1_data[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(27),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(27)
    );
\o_trng1_data[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(28),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(28)
    );
\o_trng1_data[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(29),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(29)
    );
\o_trng1_data[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(2),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(2)
    );
\o_trng1_data[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(30),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(30)
    );
\o_trng1_data[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(31),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(31)
    );
\o_trng1_data[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(3),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(3)
    );
\o_trng1_data[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(4),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(4)
    );
\o_trng1_data[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(5),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(5)
    );
\o_trng1_data[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(6),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(6)
    );
\o_trng1_data[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(7),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(7)
    );
\o_trng1_data[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(8),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(8)
    );
\o_trng1_data[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_data(9),
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng1_data(9)
    );
\o_trng1_done__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_sel(0),
      I2 => i_trng_done,
      O => o_trng1_done
    );
\o_trng1_valid__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_sel(0),
      I2 => i_trng_valid,
      O => o_trng1_valid
    );
\o_trng2_data[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(0),
      I2 => i_trng_sel(0),
      O => o_trng2_data(0)
    );
\o_trng2_data[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(10),
      I2 => i_trng_sel(0),
      O => o_trng2_data(10)
    );
\o_trng2_data[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(11),
      I2 => i_trng_sel(0),
      O => o_trng2_data(11)
    );
\o_trng2_data[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(12),
      I2 => i_trng_sel(0),
      O => o_trng2_data(12)
    );
\o_trng2_data[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(13),
      I2 => i_trng_sel(0),
      O => o_trng2_data(13)
    );
\o_trng2_data[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(14),
      I2 => i_trng_sel(0),
      O => o_trng2_data(14)
    );
\o_trng2_data[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(15),
      I2 => i_trng_sel(0),
      O => o_trng2_data(15)
    );
\o_trng2_data[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(16),
      I2 => i_trng_sel(0),
      O => o_trng2_data(16)
    );
\o_trng2_data[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(17),
      I2 => i_trng_sel(0),
      O => o_trng2_data(17)
    );
\o_trng2_data[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(18),
      I2 => i_trng_sel(0),
      O => o_trng2_data(18)
    );
\o_trng2_data[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(19),
      I2 => i_trng_sel(0),
      O => o_trng2_data(19)
    );
\o_trng2_data[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(1),
      I2 => i_trng_sel(0),
      O => o_trng2_data(1)
    );
\o_trng2_data[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(20),
      I2 => i_trng_sel(0),
      O => o_trng2_data(20)
    );
\o_trng2_data[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(21),
      I2 => i_trng_sel(0),
      O => o_trng2_data(21)
    );
\o_trng2_data[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(22),
      I2 => i_trng_sel(0),
      O => o_trng2_data(22)
    );
\o_trng2_data[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(23),
      I2 => i_trng_sel(0),
      O => o_trng2_data(23)
    );
\o_trng2_data[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(24),
      I2 => i_trng_sel(0),
      O => o_trng2_data(24)
    );
\o_trng2_data[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(25),
      I2 => i_trng_sel(0),
      O => o_trng2_data(25)
    );
\o_trng2_data[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(26),
      I2 => i_trng_sel(0),
      O => o_trng2_data(26)
    );
\o_trng2_data[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(27),
      I2 => i_trng_sel(0),
      O => o_trng2_data(27)
    );
\o_trng2_data[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(28),
      I2 => i_trng_sel(0),
      O => o_trng2_data(28)
    );
\o_trng2_data[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(29),
      I2 => i_trng_sel(0),
      O => o_trng2_data(29)
    );
\o_trng2_data[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(2),
      I2 => i_trng_sel(0),
      O => o_trng2_data(2)
    );
\o_trng2_data[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(30),
      I2 => i_trng_sel(0),
      O => o_trng2_data(30)
    );
\o_trng2_data[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(31),
      I2 => i_trng_sel(0),
      O => o_trng2_data(31)
    );
\o_trng2_data[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(3),
      I2 => i_trng_sel(0),
      O => o_trng2_data(3)
    );
\o_trng2_data[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(4),
      I2 => i_trng_sel(0),
      O => o_trng2_data(4)
    );
\o_trng2_data[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(5),
      I2 => i_trng_sel(0),
      O => o_trng2_data(5)
    );
\o_trng2_data[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(6),
      I2 => i_trng_sel(0),
      O => o_trng2_data(6)
    );
\o_trng2_data[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(7),
      I2 => i_trng_sel(0),
      O => o_trng2_data(7)
    );
\o_trng2_data[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(8),
      I2 => i_trng_sel(0),
      O => o_trng2_data(8)
    );
\o_trng2_data[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_trng_sel(1),
      I1 => i_trng_data(9),
      I2 => i_trng_sel(0),
      O => o_trng2_data(9)
    );
\o_trng2_done__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_done,
      I2 => i_trng_sel(1),
      O => o_trng2_done
    );
\o_trng2_valid__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => i_trng_sel(0),
      I1 => i_trng_valid,
      I2 => i_trng_sel(1),
      O => o_trng2_valid
    );
\o_trng_data[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(0),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(0),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(0),
      O => o_trng_data(0)
    );
\o_trng_data[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(10),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(10),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(10),
      O => o_trng_data(10)
    );
\o_trng_data[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(11),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(11),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(11),
      O => o_trng_data(11)
    );
\o_trng_data[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(12),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(12),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(12),
      O => o_trng_data(12)
    );
\o_trng_data[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(13),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(13),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(13),
      O => o_trng_data(13)
    );
\o_trng_data[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(14),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(14),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(14),
      O => o_trng_data(14)
    );
\o_trng_data[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(15),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(15),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(15),
      O => o_trng_data(15)
    );
\o_trng_data[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(16),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(16),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(16),
      O => o_trng_data(16)
    );
\o_trng_data[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(17),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(17),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(17),
      O => o_trng_data(17)
    );
\o_trng_data[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(18),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(18),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(18),
      O => o_trng_data(18)
    );
\o_trng_data[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(19),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(19),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(19),
      O => o_trng_data(19)
    );
\o_trng_data[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(1),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(1),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(1),
      O => o_trng_data(1)
    );
\o_trng_data[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(20),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(20),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(20),
      O => o_trng_data(20)
    );
\o_trng_data[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(21),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(21),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(21),
      O => o_trng_data(21)
    );
\o_trng_data[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(22),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(22),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(22),
      O => o_trng_data(22)
    );
\o_trng_data[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(23),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(23),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(23),
      O => o_trng_data(23)
    );
\o_trng_data[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(24),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(24),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(24),
      O => o_trng_data(24)
    );
\o_trng_data[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(25),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(25),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(25),
      O => o_trng_data(25)
    );
\o_trng_data[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(26),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(26),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(26),
      O => o_trng_data(26)
    );
\o_trng_data[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(27),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(27),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(27),
      O => o_trng_data(27)
    );
\o_trng_data[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(28),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(28),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(28),
      O => o_trng_data(28)
    );
\o_trng_data[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(29),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(29),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(29),
      O => o_trng_data(29)
    );
\o_trng_data[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(2),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(2),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(2),
      O => o_trng_data(2)
    );
\o_trng_data[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(30),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(30),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(30),
      O => o_trng_data(30)
    );
\o_trng_data[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(31),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(31),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(31),
      O => o_trng_data(31)
    );
\o_trng_data[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(3),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(3),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(3),
      O => o_trng_data(3)
    );
\o_trng_data[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(4),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(4),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(4),
      O => o_trng_data(4)
    );
\o_trng_data[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(5),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(5),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(5),
      O => o_trng_data(5)
    );
\o_trng_data[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(6),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(6),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(6),
      O => o_trng_data(6)
    );
\o_trng_data[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(7),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(7),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(7),
      O => o_trng_data(7)
    );
\o_trng_data[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(8),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(8),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(8),
      O => o_trng_data(8)
    );
\o_trng_data[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => i_trng2_data(9),
      I1 => i_trng_sel(1),
      I2 => i_trng1_data(9),
      I3 => i_trng_sel(0),
      I4 => i_trng0_data(9),
      O => o_trng_data(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_sign_with_zynq_mayo_trng_arbiter_0_0 is
  port (
    i_trng_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    i_trng0_r : in STD_LOGIC;
    i_trng0_w : in STD_LOGIC;
    i_trng0_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_valid : out STD_LOGIC;
    o_trng0_done : out STD_LOGIC;
    i_trng1_r : in STD_LOGIC;
    i_trng1_w : in STD_LOGIC;
    i_trng1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_valid : out STD_LOGIC;
    o_trng1_done : out STD_LOGIC;
    i_trng2_r : in STD_LOGIC;
    i_trng2_w : in STD_LOGIC;
    i_trng2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_valid : out STD_LOGIC;
    o_trng2_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Mayo_sign_with_zynq_mayo_trng_arbiter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Mayo_sign_with_zynq_mayo_trng_arbiter_0_0 : entity is "Mayo_sign_with_zynq_mayo_trng_arbiter_0_0,mayo_trng_arbiter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Mayo_sign_with_zynq_mayo_trng_arbiter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Mayo_sign_with_zynq_mayo_trng_arbiter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Mayo_sign_with_zynq_mayo_trng_arbiter_0_0 : entity is "mayo_trng_arbiter,Vivado 2020.2";
end Mayo_sign_with_zynq_mayo_trng_arbiter_0_0;

architecture STRUCTURE of Mayo_sign_with_zynq_mayo_trng_arbiter_0_0 is
begin
U0: entity work.Mayo_sign_with_zynq_mayo_trng_arbiter_0_0_mayo_trng_arbiter
     port map (
      i_trng0_data(31 downto 0) => i_trng0_data(31 downto 0),
      i_trng0_r => i_trng0_r,
      i_trng0_w => i_trng0_w,
      i_trng1_data(31 downto 0) => i_trng1_data(31 downto 0),
      i_trng1_r => i_trng1_r,
      i_trng1_w => i_trng1_w,
      i_trng2_data(31 downto 0) => i_trng2_data(31 downto 0),
      i_trng2_r => i_trng2_r,
      i_trng2_w => i_trng2_w,
      i_trng_data(31 downto 0) => i_trng_data(31 downto 0),
      i_trng_done => i_trng_done,
      i_trng_sel(1 downto 0) => i_trng_sel(1 downto 0),
      i_trng_valid => i_trng_valid,
      o_trng0_data(31 downto 0) => o_trng0_data(31 downto 0),
      o_trng1_data(31 downto 0) => o_trng1_data(31 downto 0),
      o_trng1_done => o_trng1_done,
      o_trng1_valid => o_trng1_valid,
      o_trng2_data(31 downto 0) => o_trng2_data(31 downto 0),
      o_trng2_done => o_trng2_done,
      o_trng2_valid => o_trng2_valid,
      o_trng_data(31 downto 0) => o_trng_data(31 downto 0),
      o_trng_r => o_trng_r,
      o_trng_w => o_trng_w
    );
o_trng0_done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_trng_done,
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng0_done
    );
o_trng0_valid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_trng_valid,
      I1 => i_trng_sel(0),
      I2 => i_trng_sel(1),
      O => o_trng0_valid
    );
end STRUCTURE;