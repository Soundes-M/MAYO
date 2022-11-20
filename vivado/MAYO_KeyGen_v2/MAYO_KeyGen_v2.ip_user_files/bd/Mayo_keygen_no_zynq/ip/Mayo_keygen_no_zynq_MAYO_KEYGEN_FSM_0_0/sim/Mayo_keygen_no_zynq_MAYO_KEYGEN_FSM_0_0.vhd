-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:MAYO_KEYGEN_FSM:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    ENABLE : IN STD_LOGIC;
    RESET : IN STD_LOGIC;
    PUBLIC_KEY_ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SECRET_KEY_ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_done : OUT STD_LOGIC;
    i_debug : IN STD_LOGIC;
    o_trng_r : OUT STD_LOGIC;
    o_trng_w : OUT STD_LOGIC;
    o_trng_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_trng_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_trng_valid : IN STD_LOGIC;
    i_trng_done : IN STD_LOGIC;
    o_hash_en : OUT STD_LOGIC;
    o_hash_mlen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_hash_olen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_hash_write_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_hash_read_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_hash_done : IN STD_LOGIC;
    i_hash_dyn_done : IN STD_LOGIC;
    o_hash_memsel : OUT STD_LOGIC;
    o_red_enable : OUT STD_LOGIC;
    o_red_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_red_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_red_bram_sel : OUT STD_LOGIC;
    i_red_done : IN STD_LOGIC;
    o_sam_enable : OUT STD_LOGIC;
    i_sam_done : IN STD_LOGIC;
    o_sam_oil_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_lin_enable : OUT STD_LOGIC;
    i_lin_done : IN STD_LOGIC;
    o_lin_bram_halt : OUT STD_LOGIC;
    o_lin_vec_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_lin_coeffs_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_lin_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_lin_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_add_enable : OUT STD_LOGIC;
    o_add_v1_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_add_v2_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_add_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_add_done : IN STD_LOGIC;
    o_add_bram_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_neg_enable : OUT STD_LOGIC;
    o_neg_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_neg_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_neg_done : IN STD_LOGIC;
    i_mem0a_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem0a_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem0a_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem0a_en : OUT STD_LOGIC;
    o_mem0a_rst : OUT STD_LOGIC;
    o_mem0a_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_mem0b_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem0b_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem0b_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem0b_en : OUT STD_LOGIC;
    o_mem0b_rst : OUT STD_LOGIC;
    o_mem0b_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_mem1a_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem1a_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem1a_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem1a_en : OUT STD_LOGIC;
    o_mem1a_rst : OUT STD_LOGIC;
    o_mem1a_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_mem0a_control : OUT STD_LOGIC;
    o_mem0b_control : OUT STD_LOGIC;
    o_mem1a_control : OUT STD_LOGIC
  );
END Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0;

ARCHITECTURE Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0_arch OF Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT MAYO_KEYGEN_FSM IS
    GENERIC (
      SIZE : INTEGER;
      BRAM_SIZE : INTEGER
    );
    PORT (
      CLK : IN STD_LOGIC;
      ENABLE : IN STD_LOGIC;
      RESET : IN STD_LOGIC;
      PUBLIC_KEY_ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SECRET_KEY_ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_done : OUT STD_LOGIC;
      i_debug : IN STD_LOGIC;
      o_trng_r : OUT STD_LOGIC;
      o_trng_w : OUT STD_LOGIC;
      o_trng_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_trng_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_trng_valid : IN STD_LOGIC;
      i_trng_done : IN STD_LOGIC;
      o_hash_en : OUT STD_LOGIC;
      o_hash_mlen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_hash_olen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_hash_write_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_hash_read_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_hash_done : IN STD_LOGIC;
      i_hash_dyn_done : IN STD_LOGIC;
      o_hash_memsel : OUT STD_LOGIC;
      o_red_enable : OUT STD_LOGIC;
      o_red_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_red_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_red_bram_sel : OUT STD_LOGIC;
      i_red_done : IN STD_LOGIC;
      o_sam_enable : OUT STD_LOGIC;
      i_sam_done : IN STD_LOGIC;
      o_sam_oil_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_lin_enable : OUT STD_LOGIC;
      i_lin_done : IN STD_LOGIC;
      o_lin_bram_halt : OUT STD_LOGIC;
      o_lin_vec_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_lin_coeffs_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_lin_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_lin_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_add_enable : OUT STD_LOGIC;
      o_add_v1_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_add_v2_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_add_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_add_done : IN STD_LOGIC;
      o_add_bram_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_neg_enable : OUT STD_LOGIC;
      o_neg_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_neg_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_neg_done : IN STD_LOGIC;
      i_mem0a_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem0a_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem0a_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem0a_en : OUT STD_LOGIC;
      o_mem0a_rst : OUT STD_LOGIC;
      o_mem0a_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_mem0b_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem0b_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem0b_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem0b_en : OUT STD_LOGIC;
      o_mem0b_rst : OUT STD_LOGIC;
      o_mem0b_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_mem1a_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem1a_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem1a_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem1a_en : OUT STD_LOGIC;
      o_mem1a_rst : OUT STD_LOGIC;
      o_mem1a_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_mem0a_control : OUT STD_LOGIC;
      o_mem0b_control : OUT STD_LOGIC;
      o_mem1a_control : OUT STD_LOGIC
    );
  END COMPONENT MAYO_KEYGEN_FSM;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_mem1a_rst: SIGNAL IS "XIL_INTERFACENAME o_mem1a_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 o_mem1a_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_mem0b_rst: SIGNAL IS "XIL_INTERFACENAME o_mem0b_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 o_mem0b_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_mem0a_rst: SIGNAL IS "XIL_INTERFACENAME o_mem0a_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 o_mem0a_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET: SIGNAL IS "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : MAYO_KEYGEN_FSM
    GENERIC MAP (
      SIZE => 999,
      BRAM_SIZE => 31
    )
    PORT MAP (
      CLK => CLK,
      ENABLE => ENABLE,
      RESET => RESET,
      PUBLIC_KEY_ADDR_I => PUBLIC_KEY_ADDR_I,
      SECRET_KEY_ADDR_I => SECRET_KEY_ADDR_I,
      o_done => o_done,
      i_debug => i_debug,
      o_trng_r => o_trng_r,
      o_trng_w => o_trng_w,
      o_trng_data => o_trng_data,
      i_trng_data => i_trng_data,
      i_trng_valid => i_trng_valid,
      i_trng_done => i_trng_done,
      o_hash_en => o_hash_en,
      o_hash_mlen => o_hash_mlen,
      o_hash_olen => o_hash_olen,
      o_hash_write_adr => o_hash_write_adr,
      o_hash_read_adr => o_hash_read_adr,
      i_hash_done => i_hash_done,
      i_hash_dyn_done => i_hash_dyn_done,
      o_hash_memsel => o_hash_memsel,
      o_red_enable => o_red_enable,
      o_red_len => o_red_len,
      o_red_adr => o_red_adr,
      o_red_bram_sel => o_red_bram_sel,
      i_red_done => i_red_done,
      o_sam_enable => o_sam_enable,
      i_sam_done => i_sam_done,
      o_sam_oil_addr => o_sam_oil_addr,
      o_lin_enable => o_lin_enable,
      i_lin_done => i_lin_done,
      o_lin_bram_halt => o_lin_bram_halt,
      o_lin_vec_addr => o_lin_vec_addr,
      o_lin_coeffs_addr => o_lin_coeffs_addr,
      o_lin_out_addr => o_lin_out_addr,
      o_lin_len => o_lin_len,
      o_add_enable => o_add_enable,
      o_add_v1_addr => o_add_v1_addr,
      o_add_v2_addr => o_add_v2_addr,
      o_add_out_addr => o_add_out_addr,
      i_add_done => i_add_done,
      o_add_bram_sel => o_add_bram_sel,
      o_neg_enable => o_neg_enable,
      o_neg_len => o_neg_len,
      o_neg_adr => o_neg_adr,
      i_neg_done => i_neg_done,
      i_mem0a_dout => i_mem0a_dout,
      o_mem0a_din => o_mem0a_din,
      o_mem0a_addr => o_mem0a_addr,
      o_mem0a_en => o_mem0a_en,
      o_mem0a_rst => o_mem0a_rst,
      o_mem0a_we => o_mem0a_we,
      i_mem0b_dout => i_mem0b_dout,
      o_mem0b_din => o_mem0b_din,
      o_mem0b_addr => o_mem0b_addr,
      o_mem0b_en => o_mem0b_en,
      o_mem0b_rst => o_mem0b_rst,
      o_mem0b_we => o_mem0b_we,
      i_mem1a_dout => i_mem1a_dout,
      o_mem1a_din => o_mem1a_din,
      o_mem1a_addr => o_mem1a_addr,
      o_mem1a_en => o_mem1a_en,
      o_mem1a_rst => o_mem1a_rst,
      o_mem1a_we => o_mem1a_we,
      o_mem0a_control => o_mem0a_control,
      o_mem0b_control => o_mem0b_control,
      o_mem1a_control => o_mem1a_control
    );
END Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0_arch;
