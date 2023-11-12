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

-- IP VLNV: xilinx.com:module_ref:mayo_lin_comb_arbiter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_mayo_lin_comb_arbiter_0_0 IS
  PORT (
    bram_sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    o_mem0a_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem0a_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem0a_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem0a_en : IN STD_LOGIC;
    i_mem0a_rst : IN STD_LOGIC;
    i_mem0a_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_control0a : IN STD_LOGIC;
    o_mem0b_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem0b_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem0b_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem0b_en : IN STD_LOGIC;
    i_mem0b_rst : IN STD_LOGIC;
    i_mem0b_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_control0b : IN STD_LOGIC;
    o_mem1a_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem1a_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem1a_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mem1a_en : IN STD_LOGIC;
    i_mem1a_rst : IN STD_LOGIC;
    i_mem1a_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_control1a : IN STD_LOGIC;
    i_BRAM0A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0A_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0A_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0A_en : OUT STD_LOGIC;
    o_BRAM0A_rst : OUT STD_LOGIC;
    o_BRAM0A_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM0A_control : OUT STD_LOGIC;
    i_BRAM0B_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0B_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0B_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0B_en : OUT STD_LOGIC;
    o_BRAM0B_rst : OUT STD_LOGIC;
    o_BRAM0B_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM0B_control : OUT STD_LOGIC;
    i_BRAM1A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM1A_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM1A_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM1A_en : OUT STD_LOGIC;
    o_BRAM1A_rst : OUT STD_LOGIC;
    o_BRAM1A_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM1A_control : OUT STD_LOGIC;
    i_BRAM2A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM2A_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM2A_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM2A_en : OUT STD_LOGIC;
    o_BRAM2A_rst : OUT STD_LOGIC;
    o_BRAM2A_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM2A_control : OUT STD_LOGIC;
    i_BRAM2B_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM2B_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM2B_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM2B_en : OUT STD_LOGIC;
    o_BRAM2B_rst : OUT STD_LOGIC;
    o_BRAM2B_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM2B_control : OUT STD_LOGIC
  );
END Mayo_sign_mayo_lin_comb_arbiter_0_0;

ARCHITECTURE Mayo_sign_mayo_lin_comb_arbiter_0_0_arch OF Mayo_sign_mayo_lin_comb_arbiter_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_mayo_lin_comb_arbiter_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_lin_comb_arbiter IS
    PORT (
      bram_sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      o_mem0a_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem0a_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem0a_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem0a_en : IN STD_LOGIC;
      i_mem0a_rst : IN STD_LOGIC;
      i_mem0a_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_control0a : IN STD_LOGIC;
      o_mem0b_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem0b_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem0b_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem0b_en : IN STD_LOGIC;
      i_mem0b_rst : IN STD_LOGIC;
      i_mem0b_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_control0b : IN STD_LOGIC;
      o_mem1a_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem1a_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem1a_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mem1a_en : IN STD_LOGIC;
      i_mem1a_rst : IN STD_LOGIC;
      i_mem1a_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_control1a : IN STD_LOGIC;
      i_BRAM0A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0A_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0A_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0A_en : OUT STD_LOGIC;
      o_BRAM0A_rst : OUT STD_LOGIC;
      o_BRAM0A_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM0A_control : OUT STD_LOGIC;
      i_BRAM0B_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0B_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0B_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0B_en : OUT STD_LOGIC;
      o_BRAM0B_rst : OUT STD_LOGIC;
      o_BRAM0B_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM0B_control : OUT STD_LOGIC;
      i_BRAM1A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM1A_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM1A_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM1A_en : OUT STD_LOGIC;
      o_BRAM1A_rst : OUT STD_LOGIC;
      o_BRAM1A_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM1A_control : OUT STD_LOGIC;
      i_BRAM2A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM2A_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM2A_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM2A_en : OUT STD_LOGIC;
      o_BRAM2A_rst : OUT STD_LOGIC;
      o_BRAM2A_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM2A_control : OUT STD_LOGIC;
      i_BRAM2B_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM2B_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM2B_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM2B_en : OUT STD_LOGIC;
      o_BRAM2B_rst : OUT STD_LOGIC;
      o_BRAM2B_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM2B_control : OUT STD_LOGIC
    );
  END COMPONENT mayo_lin_comb_arbiter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Mayo_sign_mayo_lin_comb_arbiter_0_0_arch: ARCHITECTURE IS "mayo_lin_comb_arbiter,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Mayo_sign_mayo_lin_comb_arbiter_0_0_arch : ARCHITECTURE IS "Mayo_sign_mayo_lin_comb_arbiter_0_0,mayo_lin_comb_arbiter,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Mayo_sign_mayo_lin_comb_arbiter_0_0_arch: ARCHITECTURE IS "Mayo_sign_mayo_lin_comb_arbiter_0_0,mayo_lin_comb_arbiter,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mayo_lin_comb_arbiter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_mayo_lin_comb_arbiter_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2b CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2b WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2b RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2b EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2b ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2b DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM2B_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2b DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2a WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2a RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2a EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM2A_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb2a DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb1a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb1a WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb1a RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb1a EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb1a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb1a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM1A_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb1a DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0B_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0b CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0B_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0b WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0B_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0b RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0B_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0b EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0B_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0b ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0B_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0b DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM0B_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0b DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0a WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0a RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0a EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM0A_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_LinArb0a DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF i_control1a: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb1a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem1a_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb1a WE";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem1a_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb1a RST";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem1a_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb1a EN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem1a_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb1a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem1a_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb1a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem1a_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb1a DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF i_control0b: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0b CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0b_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0b WE";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0b_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0b RST";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0b_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0b EN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0b_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0b ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0b_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0b DIN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0b_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0b DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF i_control0a: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0a CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0a_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0a WE";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0a_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0a RST";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0a_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0a EN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0a_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0a ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF i_mem0a_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0a DIN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mem0a_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_LinArb0a DOUT";
BEGIN
  U0 : mayo_lin_comb_arbiter
    PORT MAP (
      bram_sel => bram_sel,
      o_mem0a_dout => o_mem0a_dout,
      i_mem0a_din => i_mem0a_din,
      i_mem0a_addr => i_mem0a_addr,
      i_mem0a_en => i_mem0a_en,
      i_mem0a_rst => i_mem0a_rst,
      i_mem0a_we => i_mem0a_we,
      i_control0a => i_control0a,
      o_mem0b_dout => o_mem0b_dout,
      i_mem0b_din => i_mem0b_din,
      i_mem0b_addr => i_mem0b_addr,
      i_mem0b_en => i_mem0b_en,
      i_mem0b_rst => i_mem0b_rst,
      i_mem0b_we => i_mem0b_we,
      i_control0b => i_control0b,
      o_mem1a_dout => o_mem1a_dout,
      i_mem1a_din => i_mem1a_din,
      i_mem1a_addr => i_mem1a_addr,
      i_mem1a_en => i_mem1a_en,
      i_mem1a_rst => i_mem1a_rst,
      i_mem1a_we => i_mem1a_we,
      i_control1a => i_control1a,
      i_BRAM0A_dout => i_BRAM0A_dout,
      o_BRAM0A_din => o_BRAM0A_din,
      o_BRAM0A_addr => o_BRAM0A_addr,
      o_BRAM0A_en => o_BRAM0A_en,
      o_BRAM0A_rst => o_BRAM0A_rst,
      o_BRAM0A_we => o_BRAM0A_we,
      o_BRAM0A_control => o_BRAM0A_control,
      i_BRAM0B_dout => i_BRAM0B_dout,
      o_BRAM0B_din => o_BRAM0B_din,
      o_BRAM0B_addr => o_BRAM0B_addr,
      o_BRAM0B_en => o_BRAM0B_en,
      o_BRAM0B_rst => o_BRAM0B_rst,
      o_BRAM0B_we => o_BRAM0B_we,
      o_BRAM0B_control => o_BRAM0B_control,
      i_BRAM1A_dout => i_BRAM1A_dout,
      o_BRAM1A_din => o_BRAM1A_din,
      o_BRAM1A_addr => o_BRAM1A_addr,
      o_BRAM1A_en => o_BRAM1A_en,
      o_BRAM1A_rst => o_BRAM1A_rst,
      o_BRAM1A_we => o_BRAM1A_we,
      o_BRAM1A_control => o_BRAM1A_control,
      i_BRAM2A_dout => i_BRAM2A_dout,
      o_BRAM2A_din => o_BRAM2A_din,
      o_BRAM2A_addr => o_BRAM2A_addr,
      o_BRAM2A_en => o_BRAM2A_en,
      o_BRAM2A_rst => o_BRAM2A_rst,
      o_BRAM2A_we => o_BRAM2A_we,
      o_BRAM2A_control => o_BRAM2A_control,
      i_BRAM2B_dout => i_BRAM2B_dout,
      o_BRAM2B_din => o_BRAM2B_din,
      o_BRAM2B_addr => o_BRAM2B_addr,
      o_BRAM2B_en => o_BRAM2B_en,
      o_BRAM2B_rst => o_BRAM2B_rst,
      o_BRAM2B_we => o_BRAM2B_we,
      o_BRAM2B_control => o_BRAM2B_control
    );
END Mayo_sign_mayo_lin_comb_arbiter_0_0_arch;
