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

-- IP VLNV: xilinx.com:module_ref:mayo_add_vectors_arbiter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1 IS
  PORT (
    bram_sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    o_mema_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mema_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mema_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mema_en : IN STD_LOGIC;
    i_mema_rst : IN STD_LOGIC;
    i_mema_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_controla : IN STD_LOGIC;
    o_memb_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memb_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memb_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memb_en : IN STD_LOGIC;
    i_memb_rst : IN STD_LOGIC;
    i_memb_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_controlb : IN STD_LOGIC;
    o_memc_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memc_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memc_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memc_en : IN STD_LOGIC;
    i_memc_rst : IN STD_LOGIC;
    i_memc_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_controlc : IN STD_LOGIC;
    i_BRAM0A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0A_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0A_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0A_en : OUT STD_LOGIC;
    o_BRAM0A_rst : OUT STD_LOGIC;
    o_BRAM0A_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM0A_control : OUT STD_LOGIC;
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
END Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1;

ARCHITECTURE Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1_arch OF Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_add_vectors_arbiter IS
    PORT (
      bram_sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      o_mema_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mema_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mema_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mema_en : IN STD_LOGIC;
      i_mema_rst : IN STD_LOGIC;
      i_mema_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_controla : IN STD_LOGIC;
      o_memb_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memb_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memb_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memb_en : IN STD_LOGIC;
      i_memb_rst : IN STD_LOGIC;
      i_memb_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_controlb : IN STD_LOGIC;
      o_memc_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memc_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memc_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memc_en : IN STD_LOGIC;
      i_memc_rst : IN STD_LOGIC;
      i_memc_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_controlc : IN STD_LOGIC;
      i_BRAM0A_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0A_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0A_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0A_en : OUT STD_LOGIC;
      o_BRAM0A_rst : OUT STD_LOGIC;
      o_BRAM0A_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM0A_control : OUT STD_LOGIC;
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
  END COMPONENT mayo_add_vectors_arbiter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1_arch: ARCHITECTURE IS "mayo_add_vectors_arbiter,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1_arch : ARCHITECTURE IS "Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1,mayo_add_vectors_arbiter,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1_arch: ARCHITECTURE IS "Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1,mayo_add_vectors_arbiter,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mayo_add_vectors_arbiter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2B_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM2B_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM2A_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM2A_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1A_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM1A_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0A_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_BRAM0A_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF i_controlc: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF i_memc_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC WE";
  ATTRIBUTE X_INTERFACE_INFO OF i_memc_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC RST";
  ATTRIBUTE X_INTERFACE_INFO OF i_memc_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC EN";
  ATTRIBUTE X_INTERFACE_INFO OF i_memc_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF i_memc_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC DIN";
  ATTRIBUTE X_INTERFACE_INFO OF o_memc_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF i_controlb: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF i_memb_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB WE";
  ATTRIBUTE X_INTERFACE_INFO OF i_memb_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB RST";
  ATTRIBUTE X_INTERFACE_INFO OF i_memb_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB EN";
  ATTRIBUTE X_INTERFACE_INFO OF i_memb_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF i_memb_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB DIN";
  ATTRIBUTE X_INTERFACE_INFO OF o_memb_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF i_controla: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF i_mema_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA WE";
  ATTRIBUTE X_INTERFACE_INFO OF i_mema_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA RST";
  ATTRIBUTE X_INTERFACE_INFO OF i_mema_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA EN";
  ATTRIBUTE X_INTERFACE_INFO OF i_mema_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF i_mema_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF o_mema_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA DOUT";
BEGIN
  U0 : mayo_add_vectors_arbiter
    PORT MAP (
      bram_sel => bram_sel,
      o_mema_dout => o_mema_dout,
      i_mema_din => i_mema_din,
      i_mema_addr => i_mema_addr,
      i_mema_en => i_mema_en,
      i_mema_rst => i_mema_rst,
      i_mema_we => i_mema_we,
      i_controla => i_controla,
      o_memb_dout => o_memb_dout,
      i_memb_din => i_memb_din,
      i_memb_addr => i_memb_addr,
      i_memb_en => i_memb_en,
      i_memb_rst => i_memb_rst,
      i_memb_we => i_memb_we,
      i_controlb => i_controlb,
      o_memc_dout => o_memc_dout,
      i_memc_din => i_memc_din,
      i_memc_addr => i_memc_addr,
      i_memc_en => i_memc_en,
      i_memc_rst => i_memc_rst,
      i_memc_we => i_memc_we,
      i_controlc => i_controlc,
      i_BRAM0A_dout => i_BRAM0A_dout,
      o_BRAM0A_din => o_BRAM0A_din,
      o_BRAM0A_addr => o_BRAM0A_addr,
      o_BRAM0A_en => o_BRAM0A_en,
      o_BRAM0A_rst => o_BRAM0A_rst,
      o_BRAM0A_we => o_BRAM0A_we,
      o_BRAM0A_control => o_BRAM0A_control,
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
END Mayo_sign_with_zynq_mayo_add_vectors_arb_0_1_arch;
