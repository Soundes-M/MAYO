-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sat Dec  9 16:23:42 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_mayo_trng_arbiter_0_1_stub.vhdl
-- Design      : Mayo_sign_with_zynq_mayo_trng_arbiter_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_trng_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_trng_en : out STD_LOGIC;
    i_trng_random_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng0_en : in STD_LOGIC;
    o_trng0_random_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    o_trng0_valid : out STD_LOGIC;
    i_trng1_en : in STD_LOGIC;
    o_trng1_random_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    o_trng1_valid : out STD_LOGIC;
    i_trng2_en : in STD_LOGIC;
    o_trng2_random_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    o_trng2_valid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_trng_sel[1:0],o_trng_en,i_trng_random_data[127:0],i_trng_valid,i_trng0_en,o_trng0_random_data[127:0],o_trng0_valid,i_trng1_en,o_trng1_random_data[127:0],o_trng1_valid,i_trng2_en,o_trng2_random_data[127:0],o_trng2_valid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_trng_arbiter,Vivado 2020.2";
begin
end;
