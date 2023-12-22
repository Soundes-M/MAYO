-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:MAYO_SIGNING_FSM:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_MAYO_SIGNING_FSM_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    i_enable : IN STD_LOGIC;
    i_secret : IN STD_LOGIC;
    o_done : OUT STD_LOGIC;
    o_busy : OUT STD_LOGIC;
    o_err : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_trng_en : OUT STD_LOGIC;
    i_trng_valid : IN STD_LOGIC;
    i_trng_data : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    o_hash_en : OUT STD_LOGIC;
    o_hash_mlen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_hash_olen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_hash_write_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_hash_read_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_hash_done : IN STD_LOGIC;
    i_hash_dyn_done : IN STD_LOGIC;
    o_hash_memsel : OUT STD_LOGIC;
    o_sam_enable : OUT STD_LOGIC;
    i_sam_done : IN STD_LOGIC;
    o_sam_mode : OUT STD_LOGIC;
    o_sam_oil_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_red_enable : OUT STD_LOGIC;
    o_red_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_red_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_red_bram_sel : OUT STD_LOGIC;
    i_red_done : IN STD_LOGIC;
    o_memcpy_start : OUT STD_LOGIC;
    o_memcpy_src_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memcpy_dst_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memcpy_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memcpy_done : IN STD_LOGIC;
    o_memcpy_mem_port_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_memcpy1_start : OUT STD_LOGIC;
    o_memcpy1_src_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memcpy1_dst_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memcpy1_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memcpy1_done : IN STD_LOGIC;
    o_memcpy1_mem_port_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_p1p1t_enable : OUT STD_LOGIC;
    i_p1p1t_done : IN STD_LOGIC;
    o_p1p1t_src_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_p1p1t_dsta_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_p1p1t_dstb_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_p1p1t_ji_equal : OUT STD_LOGIC;
    o_lin_enable : OUT STD_LOGIC;
    i_lin_done : IN STD_LOGIC;
    o_lin_bram_halt : OUT STD_LOGIC;
    o_lin_vec_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_lin_coeffs_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_lin_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_lin_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_lin_demux_bram_sel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    o_add_enable : OUT STD_LOGIC;
    o_add_v1_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_add_v2_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_add_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_add_done : IN STD_LOGIC;
    o_add_bram_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_add_demux_bram_sel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    o_sam_vin_en : OUT STD_LOGIC;
    i_sam_vin_done : IN STD_LOGIC;
    o_sam_vin_input_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_red_ext_en : OUT STD_LOGIC;
    i_red_ext_done : IN STD_LOGIC;
    o_red_ext_input_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_red_ext_output_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_neg_enable : OUT STD_LOGIC;
    o_neg_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_neg_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_neg_done : IN STD_LOGIC;
    o_sam_oil_en : OUT STD_LOGIC;
    i_sam_oil_ret : IN STD_LOGIC;
    i_sam_oil_done : IN STD_LOGIC;
    o_add_oil_enable : OUT STD_LOGIC;
    i_add_oil_done : IN STD_LOGIC;
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
    i_mem2a_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem2a_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem2a_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem2a_en : OUT STD_LOGIC;
    o_mem2a_rst : OUT STD_LOGIC;
    o_mem2a_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_mem2b_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem2b_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem2b_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mem2b_en : OUT STD_LOGIC;
    o_mem2b_rst : OUT STD_LOGIC;
    o_mem2b_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_control0a : OUT STD_LOGIC;
    o_control0b : OUT STD_LOGIC;
    o_control1a : OUT STD_LOGIC;
    o_control2a : OUT STD_LOGIC;
    o_control2b : OUT STD_LOGIC
  );
END Mayo_sign_MAYO_SIGNING_FSM_0_0;

ARCHITECTURE Mayo_sign_MAYO_SIGNING_FSM_0_0_arch OF Mayo_sign_MAYO_SIGNING_FSM_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_MAYO_SIGNING_FSM_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT MAYO_SIGNING_FSM IS
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      i_enable : IN STD_LOGIC;
      i_secret : IN STD_LOGIC;
      o_done : OUT STD_LOGIC;
      o_busy : OUT STD_LOGIC;
      o_err : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_trng_en : OUT STD_LOGIC;
      i_trng_valid : IN STD_LOGIC;
      i_trng_data : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      o_hash_en : OUT STD_LOGIC;
      o_hash_mlen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_hash_olen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_hash_write_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_hash_read_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_hash_done : IN STD_LOGIC;
      i_hash_dyn_done : IN STD_LOGIC;
      o_hash_memsel : OUT STD_LOGIC;
      o_sam_enable : OUT STD_LOGIC;
      i_sam_done : IN STD_LOGIC;
      o_sam_mode : OUT STD_LOGIC;
      o_sam_oil_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_red_enable : OUT STD_LOGIC;
      o_red_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_red_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_red_bram_sel : OUT STD_LOGIC;
      i_red_done : IN STD_LOGIC;
      o_memcpy_start : OUT STD_LOGIC;
      o_memcpy_src_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memcpy_dst_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memcpy_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memcpy_done : IN STD_LOGIC;
      o_memcpy_mem_port_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_memcpy1_start : OUT STD_LOGIC;
      o_memcpy1_src_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memcpy1_dst_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memcpy1_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memcpy1_done : IN STD_LOGIC;
      o_memcpy1_mem_port_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_p1p1t_enable : OUT STD_LOGIC;
      i_p1p1t_done : IN STD_LOGIC;
      o_p1p1t_src_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_p1p1t_dsta_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_p1p1t_dstb_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_p1p1t_ji_equal : OUT STD_LOGIC;
      o_lin_enable : OUT STD_LOGIC;
      i_lin_done : IN STD_LOGIC;
      o_lin_bram_halt : OUT STD_LOGIC;
      o_lin_vec_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_lin_coeffs_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_lin_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_lin_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_lin_demux_bram_sel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      o_add_enable : OUT STD_LOGIC;
      o_add_v1_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_add_v2_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_add_out_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_add_done : IN STD_LOGIC;
      o_add_bram_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_add_demux_bram_sel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      o_sam_vin_en : OUT STD_LOGIC;
      i_sam_vin_done : IN STD_LOGIC;
      o_sam_vin_input_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_red_ext_en : OUT STD_LOGIC;
      i_red_ext_done : IN STD_LOGIC;
      o_red_ext_input_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_red_ext_output_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_neg_enable : OUT STD_LOGIC;
      o_neg_len : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_neg_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_neg_done : IN STD_LOGIC;
      o_sam_oil_en : OUT STD_LOGIC;
      i_sam_oil_ret : IN STD_LOGIC;
      i_sam_oil_done : IN STD_LOGIC;
      o_add_oil_enable : OUT STD_LOGIC;
      i_add_oil_done : IN STD_LOGIC;
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
      i_mem2a_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem2a_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem2a_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem2a_en : OUT STD_LOGIC;
      o_mem2a_rst : OUT STD_LOGIC;
      o_mem2a_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_mem2b_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem2b_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem2b_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mem2b_en : OUT STD_LOGIC;
      o_mem2b_rst : OUT STD_LOGIC;
      o_mem2b_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_control0a : OUT STD_LOGIC;
      o_control0b : OUT STD_LOGIC;
      o_control1a : OUT STD_LOGIC;
      o_control2a : OUT STD_LOGIC;
      o_control2b : OUT STD_LOGIC
    );
  END COMPONENT MAYO_SIGNING_FSM;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Mayo_sign_MAYO_SIGNING_FSM_0_0_arch: ARCHITECTURE IS "MAYO_SIGNING_FSM,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Mayo_sign_MAYO_SIGNING_FSM_0_0_arch : ARCHITECTURE IS "Mayo_sign_MAYO_SIGNING_FSM_0_0,MAYO_SIGNING_FSM,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Mayo_sign_MAYO_SIGNING_FSM_0_0_arch: ARCHITECTURE IS "Mayo_sign_MAYO_SIGNING_FSM_0_0,MAYO_SIGNING_FSM,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=MAYO_SIGNING_FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_MAYO_SIGNING_FSM_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF o_control2b: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2b CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_control2a: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_control1a: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign1a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_control0b: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0b CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_control0a: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2b_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2b WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2b_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2b RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2b_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2b EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2b_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2b ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2b_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2b DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem2b_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2b DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2a_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2a WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2a_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2a RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2a_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2a EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2a_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem2a_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem2a_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign2a DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign1a WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign1a RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign1a EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign1a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign1a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem1a_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign1a DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0b WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0b RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0b EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0b ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0b DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0b_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0b DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0a WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0a RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0a EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0a_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign0a DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_trng_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 o_trng EN";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 o_trng RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : MAYO_SIGNING_FSM
    PORT MAP (
      clk => clk,
      rst => rst,
      i_enable => i_enable,
      i_secret => i_secret,
      o_done => o_done,
      o_busy => o_busy,
      o_err => o_err,
      o_trng_en => o_trng_en,
      i_trng_valid => i_trng_valid,
      i_trng_data => i_trng_data,
      o_hash_en => o_hash_en,
      o_hash_mlen => o_hash_mlen,
      o_hash_olen => o_hash_olen,
      o_hash_write_adr => o_hash_write_adr,
      o_hash_read_adr => o_hash_read_adr,
      i_hash_done => i_hash_done,
      i_hash_dyn_done => i_hash_dyn_done,
      o_hash_memsel => o_hash_memsel,
      o_sam_enable => o_sam_enable,
      i_sam_done => i_sam_done,
      o_sam_mode => o_sam_mode,
      o_sam_oil_addr => o_sam_oil_addr,
      o_red_enable => o_red_enable,
      o_red_len => o_red_len,
      o_red_adr => o_red_adr,
      o_red_bram_sel => o_red_bram_sel,
      i_red_done => i_red_done,
      o_memcpy_start => o_memcpy_start,
      o_memcpy_src_adr => o_memcpy_src_adr,
      o_memcpy_dst_adr => o_memcpy_dst_adr,
      o_memcpy_len => o_memcpy_len,
      i_memcpy_done => i_memcpy_done,
      o_memcpy_mem_port_sel => o_memcpy_mem_port_sel,
      o_memcpy1_start => o_memcpy1_start,
      o_memcpy1_src_adr => o_memcpy1_src_adr,
      o_memcpy1_dst_adr => o_memcpy1_dst_adr,
      o_memcpy1_len => o_memcpy1_len,
      i_memcpy1_done => i_memcpy1_done,
      o_memcpy1_mem_port_sel => o_memcpy1_mem_port_sel,
      o_p1p1t_enable => o_p1p1t_enable,
      i_p1p1t_done => i_p1p1t_done,
      o_p1p1t_src_adr => o_p1p1t_src_adr,
      o_p1p1t_dsta_adr => o_p1p1t_dsta_adr,
      o_p1p1t_dstb_adr => o_p1p1t_dstb_adr,
      o_p1p1t_ji_equal => o_p1p1t_ji_equal,
      o_lin_enable => o_lin_enable,
      i_lin_done => i_lin_done,
      o_lin_bram_halt => o_lin_bram_halt,
      o_lin_vec_addr => o_lin_vec_addr,
      o_lin_coeffs_addr => o_lin_coeffs_addr,
      o_lin_out_addr => o_lin_out_addr,
      o_lin_len => o_lin_len,
      o_lin_demux_bram_sel => o_lin_demux_bram_sel,
      o_add_enable => o_add_enable,
      o_add_v1_addr => o_add_v1_addr,
      o_add_v2_addr => o_add_v2_addr,
      o_add_out_addr => o_add_out_addr,
      i_add_done => i_add_done,
      o_add_bram_sel => o_add_bram_sel,
      o_add_demux_bram_sel => o_add_demux_bram_sel,
      o_sam_vin_en => o_sam_vin_en,
      i_sam_vin_done => i_sam_vin_done,
      o_sam_vin_input_adr => o_sam_vin_input_adr,
      o_red_ext_en => o_red_ext_en,
      i_red_ext_done => i_red_ext_done,
      o_red_ext_input_adr => o_red_ext_input_adr,
      o_red_ext_output_adr => o_red_ext_output_adr,
      o_neg_enable => o_neg_enable,
      o_neg_len => o_neg_len,
      o_neg_adr => o_neg_adr,
      i_neg_done => i_neg_done,
      o_sam_oil_en => o_sam_oil_en,
      i_sam_oil_ret => i_sam_oil_ret,
      i_sam_oil_done => i_sam_oil_done,
      o_add_oil_enable => o_add_oil_enable,
      i_add_oil_done => i_add_oil_done,
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
      i_mem2a_dout => i_mem2a_dout,
      o_mem2a_din => o_mem2a_din,
      o_mem2a_addr => o_mem2a_addr,
      o_mem2a_en => o_mem2a_en,
      o_mem2a_rst => o_mem2a_rst,
      o_mem2a_we => o_mem2a_we,
      i_mem2b_dout => i_mem2b_dout,
      o_mem2b_din => o_mem2b_din,
      o_mem2b_addr => o_mem2b_addr,
      o_mem2b_en => o_mem2b_en,
      o_mem2b_rst => o_mem2b_rst,
      o_mem2b_we => o_mem2b_we,
      o_control0a => o_control0a,
      o_control0b => o_control0b,
      o_control1a => o_control1a,
      o_control2a => o_control2a,
      o_control2b => o_control2b
    );
END Mayo_sign_MAYO_SIGNING_FSM_0_0_arch;
