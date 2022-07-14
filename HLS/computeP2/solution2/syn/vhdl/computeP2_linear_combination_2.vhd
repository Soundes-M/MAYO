-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity computeP2_linear_combination_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    oil_space_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    oil_space_ce0 : OUT STD_LOGIC;
    oil_space_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    vecs_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    vecs_ce0 : OUT STD_LOGIC;
    vecs_q0 : IN STD_LOGIC_VECTOR (4 downto 0);
    vecs_offset : IN STD_LOGIC_VECTOR (14 downto 0);
    coeffs : IN STD_LOGIC_VECTOR (8 downto 0);
    out_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (4 downto 0) );
end;


architecture behav of computeP2_linear_combination_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000001000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000010000000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (46 downto 0) := "00000000000100000000000000000000000000000000000";
    constant ap_ST_fsm_state37 : STD_LOGIC_VECTOR (46 downto 0) := "00000000001000000000000000000000000000000000000";
    constant ap_ST_fsm_state38 : STD_LOGIC_VECTOR (46 downto 0) := "00000000010000000000000000000000000000000000000";
    constant ap_ST_fsm_state39 : STD_LOGIC_VECTOR (46 downto 0) := "00000000100000000000000000000000000000000000000";
    constant ap_ST_fsm_state40 : STD_LOGIC_VECTOR (46 downto 0) := "00000001000000000000000000000000000000000000000";
    constant ap_ST_fsm_state41 : STD_LOGIC_VECTOR (46 downto 0) := "00000010000000000000000000000000000000000000000";
    constant ap_ST_fsm_state42 : STD_LOGIC_VECTOR (46 downto 0) := "00000100000000000000000000000000000000000000000";
    constant ap_ST_fsm_state43 : STD_LOGIC_VECTOR (46 downto 0) := "00001000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state44 : STD_LOGIC_VECTOR (46 downto 0) := "00010000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state45 : STD_LOGIC_VECTOR (46 downto 0) := "00100000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state46 : STD_LOGIC_VECTOR (46 downto 0) := "01000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state47 : STD_LOGIC_VECTOR (46 downto 0) := "10000000000000000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_2E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101110";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_3C : STD_LOGIC_VECTOR (5 downto 0) := "111100";
    constant ap_const_lv6_38 : STD_LOGIC_VECTOR (5 downto 0) := "111000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (46 downto 0) := "00000000000000000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal accumulators_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_183 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal empty_18_fu_187_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln97_fu_204_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln97_reg_362 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln97_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln103_fu_264_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln103_reg_375 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln101_fu_269_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln101_reg_380 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal add_ln101_fu_273_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln101_reg_385 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln101_fu_288_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal accumulators_addr_2_reg_398 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal add_ln107_fu_308_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln107_reg_408 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal zext_ln107_fu_314_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln107_reg_413 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln107_fu_319_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal accumulators_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal accumulators_ce0 : STD_LOGIC;
    signal accumulators_we0 : STD_LOGIC;
    signal accumulators_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_reg_139 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond136_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_150 : STD_LOGIC_VECTOR (5 downto 0);
    signal j_reg_161 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal i_1_reg_172 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state47 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state47 : signal is "none";
    signal p_cast3_fu_193_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_cast4_fu_259_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln103_fu_299_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln101_1_fu_279_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_fu_336_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_shl_fu_220_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl2_fu_232_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl_cast_fu_228_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_shl2_cast_fu_240_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal empty_21_fu_244_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln97_fu_210_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal empty_22_fu_254_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_cast_fu_250_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln101_2_fu_284_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln103_2_fu_294_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_325_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal grp_fu_325_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_336_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_336_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_325_ap_start : STD_LOGIC;
    signal grp_fu_325_ap_done : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (46 downto 0);
    signal grp_fu_336_p00 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component computeP2_urem_32ns_6ns_5_36_seq_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (4 downto 0) );
    end component;


    component computeP2_mac_muladd_5ns_8ns_32ns_32_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component computeP2_linear_combination_accumulators IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    accumulators_U : component computeP2_linear_combination_accumulators
    generic map (
        DataWidth => 32,
        AddressRange => 60,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => accumulators_address0,
        ce0 => accumulators_ce0,
        we0 => accumulators_we0,
        d0 => accumulators_d0,
        q0 => accumulators_q0);

    urem_32ns_6ns_5_36_seq_1_U31 : component computeP2_urem_32ns_6ns_5_36_seq_1
    generic map (
        ID => 1,
        NUM_STAGE => 36,
        din0_WIDTH => 32,
        din1_WIDTH => 6,
        dout_WIDTH => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_325_ap_start,
        done => grp_fu_325_ap_done,
        din0 => reg_183,
        din1 => grp_fu_325_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_325_p2);

    mac_muladd_5ns_8ns_32ns_32_4_1_U32 : component computeP2_mac_muladd_5ns_8ns_32ns_32_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 5,
        din1_WIDTH => 8,
        din2_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_336_p0,
        din1 => grp_fu_336_p1,
        din2 => accumulators_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_336_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    empty_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond136_fu_198_p2 = ap_const_lv1_0))) then 
                empty_reg_139 <= empty_18_fu_187_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                empty_reg_139 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    i_1_reg_172_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln97_fu_214_p2 = ap_const_lv1_1))) then 
                i_1_reg_172 <= ap_const_lv6_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state47)) then 
                i_1_reg_172 <= add_ln107_reg_408;
            end if; 
        end if;
    end process;

    i_reg_150_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond136_fu_198_p2 = ap_const_lv1_1))) then 
                i_reg_150 <= ap_const_lv6_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln101_fu_288_p2 = ap_const_lv1_1))) then 
                i_reg_150 <= add_ln97_reg_362;
            end if; 
        end if;
    end process;

    j_reg_161_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                j_reg_161 <= ap_const_lv6_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                j_reg_161 <= add_ln101_reg_385;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln101_fu_288_p2 = ap_const_lv1_0))) then
                accumulators_addr_2_reg_398 <= zext_ln101_1_fu_279_p1(6 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                add_ln101_reg_385 <= add_ln101_fu_273_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln97_fu_214_p2 = ap_const_lv1_0))) then
                add_ln103_reg_375 <= add_ln103_fu_264_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                add_ln107_reg_408 <= add_ln107_fu_308_p2;
                    zext_ln107_reg_413(5 downto 0) <= zext_ln107_fu_314_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln97_reg_362 <= add_ln97_fu_204_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state8))) then
                reg_183 <= accumulators_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                    zext_ln101_reg_380(7 downto 0) <= zext_ln101_fu_269_p1(7 downto 0);
            end if;
        end if;
    end process;
    zext_ln101_reg_380(12 downto 8) <= "00000";
    zext_ln107_reg_413(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln97_fu_214_p2, ap_CS_fsm_state5, icmp_ln101_fu_288_p2, ap_CS_fsm_state10, icmp_ln107_fu_319_p2, exitcond136_fu_198_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond136_fu_198_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln97_fu_214_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln101_fu_288_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state10 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state10) and (icmp_ln107_fu_319_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 => 
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 => 
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 => 
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 => 
                ap_NS_fsm <= ap_ST_fsm_state32;
            when ap_ST_fsm_state32 => 
                ap_NS_fsm <= ap_ST_fsm_state33;
            when ap_ST_fsm_state33 => 
                ap_NS_fsm <= ap_ST_fsm_state34;
            when ap_ST_fsm_state34 => 
                ap_NS_fsm <= ap_ST_fsm_state35;
            when ap_ST_fsm_state35 => 
                ap_NS_fsm <= ap_ST_fsm_state36;
            when ap_ST_fsm_state36 => 
                ap_NS_fsm <= ap_ST_fsm_state37;
            when ap_ST_fsm_state37 => 
                ap_NS_fsm <= ap_ST_fsm_state38;
            when ap_ST_fsm_state38 => 
                ap_NS_fsm <= ap_ST_fsm_state39;
            when ap_ST_fsm_state39 => 
                ap_NS_fsm <= ap_ST_fsm_state40;
            when ap_ST_fsm_state40 => 
                ap_NS_fsm <= ap_ST_fsm_state41;
            when ap_ST_fsm_state41 => 
                ap_NS_fsm <= ap_ST_fsm_state42;
            when ap_ST_fsm_state42 => 
                ap_NS_fsm <= ap_ST_fsm_state43;
            when ap_ST_fsm_state43 => 
                ap_NS_fsm <= ap_ST_fsm_state44;
            when ap_ST_fsm_state44 => 
                ap_NS_fsm <= ap_ST_fsm_state45;
            when ap_ST_fsm_state45 => 
                ap_NS_fsm <= ap_ST_fsm_state46;
            when ap_ST_fsm_state46 => 
                ap_NS_fsm <= ap_ST_fsm_state47;
            when ap_ST_fsm_state47 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;

    accumulators_address0_assign_proc : process(ap_CS_fsm_state2, accumulators_addr_2_reg_398, ap_CS_fsm_state10, zext_ln107_fu_314_p1, ap_CS_fsm_state9, p_cast3_fu_193_p1, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            accumulators_address0 <= zext_ln107_fu_314_p1(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            accumulators_address0 <= accumulators_addr_2_reg_398;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            accumulators_address0 <= p_cast3_fu_193_p1(6 - 1 downto 0);
        else 
            accumulators_address0 <= "XXXXXX";
        end if; 
    end process;


    accumulators_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state10, ap_CS_fsm_state9, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            accumulators_ce0 <= ap_const_logic_1;
        else 
            accumulators_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    accumulators_d0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state9, grp_fu_336_p3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            accumulators_d0 <= grp_fu_336_p3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            accumulators_d0 <= ap_const_lv32_0;
        else 
            accumulators_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    accumulators_we0_assign_proc : process(ap_CS_fsm_state2, exitcond136_fu_198_p2, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond136_fu_198_p2 = ap_const_lv1_0)))) then 
            accumulators_we0 <= ap_const_logic_1;
        else 
            accumulators_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln101_fu_273_p2 <= std_logic_vector(unsigned(j_reg_161) + unsigned(ap_const_lv6_1));
    add_ln103_2_fu_294_p2 <= std_logic_vector(unsigned(add_ln103_reg_375) + unsigned(zext_ln101_2_fu_284_p1));
    add_ln103_fu_264_p2 <= std_logic_vector(signed(p_cast_fu_250_p1) + signed(vecs_offset));
    add_ln107_fu_308_p2 <= std_logic_vector(unsigned(i_1_reg_172) + unsigned(ap_const_lv6_1));
    add_ln97_fu_204_p2 <= std_logic_vector(unsigned(i_reg_150) + unsigned(ap_const_lv6_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state47 <= ap_CS_fsm(46);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state10, icmp_ln107_fu_319_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (icmp_ln107_fu_319_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state10, icmp_ln107_fu_319_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) and (icmp_ln107_fu_319_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    empty_18_fu_187_p2 <= std_logic_vector(unsigned(empty_reg_139) + unsigned(ap_const_lv6_1));
    empty_21_fu_244_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_228_p1) - unsigned(p_shl2_cast_fu_240_p1));
    empty_22_fu_254_p2 <= std_logic_vector(unsigned(zext_ln97_fu_210_p1) + unsigned(coeffs));
    exitcond136_fu_198_p2 <= "1" when (empty_reg_139 = ap_const_lv6_3C) else "0";

    grp_fu_325_ap_start_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            grp_fu_325_ap_start <= ap_const_logic_1;
        else 
            grp_fu_325_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_325_p1 <= ap_const_lv32_1F(6 - 1 downto 0);
    grp_fu_336_p0 <= grp_fu_336_p00(5 - 1 downto 0);
    grp_fu_336_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(vecs_q0),13));
    grp_fu_336_p1 <= zext_ln101_reg_380(8 - 1 downto 0);
    icmp_ln101_fu_288_p2 <= "1" when (j_reg_161 = ap_const_lv6_3C) else "0";
    icmp_ln107_fu_319_p2 <= "1" when (i_1_reg_172 = ap_const_lv6_3C) else "0";
    icmp_ln97_fu_214_p2 <= "1" when (i_reg_150 = ap_const_lv6_38) else "0";
    oil_space_address0 <= p_cast4_fu_259_p1(9 - 1 downto 0);

    oil_space_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            oil_space_ce0 <= ap_const_logic_1;
        else 
            oil_space_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_address0 <= zext_ln107_reg_413(6 - 1 downto 0);

    out_r_ce0_assign_proc : process(ap_CS_fsm_state47)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state47)) then 
            out_r_ce0 <= ap_const_logic_1;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_d0 <= grp_fu_325_p2(5 - 1 downto 0);

    out_r_we0_assign_proc : process(ap_CS_fsm_state47)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state47)) then 
            out_r_we0 <= ap_const_logic_1;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_cast3_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_reg_139),64));
    p_cast4_fu_259_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_22_fu_254_p2),64));
        p_cast_fu_250_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(empty_21_fu_244_p2),15));

    p_shl2_cast_fu_240_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl2_fu_232_p3),13));
    p_shl2_fu_232_p3 <= (i_reg_150 & ap_const_lv2_0);
    p_shl_cast_fu_228_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_fu_220_p3),13));
    p_shl_fu_220_p3 <= (i_reg_150 & ap_const_lv6_0);
    vecs_address0 <= zext_ln103_fu_299_p1(15 - 1 downto 0);

    vecs_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            vecs_ce0 <= ap_const_logic_1;
        else 
            vecs_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln101_1_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_161),64));
    zext_ln101_2_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_161),15));
    zext_ln101_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(oil_space_q0),13));
    zext_ln103_fu_299_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln103_2_fu_294_p2),64));
    zext_ln107_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_reg_172),64));
    zext_ln97_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_150),9));
end behav;