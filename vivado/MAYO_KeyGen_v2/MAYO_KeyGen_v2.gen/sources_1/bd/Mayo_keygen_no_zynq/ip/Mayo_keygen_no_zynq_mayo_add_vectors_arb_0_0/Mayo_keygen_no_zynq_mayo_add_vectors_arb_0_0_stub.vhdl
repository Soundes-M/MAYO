-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Nov 24 23:40:13 2022
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0/Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0_stub.vhdl
-- Design      : Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 is
  Port ( 
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

end Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0;

architecture stub of Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bram_sel[1:0],o_mema_dout[31:0],i_mema_din[31:0],i_mema_addr[31:0],i_mema_en,i_mema_rst,i_mema_we[3:0],o_memb_dout[31:0],i_memb_din[31:0],i_memb_addr[31:0],i_memb_en,i_memb_rst,i_memb_we[3:0],o_memc_dout[31:0],i_memc_din[31:0],i_memc_addr[31:0],i_memc_en,i_memc_rst,i_memc_we[3:0],i_controla,i_controlb,i_controlc,i_BRAM0_dout[31:0],o_BRAM0_din[31:0],o_BRAM0_addr[31:0],o_BRAM0_en,o_BRAM0_rst,o_BRAM0_we[3:0],o_BRAM0_control,i_BRAM1_dout[31:0],o_BRAM1_din[31:0],o_BRAM1_addr[31:0],o_BRAM1_en,o_BRAM1_rst,o_BRAM1_we[3:0],o_BRAM1_control";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_add_vectors_arbiter,Vivado 2020.2";
begin
end;
