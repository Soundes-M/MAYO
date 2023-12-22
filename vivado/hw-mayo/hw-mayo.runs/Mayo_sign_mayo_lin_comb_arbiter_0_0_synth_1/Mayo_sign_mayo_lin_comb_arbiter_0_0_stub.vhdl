-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Dec  8 17:15:36 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_mayo_lin_comb_arbiter_0_0_stub.vhdl
-- Design      : Mayo_sign_mayo_lin_comb_arbiter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o_mem0a_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_en : in STD_LOGIC;
    i_mem0a_rst : in STD_LOGIC;
    i_mem0a_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control0a : in STD_LOGIC;
    o_mem0b_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_en : in STD_LOGIC;
    i_mem0b_rst : in STD_LOGIC;
    i_mem0b_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control0b : in STD_LOGIC;
    o_mem1a_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_en : in STD_LOGIC;
    i_mem1a_rst : in STD_LOGIC;
    i_mem1a_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control1a : in STD_LOGIC;
    i_BRAM0A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_en : out STD_LOGIC;
    o_BRAM0A_rst : out STD_LOGIC;
    o_BRAM0A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0A_control : out STD_LOGIC;
    i_BRAM0B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_en : out STD_LOGIC;
    o_BRAM0B_rst : out STD_LOGIC;
    o_BRAM0B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0B_control : out STD_LOGIC;
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bram_sel[4:0],o_mem0a_dout[31:0],i_mem0a_din[31:0],i_mem0a_addr[31:0],i_mem0a_en,i_mem0a_rst,i_mem0a_we[3:0],i_control0a,o_mem0b_dout[31:0],i_mem0b_din[31:0],i_mem0b_addr[31:0],i_mem0b_en,i_mem0b_rst,i_mem0b_we[3:0],i_control0b,o_mem1a_dout[31:0],i_mem1a_din[31:0],i_mem1a_addr[31:0],i_mem1a_en,i_mem1a_rst,i_mem1a_we[3:0],i_control1a,i_BRAM0A_dout[31:0],o_BRAM0A_din[31:0],o_BRAM0A_addr[31:0],o_BRAM0A_en,o_BRAM0A_rst,o_BRAM0A_we[3:0],o_BRAM0A_control,i_BRAM0B_dout[31:0],o_BRAM0B_din[31:0],o_BRAM0B_addr[31:0],o_BRAM0B_en,o_BRAM0B_rst,o_BRAM0B_we[3:0],o_BRAM0B_control,i_BRAM1A_dout[31:0],o_BRAM1A_din[31:0],o_BRAM1A_addr[31:0],o_BRAM1A_en,o_BRAM1A_rst,o_BRAM1A_we[3:0],o_BRAM1A_control,i_BRAM2A_dout[31:0],o_BRAM2A_din[31:0],o_BRAM2A_addr[31:0],o_BRAM2A_en,o_BRAM2A_rst,o_BRAM2A_we[3:0],o_BRAM2A_control,i_BRAM2B_dout[31:0],o_BRAM2B_din[31:0],o_BRAM2B_addr[31:0],o_BRAM2B_en,o_BRAM2B_rst,o_BRAM2B_we[3:0],o_BRAM2B_control";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_lin_comb_arbiter,Vivado 2020.2";
begin
end;
