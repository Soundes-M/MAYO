-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hls_linear_combination is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    vecs : IN STD_LOGIC_VECTOR (7 downto 0);
    coeffs : IN STD_LOGIC_VECTOR (7 downto 0);
    len : IN STD_LOGIC_VECTOR (31 downto 0);
    out_r : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_r_ap_vld : OUT STD_LOGIC );
end;


architecture behav of hls_linear_combination is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "hls_linear_combination_hls_linear_combination,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=0,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0,HLS_VERSION=2020_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_ce_reg : STD_LOGIC;


begin



    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
    out_r <= ap_const_lv8_0;

    out_r_ap_vld_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_1)) then 
            out_r_ap_vld <= ap_const_logic_1;
        else 
            out_r_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
