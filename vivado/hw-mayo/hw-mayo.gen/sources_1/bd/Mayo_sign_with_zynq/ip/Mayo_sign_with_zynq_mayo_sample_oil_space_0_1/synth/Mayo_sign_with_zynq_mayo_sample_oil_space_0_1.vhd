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

-- IP VLNV: xilinx.com:module_ref:mayo_sample_oil_space:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_with_zynq_mayo_sample_oil_space_0_1 IS
  PORT (
    i_clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    i_enable : IN STD_LOGIC;
    o_done : OUT STD_LOGIC;
    i_oil_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mode : IN STD_LOGIC;
    o_trng_en : OUT STD_LOGIC;
    i_trng_valid : IN STD_LOGIC;
    i_trng_data : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    i_mema_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mema_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mema_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mema_en : OUT STD_LOGIC;
    o_mema_rst : OUT STD_LOGIC;
    o_mema_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_controla : OUT STD_LOGIC;
    i_memb_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memb_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memb_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memb_en : OUT STD_LOGIC;
    o_memb_rst : OUT STD_LOGIC;
    o_memb_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_controlb : OUT STD_LOGIC;
    o_trng_sel : OUT STD_LOGIC
  );
END Mayo_sign_with_zynq_mayo_sample_oil_space_0_1;

ARCHITECTURE Mayo_sign_with_zynq_mayo_sample_oil_space_0_1_arch OF Mayo_sign_with_zynq_mayo_sample_oil_space_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_with_zynq_mayo_sample_oil_space_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_sample_oil_space IS
    PORT (
      i_clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      i_enable : IN STD_LOGIC;
      o_done : OUT STD_LOGIC;
      i_oil_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mode : IN STD_LOGIC;
      o_trng_en : OUT STD_LOGIC;
      i_trng_valid : IN STD_LOGIC;
      i_trng_data : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      i_mema_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mema_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mema_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mema_en : OUT STD_LOGIC;
      o_mema_rst : OUT STD_LOGIC;
      o_mema_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_controla : OUT STD_LOGIC;
      i_memb_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memb_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memb_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memb_en : OUT STD_LOGIC;
      o_memb_rst : OUT STD_LOGIC;
      o_memb_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_controlb : OUT STD_LOGIC;
      o_trng_sel : OUT STD_LOGIC
    );
  END COMPONENT mayo_sample_oil_space;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Mayo_sign_with_zynq_mayo_sample_oil_space_0_1_arch: ARCHITECTURE IS "mayo_sample_oil_space,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Mayo_sign_with_zynq_mayo_sample_oil_space_0_1_arch : ARCHITECTURE IS "Mayo_sign_with_zynq_mayo_sample_oil_space_0_1,mayo_sample_oil_space,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Mayo_sign_with_zynq_mayo_sample_oil_space_0_1_arch: ARCHITECTURE IS "Mayo_sign_with_zynq_mayo_sample_oil_space_0_1,mayo_sample_oil_space,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mayo_sample_oil_space,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_with_zynq_mayo_sample_oil_space_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF o_controlb: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_memb_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_memb_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_memb_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_memb_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_memb_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_memb_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_controla: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_mema_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_mema_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_mema_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mema_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_mema_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mema_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_trng_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 o_trng EN";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 o_trng RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_clk: SIGNAL IS "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_with_zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_clk CLK";
BEGIN
  U0 : mayo_sample_oil_space
    PORT MAP (
      i_clk => i_clk,
      rst => rst,
      i_enable => i_enable,
      o_done => o_done,
      i_oil_addr => i_oil_addr,
      i_mode => i_mode,
      o_trng_en => o_trng_en,
      i_trng_valid => i_trng_valid,
      i_trng_data => i_trng_data,
      i_mema_dout => i_mema_dout,
      o_mema_din => o_mema_din,
      o_mema_addr => o_mema_addr,
      o_mema_en => o_mema_en,
      o_mema_rst => o_mema_rst,
      o_mema_we => o_mema_we,
      o_controla => o_controla,
      i_memb_dout => i_memb_dout,
      o_memb_din => o_memb_din,
      o_memb_addr => o_memb_addr,
      o_memb_en => o_memb_en,
      o_memb_rst => o_memb_rst,
      o_memb_we => o_memb_we,
      o_controlb => o_controlb,
      o_trng_sel => o_trng_sel
    );
END Mayo_sign_with_zynq_mayo_sample_oil_space_0_1_arch;
