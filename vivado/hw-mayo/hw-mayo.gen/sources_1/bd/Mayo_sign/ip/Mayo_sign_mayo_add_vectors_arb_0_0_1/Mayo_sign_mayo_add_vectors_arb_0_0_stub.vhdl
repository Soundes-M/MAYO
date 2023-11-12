-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Nov 12 18:19:38 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_add_vectors_arb_0_0_1/Mayo_sign_mayo_add_vectors_arb_0_0_stub.vhdl
-- Design      : Mayo_sign_mayo_add_vectors_arb_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_mayo_add_vectors_arb_0_0 is
  Port ( 
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

end Mayo_sign_mayo_add_vectors_arb_0_0;

architecture stub of Mayo_sign_mayo_add_vectors_arb_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bram_sel[4:0],o_mema_dout[31:0],i_mema_din[31:0],i_mema_addr[31:0],i_mema_en,i_mema_rst,i_mema_we[3:0],i_controla,o_memb_dout[31:0],i_memb_din[31:0],i_memb_addr[31:0],i_memb_en,i_memb_rst,i_memb_we[3:0],i_controlb,o_memc_dout[31:0],i_memc_din[31:0],i_memc_addr[31:0],i_memc_en,i_memc_rst,i_memc_we[3:0],i_controlc,i_BRAM0A_dout[31:0],o_BRAM0A_din[31:0],o_BRAM0A_addr[31:0],o_BRAM0A_en,o_BRAM0A_rst,o_BRAM0A_we[3:0],o_BRAM0A_control,i_BRAM1A_dout[31:0],o_BRAM1A_din[31:0],o_BRAM1A_addr[31:0],o_BRAM1A_en,o_BRAM1A_rst,o_BRAM1A_we[3:0],o_BRAM1A_control,i_BRAM2A_dout[31:0],o_BRAM2A_din[31:0],o_BRAM2A_addr[31:0],o_BRAM2A_en,o_BRAM2A_rst,o_BRAM2A_we[3:0],o_BRAM2A_control,i_BRAM2B_dout[31:0],o_BRAM2B_din[31:0],o_BRAM2B_addr[31:0],o_BRAM2B_en,o_BRAM2B_rst,o_BRAM2B_we[3:0],o_BRAM2B_control";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_add_vectors_arbiter,Vivado 2020.2";
begin
end;
