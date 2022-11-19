-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Nov 17 19:44:43 2022
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_arbit_bramb0_0/Mayo_keygen_no_zynq_arbit_bramb0_0_sim_netlist.vhdl
-- Design      : Mayo_keygen_no_zynq_arbit_bramb0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_keygen_no_zynq_arbit_bramb0_0_mayo_bram_arbiter is
  port (
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_hash_en : in STD_LOGIC;
    BRAM_sam_en : in STD_LOGIC;
    BRAM_add_en : in STD_LOGIC;
    BRAM_red_en : in STD_LOGIC;
    BRAM_key_en : in STD_LOGIC;
    BRAM_lin_en : in STD_LOGIC;
    BRAM_neg_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_add_rst : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_key_rst : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mayo_keygen_no_zynq_arbit_bramb0_0_mayo_bram_arbiter : entity is "mayo_bram_arbiter";
end Mayo_keygen_no_zynq_arbit_bramb0_0_mayo_bram_arbiter;

architecture STRUCTURE of Mayo_keygen_no_zynq_arbit_bramb0_0_mayo_bram_arbiter is
  signal BRAM_en_INST_0_i_1_n_0 : STD_LOGIC;
  signal BRAM_rst_INST_0_i_1_n_0 : STD_LOGIC;
begin
BRAM_en_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BRAM_hash_en,
      I1 => BRAM_sam_en,
      I2 => BRAM_add_en,
      I3 => BRAM_en_INST_0_i_1_n_0,
      O => BRAM_en
    );
BRAM_en_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BRAM_red_en,
      I1 => BRAM_key_en,
      I2 => BRAM_lin_en,
      I3 => BRAM_neg_en,
      O => BRAM_en_INST_0_i_1_n_0
    );
BRAM_rst_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BRAM_hash_rst,
      I1 => BRAM_sam_rst,
      I2 => BRAM_add_rst,
      I3 => BRAM_rst_INST_0_i_1_n_0,
      O => BRAM_rst
    );
BRAM_rst_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BRAM_red_rst,
      I1 => BRAM_key_rst,
      I2 => BRAM_lin_rst,
      I3 => BRAM_neg_rst,
      O => BRAM_rst_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_keygen_no_zynq_arbit_bramb0_0 is
  port (
    rst : in STD_LOGIC;
    BRAM_add_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_en : in STD_LOGIC;
    BRAM_add_rst : in STD_LOGIC;
    BRAM_add_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_en : in STD_LOGIC;
    BRAM_key_rst : in STD_LOGIC;
    BRAM_key_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_key_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    add_control : in STD_LOGIC;
    lin_control : in STD_LOGIC;
    neg_control : in STD_LOGIC;
    red_control : in STD_LOGIC;
    sam_control : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    bram_control : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Mayo_keygen_no_zynq_arbit_bramb0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Mayo_keygen_no_zynq_arbit_bramb0_0 : entity is "Mayo_keygen_no_zynq_arbit_bramb0_0,mayo_bram_arbiter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Mayo_keygen_no_zynq_arbit_bramb0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Mayo_keygen_no_zynq_arbit_bramb0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Mayo_keygen_no_zynq_arbit_bramb0_0 : entity is "mayo_bram_arbiter,Vivado 2020.2";
end Mayo_keygen_no_zynq_arbit_bramb0_0;

architecture STRUCTURE of Mayo_keygen_no_zynq_arbit_bramb0_0 is
  signal \BRAM_addr[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_addr[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_addr[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \BRAM_din[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_din[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_din[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_we[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_we[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_we[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_we[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_we[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_we[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_we[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_we[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of BRAM_add_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_add_rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of BRAM_add_rst : signal is "XIL_INTERFACENAME BRAM_add_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of BRAM_hash_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_hash_rst RST";
  attribute x_interface_parameter of BRAM_hash_rst : signal is "XIL_INTERFACENAME BRAM_hash_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of BRAM_key_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_key_rst RST";
  attribute x_interface_parameter of BRAM_key_rst : signal is "XIL_INTERFACENAME BRAM_key_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of BRAM_lin_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_lin_rst RST";
  attribute x_interface_parameter of BRAM_lin_rst : signal is "XIL_INTERFACENAME BRAM_lin_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of BRAM_neg_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_neg_rst RST";
  attribute x_interface_parameter of BRAM_neg_rst : signal is "XIL_INTERFACENAME BRAM_neg_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of BRAM_red_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_red_rst RST";
  attribute x_interface_parameter of BRAM_red_rst : signal is "XIL_INTERFACENAME BRAM_red_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of BRAM_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_rst RST";
  attribute x_interface_parameter of BRAM_rst : signal is "XIL_INTERFACENAME BRAM_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of BRAM_sam_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_sam_rst RST";
  attribute x_interface_parameter of BRAM_sam_rst : signal is "XIL_INTERFACENAME BRAM_sam_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
\BRAM_add_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(0),
      O => BRAM_add_dout(0)
    );
\BRAM_add_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(10),
      O => BRAM_add_dout(10)
    );
\BRAM_add_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(11),
      O => BRAM_add_dout(11)
    );
\BRAM_add_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(12),
      O => BRAM_add_dout(12)
    );
\BRAM_add_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(13),
      O => BRAM_add_dout(13)
    );
\BRAM_add_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(14),
      O => BRAM_add_dout(14)
    );
\BRAM_add_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(15),
      O => BRAM_add_dout(15)
    );
\BRAM_add_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(16),
      O => BRAM_add_dout(16)
    );
\BRAM_add_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(17),
      O => BRAM_add_dout(17)
    );
\BRAM_add_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(18),
      O => BRAM_add_dout(18)
    );
\BRAM_add_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(19),
      O => BRAM_add_dout(19)
    );
\BRAM_add_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(1),
      O => BRAM_add_dout(1)
    );
\BRAM_add_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(20),
      O => BRAM_add_dout(20)
    );
\BRAM_add_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(21),
      O => BRAM_add_dout(21)
    );
\BRAM_add_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(22),
      O => BRAM_add_dout(22)
    );
\BRAM_add_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(23),
      O => BRAM_add_dout(23)
    );
\BRAM_add_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(24),
      O => BRAM_add_dout(24)
    );
\BRAM_add_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(25),
      O => BRAM_add_dout(25)
    );
\BRAM_add_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(26),
      O => BRAM_add_dout(26)
    );
\BRAM_add_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(27),
      O => BRAM_add_dout(27)
    );
\BRAM_add_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(28),
      O => BRAM_add_dout(28)
    );
\BRAM_add_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(29),
      O => BRAM_add_dout(29)
    );
\BRAM_add_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(2),
      O => BRAM_add_dout(2)
    );
\BRAM_add_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(30),
      O => BRAM_add_dout(30)
    );
\BRAM_add_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(31),
      O => BRAM_add_dout(31)
    );
\BRAM_add_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(3),
      O => BRAM_add_dout(3)
    );
\BRAM_add_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(4),
      O => BRAM_add_dout(4)
    );
\BRAM_add_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(5),
      O => BRAM_add_dout(5)
    );
\BRAM_add_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(6),
      O => BRAM_add_dout(6)
    );
\BRAM_add_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(7),
      O => BRAM_add_dout(7)
    );
\BRAM_add_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(8),
      O => BRAM_add_dout(8)
    );
\BRAM_add_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => add_control,
      I1 => BRAM_dout(9),
      O => BRAM_add_dout(9)
    );
\BRAM_addr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[0]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[0]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(0),
      O => BRAM_addr(0)
    );
\BRAM_addr[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(0),
      I2 => BRAM_neg_addr(0),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(0),
      O => \BRAM_addr[0]_INST_0_i_1_n_0\
    );
\BRAM_addr[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(0),
      I1 => BRAM_hash_addr(0),
      I2 => BRAM_sam_addr(0),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[0]_INST_0_i_2_n_0\
    );
\BRAM_addr[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[10]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[10]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(10),
      O => BRAM_addr(10)
    );
\BRAM_addr[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(10),
      I2 => BRAM_neg_addr(10),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(10),
      O => \BRAM_addr[10]_INST_0_i_1_n_0\
    );
\BRAM_addr[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(10),
      I1 => BRAM_hash_addr(10),
      I2 => BRAM_sam_addr(10),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[10]_INST_0_i_2_n_0\
    );
\BRAM_addr[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[11]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[11]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(11),
      O => BRAM_addr(11)
    );
\BRAM_addr[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(11),
      I2 => BRAM_neg_addr(11),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(11),
      O => \BRAM_addr[11]_INST_0_i_1_n_0\
    );
\BRAM_addr[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(11),
      I1 => BRAM_hash_addr(11),
      I2 => BRAM_sam_addr(11),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[11]_INST_0_i_2_n_0\
    );
\BRAM_addr[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[12]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[12]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(12),
      O => BRAM_addr(12)
    );
\BRAM_addr[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(12),
      I2 => BRAM_neg_addr(12),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(12),
      O => \BRAM_addr[12]_INST_0_i_1_n_0\
    );
\BRAM_addr[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(12),
      I1 => BRAM_hash_addr(12),
      I2 => BRAM_sam_addr(12),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[12]_INST_0_i_2_n_0\
    );
\BRAM_addr[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[13]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[13]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(13),
      O => BRAM_addr(13)
    );
\BRAM_addr[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(13),
      I2 => BRAM_neg_addr(13),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(13),
      O => \BRAM_addr[13]_INST_0_i_1_n_0\
    );
\BRAM_addr[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(13),
      I1 => BRAM_hash_addr(13),
      I2 => BRAM_sam_addr(13),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[13]_INST_0_i_2_n_0\
    );
\BRAM_addr[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[14]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[14]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(14),
      O => BRAM_addr(14)
    );
\BRAM_addr[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(14),
      I2 => BRAM_neg_addr(14),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(14),
      O => \BRAM_addr[14]_INST_0_i_1_n_0\
    );
\BRAM_addr[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(14),
      I1 => BRAM_hash_addr(14),
      I2 => BRAM_sam_addr(14),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[14]_INST_0_i_2_n_0\
    );
\BRAM_addr[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[15]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[15]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(15),
      O => BRAM_addr(15)
    );
\BRAM_addr[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(15),
      I2 => BRAM_neg_addr(15),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(15),
      O => \BRAM_addr[15]_INST_0_i_1_n_0\
    );
\BRAM_addr[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(15),
      I1 => BRAM_hash_addr(15),
      I2 => BRAM_sam_addr(15),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[15]_INST_0_i_2_n_0\
    );
\BRAM_addr[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[16]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[16]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(16),
      O => BRAM_addr(16)
    );
\BRAM_addr[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(16),
      I2 => BRAM_neg_addr(16),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(16),
      O => \BRAM_addr[16]_INST_0_i_1_n_0\
    );
\BRAM_addr[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(16),
      I1 => BRAM_hash_addr(16),
      I2 => BRAM_sam_addr(16),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[16]_INST_0_i_2_n_0\
    );
\BRAM_addr[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[17]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[17]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(17),
      O => BRAM_addr(17)
    );
\BRAM_addr[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(17),
      I2 => BRAM_neg_addr(17),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(17),
      O => \BRAM_addr[17]_INST_0_i_1_n_0\
    );
\BRAM_addr[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(17),
      I1 => BRAM_hash_addr(17),
      I2 => BRAM_sam_addr(17),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[17]_INST_0_i_2_n_0\
    );
\BRAM_addr[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[18]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[18]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(18),
      O => BRAM_addr(18)
    );
\BRAM_addr[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(18),
      I2 => BRAM_neg_addr(18),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(18),
      O => \BRAM_addr[18]_INST_0_i_1_n_0\
    );
\BRAM_addr[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(18),
      I1 => BRAM_hash_addr(18),
      I2 => BRAM_sam_addr(18),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[18]_INST_0_i_2_n_0\
    );
\BRAM_addr[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[19]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[19]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(19),
      O => BRAM_addr(19)
    );
\BRAM_addr[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(19),
      I2 => BRAM_neg_addr(19),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(19),
      O => \BRAM_addr[19]_INST_0_i_1_n_0\
    );
\BRAM_addr[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(19),
      I1 => BRAM_hash_addr(19),
      I2 => BRAM_sam_addr(19),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[19]_INST_0_i_2_n_0\
    );
\BRAM_addr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[1]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[1]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(1),
      O => BRAM_addr(1)
    );
\BRAM_addr[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(1),
      I2 => BRAM_neg_addr(1),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(1),
      O => \BRAM_addr[1]_INST_0_i_1_n_0\
    );
\BRAM_addr[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(1),
      I1 => BRAM_hash_addr(1),
      I2 => BRAM_sam_addr(1),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[1]_INST_0_i_2_n_0\
    );
\BRAM_addr[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[20]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[20]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(20),
      O => BRAM_addr(20)
    );
\BRAM_addr[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(20),
      I2 => BRAM_neg_addr(20),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(20),
      O => \BRAM_addr[20]_INST_0_i_1_n_0\
    );
\BRAM_addr[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(20),
      I1 => BRAM_hash_addr(20),
      I2 => BRAM_sam_addr(20),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[20]_INST_0_i_2_n_0\
    );
\BRAM_addr[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[21]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[21]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(21),
      O => BRAM_addr(21)
    );
\BRAM_addr[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(21),
      I2 => BRAM_neg_addr(21),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(21),
      O => \BRAM_addr[21]_INST_0_i_1_n_0\
    );
\BRAM_addr[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(21),
      I1 => BRAM_hash_addr(21),
      I2 => BRAM_sam_addr(21),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[21]_INST_0_i_2_n_0\
    );
\BRAM_addr[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[22]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[22]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(22),
      O => BRAM_addr(22)
    );
\BRAM_addr[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(22),
      I2 => BRAM_neg_addr(22),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(22),
      O => \BRAM_addr[22]_INST_0_i_1_n_0\
    );
\BRAM_addr[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(22),
      I1 => BRAM_hash_addr(22),
      I2 => BRAM_sam_addr(22),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[22]_INST_0_i_2_n_0\
    );
\BRAM_addr[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[23]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[23]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(23),
      O => BRAM_addr(23)
    );
\BRAM_addr[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(23),
      I2 => BRAM_neg_addr(23),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(23),
      O => \BRAM_addr[23]_INST_0_i_1_n_0\
    );
\BRAM_addr[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(23),
      I1 => BRAM_hash_addr(23),
      I2 => BRAM_sam_addr(23),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[23]_INST_0_i_2_n_0\
    );
\BRAM_addr[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[24]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[24]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(24),
      O => BRAM_addr(24)
    );
\BRAM_addr[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(24),
      I2 => BRAM_neg_addr(24),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(24),
      O => \BRAM_addr[24]_INST_0_i_1_n_0\
    );
\BRAM_addr[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(24),
      I1 => BRAM_hash_addr(24),
      I2 => BRAM_sam_addr(24),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[24]_INST_0_i_2_n_0\
    );
\BRAM_addr[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[25]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[25]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(25),
      O => BRAM_addr(25)
    );
\BRAM_addr[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(25),
      I2 => BRAM_neg_addr(25),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(25),
      O => \BRAM_addr[25]_INST_0_i_1_n_0\
    );
\BRAM_addr[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(25),
      I1 => BRAM_hash_addr(25),
      I2 => BRAM_sam_addr(25),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[25]_INST_0_i_2_n_0\
    );
\BRAM_addr[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[26]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[26]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(26),
      O => BRAM_addr(26)
    );
\BRAM_addr[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(26),
      I2 => BRAM_neg_addr(26),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(26),
      O => \BRAM_addr[26]_INST_0_i_1_n_0\
    );
\BRAM_addr[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(26),
      I1 => BRAM_hash_addr(26),
      I2 => BRAM_sam_addr(26),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[26]_INST_0_i_2_n_0\
    );
\BRAM_addr[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[27]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[27]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(27),
      O => BRAM_addr(27)
    );
\BRAM_addr[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(27),
      I2 => BRAM_neg_addr(27),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(27),
      O => \BRAM_addr[27]_INST_0_i_1_n_0\
    );
\BRAM_addr[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(27),
      I1 => BRAM_hash_addr(27),
      I2 => BRAM_sam_addr(27),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[27]_INST_0_i_2_n_0\
    );
\BRAM_addr[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[28]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[28]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(28),
      O => BRAM_addr(28)
    );
\BRAM_addr[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(28),
      I2 => BRAM_neg_addr(28),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(28),
      O => \BRAM_addr[28]_INST_0_i_1_n_0\
    );
\BRAM_addr[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(28),
      I1 => BRAM_hash_addr(28),
      I2 => BRAM_sam_addr(28),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[28]_INST_0_i_2_n_0\
    );
\BRAM_addr[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[29]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[29]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(29),
      O => BRAM_addr(29)
    );
\BRAM_addr[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(29),
      I2 => BRAM_neg_addr(29),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(29),
      O => \BRAM_addr[29]_INST_0_i_1_n_0\
    );
\BRAM_addr[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(29),
      I1 => BRAM_hash_addr(29),
      I2 => BRAM_sam_addr(29),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[29]_INST_0_i_2_n_0\
    );
\BRAM_addr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[2]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[2]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(2),
      O => BRAM_addr(2)
    );
\BRAM_addr[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(2),
      I2 => BRAM_neg_addr(2),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(2),
      O => \BRAM_addr[2]_INST_0_i_1_n_0\
    );
\BRAM_addr[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(2),
      I1 => BRAM_hash_addr(2),
      I2 => BRAM_sam_addr(2),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[2]_INST_0_i_2_n_0\
    );
\BRAM_addr[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[30]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[30]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(30),
      O => BRAM_addr(30)
    );
\BRAM_addr[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(30),
      I2 => BRAM_neg_addr(30),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(30),
      O => \BRAM_addr[30]_INST_0_i_1_n_0\
    );
\BRAM_addr[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(30),
      I1 => BRAM_hash_addr(30),
      I2 => BRAM_sam_addr(30),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[30]_INST_0_i_2_n_0\
    );
\BRAM_addr[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[31]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[31]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(31),
      O => BRAM_addr(31)
    );
\BRAM_addr[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(31),
      I2 => BRAM_neg_addr(31),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(31),
      O => \BRAM_addr[31]_INST_0_i_1_n_0\
    );
\BRAM_addr[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(31),
      I1 => BRAM_hash_addr(31),
      I2 => BRAM_sam_addr(31),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[31]_INST_0_i_2_n_0\
    );
\BRAM_addr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[3]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[3]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(3),
      O => BRAM_addr(3)
    );
\BRAM_addr[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(3),
      I2 => BRAM_neg_addr(3),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(3),
      O => \BRAM_addr[3]_INST_0_i_1_n_0\
    );
\BRAM_addr[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(3),
      I1 => BRAM_hash_addr(3),
      I2 => BRAM_sam_addr(3),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[3]_INST_0_i_2_n_0\
    );
\BRAM_addr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[4]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[4]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(4),
      O => BRAM_addr(4)
    );
\BRAM_addr[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(4),
      I2 => BRAM_neg_addr(4),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(4),
      O => \BRAM_addr[4]_INST_0_i_1_n_0\
    );
\BRAM_addr[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(4),
      I1 => BRAM_hash_addr(4),
      I2 => BRAM_sam_addr(4),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[4]_INST_0_i_2_n_0\
    );
\BRAM_addr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[5]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[5]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(5),
      O => BRAM_addr(5)
    );
\BRAM_addr[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(5),
      I2 => BRAM_neg_addr(5),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(5),
      O => \BRAM_addr[5]_INST_0_i_1_n_0\
    );
\BRAM_addr[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(5),
      I1 => BRAM_hash_addr(5),
      I2 => BRAM_sam_addr(5),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[5]_INST_0_i_2_n_0\
    );
\BRAM_addr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[6]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[6]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(6),
      O => BRAM_addr(6)
    );
\BRAM_addr[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(6),
      I2 => BRAM_neg_addr(6),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(6),
      O => \BRAM_addr[6]_INST_0_i_1_n_0\
    );
\BRAM_addr[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(6),
      I1 => BRAM_hash_addr(6),
      I2 => BRAM_sam_addr(6),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[6]_INST_0_i_2_n_0\
    );
\BRAM_addr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[7]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[7]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(7),
      O => BRAM_addr(7)
    );
\BRAM_addr[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(7),
      I2 => BRAM_neg_addr(7),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(7),
      O => \BRAM_addr[7]_INST_0_i_1_n_0\
    );
\BRAM_addr[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(7),
      I1 => BRAM_hash_addr(7),
      I2 => BRAM_sam_addr(7),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[7]_INST_0_i_2_n_0\
    );
\BRAM_addr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[8]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[8]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(8),
      O => BRAM_addr(8)
    );
\BRAM_addr[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(8),
      I2 => BRAM_neg_addr(8),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(8),
      O => \BRAM_addr[8]_INST_0_i_1_n_0\
    );
\BRAM_addr[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(8),
      I1 => BRAM_hash_addr(8),
      I2 => BRAM_sam_addr(8),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[8]_INST_0_i_2_n_0\
    );
\BRAM_addr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_addr[9]_INST_0_i_1_n_0\,
      I2 => \BRAM_addr[9]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_addr(9),
      O => BRAM_addr(9)
    );
\BRAM_addr[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_addr(9),
      I2 => BRAM_neg_addr(9),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_addr(9),
      O => \BRAM_addr[9]_INST_0_i_1_n_0\
    );
\BRAM_addr[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_addr(9),
      I1 => BRAM_hash_addr(9),
      I2 => BRAM_sam_addr(9),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_addr[9]_INST_0_i_2_n_0\
    );
\BRAM_din[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[0]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[0]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(0),
      O => BRAM_din(0)
    );
\BRAM_din[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(0),
      I2 => BRAM_neg_din(0),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(0),
      O => \BRAM_din[0]_INST_0_i_1_n_0\
    );
\BRAM_din[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(0),
      I1 => BRAM_hash_din(0),
      I2 => BRAM_sam_din(0),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[0]_INST_0_i_2_n_0\
    );
\BRAM_din[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[10]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[10]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(10),
      O => BRAM_din(10)
    );
\BRAM_din[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(10),
      I2 => BRAM_neg_din(10),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(10),
      O => \BRAM_din[10]_INST_0_i_1_n_0\
    );
\BRAM_din[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(10),
      I1 => BRAM_hash_din(10),
      I2 => BRAM_sam_din(10),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[10]_INST_0_i_2_n_0\
    );
\BRAM_din[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[11]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[11]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(11),
      O => BRAM_din(11)
    );
\BRAM_din[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(11),
      I2 => BRAM_neg_din(11),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(11),
      O => \BRAM_din[11]_INST_0_i_1_n_0\
    );
\BRAM_din[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(11),
      I1 => BRAM_hash_din(11),
      I2 => BRAM_sam_din(11),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[11]_INST_0_i_2_n_0\
    );
\BRAM_din[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[12]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[12]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(12),
      O => BRAM_din(12)
    );
\BRAM_din[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(12),
      I2 => BRAM_neg_din(12),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(12),
      O => \BRAM_din[12]_INST_0_i_1_n_0\
    );
\BRAM_din[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(12),
      I1 => BRAM_hash_din(12),
      I2 => BRAM_sam_din(12),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[12]_INST_0_i_2_n_0\
    );
\BRAM_din[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[13]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[13]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(13),
      O => BRAM_din(13)
    );
\BRAM_din[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(13),
      I2 => BRAM_neg_din(13),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(13),
      O => \BRAM_din[13]_INST_0_i_1_n_0\
    );
\BRAM_din[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(13),
      I1 => BRAM_hash_din(13),
      I2 => BRAM_sam_din(13),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[13]_INST_0_i_2_n_0\
    );
\BRAM_din[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[14]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[14]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(14),
      O => BRAM_din(14)
    );
\BRAM_din[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(14),
      I2 => BRAM_neg_din(14),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(14),
      O => \BRAM_din[14]_INST_0_i_1_n_0\
    );
\BRAM_din[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(14),
      I1 => BRAM_hash_din(14),
      I2 => BRAM_sam_din(14),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[14]_INST_0_i_2_n_0\
    );
\BRAM_din[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[15]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[15]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(15),
      O => BRAM_din(15)
    );
\BRAM_din[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(15),
      I2 => BRAM_neg_din(15),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(15),
      O => \BRAM_din[15]_INST_0_i_1_n_0\
    );
\BRAM_din[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(15),
      I1 => BRAM_hash_din(15),
      I2 => BRAM_sam_din(15),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[15]_INST_0_i_2_n_0\
    );
\BRAM_din[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[16]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[16]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(16),
      O => BRAM_din(16)
    );
\BRAM_din[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(16),
      I2 => BRAM_neg_din(16),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(16),
      O => \BRAM_din[16]_INST_0_i_1_n_0\
    );
\BRAM_din[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(16),
      I1 => BRAM_hash_din(16),
      I2 => BRAM_sam_din(16),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[16]_INST_0_i_2_n_0\
    );
\BRAM_din[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[17]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[17]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(17),
      O => BRAM_din(17)
    );
\BRAM_din[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(17),
      I2 => BRAM_neg_din(17),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(17),
      O => \BRAM_din[17]_INST_0_i_1_n_0\
    );
\BRAM_din[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(17),
      I1 => BRAM_hash_din(17),
      I2 => BRAM_sam_din(17),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[17]_INST_0_i_2_n_0\
    );
\BRAM_din[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[18]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[18]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(18),
      O => BRAM_din(18)
    );
\BRAM_din[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(18),
      I2 => BRAM_neg_din(18),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(18),
      O => \BRAM_din[18]_INST_0_i_1_n_0\
    );
\BRAM_din[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(18),
      I1 => BRAM_hash_din(18),
      I2 => BRAM_sam_din(18),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[18]_INST_0_i_2_n_0\
    );
\BRAM_din[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[19]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[19]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(19),
      O => BRAM_din(19)
    );
\BRAM_din[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(19),
      I2 => BRAM_neg_din(19),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(19),
      O => \BRAM_din[19]_INST_0_i_1_n_0\
    );
\BRAM_din[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(19),
      I1 => BRAM_hash_din(19),
      I2 => BRAM_sam_din(19),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[19]_INST_0_i_2_n_0\
    );
\BRAM_din[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[1]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[1]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(1),
      O => BRAM_din(1)
    );
\BRAM_din[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(1),
      I2 => BRAM_neg_din(1),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(1),
      O => \BRAM_din[1]_INST_0_i_1_n_0\
    );
\BRAM_din[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(1),
      I1 => BRAM_hash_din(1),
      I2 => BRAM_sam_din(1),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[1]_INST_0_i_2_n_0\
    );
\BRAM_din[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[20]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[20]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(20),
      O => BRAM_din(20)
    );
\BRAM_din[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(20),
      I2 => BRAM_neg_din(20),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(20),
      O => \BRAM_din[20]_INST_0_i_1_n_0\
    );
\BRAM_din[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(20),
      I1 => BRAM_hash_din(20),
      I2 => BRAM_sam_din(20),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[20]_INST_0_i_2_n_0\
    );
\BRAM_din[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[21]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[21]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(21),
      O => BRAM_din(21)
    );
\BRAM_din[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(21),
      I2 => BRAM_neg_din(21),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(21),
      O => \BRAM_din[21]_INST_0_i_1_n_0\
    );
\BRAM_din[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(21),
      I1 => BRAM_hash_din(21),
      I2 => BRAM_sam_din(21),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[21]_INST_0_i_2_n_0\
    );
\BRAM_din[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[22]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[22]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(22),
      O => BRAM_din(22)
    );
\BRAM_din[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(22),
      I2 => BRAM_neg_din(22),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(22),
      O => \BRAM_din[22]_INST_0_i_1_n_0\
    );
\BRAM_din[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(22),
      I1 => BRAM_hash_din(22),
      I2 => BRAM_sam_din(22),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[22]_INST_0_i_2_n_0\
    );
\BRAM_din[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[23]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[23]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(23),
      O => BRAM_din(23)
    );
\BRAM_din[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(23),
      I2 => BRAM_neg_din(23),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(23),
      O => \BRAM_din[23]_INST_0_i_1_n_0\
    );
\BRAM_din[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(23),
      I1 => BRAM_hash_din(23),
      I2 => BRAM_sam_din(23),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[23]_INST_0_i_2_n_0\
    );
\BRAM_din[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[24]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[24]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(24),
      O => BRAM_din(24)
    );
\BRAM_din[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(24),
      I2 => BRAM_neg_din(24),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(24),
      O => \BRAM_din[24]_INST_0_i_1_n_0\
    );
\BRAM_din[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(24),
      I1 => BRAM_hash_din(24),
      I2 => BRAM_sam_din(24),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[24]_INST_0_i_2_n_0\
    );
\BRAM_din[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[25]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[25]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(25),
      O => BRAM_din(25)
    );
\BRAM_din[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(25),
      I2 => BRAM_neg_din(25),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(25),
      O => \BRAM_din[25]_INST_0_i_1_n_0\
    );
\BRAM_din[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(25),
      I1 => BRAM_hash_din(25),
      I2 => BRAM_sam_din(25),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[25]_INST_0_i_2_n_0\
    );
\BRAM_din[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[26]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[26]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(26),
      O => BRAM_din(26)
    );
\BRAM_din[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(26),
      I2 => BRAM_neg_din(26),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(26),
      O => \BRAM_din[26]_INST_0_i_1_n_0\
    );
\BRAM_din[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(26),
      I1 => BRAM_hash_din(26),
      I2 => BRAM_sam_din(26),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[26]_INST_0_i_2_n_0\
    );
\BRAM_din[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[27]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[27]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(27),
      O => BRAM_din(27)
    );
\BRAM_din[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(27),
      I2 => BRAM_neg_din(27),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(27),
      O => \BRAM_din[27]_INST_0_i_1_n_0\
    );
\BRAM_din[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(27),
      I1 => BRAM_hash_din(27),
      I2 => BRAM_sam_din(27),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[27]_INST_0_i_2_n_0\
    );
\BRAM_din[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[28]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[28]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(28),
      O => BRAM_din(28)
    );
\BRAM_din[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(28),
      I2 => BRAM_neg_din(28),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(28),
      O => \BRAM_din[28]_INST_0_i_1_n_0\
    );
\BRAM_din[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(28),
      I1 => BRAM_hash_din(28),
      I2 => BRAM_sam_din(28),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[28]_INST_0_i_2_n_0\
    );
\BRAM_din[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[29]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[29]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(29),
      O => BRAM_din(29)
    );
\BRAM_din[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(29),
      I2 => BRAM_neg_din(29),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(29),
      O => \BRAM_din[29]_INST_0_i_1_n_0\
    );
\BRAM_din[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(29),
      I1 => BRAM_hash_din(29),
      I2 => BRAM_sam_din(29),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[29]_INST_0_i_2_n_0\
    );
\BRAM_din[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[2]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[2]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(2),
      O => BRAM_din(2)
    );
\BRAM_din[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(2),
      I2 => BRAM_neg_din(2),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(2),
      O => \BRAM_din[2]_INST_0_i_1_n_0\
    );
\BRAM_din[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(2),
      I1 => BRAM_hash_din(2),
      I2 => BRAM_sam_din(2),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[2]_INST_0_i_2_n_0\
    );
\BRAM_din[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[30]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[30]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(30),
      O => BRAM_din(30)
    );
\BRAM_din[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(30),
      I2 => BRAM_neg_din(30),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(30),
      O => \BRAM_din[30]_INST_0_i_1_n_0\
    );
\BRAM_din[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(30),
      I1 => BRAM_hash_din(30),
      I2 => BRAM_sam_din(30),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[30]_INST_0_i_2_n_0\
    );
\BRAM_din[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[31]_INST_0_i_2_n_0\,
      I2 => \BRAM_din[31]_INST_0_i_3_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(31),
      O => BRAM_din(31)
    );
\BRAM_din[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => lin_control,
      I1 => neg_control,
      I2 => add_control,
      O => \BRAM_din[31]_INST_0_i_1_n_0\
    );
\BRAM_din[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(31),
      I2 => BRAM_neg_din(31),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(31),
      O => \BRAM_din[31]_INST_0_i_2_n_0\
    );
\BRAM_din[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(31),
      I1 => BRAM_hash_din(31),
      I2 => BRAM_sam_din(31),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[31]_INST_0_i_3_n_0\
    );
\BRAM_din[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[3]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[3]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(3),
      O => BRAM_din(3)
    );
\BRAM_din[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(3),
      I2 => BRAM_neg_din(3),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(3),
      O => \BRAM_din[3]_INST_0_i_1_n_0\
    );
\BRAM_din[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(3),
      I1 => BRAM_hash_din(3),
      I2 => BRAM_sam_din(3),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[3]_INST_0_i_2_n_0\
    );
\BRAM_din[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[4]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[4]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(4),
      O => BRAM_din(4)
    );
\BRAM_din[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(4),
      I2 => BRAM_neg_din(4),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(4),
      O => \BRAM_din[4]_INST_0_i_1_n_0\
    );
\BRAM_din[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(4),
      I1 => BRAM_hash_din(4),
      I2 => BRAM_sam_din(4),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[4]_INST_0_i_2_n_0\
    );
\BRAM_din[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[5]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[5]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(5),
      O => BRAM_din(5)
    );
\BRAM_din[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(5),
      I2 => BRAM_neg_din(5),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(5),
      O => \BRAM_din[5]_INST_0_i_1_n_0\
    );
\BRAM_din[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(5),
      I1 => BRAM_hash_din(5),
      I2 => BRAM_sam_din(5),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[5]_INST_0_i_2_n_0\
    );
\BRAM_din[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[6]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[6]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(6),
      O => BRAM_din(6)
    );
\BRAM_din[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(6),
      I2 => BRAM_neg_din(6),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(6),
      O => \BRAM_din[6]_INST_0_i_1_n_0\
    );
\BRAM_din[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(6),
      I1 => BRAM_hash_din(6),
      I2 => BRAM_sam_din(6),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[6]_INST_0_i_2_n_0\
    );
\BRAM_din[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[7]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[7]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(7),
      O => BRAM_din(7)
    );
\BRAM_din[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(7),
      I2 => BRAM_neg_din(7),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(7),
      O => \BRAM_din[7]_INST_0_i_1_n_0\
    );
\BRAM_din[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(7),
      I1 => BRAM_hash_din(7),
      I2 => BRAM_sam_din(7),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[7]_INST_0_i_2_n_0\
    );
\BRAM_din[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[8]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[8]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(8),
      O => BRAM_din(8)
    );
\BRAM_din[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(8),
      I2 => BRAM_neg_din(8),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(8),
      O => \BRAM_din[8]_INST_0_i_1_n_0\
    );
\BRAM_din[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(8),
      I1 => BRAM_hash_din(8),
      I2 => BRAM_sam_din(8),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[8]_INST_0_i_2_n_0\
    );
\BRAM_din[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_din[9]_INST_0_i_1_n_0\,
      I2 => \BRAM_din[9]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_din(9),
      O => BRAM_din(9)
    );
\BRAM_din[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_din(9),
      I2 => BRAM_neg_din(9),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_din(9),
      O => \BRAM_din[9]_INST_0_i_1_n_0\
    );
\BRAM_din[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_din(9),
      I1 => BRAM_hash_din(9),
      I2 => BRAM_sam_din(9),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_din[9]_INST_0_i_2_n_0\
    );
\BRAM_hash_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(0),
      O => BRAM_hash_dout(0)
    );
\BRAM_hash_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(10),
      O => BRAM_hash_dout(10)
    );
\BRAM_hash_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(11),
      O => BRAM_hash_dout(11)
    );
\BRAM_hash_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(12),
      O => BRAM_hash_dout(12)
    );
\BRAM_hash_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(13),
      O => BRAM_hash_dout(13)
    );
\BRAM_hash_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(14),
      O => BRAM_hash_dout(14)
    );
\BRAM_hash_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(15),
      O => BRAM_hash_dout(15)
    );
\BRAM_hash_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(16),
      O => BRAM_hash_dout(16)
    );
\BRAM_hash_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(17),
      O => BRAM_hash_dout(17)
    );
\BRAM_hash_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(18),
      O => BRAM_hash_dout(18)
    );
\BRAM_hash_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(19),
      O => BRAM_hash_dout(19)
    );
\BRAM_hash_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(1),
      O => BRAM_hash_dout(1)
    );
\BRAM_hash_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(20),
      O => BRAM_hash_dout(20)
    );
\BRAM_hash_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(21),
      O => BRAM_hash_dout(21)
    );
\BRAM_hash_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(22),
      O => BRAM_hash_dout(22)
    );
\BRAM_hash_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(23),
      O => BRAM_hash_dout(23)
    );
\BRAM_hash_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(24),
      O => BRAM_hash_dout(24)
    );
\BRAM_hash_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(25),
      O => BRAM_hash_dout(25)
    );
\BRAM_hash_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(26),
      O => BRAM_hash_dout(26)
    );
\BRAM_hash_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(27),
      O => BRAM_hash_dout(27)
    );
\BRAM_hash_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(28),
      O => BRAM_hash_dout(28)
    );
\BRAM_hash_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(29),
      O => BRAM_hash_dout(29)
    );
\BRAM_hash_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(2),
      O => BRAM_hash_dout(2)
    );
\BRAM_hash_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(30),
      O => BRAM_hash_dout(30)
    );
\BRAM_hash_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(31),
      O => BRAM_hash_dout(31)
    );
\BRAM_hash_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(3),
      O => BRAM_hash_dout(3)
    );
\BRAM_hash_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(4),
      O => BRAM_hash_dout(4)
    );
\BRAM_hash_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(5),
      O => BRAM_hash_dout(5)
    );
\BRAM_hash_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(6),
      O => BRAM_hash_dout(6)
    );
\BRAM_hash_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(7),
      O => BRAM_hash_dout(7)
    );
\BRAM_hash_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(8),
      O => BRAM_hash_dout(8)
    );
\BRAM_hash_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hash_control,
      I1 => BRAM_dout(9),
      O => BRAM_hash_dout(9)
    );
\BRAM_key_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(0),
      O => BRAM_key_dout(0)
    );
\BRAM_key_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(10),
      O => BRAM_key_dout(10)
    );
\BRAM_key_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(11),
      O => BRAM_key_dout(11)
    );
\BRAM_key_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(12),
      O => BRAM_key_dout(12)
    );
\BRAM_key_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(13),
      O => BRAM_key_dout(13)
    );
\BRAM_key_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(14),
      O => BRAM_key_dout(14)
    );
\BRAM_key_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(15),
      O => BRAM_key_dout(15)
    );
\BRAM_key_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(16),
      O => BRAM_key_dout(16)
    );
\BRAM_key_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(17),
      O => BRAM_key_dout(17)
    );
\BRAM_key_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(18),
      O => BRAM_key_dout(18)
    );
\BRAM_key_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(19),
      O => BRAM_key_dout(19)
    );
\BRAM_key_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(1),
      O => BRAM_key_dout(1)
    );
\BRAM_key_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(20),
      O => BRAM_key_dout(20)
    );
\BRAM_key_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(21),
      O => BRAM_key_dout(21)
    );
\BRAM_key_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(22),
      O => BRAM_key_dout(22)
    );
\BRAM_key_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(23),
      O => BRAM_key_dout(23)
    );
\BRAM_key_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(24),
      O => BRAM_key_dout(24)
    );
\BRAM_key_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(25),
      O => BRAM_key_dout(25)
    );
\BRAM_key_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(26),
      O => BRAM_key_dout(26)
    );
\BRAM_key_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(27),
      O => BRAM_key_dout(27)
    );
\BRAM_key_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(28),
      O => BRAM_key_dout(28)
    );
\BRAM_key_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(29),
      O => BRAM_key_dout(29)
    );
\BRAM_key_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(2),
      O => BRAM_key_dout(2)
    );
\BRAM_key_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(30),
      O => BRAM_key_dout(30)
    );
\BRAM_key_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(31),
      O => BRAM_key_dout(31)
    );
\BRAM_key_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(3),
      O => BRAM_key_dout(3)
    );
\BRAM_key_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(4),
      O => BRAM_key_dout(4)
    );
\BRAM_key_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(5),
      O => BRAM_key_dout(5)
    );
\BRAM_key_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(6),
      O => BRAM_key_dout(6)
    );
\BRAM_key_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(7),
      O => BRAM_key_dout(7)
    );
\BRAM_key_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(8),
      O => BRAM_key_dout(8)
    );
\BRAM_key_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_control,
      I1 => BRAM_dout(9),
      O => BRAM_key_dout(9)
    );
\BRAM_lin_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(0),
      O => BRAM_lin_dout(0)
    );
\BRAM_lin_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(10),
      O => BRAM_lin_dout(10)
    );
\BRAM_lin_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(11),
      O => BRAM_lin_dout(11)
    );
\BRAM_lin_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(12),
      O => BRAM_lin_dout(12)
    );
\BRAM_lin_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(13),
      O => BRAM_lin_dout(13)
    );
\BRAM_lin_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(14),
      O => BRAM_lin_dout(14)
    );
\BRAM_lin_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(15),
      O => BRAM_lin_dout(15)
    );
\BRAM_lin_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(16),
      O => BRAM_lin_dout(16)
    );
\BRAM_lin_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(17),
      O => BRAM_lin_dout(17)
    );
\BRAM_lin_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(18),
      O => BRAM_lin_dout(18)
    );
\BRAM_lin_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(19),
      O => BRAM_lin_dout(19)
    );
\BRAM_lin_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(1),
      O => BRAM_lin_dout(1)
    );
\BRAM_lin_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(20),
      O => BRAM_lin_dout(20)
    );
\BRAM_lin_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(21),
      O => BRAM_lin_dout(21)
    );
\BRAM_lin_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(22),
      O => BRAM_lin_dout(22)
    );
\BRAM_lin_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(23),
      O => BRAM_lin_dout(23)
    );
\BRAM_lin_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(24),
      O => BRAM_lin_dout(24)
    );
\BRAM_lin_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(25),
      O => BRAM_lin_dout(25)
    );
\BRAM_lin_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(26),
      O => BRAM_lin_dout(26)
    );
\BRAM_lin_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(27),
      O => BRAM_lin_dout(27)
    );
\BRAM_lin_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(28),
      O => BRAM_lin_dout(28)
    );
\BRAM_lin_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(29),
      O => BRAM_lin_dout(29)
    );
\BRAM_lin_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(2),
      O => BRAM_lin_dout(2)
    );
\BRAM_lin_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(30),
      O => BRAM_lin_dout(30)
    );
\BRAM_lin_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(31),
      O => BRAM_lin_dout(31)
    );
\BRAM_lin_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(3),
      O => BRAM_lin_dout(3)
    );
\BRAM_lin_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(4),
      O => BRAM_lin_dout(4)
    );
\BRAM_lin_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(5),
      O => BRAM_lin_dout(5)
    );
\BRAM_lin_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(6),
      O => BRAM_lin_dout(6)
    );
\BRAM_lin_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(7),
      O => BRAM_lin_dout(7)
    );
\BRAM_lin_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(8),
      O => BRAM_lin_dout(8)
    );
\BRAM_lin_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_dout(9),
      O => BRAM_lin_dout(9)
    );
\BRAM_neg_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(0),
      O => BRAM_neg_dout(0)
    );
\BRAM_neg_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(10),
      O => BRAM_neg_dout(10)
    );
\BRAM_neg_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(11),
      O => BRAM_neg_dout(11)
    );
\BRAM_neg_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(12),
      O => BRAM_neg_dout(12)
    );
\BRAM_neg_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(13),
      O => BRAM_neg_dout(13)
    );
\BRAM_neg_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(14),
      O => BRAM_neg_dout(14)
    );
\BRAM_neg_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(15),
      O => BRAM_neg_dout(15)
    );
\BRAM_neg_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(16),
      O => BRAM_neg_dout(16)
    );
\BRAM_neg_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(17),
      O => BRAM_neg_dout(17)
    );
\BRAM_neg_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(18),
      O => BRAM_neg_dout(18)
    );
\BRAM_neg_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(19),
      O => BRAM_neg_dout(19)
    );
\BRAM_neg_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(1),
      O => BRAM_neg_dout(1)
    );
\BRAM_neg_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(20),
      O => BRAM_neg_dout(20)
    );
\BRAM_neg_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(21),
      O => BRAM_neg_dout(21)
    );
\BRAM_neg_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(22),
      O => BRAM_neg_dout(22)
    );
\BRAM_neg_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(23),
      O => BRAM_neg_dout(23)
    );
\BRAM_neg_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(24),
      O => BRAM_neg_dout(24)
    );
\BRAM_neg_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(25),
      O => BRAM_neg_dout(25)
    );
\BRAM_neg_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(26),
      O => BRAM_neg_dout(26)
    );
\BRAM_neg_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(27),
      O => BRAM_neg_dout(27)
    );
\BRAM_neg_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(28),
      O => BRAM_neg_dout(28)
    );
\BRAM_neg_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(29),
      O => BRAM_neg_dout(29)
    );
\BRAM_neg_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(2),
      O => BRAM_neg_dout(2)
    );
\BRAM_neg_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(30),
      O => BRAM_neg_dout(30)
    );
\BRAM_neg_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(31),
      O => BRAM_neg_dout(31)
    );
\BRAM_neg_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(3),
      O => BRAM_neg_dout(3)
    );
\BRAM_neg_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(4),
      O => BRAM_neg_dout(4)
    );
\BRAM_neg_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(5),
      O => BRAM_neg_dout(5)
    );
\BRAM_neg_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(6),
      O => BRAM_neg_dout(6)
    );
\BRAM_neg_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(7),
      O => BRAM_neg_dout(7)
    );
\BRAM_neg_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(8),
      O => BRAM_neg_dout(8)
    );
\BRAM_neg_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => neg_control,
      I1 => BRAM_dout(9),
      O => BRAM_neg_dout(9)
    );
\BRAM_red_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(0),
      O => BRAM_red_dout(0)
    );
\BRAM_red_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(10),
      O => BRAM_red_dout(10)
    );
\BRAM_red_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(11),
      O => BRAM_red_dout(11)
    );
\BRAM_red_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(12),
      O => BRAM_red_dout(12)
    );
\BRAM_red_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(13),
      O => BRAM_red_dout(13)
    );
\BRAM_red_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(14),
      O => BRAM_red_dout(14)
    );
\BRAM_red_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(15),
      O => BRAM_red_dout(15)
    );
\BRAM_red_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(16),
      O => BRAM_red_dout(16)
    );
\BRAM_red_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(17),
      O => BRAM_red_dout(17)
    );
\BRAM_red_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(18),
      O => BRAM_red_dout(18)
    );
\BRAM_red_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(19),
      O => BRAM_red_dout(19)
    );
\BRAM_red_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(1),
      O => BRAM_red_dout(1)
    );
\BRAM_red_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(20),
      O => BRAM_red_dout(20)
    );
\BRAM_red_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(21),
      O => BRAM_red_dout(21)
    );
\BRAM_red_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(22),
      O => BRAM_red_dout(22)
    );
\BRAM_red_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(23),
      O => BRAM_red_dout(23)
    );
\BRAM_red_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(24),
      O => BRAM_red_dout(24)
    );
\BRAM_red_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(25),
      O => BRAM_red_dout(25)
    );
\BRAM_red_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(26),
      O => BRAM_red_dout(26)
    );
\BRAM_red_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(27),
      O => BRAM_red_dout(27)
    );
\BRAM_red_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(28),
      O => BRAM_red_dout(28)
    );
\BRAM_red_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(29),
      O => BRAM_red_dout(29)
    );
\BRAM_red_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(2),
      O => BRAM_red_dout(2)
    );
\BRAM_red_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(30),
      O => BRAM_red_dout(30)
    );
\BRAM_red_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(31),
      O => BRAM_red_dout(31)
    );
\BRAM_red_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(3),
      O => BRAM_red_dout(3)
    );
\BRAM_red_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(4),
      O => BRAM_red_dout(4)
    );
\BRAM_red_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(5),
      O => BRAM_red_dout(5)
    );
\BRAM_red_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(6),
      O => BRAM_red_dout(6)
    );
\BRAM_red_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(7),
      O => BRAM_red_dout(7)
    );
\BRAM_red_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(8),
      O => BRAM_red_dout(8)
    );
\BRAM_red_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => red_control,
      I1 => BRAM_dout(9),
      O => BRAM_red_dout(9)
    );
\BRAM_sam_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(0),
      O => BRAM_sam_dout(0)
    );
\BRAM_sam_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(10),
      O => BRAM_sam_dout(10)
    );
\BRAM_sam_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(11),
      O => BRAM_sam_dout(11)
    );
\BRAM_sam_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(12),
      O => BRAM_sam_dout(12)
    );
\BRAM_sam_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(13),
      O => BRAM_sam_dout(13)
    );
\BRAM_sam_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(14),
      O => BRAM_sam_dout(14)
    );
\BRAM_sam_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(15),
      O => BRAM_sam_dout(15)
    );
\BRAM_sam_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(16),
      O => BRAM_sam_dout(16)
    );
\BRAM_sam_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(17),
      O => BRAM_sam_dout(17)
    );
\BRAM_sam_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(18),
      O => BRAM_sam_dout(18)
    );
\BRAM_sam_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(19),
      O => BRAM_sam_dout(19)
    );
\BRAM_sam_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(1),
      O => BRAM_sam_dout(1)
    );
\BRAM_sam_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(20),
      O => BRAM_sam_dout(20)
    );
\BRAM_sam_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(21),
      O => BRAM_sam_dout(21)
    );
\BRAM_sam_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(22),
      O => BRAM_sam_dout(22)
    );
\BRAM_sam_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(23),
      O => BRAM_sam_dout(23)
    );
\BRAM_sam_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(24),
      O => BRAM_sam_dout(24)
    );
\BRAM_sam_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(25),
      O => BRAM_sam_dout(25)
    );
\BRAM_sam_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(26),
      O => BRAM_sam_dout(26)
    );
\BRAM_sam_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(27),
      O => BRAM_sam_dout(27)
    );
\BRAM_sam_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(28),
      O => BRAM_sam_dout(28)
    );
\BRAM_sam_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(29),
      O => BRAM_sam_dout(29)
    );
\BRAM_sam_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(2),
      O => BRAM_sam_dout(2)
    );
\BRAM_sam_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(30),
      O => BRAM_sam_dout(30)
    );
\BRAM_sam_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(31),
      O => BRAM_sam_dout(31)
    );
\BRAM_sam_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(3),
      O => BRAM_sam_dout(3)
    );
\BRAM_sam_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(4),
      O => BRAM_sam_dout(4)
    );
\BRAM_sam_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(5),
      O => BRAM_sam_dout(5)
    );
\BRAM_sam_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(6),
      O => BRAM_sam_dout(6)
    );
\BRAM_sam_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(7),
      O => BRAM_sam_dout(7)
    );
\BRAM_sam_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(8),
      O => BRAM_sam_dout(8)
    );
\BRAM_sam_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sam_control,
      I1 => BRAM_dout(9),
      O => BRAM_sam_dout(9)
    );
\BRAM_we[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_we[0]_INST_0_i_1_n_0\,
      I2 => \BRAM_we[0]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_we(0),
      O => BRAM_we(0)
    );
\BRAM_we[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_we(0),
      I2 => BRAM_neg_we(0),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_we(0),
      O => \BRAM_we[0]_INST_0_i_1_n_0\
    );
\BRAM_we[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_we(0),
      I1 => BRAM_hash_we(0),
      I2 => BRAM_sam_we(0),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_we[0]_INST_0_i_2_n_0\
    );
\BRAM_we[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_we[1]_INST_0_i_1_n_0\,
      I2 => \BRAM_we[1]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_we(1),
      O => BRAM_we(1)
    );
\BRAM_we[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_we(1),
      I2 => BRAM_neg_we(1),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_we(1),
      O => \BRAM_we[1]_INST_0_i_1_n_0\
    );
\BRAM_we[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_we(1),
      I1 => BRAM_hash_we(1),
      I2 => BRAM_sam_we(1),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_we[1]_INST_0_i_2_n_0\
    );
\BRAM_we[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_we[2]_INST_0_i_1_n_0\,
      I2 => \BRAM_we[2]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_we(2),
      O => BRAM_we(2)
    );
\BRAM_we[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_we(2),
      I2 => BRAM_neg_we(2),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_we(2),
      O => \BRAM_we[2]_INST_0_i_1_n_0\
    );
\BRAM_we[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_we(2),
      I1 => BRAM_hash_we(2),
      I2 => BRAM_sam_we(2),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_we[2]_INST_0_i_2_n_0\
    );
\BRAM_we[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \BRAM_din[31]_INST_0_i_1_n_0\,
      I1 => \BRAM_we[3]_INST_0_i_1_n_0\,
      I2 => \BRAM_we[3]_INST_0_i_2_n_0\,
      I3 => bram_control,
      I4 => BRAM_key_we(3),
      O => BRAM_we(3)
    );
\BRAM_we[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD8880000D888"
    )
        port map (
      I0 => lin_control,
      I1 => BRAM_lin_we(3),
      I2 => BRAM_neg_we(3),
      I3 => neg_control,
      I4 => add_control,
      I5 => BRAM_add_we(3),
      O => \BRAM_we[3]_INST_0_i_1_n_0\
    );
\BRAM_we[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => BRAM_red_we(3),
      I1 => BRAM_hash_we(3),
      I2 => BRAM_sam_we(3),
      I3 => red_control,
      I4 => hash_control,
      I5 => sam_control,
      O => \BRAM_we[3]_INST_0_i_2_n_0\
    );
U0: entity work.Mayo_keygen_no_zynq_arbit_bramb0_0_mayo_bram_arbiter
     port map (
      BRAM_add_en => BRAM_add_en,
      BRAM_add_rst => BRAM_add_rst,
      BRAM_en => BRAM_en,
      BRAM_hash_en => BRAM_hash_en,
      BRAM_hash_rst => BRAM_hash_rst,
      BRAM_key_en => BRAM_key_en,
      BRAM_key_rst => BRAM_key_rst,
      BRAM_lin_en => BRAM_lin_en,
      BRAM_lin_rst => BRAM_lin_rst,
      BRAM_neg_en => BRAM_neg_en,
      BRAM_neg_rst => BRAM_neg_rst,
      BRAM_red_en => BRAM_red_en,
      BRAM_red_rst => BRAM_red_rst,
      BRAM_rst => BRAM_rst,
      BRAM_sam_en => BRAM_sam_en,
      BRAM_sam_rst => BRAM_sam_rst
    );
end STRUCTURE;
