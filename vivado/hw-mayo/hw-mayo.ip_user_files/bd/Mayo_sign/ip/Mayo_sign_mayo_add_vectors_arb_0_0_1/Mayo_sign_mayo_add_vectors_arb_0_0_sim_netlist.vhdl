-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Nov 12 18:19:39 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_add_vectors_arb_0_0_1/Mayo_sign_mayo_add_vectors_arb_0_0_sim_netlist.vhdl
-- Design      : Mayo_sign_mayo_add_vectors_arb_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_sign_mayo_add_vectors_arb_0_0 is
  port (
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o_mema_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_en : in STD_LOGIC;
    i_mema_rst : in STD_LOGIC;
    i_mema_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controla : in STD_LOGIC;
    o_memb_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_en : in STD_LOGIC;
    i_memb_rst : in STD_LOGIC;
    i_memb_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controlb : in STD_LOGIC;
    o_memc_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_en : in STD_LOGIC;
    i_memc_rst : in STD_LOGIC;
    i_memc_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controlc : in STD_LOGIC;
    i_BRAM0A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_en : out STD_LOGIC;
    o_BRAM0A_rst : out STD_LOGIC;
    o_BRAM0A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0A_control : out STD_LOGIC;
    i_BRAM1A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_en : out STD_LOGIC;
    o_BRAM1A_rst : out STD_LOGIC;
    o_BRAM1A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM1A_control : out STD_LOGIC;
    i_BRAM2A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_en : out STD_LOGIC;
    o_BRAM2A_rst : out STD_LOGIC;
    o_BRAM2A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2A_control : out STD_LOGIC;
    i_BRAM2B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_en : out STD_LOGIC;
    o_BRAM2B_rst : out STD_LOGIC;
    o_BRAM2B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2B_control : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Mayo_sign_mayo_add_vectors_arb_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Mayo_sign_mayo_add_vectors_arb_0_0 : entity is "Mayo_sign_mayo_add_vectors_arb_0_0,mayo_add_vectors_arbiter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Mayo_sign_mayo_add_vectors_arb_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Mayo_sign_mayo_add_vectors_arb_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Mayo_sign_mayo_add_vectors_arb_0_0 : entity is "mayo_add_vectors_arbiter,Vivado 2020.2";
end Mayo_sign_mayo_add_vectors_arb_0_0;

architecture STRUCTURE of Mayo_sign_mayo_add_vectors_arb_0_0 is
  signal \U0/o_mema_dout1__0\ : STD_LOGIC;
  signal \U0/o_memc_dout12_out__0\ : STD_LOGIC;
  signal o_BRAM2B_en_INST_0_i_2_n_0 : STD_LOGIC;
  signal \o_mema_dout[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_memc_dout[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of o_BRAM2B_en_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_BRAM2B_en_INST_0_i_2 : label is "soft_lutpair0";
  attribute x_interface_info : string;
  attribute x_interface_info of i_controla : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA CTRL";
  attribute x_interface_info of i_controlb : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB CTRL";
  attribute x_interface_info of i_controlc : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC CTRL";
  attribute x_interface_info of i_mema_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA EN";
  attribute x_interface_info of i_mema_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA RST";
  attribute x_interface_info of i_memb_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB EN";
  attribute x_interface_info of i_memb_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB RST";
  attribute x_interface_info of i_memc_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC EN";
  attribute x_interface_info of i_memc_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC RST";
  attribute x_interface_info of o_BRAM0A_control : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A CTRL";
  attribute x_interface_info of o_BRAM0A_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A EN";
  attribute x_interface_info of o_BRAM0A_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A RST";
  attribute x_interface_info of o_BRAM1A_control : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A CTRL";
  attribute x_interface_info of o_BRAM1A_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A EN";
  attribute x_interface_info of o_BRAM1A_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A RST";
  attribute x_interface_info of o_BRAM2A_control : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A CTRL";
  attribute x_interface_info of o_BRAM2A_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A EN";
  attribute x_interface_info of o_BRAM2A_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A RST";
  attribute x_interface_info of o_BRAM2B_control : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B CTRL";
  attribute x_interface_info of o_BRAM2B_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B EN";
  attribute x_interface_info of o_BRAM2B_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B RST";
  attribute x_interface_info of i_BRAM0A_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A DOUT";
  attribute x_interface_info of i_BRAM1A_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A DOUT";
  attribute x_interface_info of i_BRAM2A_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A DOUT";
  attribute x_interface_info of i_BRAM2B_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B DOUT";
  attribute x_interface_info of i_mema_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA ADDR";
  attribute x_interface_info of i_mema_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA DIN";
  attribute x_interface_info of i_mema_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA WE";
  attribute x_interface_info of i_memb_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB ADDR";
  attribute x_interface_info of i_memb_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB DIN";
  attribute x_interface_info of i_memb_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB WE";
  attribute x_interface_info of i_memc_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC ADDR";
  attribute x_interface_info of i_memc_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC DIN";
  attribute x_interface_info of i_memc_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC WE";
  attribute x_interface_info of o_BRAM0A_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A ADDR";
  attribute x_interface_info of o_BRAM0A_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A DIN";
  attribute x_interface_info of o_BRAM0A_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A WE";
  attribute x_interface_info of o_BRAM1A_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A ADDR";
  attribute x_interface_info of o_BRAM1A_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A DIN";
  attribute x_interface_info of o_BRAM1A_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A WE";
  attribute x_interface_info of o_BRAM2A_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A ADDR";
  attribute x_interface_info of o_BRAM2A_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A DIN";
  attribute x_interface_info of o_BRAM2A_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A WE";
  attribute x_interface_info of o_BRAM2B_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B ADDR";
  attribute x_interface_info of o_BRAM2B_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B DIN";
  attribute x_interface_info of o_BRAM2B_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B WE";
  attribute x_interface_info of o_mema_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA DOUT";
  attribute x_interface_info of o_memb_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB DOUT";
  attribute x_interface_info of o_memc_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC DOUT";
begin
\o_BRAM0A_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(0),
      I1 => i_memb_addr(0),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(0)
    );
\o_BRAM0A_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(10),
      I1 => i_memb_addr(10),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(10)
    );
\o_BRAM0A_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(11),
      I1 => i_memb_addr(11),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(11)
    );
\o_BRAM0A_addr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(12),
      I1 => i_memb_addr(12),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(12)
    );
\o_BRAM0A_addr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(13),
      I1 => i_memb_addr(13),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(13)
    );
\o_BRAM0A_addr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(14),
      I1 => i_memb_addr(14),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(14)
    );
\o_BRAM0A_addr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(15),
      I1 => i_memb_addr(15),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(15)
    );
\o_BRAM0A_addr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(16),
      I1 => i_memb_addr(16),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(16)
    );
\o_BRAM0A_addr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(17),
      I1 => i_memb_addr(17),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(17)
    );
\o_BRAM0A_addr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(18),
      I1 => i_memb_addr(18),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(18)
    );
\o_BRAM0A_addr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(19),
      I1 => i_memb_addr(19),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(19)
    );
\o_BRAM0A_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(1),
      I1 => i_memb_addr(1),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(1)
    );
\o_BRAM0A_addr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(20),
      I1 => i_memb_addr(20),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(20)
    );
\o_BRAM0A_addr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(21),
      I1 => i_memb_addr(21),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(21)
    );
\o_BRAM0A_addr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(22),
      I1 => i_memb_addr(22),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(22)
    );
\o_BRAM0A_addr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(23),
      I1 => i_memb_addr(23),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(23)
    );
\o_BRAM0A_addr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(24),
      I1 => i_memb_addr(24),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(24)
    );
\o_BRAM0A_addr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(25),
      I1 => i_memb_addr(25),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(25)
    );
\o_BRAM0A_addr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(26),
      I1 => i_memb_addr(26),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(26)
    );
\o_BRAM0A_addr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(27),
      I1 => i_memb_addr(27),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(27)
    );
\o_BRAM0A_addr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(28),
      I1 => i_memb_addr(28),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(28)
    );
\o_BRAM0A_addr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(29),
      I1 => i_memb_addr(29),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(29)
    );
\o_BRAM0A_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(2),
      I1 => i_memb_addr(2),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(2)
    );
\o_BRAM0A_addr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(30),
      I1 => i_memb_addr(30),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(30)
    );
\o_BRAM0A_addr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(31),
      I1 => i_memb_addr(31),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(31)
    );
\o_BRAM0A_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(3),
      I1 => i_memb_addr(3),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(3)
    );
\o_BRAM0A_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(4),
      I1 => i_memb_addr(4),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(4)
    );
\o_BRAM0A_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(5),
      I1 => i_memb_addr(5),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(5)
    );
\o_BRAM0A_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(6),
      I1 => i_memb_addr(6),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(6)
    );
\o_BRAM0A_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(7),
      I1 => i_memb_addr(7),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(7)
    );
\o_BRAM0A_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(8),
      I1 => i_memb_addr(8),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(8)
    );
\o_BRAM0A_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_addr(9),
      I1 => i_memb_addr(9),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_addr(9)
    );
o_BRAM0A_control_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_controla,
      I1 => i_controlb,
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_control
    );
\o_BRAM0A_din[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(0),
      I1 => i_memb_din(0),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(0)
    );
\o_BRAM0A_din[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(10),
      I1 => i_memb_din(10),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(10)
    );
\o_BRAM0A_din[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(11),
      I1 => i_memb_din(11),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(11)
    );
\o_BRAM0A_din[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(12),
      I1 => i_memb_din(12),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(12)
    );
\o_BRAM0A_din[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(13),
      I1 => i_memb_din(13),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(13)
    );
\o_BRAM0A_din[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(14),
      I1 => i_memb_din(14),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(14)
    );
\o_BRAM0A_din[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(15),
      I1 => i_memb_din(15),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(15)
    );
\o_BRAM0A_din[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(16),
      I1 => i_memb_din(16),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(16)
    );
\o_BRAM0A_din[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(17),
      I1 => i_memb_din(17),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(17)
    );
\o_BRAM0A_din[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(18),
      I1 => i_memb_din(18),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(18)
    );
\o_BRAM0A_din[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(19),
      I1 => i_memb_din(19),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(19)
    );
\o_BRAM0A_din[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(1),
      I1 => i_memb_din(1),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(1)
    );
\o_BRAM0A_din[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(20),
      I1 => i_memb_din(20),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(20)
    );
\o_BRAM0A_din[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(21),
      I1 => i_memb_din(21),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(21)
    );
\o_BRAM0A_din[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(22),
      I1 => i_memb_din(22),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(22)
    );
\o_BRAM0A_din[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(23),
      I1 => i_memb_din(23),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(23)
    );
\o_BRAM0A_din[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(24),
      I1 => i_memb_din(24),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(24)
    );
\o_BRAM0A_din[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(25),
      I1 => i_memb_din(25),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(25)
    );
\o_BRAM0A_din[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(26),
      I1 => i_memb_din(26),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(26)
    );
\o_BRAM0A_din[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(27),
      I1 => i_memb_din(27),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(27)
    );
\o_BRAM0A_din[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(28),
      I1 => i_memb_din(28),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(28)
    );
\o_BRAM0A_din[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(29),
      I1 => i_memb_din(29),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(29)
    );
\o_BRAM0A_din[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(2),
      I1 => i_memb_din(2),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(2)
    );
\o_BRAM0A_din[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(30),
      I1 => i_memb_din(30),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(30)
    );
\o_BRAM0A_din[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(31),
      I1 => i_memb_din(31),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(31)
    );
\o_BRAM0A_din[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(3),
      I1 => i_memb_din(3),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(3)
    );
\o_BRAM0A_din[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(4),
      I1 => i_memb_din(4),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(4)
    );
\o_BRAM0A_din[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(5),
      I1 => i_memb_din(5),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(5)
    );
\o_BRAM0A_din[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(6),
      I1 => i_memb_din(6),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(6)
    );
\o_BRAM0A_din[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(7),
      I1 => i_memb_din(7),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(7)
    );
\o_BRAM0A_din[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(8),
      I1 => i_memb_din(8),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(8)
    );
\o_BRAM0A_din[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_din(9),
      I1 => i_memb_din(9),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_din(9)
    );
o_BRAM0A_en_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_en,
      I1 => i_memb_en,
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_en
    );
o_BRAM0A_rst_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_rst,
      I1 => i_memb_rst,
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_rst
    );
\o_BRAM0A_we[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_we(0),
      I1 => i_memb_we(0),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_we(0)
    );
\o_BRAM0A_we[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_we(1),
      I1 => i_memb_we(1),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_we(1)
    );
\o_BRAM0A_we[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_we(2),
      I1 => i_memb_we(2),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_we(2)
    );
\o_BRAM0A_we[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000C0000"
    )
        port map (
      I0 => i_mema_we(3),
      I1 => i_memb_we(3),
      I2 => bram_sel(2),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(0),
      O => o_BRAM0A_we(3)
    );
\o_BRAM1A_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(0),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(0),
      O => o_BRAM1A_addr(0)
    );
\o_BRAM1A_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(10),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(10),
      O => o_BRAM1A_addr(10)
    );
\o_BRAM1A_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(11),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(11),
      O => o_BRAM1A_addr(11)
    );
\o_BRAM1A_addr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(12),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(12),
      O => o_BRAM1A_addr(12)
    );
\o_BRAM1A_addr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(13),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(13),
      O => o_BRAM1A_addr(13)
    );
\o_BRAM1A_addr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(14),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(14),
      O => o_BRAM1A_addr(14)
    );
\o_BRAM1A_addr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(15),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(15),
      O => o_BRAM1A_addr(15)
    );
\o_BRAM1A_addr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(16),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(16),
      O => o_BRAM1A_addr(16)
    );
\o_BRAM1A_addr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(17),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(17),
      O => o_BRAM1A_addr(17)
    );
\o_BRAM1A_addr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(18),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(18),
      O => o_BRAM1A_addr(18)
    );
\o_BRAM1A_addr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(19),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(19),
      O => o_BRAM1A_addr(19)
    );
\o_BRAM1A_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(1),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(1),
      O => o_BRAM1A_addr(1)
    );
\o_BRAM1A_addr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(20),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(20),
      O => o_BRAM1A_addr(20)
    );
\o_BRAM1A_addr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(21),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(21),
      O => o_BRAM1A_addr(21)
    );
\o_BRAM1A_addr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(22),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(22),
      O => o_BRAM1A_addr(22)
    );
\o_BRAM1A_addr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(23),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(23),
      O => o_BRAM1A_addr(23)
    );
\o_BRAM1A_addr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(24),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(24),
      O => o_BRAM1A_addr(24)
    );
\o_BRAM1A_addr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(25),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(25),
      O => o_BRAM1A_addr(25)
    );
\o_BRAM1A_addr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(26),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(26),
      O => o_BRAM1A_addr(26)
    );
\o_BRAM1A_addr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(27),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(27),
      O => o_BRAM1A_addr(27)
    );
\o_BRAM1A_addr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(28),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(28),
      O => o_BRAM1A_addr(28)
    );
\o_BRAM1A_addr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(29),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(29),
      O => o_BRAM1A_addr(29)
    );
\o_BRAM1A_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(2),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(2),
      O => o_BRAM1A_addr(2)
    );
\o_BRAM1A_addr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(30),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(30),
      O => o_BRAM1A_addr(30)
    );
\o_BRAM1A_addr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(31),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(31),
      O => o_BRAM1A_addr(31)
    );
\o_BRAM1A_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(3),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(3),
      O => o_BRAM1A_addr(3)
    );
\o_BRAM1A_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(4),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(4),
      O => o_BRAM1A_addr(4)
    );
\o_BRAM1A_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(5),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(5),
      O => o_BRAM1A_addr(5)
    );
\o_BRAM1A_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(6),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(6),
      O => o_BRAM1A_addr(6)
    );
\o_BRAM1A_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(7),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(7),
      O => o_BRAM1A_addr(7)
    );
\o_BRAM1A_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(8),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(8),
      O => o_BRAM1A_addr(8)
    );
\o_BRAM1A_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(9),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_addr(9),
      O => o_BRAM1A_addr(9)
    );
o_BRAM1A_control_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_controlc,
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_controlb,
      O => o_BRAM1A_control
    );
\o_BRAM1A_din[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(0),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(0),
      O => o_BRAM1A_din(0)
    );
\o_BRAM1A_din[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(10),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(10),
      O => o_BRAM1A_din(10)
    );
\o_BRAM1A_din[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(11),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(11),
      O => o_BRAM1A_din(11)
    );
\o_BRAM1A_din[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(12),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(12),
      O => o_BRAM1A_din(12)
    );
\o_BRAM1A_din[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(13),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(13),
      O => o_BRAM1A_din(13)
    );
\o_BRAM1A_din[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(14),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(14),
      O => o_BRAM1A_din(14)
    );
\o_BRAM1A_din[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(15),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(15),
      O => o_BRAM1A_din(15)
    );
\o_BRAM1A_din[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(16),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(16),
      O => o_BRAM1A_din(16)
    );
\o_BRAM1A_din[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(17),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(17),
      O => o_BRAM1A_din(17)
    );
\o_BRAM1A_din[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(18),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(18),
      O => o_BRAM1A_din(18)
    );
\o_BRAM1A_din[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(19),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(19),
      O => o_BRAM1A_din(19)
    );
\o_BRAM1A_din[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(1),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(1),
      O => o_BRAM1A_din(1)
    );
\o_BRAM1A_din[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(20),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(20),
      O => o_BRAM1A_din(20)
    );
\o_BRAM1A_din[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(21),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(21),
      O => o_BRAM1A_din(21)
    );
\o_BRAM1A_din[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(22),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(22),
      O => o_BRAM1A_din(22)
    );
\o_BRAM1A_din[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(23),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(23),
      O => o_BRAM1A_din(23)
    );
\o_BRAM1A_din[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(24),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(24),
      O => o_BRAM1A_din(24)
    );
\o_BRAM1A_din[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(25),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(25),
      O => o_BRAM1A_din(25)
    );
\o_BRAM1A_din[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(26),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(26),
      O => o_BRAM1A_din(26)
    );
\o_BRAM1A_din[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(27),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(27),
      O => o_BRAM1A_din(27)
    );
\o_BRAM1A_din[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(28),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(28),
      O => o_BRAM1A_din(28)
    );
\o_BRAM1A_din[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(29),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(29),
      O => o_BRAM1A_din(29)
    );
\o_BRAM1A_din[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(2),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(2),
      O => o_BRAM1A_din(2)
    );
\o_BRAM1A_din[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(30),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(30),
      O => o_BRAM1A_din(30)
    );
\o_BRAM1A_din[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(31),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(31),
      O => o_BRAM1A_din(31)
    );
\o_BRAM1A_din[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(3),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(3),
      O => o_BRAM1A_din(3)
    );
\o_BRAM1A_din[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(4),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(4),
      O => o_BRAM1A_din(4)
    );
\o_BRAM1A_din[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(5),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(5),
      O => o_BRAM1A_din(5)
    );
\o_BRAM1A_din[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(6),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(6),
      O => o_BRAM1A_din(6)
    );
\o_BRAM1A_din[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(7),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(7),
      O => o_BRAM1A_din(7)
    );
\o_BRAM1A_din[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(8),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(8),
      O => o_BRAM1A_din(8)
    );
\o_BRAM1A_din[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(9),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_din(9),
      O => o_BRAM1A_din(9)
    );
o_BRAM1A_en_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_en,
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_en,
      O => o_BRAM1A_en
    );
o_BRAM1A_rst_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_rst,
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_rst,
      O => o_BRAM1A_rst
    );
\o_BRAM1A_we[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_we(0),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_we(0),
      O => o_BRAM1A_we(0)
    );
\o_BRAM1A_we[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_we(1),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_we(1),
      O => o_BRAM1A_we(1)
    );
\o_BRAM1A_we[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_we(2),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_we(2),
      O => o_BRAM1A_we(2)
    );
\o_BRAM1A_we[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400004504000040"
    )
        port map (
      I0 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I1 => i_memc_we(3),
      I2 => bram_sel(2),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_memb_we(3),
      O => o_BRAM1A_we(3)
    );
\o_BRAM2A_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(0),
      O => o_BRAM2A_addr(0)
    );
\o_BRAM2A_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(10),
      O => o_BRAM2A_addr(10)
    );
\o_BRAM2A_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(11),
      O => o_BRAM2A_addr(11)
    );
\o_BRAM2A_addr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(12),
      O => o_BRAM2A_addr(12)
    );
\o_BRAM2A_addr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(13),
      O => o_BRAM2A_addr(13)
    );
\o_BRAM2A_addr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(14),
      O => o_BRAM2A_addr(14)
    );
\o_BRAM2A_addr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(15),
      O => o_BRAM2A_addr(15)
    );
\o_BRAM2A_addr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(16),
      O => o_BRAM2A_addr(16)
    );
\o_BRAM2A_addr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(17),
      O => o_BRAM2A_addr(17)
    );
\o_BRAM2A_addr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(18),
      O => o_BRAM2A_addr(18)
    );
\o_BRAM2A_addr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(19),
      O => o_BRAM2A_addr(19)
    );
\o_BRAM2A_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(1),
      O => o_BRAM2A_addr(1)
    );
\o_BRAM2A_addr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(20),
      O => o_BRAM2A_addr(20)
    );
\o_BRAM2A_addr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(21),
      O => o_BRAM2A_addr(21)
    );
\o_BRAM2A_addr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(22),
      O => o_BRAM2A_addr(22)
    );
\o_BRAM2A_addr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(23),
      O => o_BRAM2A_addr(23)
    );
\o_BRAM2A_addr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(24),
      O => o_BRAM2A_addr(24)
    );
\o_BRAM2A_addr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(25),
      O => o_BRAM2A_addr(25)
    );
\o_BRAM2A_addr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(26),
      O => o_BRAM2A_addr(26)
    );
\o_BRAM2A_addr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(27),
      O => o_BRAM2A_addr(27)
    );
\o_BRAM2A_addr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(28),
      O => o_BRAM2A_addr(28)
    );
\o_BRAM2A_addr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(29),
      O => o_BRAM2A_addr(29)
    );
\o_BRAM2A_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(2),
      O => o_BRAM2A_addr(2)
    );
\o_BRAM2A_addr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(30),
      O => o_BRAM2A_addr(30)
    );
\o_BRAM2A_addr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(31),
      O => o_BRAM2A_addr(31)
    );
\o_BRAM2A_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(3),
      O => o_BRAM2A_addr(3)
    );
\o_BRAM2A_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(4),
      O => o_BRAM2A_addr(4)
    );
\o_BRAM2A_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(5),
      O => o_BRAM2A_addr(5)
    );
\o_BRAM2A_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(6),
      O => o_BRAM2A_addr(6)
    );
\o_BRAM2A_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(7),
      O => o_BRAM2A_addr(7)
    );
\o_BRAM2A_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(8),
      O => o_BRAM2A_addr(8)
    );
\o_BRAM2A_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_addr(9),
      O => o_BRAM2A_addr(9)
    );
o_BRAM2A_control_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_controla,
      O => o_BRAM2A_control
    );
\o_BRAM2A_din[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(0),
      O => o_BRAM2A_din(0)
    );
\o_BRAM2A_din[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(10),
      O => o_BRAM2A_din(10)
    );
\o_BRAM2A_din[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(11),
      O => o_BRAM2A_din(11)
    );
\o_BRAM2A_din[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(12),
      O => o_BRAM2A_din(12)
    );
\o_BRAM2A_din[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(13),
      O => o_BRAM2A_din(13)
    );
\o_BRAM2A_din[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(14),
      O => o_BRAM2A_din(14)
    );
\o_BRAM2A_din[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(15),
      O => o_BRAM2A_din(15)
    );
\o_BRAM2A_din[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(16),
      O => o_BRAM2A_din(16)
    );
\o_BRAM2A_din[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(17),
      O => o_BRAM2A_din(17)
    );
\o_BRAM2A_din[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(18),
      O => o_BRAM2A_din(18)
    );
\o_BRAM2A_din[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(19),
      O => o_BRAM2A_din(19)
    );
\o_BRAM2A_din[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(1),
      O => o_BRAM2A_din(1)
    );
\o_BRAM2A_din[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(20),
      O => o_BRAM2A_din(20)
    );
\o_BRAM2A_din[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(21),
      O => o_BRAM2A_din(21)
    );
\o_BRAM2A_din[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(22),
      O => o_BRAM2A_din(22)
    );
\o_BRAM2A_din[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(23),
      O => o_BRAM2A_din(23)
    );
\o_BRAM2A_din[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(24),
      O => o_BRAM2A_din(24)
    );
\o_BRAM2A_din[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(25),
      O => o_BRAM2A_din(25)
    );
\o_BRAM2A_din[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(26),
      O => o_BRAM2A_din(26)
    );
\o_BRAM2A_din[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(27),
      O => o_BRAM2A_din(27)
    );
\o_BRAM2A_din[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(28),
      O => o_BRAM2A_din(28)
    );
\o_BRAM2A_din[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(29),
      O => o_BRAM2A_din(29)
    );
\o_BRAM2A_din[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(2),
      O => o_BRAM2A_din(2)
    );
\o_BRAM2A_din[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(30),
      O => o_BRAM2A_din(30)
    );
\o_BRAM2A_din[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(31),
      O => o_BRAM2A_din(31)
    );
\o_BRAM2A_din[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(3),
      O => o_BRAM2A_din(3)
    );
\o_BRAM2A_din[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(4),
      O => o_BRAM2A_din(4)
    );
\o_BRAM2A_din[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(5),
      O => o_BRAM2A_din(5)
    );
\o_BRAM2A_din[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(6),
      O => o_BRAM2A_din(6)
    );
\o_BRAM2A_din[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(7),
      O => o_BRAM2A_din(7)
    );
\o_BRAM2A_din[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(8),
      O => o_BRAM2A_din(8)
    );
\o_BRAM2A_din[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_din(9),
      O => o_BRAM2A_din(9)
    );
o_BRAM2A_en_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_en,
      O => o_BRAM2A_en
    );
o_BRAM2A_rst_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_rst,
      O => o_BRAM2A_rst
    );
\o_BRAM2A_we[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_we(0),
      O => o_BRAM2A_we(0)
    );
\o_BRAM2A_we[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_we(1),
      O => o_BRAM2A_we(1)
    );
\o_BRAM2A_we[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_we(2),
      O => o_BRAM2A_we(2)
    );
\o_BRAM2A_we[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      I4 => bram_sel(1),
      I5 => i_mema_we(3),
      O => o_BRAM2A_we(3)
    );
\o_BRAM2B_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(0),
      I1 => i_memb_addr(0),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(0)
    );
\o_BRAM2B_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(10),
      I1 => i_memb_addr(10),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(10)
    );
\o_BRAM2B_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(11),
      I1 => i_memb_addr(11),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(11)
    );
\o_BRAM2B_addr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(12),
      I1 => i_memb_addr(12),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(12)
    );
\o_BRAM2B_addr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(13),
      I1 => i_memb_addr(13),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(13)
    );
\o_BRAM2B_addr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(14),
      I1 => i_memb_addr(14),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(14)
    );
\o_BRAM2B_addr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(15),
      I1 => i_memb_addr(15),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(15)
    );
\o_BRAM2B_addr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(16),
      I1 => i_memb_addr(16),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(16)
    );
\o_BRAM2B_addr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(17),
      I1 => i_memb_addr(17),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(17)
    );
\o_BRAM2B_addr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(18),
      I1 => i_memb_addr(18),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(18)
    );
\o_BRAM2B_addr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(19),
      I1 => i_memb_addr(19),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(19)
    );
\o_BRAM2B_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(1),
      I1 => i_memb_addr(1),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(1)
    );
\o_BRAM2B_addr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(20),
      I1 => i_memb_addr(20),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(20)
    );
\o_BRAM2B_addr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(21),
      I1 => i_memb_addr(21),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(21)
    );
\o_BRAM2B_addr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(22),
      I1 => i_memb_addr(22),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(22)
    );
\o_BRAM2B_addr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(23),
      I1 => i_memb_addr(23),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(23)
    );
\o_BRAM2B_addr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(24),
      I1 => i_memb_addr(24),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(24)
    );
\o_BRAM2B_addr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(25),
      I1 => i_memb_addr(25),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(25)
    );
\o_BRAM2B_addr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(26),
      I1 => i_memb_addr(26),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(26)
    );
\o_BRAM2B_addr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(27),
      I1 => i_memb_addr(27),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(27)
    );
\o_BRAM2B_addr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(28),
      I1 => i_memb_addr(28),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(28)
    );
\o_BRAM2B_addr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(29),
      I1 => i_memb_addr(29),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(29)
    );
\o_BRAM2B_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(2),
      I1 => i_memb_addr(2),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(2)
    );
\o_BRAM2B_addr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(30),
      I1 => i_memb_addr(30),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(30)
    );
\o_BRAM2B_addr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(31),
      I1 => i_memb_addr(31),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(31)
    );
\o_BRAM2B_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(3),
      I1 => i_memb_addr(3),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(3)
    );
\o_BRAM2B_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(4),
      I1 => i_memb_addr(4),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(4)
    );
\o_BRAM2B_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(5),
      I1 => i_memb_addr(5),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(5)
    );
\o_BRAM2B_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(6),
      I1 => i_memb_addr(6),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(6)
    );
\o_BRAM2B_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(7),
      I1 => i_memb_addr(7),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(7)
    );
\o_BRAM2B_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(8),
      I1 => i_memb_addr(8),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(8)
    );
\o_BRAM2B_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_addr(9),
      I1 => i_memb_addr(9),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_addr(9)
    );
o_BRAM2B_control_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_memc_dout12_out__0\,
      I1 => i_controlc,
      I2 => i_controlb,
      I3 => o_BRAM2B_en_INST_0_i_2_n_0,
      O => o_BRAM2B_control
    );
\o_BRAM2B_din[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(0),
      I1 => i_memb_din(0),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(0)
    );
\o_BRAM2B_din[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(10),
      I1 => i_memb_din(10),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(10)
    );
\o_BRAM2B_din[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(11),
      I1 => i_memb_din(11),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(11)
    );
\o_BRAM2B_din[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(12),
      I1 => i_memb_din(12),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(12)
    );
\o_BRAM2B_din[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(13),
      I1 => i_memb_din(13),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(13)
    );
\o_BRAM2B_din[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(14),
      I1 => i_memb_din(14),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(14)
    );
\o_BRAM2B_din[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(15),
      I1 => i_memb_din(15),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(15)
    );
\o_BRAM2B_din[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(16),
      I1 => i_memb_din(16),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(16)
    );
\o_BRAM2B_din[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(17),
      I1 => i_memb_din(17),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(17)
    );
\o_BRAM2B_din[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(18),
      I1 => i_memb_din(18),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(18)
    );
\o_BRAM2B_din[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(19),
      I1 => i_memb_din(19),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(19)
    );
\o_BRAM2B_din[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(1),
      I1 => i_memb_din(1),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(1)
    );
\o_BRAM2B_din[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(20),
      I1 => i_memb_din(20),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(20)
    );
\o_BRAM2B_din[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(21),
      I1 => i_memb_din(21),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(21)
    );
\o_BRAM2B_din[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(22),
      I1 => i_memb_din(22),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(22)
    );
\o_BRAM2B_din[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(23),
      I1 => i_memb_din(23),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(23)
    );
\o_BRAM2B_din[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(24),
      I1 => i_memb_din(24),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(24)
    );
\o_BRAM2B_din[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(25),
      I1 => i_memb_din(25),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(25)
    );
\o_BRAM2B_din[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(26),
      I1 => i_memb_din(26),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(26)
    );
\o_BRAM2B_din[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(27),
      I1 => i_memb_din(27),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(27)
    );
\o_BRAM2B_din[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(28),
      I1 => i_memb_din(28),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(28)
    );
\o_BRAM2B_din[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(29),
      I1 => i_memb_din(29),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(29)
    );
\o_BRAM2B_din[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(2),
      I1 => i_memb_din(2),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(2)
    );
\o_BRAM2B_din[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(30),
      I1 => i_memb_din(30),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(30)
    );
\o_BRAM2B_din[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(31),
      I1 => i_memb_din(31),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(31)
    );
\o_BRAM2B_din[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(3),
      I1 => i_memb_din(3),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(3)
    );
\o_BRAM2B_din[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(4),
      I1 => i_memb_din(4),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(4)
    );
\o_BRAM2B_din[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(5),
      I1 => i_memb_din(5),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(5)
    );
\o_BRAM2B_din[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(6),
      I1 => i_memb_din(6),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(6)
    );
\o_BRAM2B_din[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(7),
      I1 => i_memb_din(7),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(7)
    );
\o_BRAM2B_din[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(8),
      I1 => i_memb_din(8),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(8)
    );
\o_BRAM2B_din[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A00CA"
    )
        port map (
      I0 => i_memc_din(9),
      I1 => i_memb_din(9),
      I2 => bram_sel(0),
      I3 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I4 => bram_sel(1),
      I5 => bram_sel(2),
      O => o_BRAM2B_din(9)
    );
o_BRAM2B_en_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_memc_dout12_out__0\,
      I1 => i_memc_en,
      I2 => i_memb_en,
      I3 => o_BRAM2B_en_INST_0_i_2_n_0,
      O => o_BRAM2B_en
    );
o_BRAM2B_en_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => bram_sel(2),
      I1 => bram_sel(3),
      I2 => bram_sel(4),
      I3 => bram_sel(0),
      O => \U0/o_memc_dout12_out__0\
    );
o_BRAM2B_en_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => bram_sel(1),
      I1 => bram_sel(2),
      I2 => bram_sel(3),
      I3 => bram_sel(4),
      I4 => bram_sel(0),
      O => o_BRAM2B_en_INST_0_i_2_n_0
    );
o_BRAM2B_rst_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_memc_dout12_out__0\,
      I1 => i_memc_rst,
      I2 => i_memb_rst,
      I3 => o_BRAM2B_en_INST_0_i_2_n_0,
      O => o_BRAM2B_rst
    );
\o_BRAM2B_we[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_memc_dout12_out__0\,
      I1 => i_memc_we(0),
      I2 => i_memb_we(0),
      I3 => o_BRAM2B_en_INST_0_i_2_n_0,
      O => o_BRAM2B_we(0)
    );
\o_BRAM2B_we[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_memc_dout12_out__0\,
      I1 => i_memc_we(1),
      I2 => i_memb_we(1),
      I3 => o_BRAM2B_en_INST_0_i_2_n_0,
      O => o_BRAM2B_we(1)
    );
\o_BRAM2B_we[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_memc_dout12_out__0\,
      I1 => i_memc_we(2),
      I2 => i_memb_we(2),
      I3 => o_BRAM2B_en_INST_0_i_2_n_0,
      O => o_BRAM2B_we(2)
    );
\o_BRAM2B_we[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_memc_dout12_out__0\,
      I1 => i_memc_we(3),
      I2 => i_memb_we(3),
      I3 => o_BRAM2B_en_INST_0_i_2_n_0,
      O => o_BRAM2B_we(3)
    );
\o_mema_dout[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(0),
      I2 => i_BRAM0A_dout(0),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(0)
    );
\o_mema_dout[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(10),
      I2 => i_BRAM0A_dout(10),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(10)
    );
\o_mema_dout[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(11),
      I2 => i_BRAM0A_dout(11),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(11)
    );
\o_mema_dout[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(12),
      I2 => i_BRAM0A_dout(12),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(12)
    );
\o_mema_dout[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(13),
      I2 => i_BRAM0A_dout(13),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(13)
    );
\o_mema_dout[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(14),
      I2 => i_BRAM0A_dout(14),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(14)
    );
\o_mema_dout[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(15),
      I2 => i_BRAM0A_dout(15),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(15)
    );
\o_mema_dout[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(16),
      I2 => i_BRAM0A_dout(16),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(16)
    );
\o_mema_dout[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(17),
      I2 => i_BRAM0A_dout(17),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(17)
    );
\o_mema_dout[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(18),
      I2 => i_BRAM0A_dout(18),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(18)
    );
\o_mema_dout[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(19),
      I2 => i_BRAM0A_dout(19),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(19)
    );
\o_mema_dout[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(1),
      I2 => i_BRAM0A_dout(1),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(1)
    );
\o_mema_dout[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(20),
      I2 => i_BRAM0A_dout(20),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(20)
    );
\o_mema_dout[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(21),
      I2 => i_BRAM0A_dout(21),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(21)
    );
\o_mema_dout[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(22),
      I2 => i_BRAM0A_dout(22),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(22)
    );
\o_mema_dout[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(23),
      I2 => i_BRAM0A_dout(23),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(23)
    );
\o_mema_dout[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(24),
      I2 => i_BRAM0A_dout(24),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(24)
    );
\o_mema_dout[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(25),
      I2 => i_BRAM0A_dout(25),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(25)
    );
\o_mema_dout[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(26),
      I2 => i_BRAM0A_dout(26),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(26)
    );
\o_mema_dout[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(27),
      I2 => i_BRAM0A_dout(27),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(27)
    );
\o_mema_dout[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(28),
      I2 => i_BRAM0A_dout(28),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(28)
    );
\o_mema_dout[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(29),
      I2 => i_BRAM0A_dout(29),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(29)
    );
\o_mema_dout[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(2),
      I2 => i_BRAM0A_dout(2),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(2)
    );
\o_mema_dout[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(30),
      I2 => i_BRAM0A_dout(30),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(30)
    );
\o_mema_dout[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(31),
      I2 => i_BRAM0A_dout(31),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(31)
    );
\o_mema_dout[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => bram_sel(1),
      I1 => bram_sel(0),
      I2 => bram_sel(4),
      I3 => bram_sel(3),
      I4 => bram_sel(2),
      O => \U0/o_mema_dout1__0\
    );
\o_mema_dout[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => bram_sel(1),
      I1 => bram_sel(4),
      I2 => bram_sel(3),
      I3 => bram_sel(2),
      I4 => bram_sel(0),
      O => \o_mema_dout[31]_INST_0_i_2_n_0\
    );
\o_mema_dout[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(3),
      I2 => i_BRAM0A_dout(3),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(3)
    );
\o_mema_dout[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(4),
      I2 => i_BRAM0A_dout(4),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(4)
    );
\o_mema_dout[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(5),
      I2 => i_BRAM0A_dout(5),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(5)
    );
\o_mema_dout[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(6),
      I2 => i_BRAM0A_dout(6),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(6)
    );
\o_mema_dout[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(7),
      I2 => i_BRAM0A_dout(7),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(7)
    );
\o_mema_dout[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(8),
      I2 => i_BRAM0A_dout(8),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(8)
    );
\o_mema_dout[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \U0/o_mema_dout1__0\,
      I1 => i_BRAM2A_dout(9),
      I2 => i_BRAM0A_dout(9),
      I3 => \o_mema_dout[31]_INST_0_i_2_n_0\,
      O => o_mema_dout(9)
    );
\o_memb_dout[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(0),
      I3 => i_BRAM2B_dout(0),
      I4 => i_BRAM1A_dout(0),
      I5 => p_0_in,
      O => o_memb_dout(0)
    );
\o_memb_dout[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(10),
      I3 => i_BRAM2B_dout(10),
      I4 => i_BRAM1A_dout(10),
      I5 => p_0_in,
      O => o_memb_dout(10)
    );
\o_memb_dout[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(11),
      I3 => i_BRAM2B_dout(11),
      I4 => i_BRAM1A_dout(11),
      I5 => p_0_in,
      O => o_memb_dout(11)
    );
\o_memb_dout[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(12),
      I3 => i_BRAM2B_dout(12),
      I4 => i_BRAM1A_dout(12),
      I5 => p_0_in,
      O => o_memb_dout(12)
    );
\o_memb_dout[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(13),
      I3 => i_BRAM2B_dout(13),
      I4 => i_BRAM1A_dout(13),
      I5 => p_0_in,
      O => o_memb_dout(13)
    );
\o_memb_dout[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(14),
      I3 => i_BRAM2B_dout(14),
      I4 => i_BRAM1A_dout(14),
      I5 => p_0_in,
      O => o_memb_dout(14)
    );
\o_memb_dout[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(15),
      I3 => i_BRAM2B_dout(15),
      I4 => i_BRAM1A_dout(15),
      I5 => p_0_in,
      O => o_memb_dout(15)
    );
\o_memb_dout[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(16),
      I3 => i_BRAM2B_dout(16),
      I4 => i_BRAM1A_dout(16),
      I5 => p_0_in,
      O => o_memb_dout(16)
    );
\o_memb_dout[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(17),
      I3 => i_BRAM2B_dout(17),
      I4 => i_BRAM1A_dout(17),
      I5 => p_0_in,
      O => o_memb_dout(17)
    );
\o_memb_dout[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(18),
      I3 => i_BRAM2B_dout(18),
      I4 => i_BRAM1A_dout(18),
      I5 => p_0_in,
      O => o_memb_dout(18)
    );
\o_memb_dout[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(19),
      I3 => i_BRAM2B_dout(19),
      I4 => i_BRAM1A_dout(19),
      I5 => p_0_in,
      O => o_memb_dout(19)
    );
\o_memb_dout[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(1),
      I3 => i_BRAM2B_dout(1),
      I4 => i_BRAM1A_dout(1),
      I5 => p_0_in,
      O => o_memb_dout(1)
    );
\o_memb_dout[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(20),
      I3 => i_BRAM2B_dout(20),
      I4 => i_BRAM1A_dout(20),
      I5 => p_0_in,
      O => o_memb_dout(20)
    );
\o_memb_dout[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(21),
      I3 => i_BRAM2B_dout(21),
      I4 => i_BRAM1A_dout(21),
      I5 => p_0_in,
      O => o_memb_dout(21)
    );
\o_memb_dout[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(22),
      I3 => i_BRAM2B_dout(22),
      I4 => i_BRAM1A_dout(22),
      I5 => p_0_in,
      O => o_memb_dout(22)
    );
\o_memb_dout[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(23),
      I3 => i_BRAM2B_dout(23),
      I4 => i_BRAM1A_dout(23),
      I5 => p_0_in,
      O => o_memb_dout(23)
    );
\o_memb_dout[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(24),
      I3 => i_BRAM2B_dout(24),
      I4 => i_BRAM1A_dout(24),
      I5 => p_0_in,
      O => o_memb_dout(24)
    );
\o_memb_dout[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(25),
      I3 => i_BRAM2B_dout(25),
      I4 => i_BRAM1A_dout(25),
      I5 => p_0_in,
      O => o_memb_dout(25)
    );
\o_memb_dout[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(26),
      I3 => i_BRAM2B_dout(26),
      I4 => i_BRAM1A_dout(26),
      I5 => p_0_in,
      O => o_memb_dout(26)
    );
\o_memb_dout[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(27),
      I3 => i_BRAM2B_dout(27),
      I4 => i_BRAM1A_dout(27),
      I5 => p_0_in,
      O => o_memb_dout(27)
    );
\o_memb_dout[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(28),
      I3 => i_BRAM2B_dout(28),
      I4 => i_BRAM1A_dout(28),
      I5 => p_0_in,
      O => o_memb_dout(28)
    );
\o_memb_dout[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(29),
      I3 => i_BRAM2B_dout(29),
      I4 => i_BRAM1A_dout(29),
      I5 => p_0_in,
      O => o_memb_dout(29)
    );
\o_memb_dout[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(2),
      I3 => i_BRAM2B_dout(2),
      I4 => i_BRAM1A_dout(2),
      I5 => p_0_in,
      O => o_memb_dout(2)
    );
\o_memb_dout[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(30),
      I3 => i_BRAM2B_dout(30),
      I4 => i_BRAM1A_dout(30),
      I5 => p_0_in,
      O => o_memb_dout(30)
    );
\o_memb_dout[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(31),
      I3 => i_BRAM2B_dout(31),
      I4 => i_BRAM1A_dout(31),
      I5 => p_0_in,
      O => o_memb_dout(31)
    );
\o_memb_dout[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bram_sel(4),
      I1 => bram_sel(2),
      I2 => bram_sel(3),
      O => p_0_in
    );
\o_memb_dout[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(3),
      I3 => i_BRAM2B_dout(3),
      I4 => i_BRAM1A_dout(3),
      I5 => p_0_in,
      O => o_memb_dout(3)
    );
\o_memb_dout[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(4),
      I3 => i_BRAM2B_dout(4),
      I4 => i_BRAM1A_dout(4),
      I5 => p_0_in,
      O => o_memb_dout(4)
    );
\o_memb_dout[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(5),
      I3 => i_BRAM2B_dout(5),
      I4 => i_BRAM1A_dout(5),
      I5 => p_0_in,
      O => o_memb_dout(5)
    );
\o_memb_dout[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(6),
      I3 => i_BRAM2B_dout(6),
      I4 => i_BRAM1A_dout(6),
      I5 => p_0_in,
      O => o_memb_dout(6)
    );
\o_memb_dout[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(7),
      I3 => i_BRAM2B_dout(7),
      I4 => i_BRAM1A_dout(7),
      I5 => p_0_in,
      O => o_memb_dout(7)
    );
\o_memb_dout[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(8),
      I3 => i_BRAM2B_dout(8),
      I4 => i_BRAM1A_dout(8),
      I5 => p_0_in,
      O => o_memb_dout(8)
    );
\o_memb_dout[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_BRAM0A_dout(9),
      I3 => i_BRAM2B_dout(9),
      I4 => i_BRAM1A_dout(9),
      I5 => p_0_in,
      O => o_memb_dout(9)
    );
\o_memc_dout[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(0),
      I1 => i_BRAM1A_dout(0),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(0)
    );
\o_memc_dout[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(10),
      I1 => i_BRAM1A_dout(10),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(10)
    );
\o_memc_dout[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(11),
      I1 => i_BRAM1A_dout(11),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(11)
    );
\o_memc_dout[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(12),
      I1 => i_BRAM1A_dout(12),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(12)
    );
\o_memc_dout[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(13),
      I1 => i_BRAM1A_dout(13),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(13)
    );
\o_memc_dout[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(14),
      I1 => i_BRAM1A_dout(14),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(14)
    );
\o_memc_dout[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(15),
      I1 => i_BRAM1A_dout(15),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(15)
    );
\o_memc_dout[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(16),
      I1 => i_BRAM1A_dout(16),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(16)
    );
\o_memc_dout[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(17),
      I1 => i_BRAM1A_dout(17),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(17)
    );
\o_memc_dout[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(18),
      I1 => i_BRAM1A_dout(18),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(18)
    );
\o_memc_dout[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(19),
      I1 => i_BRAM1A_dout(19),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(19)
    );
\o_memc_dout[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(1),
      I1 => i_BRAM1A_dout(1),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(1)
    );
\o_memc_dout[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(20),
      I1 => i_BRAM1A_dout(20),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(20)
    );
\o_memc_dout[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(21),
      I1 => i_BRAM1A_dout(21),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(21)
    );
\o_memc_dout[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(22),
      I1 => i_BRAM1A_dout(22),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(22)
    );
\o_memc_dout[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(23),
      I1 => i_BRAM1A_dout(23),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(23)
    );
\o_memc_dout[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(24),
      I1 => i_BRAM1A_dout(24),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(24)
    );
\o_memc_dout[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(25),
      I1 => i_BRAM1A_dout(25),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(25)
    );
\o_memc_dout[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(26),
      I1 => i_BRAM1A_dout(26),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(26)
    );
\o_memc_dout[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(27),
      I1 => i_BRAM1A_dout(27),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(27)
    );
\o_memc_dout[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(28),
      I1 => i_BRAM1A_dout(28),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(28)
    );
\o_memc_dout[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(29),
      I1 => i_BRAM1A_dout(29),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(29)
    );
\o_memc_dout[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(2),
      I1 => i_BRAM1A_dout(2),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(2)
    );
\o_memc_dout[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(30),
      I1 => i_BRAM1A_dout(30),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(30)
    );
\o_memc_dout[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(31),
      I1 => i_BRAM1A_dout(31),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(31)
    );
\o_memc_dout[31]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bram_sel(3),
      I1 => bram_sel(4),
      O => \o_memc_dout[31]_INST_0_i_1_n_0\
    );
\o_memc_dout[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(3),
      I1 => i_BRAM1A_dout(3),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(3)
    );
\o_memc_dout[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(4),
      I1 => i_BRAM1A_dout(4),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(4)
    );
\o_memc_dout[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(5),
      I1 => i_BRAM1A_dout(5),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(5)
    );
\o_memc_dout[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(6),
      I1 => i_BRAM1A_dout(6),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(6)
    );
\o_memc_dout[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(7),
      I1 => i_BRAM1A_dout(7),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(7)
    );
\o_memc_dout[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(8),
      I1 => i_BRAM1A_dout(8),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(8)
    );
\o_memc_dout[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C0000C0AA"
    )
        port map (
      I0 => i_BRAM2B_dout(9),
      I1 => i_BRAM1A_dout(9),
      I2 => bram_sel(1),
      I3 => bram_sel(0),
      I4 => \o_memc_dout[31]_INST_0_i_1_n_0\,
      I5 => bram_sel(2),
      O => o_memc_dout(9)
    );
end STRUCTURE;
