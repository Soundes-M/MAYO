-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Jun 18 19:50:27 2023
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_mayo_reduce_extension_0_0_stub.vhdl
-- Design      : Mayo_sign_with_zynq_mayo_reduce_extension_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_input_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_output_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_en : out STD_LOGIC;
    o_mema_rst : out STD_LOGIC;
    o_mema_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controla : out STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC;
    i_memc_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_en : out STD_LOGIC;
    o_memc_rst : out STD_LOGIC;
    o_memc_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlc : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,en,o_done,i_input_adr[31:0],i_output_adr[31:0],i_mema_dout[31:0],o_mema_din[31:0],o_mema_addr[31:0],o_mema_en,o_mema_rst,o_mema_we[3:0],o_controla,i_memb_dout[31:0],o_memb_din[31:0],o_memb_addr[31:0],o_memb_en,o_memb_rst,o_memb_we[3:0],o_controlb,i_memc_dout[31:0],o_memc_din[31:0],o_memc_addr[31:0],o_memc_en,o_memc_rst,o_memc_we[3:0],o_controlc";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_reduce_extension,Vivado 2020.2";
begin
end;
