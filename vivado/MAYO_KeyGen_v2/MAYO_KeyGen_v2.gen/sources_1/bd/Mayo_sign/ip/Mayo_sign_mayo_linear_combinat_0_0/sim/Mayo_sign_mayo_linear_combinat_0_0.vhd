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

-- IP VLNV: xilinx.com:module_ref:mayo_linear_combination:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_mayo_linear_combinat_0_0 IS
  PORT (
    i_clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    i_enable : IN STD_LOGIC;
    o_done : OUT STD_LOGIC;
    i_bram_halt : IN STD_LOGIC;
    i_vec_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_coeffs_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_out_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_len : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
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
    o_control0a : OUT STD_LOGIC;
    o_control0b : OUT STD_LOGIC;
    o_control1a : OUT STD_LOGIC
  );
END Mayo_sign_mayo_linear_combinat_0_0;

ARCHITECTURE Mayo_sign_mayo_linear_combinat_0_0_arch OF Mayo_sign_mayo_linear_combinat_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_mayo_linear_combinat_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_linear_combination IS
    PORT (
      i_clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      i_enable : IN STD_LOGIC;
      o_done : OUT STD_LOGIC;
      i_bram_halt : IN STD_LOGIC;
      i_vec_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_coeffs_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_out_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_len : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
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
      o_control0a : OUT STD_LOGIC;
      o_control0b : OUT STD_LOGIC;
      o_control1a : OUT STD_LOGIC
    );
  END COMPONENT mayo_linear_combination;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_mayo_linear_combinat_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF o_control1a: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_control0b: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_control0a: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem1a_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0b_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0a_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a DOUT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_clk: SIGNAL IS "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_clk CLK";
BEGIN
  U0 : mayo_linear_combination
    PORT MAP (
      i_clk => i_clk,
      rst => rst,
      i_enable => i_enable,
      o_done => o_done,
      i_bram_halt => i_bram_halt,
      i_vec_addr => i_vec_addr,
      i_coeffs_addr => i_coeffs_addr,
      i_out_addr => i_out_addr,
      i_len => i_len,
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
      o_control0a => o_control0a,
      o_control0b => o_control0b,
      o_control1a => o_control1a
    );
END Mayo_sign_mayo_linear_combinat_0_0_arch;
