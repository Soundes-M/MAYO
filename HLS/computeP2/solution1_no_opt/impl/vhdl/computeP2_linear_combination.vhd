-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity computeP2_linear_combination is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    vecs_read : IN STD_LOGIC_VECTOR (7 downto 0);
    coeffs_read : IN STD_LOGIC_VECTOR (7 downto 0);
    len : IN STD_LOGIC_VECTOR (5 downto 0);
    out_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (4 downto 0) );
end;


architecture behav of computeP2_linear_combination is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (43 downto 0) := "00000000001000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (43 downto 0) := "00000000010000000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (43 downto 0) := "00000000100000000000000000000000000000000000";
    constant ap_ST_fsm_state37 : STD_LOGIC_VECTOR (43 downto 0) := "00000001000000000000000000000000000000000000";
    constant ap_ST_fsm_state38 : STD_LOGIC_VECTOR (43 downto 0) := "00000010000000000000000000000000000000000000";
    constant ap_ST_fsm_state39 : STD_LOGIC_VECTOR (43 downto 0) := "00000100000000000000000000000000000000000000";
    constant ap_ST_fsm_state40 : STD_LOGIC_VECTOR (43 downto 0) := "00001000000000000000000000000000000000000000";
    constant ap_ST_fsm_state41 : STD_LOGIC_VECTOR (43 downto 0) := "00010000000000000000000000000000000000000000";
    constant ap_ST_fsm_state42 : STD_LOGIC_VECTOR (43 downto 0) := "00100000000000000000000000000000000000000000";
    constant ap_ST_fsm_state43 : STD_LOGIC_VECTOR (43 downto 0) := "01000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state44 : STD_LOGIC_VECTOR (43 downto 0) := "10000000000000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_2B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101011";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_3C : STD_LOGIC_VECTOR (5 downto 0) := "111100";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal empty_42_fu_146_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln103_fu_175_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln103_reg_262 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond136_fu_157_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln103_fu_179_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln103_reg_267 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal add_ln107_fu_190_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln107_reg_275 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal accumulators_addr_6_reg_283 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln107_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln109_fu_207_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln109_reg_288 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal add_ln113_fu_212_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln113_reg_293 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal zext_ln113_fu_218_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln113_reg_298 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln113_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal accumulators_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal accumulators_load_reg_311 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal accumulators_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal accumulators_ce0 : STD_LOGIC;
    signal accumulators_we0 : STD_LOGIC;
    signal accumulators_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_reg_102 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_113 : STD_LOGIC_VECTOR (5 downto 0);
    signal j_reg_124 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal icmp_ln103_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_3_reg_135 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state44 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state44 : signal is "none";
    signal p_cast_fu_152_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln107_fu_196_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal mul_ln109_fu_169_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln109_fu_169_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln109_fu_169_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_229_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_fu_229_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_229_ap_start : STD_LOGIC;
    signal grp_fu_229_ap_done : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (43 downto 0);
    signal mul_ln109_fu_169_p00 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul_ln109_fu_169_p10 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component computeP2_mul_8ns_8ns_16_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


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

    mul_8ns_8ns_16_1_1_U1 : component computeP2_mul_8ns_8ns_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        dout_WIDTH => 16)
    port map (
        din0 => mul_ln109_fu_169_p0,
        din1 => mul_ln109_fu_169_p1,
        dout => mul_ln109_fu_169_p2);

    urem_32ns_6ns_5_36_seq_1_U2 : component computeP2_urem_32ns_6ns_5_36_seq_1
    generic map (
        ID => 1,
        NUM_STAGE => 36,
        din0_WIDTH => 32,
        din1_WIDTH => 6,
        dout_WIDTH => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_229_ap_start,
        done => grp_fu_229_ap_done,
        din0 => accumulators_load_reg_311,
        din1 => grp_fu_229_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_229_p2);





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


    empty_reg_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond136_fu_157_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                empty_reg_102 <= empty_42_fu_146_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                empty_reg_102 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    i_3_reg_135_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln103_fu_185_p2 = ap_const_lv1_1))) then 
                i_3_reg_135 <= ap_const_lv6_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state44)) then 
                i_3_reg_135 <= add_ln113_reg_293;
            end if; 
        end if;
    end process;

    i_reg_113_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond136_fu_157_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_reg_113 <= ap_const_lv6_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln107_fu_201_p2 = ap_const_lv1_1))) then 
                i_reg_113 <= add_ln103_reg_267;
            end if; 
        end if;
    end process;

    j_reg_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln103_fu_185_p2 = ap_const_lv1_0))) then 
                j_reg_124 <= ap_const_lv6_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                j_reg_124 <= add_ln107_reg_275;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln107_fu_201_p2 = ap_const_lv1_0))) then
                accumulators_addr_6_reg_283 <= zext_ln107_fu_196_p1(6 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                accumulators_load_reg_311 <= accumulators_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln103_reg_267 <= add_ln103_fu_179_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                add_ln107_reg_275 <= add_ln107_fu_190_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                add_ln109_reg_288 <= add_ln109_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                add_ln113_reg_293 <= add_ln113_fu_212_p2;
                    zext_ln113_reg_298(5 downto 0) <= zext_ln113_fu_218_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond136_fu_157_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln103_reg_262(15 downto 0) <= zext_ln103_fu_175_p1(15 downto 0);
            end if;
        end if;
    end process;
    zext_ln103_reg_262(31 downto 16) <= "0000000000000000";
    zext_ln113_reg_298(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond136_fu_157_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, icmp_ln107_fu_201_p2, ap_CS_fsm_state7, icmp_ln113_fu_223_p2, icmp_ln103_fu_185_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond136_fu_157_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln103_fu_185_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln107_fu_201_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln113_fu_223_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
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
                ap_NS_fsm <= ap_ST_fsm_state7;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;

    accumulators_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state4, accumulators_addr_6_reg_283, ap_CS_fsm_state7, zext_ln113_fu_218_p1, ap_CS_fsm_state6, p_cast_fu_152_p1, zext_ln107_fu_196_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            accumulators_address0 <= zext_ln113_fu_218_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            accumulators_address0 <= accumulators_addr_6_reg_283;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            accumulators_address0 <= zext_ln107_fu_196_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            accumulators_address0 <= p_cast_fu_152_p1(6 - 1 downto 0);
        else 
            accumulators_address0 <= "XXXXXX";
        end if; 
    end process;


    accumulators_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            accumulators_ce0 <= ap_const_logic_1;
        else 
            accumulators_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    accumulators_d0_assign_proc : process(ap_CS_fsm_state2, add_ln109_reg_288, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            accumulators_d0 <= add_ln109_reg_288;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            accumulators_d0 <= ap_const_lv32_0;
        else 
            accumulators_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    accumulators_we0_assign_proc : process(ap_CS_fsm_state2, exitcond136_fu_157_p2, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or ((exitcond136_fu_157_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            accumulators_we0 <= ap_const_logic_1;
        else 
            accumulators_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln103_fu_179_p2 <= std_logic_vector(unsigned(i_reg_113) + unsigned(ap_const_lv6_1));
    add_ln107_fu_190_p2 <= std_logic_vector(unsigned(j_reg_124) + unsigned(ap_const_lv6_1));
    add_ln109_fu_207_p2 <= std_logic_vector(unsigned(accumulators_q0) + unsigned(zext_ln103_reg_262));
    add_ln113_fu_212_p2 <= std_logic_vector(unsigned(i_3_reg_135) + unsigned(ap_const_lv6_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state44 <= ap_CS_fsm(43);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state7, icmp_ln113_fu_223_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln113_fu_223_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state7, icmp_ln113_fu_223_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln113_fu_223_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    empty_42_fu_146_p2 <= std_logic_vector(unsigned(empty_reg_102) + unsigned(ap_const_lv6_1));
    exitcond136_fu_157_p2 <= "1" when (empty_reg_102 = ap_const_lv6_3C) else "0";

    grp_fu_229_ap_start_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            grp_fu_229_ap_start <= ap_const_logic_1;
        else 
            grp_fu_229_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_229_p1 <= ap_const_lv32_1F(6 - 1 downto 0);
    icmp_ln103_fu_185_p2 <= "1" when (i_reg_113 = len) else "0";
    icmp_ln107_fu_201_p2 <= "1" when (j_reg_124 = ap_const_lv6_3C) else "0";
    icmp_ln113_fu_223_p2 <= "1" when (i_3_reg_135 = ap_const_lv6_3C) else "0";
    mul_ln109_fu_169_p0 <= mul_ln109_fu_169_p00(8 - 1 downto 0);
    mul_ln109_fu_169_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(vecs_read),16));
    mul_ln109_fu_169_p1 <= mul_ln109_fu_169_p10(8 - 1 downto 0);
    mul_ln109_fu_169_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(coeffs_read),16));
    out_r_address0 <= zext_ln113_reg_298(6 - 1 downto 0);

    out_r_ce0_assign_proc : process(ap_CS_fsm_state44)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state44)) then 
            out_r_ce0 <= ap_const_logic_1;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_d0 <= grp_fu_229_p2(5 - 1 downto 0);

    out_r_we0_assign_proc : process(ap_CS_fsm_state44)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state44)) then 
            out_r_we0 <= ap_const_logic_1;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_cast_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_reg_102),64));
    zext_ln103_fu_175_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_ln109_fu_169_p2),32));
    zext_ln107_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_124),64));
    zext_ln113_fu_218_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_3_reg_135),64));
end behav;
