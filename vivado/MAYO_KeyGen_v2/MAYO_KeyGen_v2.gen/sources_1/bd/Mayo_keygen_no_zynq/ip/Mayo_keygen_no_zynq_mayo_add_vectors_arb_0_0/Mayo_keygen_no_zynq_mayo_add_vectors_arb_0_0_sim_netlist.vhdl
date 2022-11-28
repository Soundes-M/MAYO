-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Nov 24 23:40:13 2022
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0/Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0_sim_netlist.vhdl
-- Design      : Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 is
  port (
    bram_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_mema_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_en : in STD_LOGIC;
    i_mema_rst : in STD_LOGIC;
    i_mema_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_memb_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_en : in STD_LOGIC;
    i_memb_rst : in STD_LOGIC;
    i_memb_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_memc_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_en : in STD_LOGIC;
    i_memc_rst : in STD_LOGIC;
    i_memc_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controla : in STD_LOGIC;
    i_controlb : in STD_LOGIC;
    i_controlc : in STD_LOGIC;
    i_BRAM0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0_en : out STD_LOGIC;
    o_BRAM0_rst : out STD_LOGIC;
    o_BRAM0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0_control : out STD_LOGIC;
    i_BRAM1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1_en : out STD_LOGIC;
    o_BRAM1_rst : out STD_LOGIC;
    o_BRAM1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM1_control : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 : entity is "Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0,mayo_add_vectors_arbiter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 : entity is "mayo_add_vectors_arbiter,Vivado 2020.2";
end Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0;

architecture STRUCTURE of Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 is
  signal \o_BRAM0_din[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_BRAM0_din[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_BRAM0_din[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_BRAM1_din[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_BRAM1_din[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_BRAM1_din[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of i_mema_rst : signal is "xilinx.com:signal:reset:1.0 i_mema_rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_mema_rst : signal is "XIL_INTERFACENAME i_mema_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of i_memb_rst : signal is "xilinx.com:signal:reset:1.0 i_memb_rst RST";
  attribute x_interface_parameter of i_memb_rst : signal is "XIL_INTERFACENAME i_memb_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of i_memc_rst : signal is "xilinx.com:signal:reset:1.0 i_memc_rst RST";
  attribute x_interface_parameter of i_memc_rst : signal is "XIL_INTERFACENAME i_memc_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of o_BRAM0_rst : signal is "xilinx.com:signal:reset:1.0 o_BRAM0_rst RST";
  attribute x_interface_parameter of o_BRAM0_rst : signal is "XIL_INTERFACENAME o_BRAM0_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of o_BRAM1_rst : signal is "xilinx.com:signal:reset:1.0 o_BRAM1_rst RST";
  attribute x_interface_parameter of o_BRAM1_rst : signal is "XIL_INTERFACENAME o_BRAM1_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
\o_BRAM0_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(0),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(0),
      I4 => i_memc_addr(0),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(0)
    );
\o_BRAM0_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(10),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(10),
      I4 => i_memc_addr(10),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(10)
    );
\o_BRAM0_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(11),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(11),
      I4 => i_memc_addr(11),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(11)
    );
\o_BRAM0_addr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(12),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(12),
      I4 => i_memc_addr(12),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(12)
    );
\o_BRAM0_addr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(13),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(13),
      I4 => i_memc_addr(13),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(13)
    );
\o_BRAM0_addr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(14),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(14),
      I4 => i_memc_addr(14),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(14)
    );
\o_BRAM0_addr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(15),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(15),
      I4 => i_memc_addr(15),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(15)
    );
\o_BRAM0_addr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(16),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(16),
      I4 => i_memc_addr(16),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(16)
    );
\o_BRAM0_addr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(17),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(17),
      I4 => i_memc_addr(17),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(17)
    );
\o_BRAM0_addr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(18),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(18),
      I4 => i_memc_addr(18),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(18)
    );
\o_BRAM0_addr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(19),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(19),
      I4 => i_memc_addr(19),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(19)
    );
\o_BRAM0_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(1),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(1),
      I4 => i_memc_addr(1),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(1)
    );
\o_BRAM0_addr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(20),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(20),
      I4 => i_memc_addr(20),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(20)
    );
\o_BRAM0_addr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(21),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(21),
      I4 => i_memc_addr(21),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(21)
    );
\o_BRAM0_addr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(22),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(22),
      I4 => i_memc_addr(22),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(22)
    );
\o_BRAM0_addr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(23),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(23),
      I4 => i_memc_addr(23),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(23)
    );
\o_BRAM0_addr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(24),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(24),
      I4 => i_memc_addr(24),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(24)
    );
\o_BRAM0_addr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(25),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(25),
      I4 => i_memc_addr(25),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(25)
    );
\o_BRAM0_addr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(26),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(26),
      I4 => i_memc_addr(26),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(26)
    );
\o_BRAM0_addr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(27),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(27),
      I4 => i_memc_addr(27),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(27)
    );
\o_BRAM0_addr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(28),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(28),
      I4 => i_memc_addr(28),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(28)
    );
\o_BRAM0_addr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(29),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(29),
      I4 => i_memc_addr(29),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(29)
    );
\o_BRAM0_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(2),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(2),
      I4 => i_memc_addr(2),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(2)
    );
\o_BRAM0_addr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(30),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(30),
      I4 => i_memc_addr(30),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(30)
    );
\o_BRAM0_addr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(31),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(31),
      I4 => i_memc_addr(31),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(31)
    );
\o_BRAM0_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(3),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(3),
      I4 => i_memc_addr(3),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(3)
    );
\o_BRAM0_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(4),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(4),
      I4 => i_memc_addr(4),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(4)
    );
\o_BRAM0_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(5),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(5),
      I4 => i_memc_addr(5),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(5)
    );
\o_BRAM0_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(6),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(6),
      I4 => i_memc_addr(6),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(6)
    );
\o_BRAM0_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(7),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(7),
      I4 => i_memc_addr(7),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(7)
    );
\o_BRAM0_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(8),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(8),
      I4 => i_memc_addr(8),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(8)
    );
\o_BRAM0_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_addr(9),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_addr(9),
      I4 => i_memc_addr(9),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_addr(9)
    );
o_BRAM0_control_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00A8"
    )
        port map (
      I0 => bram_sel(1),
      I1 => i_controlc,
      I2 => i_controlb,
      I3 => bram_sel(0),
      I4 => i_controla,
      O => o_BRAM0_control
    );
\o_BRAM0_din[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(0),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(0),
      I4 => i_memc_din(0),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(0)
    );
\o_BRAM0_din[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(10),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(10),
      I4 => i_memc_din(10),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(10)
    );
\o_BRAM0_din[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(11),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(11),
      I4 => i_memc_din(11),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(11)
    );
\o_BRAM0_din[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(12),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(12),
      I4 => i_memc_din(12),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(12)
    );
\o_BRAM0_din[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(13),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(13),
      I4 => i_memc_din(13),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(13)
    );
\o_BRAM0_din[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(14),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(14),
      I4 => i_memc_din(14),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(14)
    );
\o_BRAM0_din[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(15),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(15),
      I4 => i_memc_din(15),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(15)
    );
\o_BRAM0_din[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(16),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(16),
      I4 => i_memc_din(16),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(16)
    );
\o_BRAM0_din[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(17),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(17),
      I4 => i_memc_din(17),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(17)
    );
\o_BRAM0_din[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(18),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(18),
      I4 => i_memc_din(18),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(18)
    );
\o_BRAM0_din[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(19),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(19),
      I4 => i_memc_din(19),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(19)
    );
\o_BRAM0_din[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(1),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(1),
      I4 => i_memc_din(1),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(1)
    );
\o_BRAM0_din[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(20),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(20),
      I4 => i_memc_din(20),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(20)
    );
\o_BRAM0_din[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(21),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(21),
      I4 => i_memc_din(21),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(21)
    );
\o_BRAM0_din[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(22),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(22),
      I4 => i_memc_din(22),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(22)
    );
\o_BRAM0_din[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(23),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(23),
      I4 => i_memc_din(23),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(23)
    );
\o_BRAM0_din[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(24),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(24),
      I4 => i_memc_din(24),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(24)
    );
\o_BRAM0_din[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(25),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(25),
      I4 => i_memc_din(25),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(25)
    );
\o_BRAM0_din[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(26),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(26),
      I4 => i_memc_din(26),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(26)
    );
\o_BRAM0_din[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(27),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(27),
      I4 => i_memc_din(27),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(27)
    );
\o_BRAM0_din[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(28),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(28),
      I4 => i_memc_din(28),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(28)
    );
\o_BRAM0_din[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(29),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(29),
      I4 => i_memc_din(29),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(29)
    );
\o_BRAM0_din[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(2),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(2),
      I4 => i_memc_din(2),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(2)
    );
\o_BRAM0_din[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(30),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(30),
      I4 => i_memc_din(30),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(30)
    );
\o_BRAM0_din[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(31),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(31),
      I4 => i_memc_din(31),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(31)
    );
\o_BRAM0_din[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005D"
    )
        port map (
      I0 => bram_sel(1),
      I1 => i_controlb,
      I2 => i_controla,
      I3 => bram_sel(0),
      O => \o_BRAM0_din[31]_INST_0_i_1_n_0\
    );
\o_BRAM0_din[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bram_sel(0),
      I1 => bram_sel(1),
      I2 => i_controla,
      O => \o_BRAM0_din[31]_INST_0_i_2_n_0\
    );
\o_BRAM0_din[31]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => bram_sel(1),
      I1 => bram_sel(0),
      I2 => i_controlc,
      I3 => i_controla,
      I4 => i_controlb,
      O => \o_BRAM0_din[31]_INST_0_i_3_n_0\
    );
\o_BRAM0_din[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(3),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(3),
      I4 => i_memc_din(3),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(3)
    );
\o_BRAM0_din[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(4),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(4),
      I4 => i_memc_din(4),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(4)
    );
\o_BRAM0_din[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(5),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(5),
      I4 => i_memc_din(5),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(5)
    );
\o_BRAM0_din[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(6),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(6),
      I4 => i_memc_din(6),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(6)
    );
\o_BRAM0_din[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(7),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(7),
      I4 => i_memc_din(7),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(7)
    );
\o_BRAM0_din[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(8),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(8),
      I4 => i_memc_din(8),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(8)
    );
\o_BRAM0_din[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_din(9),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_din(9),
      I4 => i_memc_din(9),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_din(9)
    );
o_BRAM0_en_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_en,
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_en,
      I4 => i_memc_en,
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_en
    );
o_BRAM0_rst_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_rst,
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_rst,
      I4 => i_memc_rst,
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_rst
    );
\o_BRAM0_we[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_we(0),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_we(0),
      I4 => i_memc_we(0),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_we(0)
    );
\o_BRAM0_we[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_we(1),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_we(1),
      I4 => i_memc_we(1),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_we(1)
    );
\o_BRAM0_we[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_we(2),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_we(2),
      I4 => i_memc_we(2),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_we(2)
    );
\o_BRAM0_we[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM0_din[31]_INST_0_i_1_n_0\,
      I1 => i_memb_we(3),
      I2 => \o_BRAM0_din[31]_INST_0_i_2_n_0\,
      I3 => i_mema_we(3),
      I4 => i_memc_we(3),
      I5 => \o_BRAM0_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM0_we(3)
    );
\o_BRAM1_addr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(0),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(0),
      I4 => i_mema_addr(0),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(0)
    );
\o_BRAM1_addr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(10),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(10),
      I4 => i_mema_addr(10),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(10)
    );
\o_BRAM1_addr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(11),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(11),
      I4 => i_mema_addr(11),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(11)
    );
\o_BRAM1_addr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(12),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(12),
      I4 => i_mema_addr(12),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(12)
    );
\o_BRAM1_addr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(13),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(13),
      I4 => i_mema_addr(13),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(13)
    );
\o_BRAM1_addr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(14),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(14),
      I4 => i_mema_addr(14),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(14)
    );
\o_BRAM1_addr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(15),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(15),
      I4 => i_mema_addr(15),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(15)
    );
\o_BRAM1_addr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(16),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(16),
      I4 => i_mema_addr(16),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(16)
    );
\o_BRAM1_addr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(17),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(17),
      I4 => i_mema_addr(17),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(17)
    );
\o_BRAM1_addr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(18),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(18),
      I4 => i_mema_addr(18),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(18)
    );
\o_BRAM1_addr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(19),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(19),
      I4 => i_mema_addr(19),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(19)
    );
\o_BRAM1_addr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(1),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(1),
      I4 => i_mema_addr(1),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(1)
    );
\o_BRAM1_addr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(20),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(20),
      I4 => i_mema_addr(20),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(20)
    );
\o_BRAM1_addr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(21),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(21),
      I4 => i_mema_addr(21),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(21)
    );
\o_BRAM1_addr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(22),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(22),
      I4 => i_mema_addr(22),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(22)
    );
\o_BRAM1_addr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(23),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(23),
      I4 => i_mema_addr(23),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(23)
    );
\o_BRAM1_addr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(24),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(24),
      I4 => i_mema_addr(24),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(24)
    );
\o_BRAM1_addr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(25),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(25),
      I4 => i_mema_addr(25),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(25)
    );
\o_BRAM1_addr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(26),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(26),
      I4 => i_mema_addr(26),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(26)
    );
\o_BRAM1_addr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(27),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(27),
      I4 => i_mema_addr(27),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(27)
    );
\o_BRAM1_addr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(28),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(28),
      I4 => i_mema_addr(28),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(28)
    );
\o_BRAM1_addr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(29),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(29),
      I4 => i_mema_addr(29),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(29)
    );
\o_BRAM1_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(2),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(2),
      I4 => i_mema_addr(2),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(2)
    );
\o_BRAM1_addr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(30),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(30),
      I4 => i_mema_addr(30),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(30)
    );
\o_BRAM1_addr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(31),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(31),
      I4 => i_mema_addr(31),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(31)
    );
\o_BRAM1_addr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(3),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(3),
      I4 => i_mema_addr(3),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(3)
    );
\o_BRAM1_addr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(4),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(4),
      I4 => i_mema_addr(4),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(4)
    );
\o_BRAM1_addr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(5),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(5),
      I4 => i_mema_addr(5),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(5)
    );
\o_BRAM1_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(6),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(6),
      I4 => i_mema_addr(6),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(6)
    );
\o_BRAM1_addr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(7),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(7),
      I4 => i_mema_addr(7),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(7)
    );
\o_BRAM1_addr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(8),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(8),
      I4 => i_mema_addr(8),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(8)
    );
\o_BRAM1_addr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_addr(9),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_addr(9),
      I4 => i_mema_addr(9),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_addr(9)
    );
o_BRAM1_control_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00F8"
    )
        port map (
      I0 => bram_sel(0),
      I1 => i_controlb,
      I2 => i_controla,
      I3 => bram_sel(1),
      I4 => i_controlc,
      O => o_BRAM1_control
    );
\o_BRAM1_din[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(0),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(0),
      I4 => i_mema_din(0),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(0)
    );
\o_BRAM1_din[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(10),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(10),
      I4 => i_mema_din(10),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(10)
    );
\o_BRAM1_din[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(11),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(11),
      I4 => i_mema_din(11),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(11)
    );
\o_BRAM1_din[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(12),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(12),
      I4 => i_mema_din(12),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(12)
    );
\o_BRAM1_din[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(13),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(13),
      I4 => i_mema_din(13),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(13)
    );
\o_BRAM1_din[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(14),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(14),
      I4 => i_mema_din(14),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(14)
    );
\o_BRAM1_din[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(15),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(15),
      I4 => i_mema_din(15),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(15)
    );
\o_BRAM1_din[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(16),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(16),
      I4 => i_mema_din(16),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(16)
    );
\o_BRAM1_din[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(17),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(17),
      I4 => i_mema_din(17),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(17)
    );
\o_BRAM1_din[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(18),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(18),
      I4 => i_mema_din(18),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(18)
    );
\o_BRAM1_din[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(19),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(19),
      I4 => i_mema_din(19),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(19)
    );
\o_BRAM1_din[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(1),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(1),
      I4 => i_mema_din(1),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(1)
    );
\o_BRAM1_din[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(20),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(20),
      I4 => i_mema_din(20),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(20)
    );
\o_BRAM1_din[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(21),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(21),
      I4 => i_mema_din(21),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(21)
    );
\o_BRAM1_din[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(22),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(22),
      I4 => i_mema_din(22),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(22)
    );
\o_BRAM1_din[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(23),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(23),
      I4 => i_mema_din(23),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(23)
    );
\o_BRAM1_din[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(24),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(24),
      I4 => i_mema_din(24),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(24)
    );
\o_BRAM1_din[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(25),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(25),
      I4 => i_mema_din(25),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(25)
    );
\o_BRAM1_din[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(26),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(26),
      I4 => i_mema_din(26),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(26)
    );
\o_BRAM1_din[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(27),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(27),
      I4 => i_mema_din(27),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(27)
    );
\o_BRAM1_din[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(28),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(28),
      I4 => i_mema_din(28),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(28)
    );
\o_BRAM1_din[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(29),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(29),
      I4 => i_mema_din(29),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(29)
    );
\o_BRAM1_din[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(2),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(2),
      I4 => i_mema_din(2),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(2)
    );
\o_BRAM1_din[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(30),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(30),
      I4 => i_mema_din(30),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(30)
    );
\o_BRAM1_din[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(31),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(31),
      I4 => i_mema_din(31),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(31)
    );
\o_BRAM1_din[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => bram_sel(1),
      I1 => i_controlc,
      I2 => i_controla,
      I3 => bram_sel(0),
      I4 => i_controlb,
      O => \o_BRAM1_din[31]_INST_0_i_1_n_0\
    );
\o_BRAM1_din[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => bram_sel(1),
      I1 => i_controlb,
      I2 => bram_sel(0),
      I3 => i_controla,
      O => \o_BRAM1_din[31]_INST_0_i_2_n_0\
    );
\o_BRAM1_din[31]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_controla,
      I1 => bram_sel(1),
      O => \o_BRAM1_din[31]_INST_0_i_3_n_0\
    );
\o_BRAM1_din[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(3),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(3),
      I4 => i_mema_din(3),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(3)
    );
\o_BRAM1_din[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(4),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(4),
      I4 => i_mema_din(4),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(4)
    );
\o_BRAM1_din[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(5),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(5),
      I4 => i_mema_din(5),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(5)
    );
\o_BRAM1_din[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(6),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(6),
      I4 => i_mema_din(6),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(6)
    );
\o_BRAM1_din[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(7),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(7),
      I4 => i_mema_din(7),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(7)
    );
\o_BRAM1_din[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(8),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(8),
      I4 => i_mema_din(8),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(8)
    );
\o_BRAM1_din[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_din(9),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_din(9),
      I4 => i_mema_din(9),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_din(9)
    );
o_BRAM1_en_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_en,
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_en,
      I4 => i_mema_en,
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_en
    );
o_BRAM1_rst_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_rst,
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_rst,
      I4 => i_mema_rst,
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_rst
    );
\o_BRAM1_we[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_we(0),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_we(0),
      I4 => i_mema_we(0),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_we(0)
    );
\o_BRAM1_we[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_we(1),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_we(1),
      I4 => i_mema_we(1),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_we(1)
    );
\o_BRAM1_we[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_we(2),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_we(2),
      I4 => i_mema_we(2),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_we(2)
    );
\o_BRAM1_we[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_BRAM1_din[31]_INST_0_i_1_n_0\,
      I1 => i_memc_we(3),
      I2 => \o_BRAM1_din[31]_INST_0_i_2_n_0\,
      I3 => i_memb_we(3),
      I4 => i_mema_we(3),
      I5 => \o_BRAM1_din[31]_INST_0_i_3_n_0\,
      O => o_BRAM1_we(3)
    );
\o_mema_dout[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(0),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(0),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(0)
    );
\o_mema_dout[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(10),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(10),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(10)
    );
\o_mema_dout[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(11),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(11),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(11)
    );
\o_mema_dout[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(12),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(12),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(12)
    );
\o_mema_dout[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(13),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(13),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(13)
    );
\o_mema_dout[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(14),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(14),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(14)
    );
\o_mema_dout[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(15),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(15),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(15)
    );
\o_mema_dout[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(16),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(16),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(16)
    );
\o_mema_dout[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(17),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(17),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(17)
    );
\o_mema_dout[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(18),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(18),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(18)
    );
\o_mema_dout[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(19),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(19),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(19)
    );
\o_mema_dout[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(1),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(1),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(1)
    );
\o_mema_dout[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(20),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(20),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(20)
    );
\o_mema_dout[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(21),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(21),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(21)
    );
\o_mema_dout[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(22),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(22),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(22)
    );
\o_mema_dout[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(23),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(23),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(23)
    );
\o_mema_dout[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(24),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(24),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(24)
    );
\o_mema_dout[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(25),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(25),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(25)
    );
\o_mema_dout[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(26),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(26),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(26)
    );
\o_mema_dout[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(27),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(27),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(27)
    );
\o_mema_dout[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(28),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(28),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(28)
    );
\o_mema_dout[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(29),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(29),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(29)
    );
\o_mema_dout[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(2),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(2),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(2)
    );
\o_mema_dout[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(30),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(30),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(30)
    );
\o_mema_dout[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(31),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(31),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(31)
    );
\o_mema_dout[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(3),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(3),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(3)
    );
\o_mema_dout[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(4),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(4),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(4)
    );
\o_mema_dout[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(5),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(5),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(5)
    );
\o_mema_dout[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(6),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(6),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(6)
    );
\o_mema_dout[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(7),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(7),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(7)
    );
\o_mema_dout[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(8),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(8),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(8)
    );
\o_mema_dout[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(9),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(9),
      I3 => i_controla,
      I4 => bram_sel(1),
      O => o_mema_dout(9)
    );
\o_memb_dout[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(0),
      I1 => i_BRAM0_dout(0),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(0)
    );
\o_memb_dout[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(10),
      I1 => i_BRAM0_dout(10),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(10)
    );
\o_memb_dout[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(11),
      I1 => i_BRAM0_dout(11),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(11)
    );
\o_memb_dout[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(12),
      I1 => i_BRAM0_dout(12),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(12)
    );
\o_memb_dout[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(13),
      I1 => i_BRAM0_dout(13),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(13)
    );
\o_memb_dout[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(14),
      I1 => i_BRAM0_dout(14),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(14)
    );
\o_memb_dout[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(15),
      I1 => i_BRAM0_dout(15),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(15)
    );
\o_memb_dout[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(16),
      I1 => i_BRAM0_dout(16),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(16)
    );
\o_memb_dout[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(17),
      I1 => i_BRAM0_dout(17),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(17)
    );
\o_memb_dout[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(18),
      I1 => i_BRAM0_dout(18),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(18)
    );
\o_memb_dout[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(19),
      I1 => i_BRAM0_dout(19),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(19)
    );
\o_memb_dout[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(1),
      I1 => i_BRAM0_dout(1),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(1)
    );
\o_memb_dout[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(20),
      I1 => i_BRAM0_dout(20),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(20)
    );
\o_memb_dout[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(21),
      I1 => i_BRAM0_dout(21),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(21)
    );
\o_memb_dout[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(22),
      I1 => i_BRAM0_dout(22),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(22)
    );
\o_memb_dout[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(23),
      I1 => i_BRAM0_dout(23),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(23)
    );
\o_memb_dout[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(24),
      I1 => i_BRAM0_dout(24),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(24)
    );
\o_memb_dout[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(25),
      I1 => i_BRAM0_dout(25),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(25)
    );
\o_memb_dout[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(26),
      I1 => i_BRAM0_dout(26),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(26)
    );
\o_memb_dout[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(27),
      I1 => i_BRAM0_dout(27),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(27)
    );
\o_memb_dout[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(28),
      I1 => i_BRAM0_dout(28),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(28)
    );
\o_memb_dout[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(29),
      I1 => i_BRAM0_dout(29),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(29)
    );
\o_memb_dout[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(2),
      I1 => i_BRAM0_dout(2),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(2)
    );
\o_memb_dout[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(30),
      I1 => i_BRAM0_dout(30),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(30)
    );
\o_memb_dout[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(31),
      I1 => i_BRAM0_dout(31),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(31)
    );
\o_memb_dout[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(3),
      I1 => i_BRAM0_dout(3),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(3)
    );
\o_memb_dout[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(4),
      I1 => i_BRAM0_dout(4),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(4)
    );
\o_memb_dout[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(5),
      I1 => i_BRAM0_dout(5),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(5)
    );
\o_memb_dout[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(6),
      I1 => i_BRAM0_dout(6),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(6)
    );
\o_memb_dout[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(7),
      I1 => i_BRAM0_dout(7),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(7)
    );
\o_memb_dout[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(8),
      I1 => i_BRAM0_dout(8),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(8)
    );
\o_memb_dout[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A00CC0C"
    )
        port map (
      I0 => i_BRAM1_dout(9),
      I1 => i_BRAM0_dout(9),
      I2 => bram_sel(1),
      I3 => i_controlb,
      I4 => bram_sel(0),
      O => o_memb_dout(9)
    );
\o_memc_dout[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(0),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(0),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(0)
    );
\o_memc_dout[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(10),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(10),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(10)
    );
\o_memc_dout[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(11),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(11),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(11)
    );
\o_memc_dout[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(12),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(12),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(12)
    );
\o_memc_dout[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(13),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(13),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(13)
    );
\o_memc_dout[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(14),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(14),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(14)
    );
\o_memc_dout[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(15),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(15),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(15)
    );
\o_memc_dout[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(16),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(16),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(16)
    );
\o_memc_dout[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(17),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(17),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(17)
    );
\o_memc_dout[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(18),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(18),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(18)
    );
\o_memc_dout[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(19),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(19),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(19)
    );
\o_memc_dout[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(1),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(1),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(1)
    );
\o_memc_dout[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(20),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(20),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(20)
    );
\o_memc_dout[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(21),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(21),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(21)
    );
\o_memc_dout[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(22),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(22),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(22)
    );
\o_memc_dout[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(23),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(23),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(23)
    );
\o_memc_dout[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(24),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(24),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(24)
    );
\o_memc_dout[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(25),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(25),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(25)
    );
\o_memc_dout[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(26),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(26),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(26)
    );
\o_memc_dout[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(27),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(27),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(27)
    );
\o_memc_dout[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(28),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(28),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(28)
    );
\o_memc_dout[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(29),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(29),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(29)
    );
\o_memc_dout[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(2),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(2),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(2)
    );
\o_memc_dout[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(30),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(30),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(30)
    );
\o_memc_dout[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(31),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(31),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(31)
    );
\o_memc_dout[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(3),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(3),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(3)
    );
\o_memc_dout[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(4),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(4),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(4)
    );
\o_memc_dout[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(5),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(5),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(5)
    );
\o_memc_dout[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(6),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(6),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(6)
    );
\o_memc_dout[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(7),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(7),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(7)
    );
\o_memc_dout[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(8),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(8),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(8)
    );
\o_memc_dout[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => i_BRAM0_dout(9),
      I1 => bram_sel(0),
      I2 => i_BRAM1_dout(9),
      I3 => i_controlc,
      I4 => bram_sel(1),
      O => o_memc_dout(9)
    );
end STRUCTURE;
