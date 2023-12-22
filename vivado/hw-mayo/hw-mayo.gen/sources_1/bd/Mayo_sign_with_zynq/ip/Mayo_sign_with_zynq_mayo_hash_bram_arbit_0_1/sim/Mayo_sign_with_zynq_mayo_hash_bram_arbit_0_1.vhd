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

-- IP VLNV: xilinx.com:module_ref:mayo_hash_bram_arbiter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1 IS
  PORT (
    bram_sel : IN STD_LOGIC;
    hash_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    hash_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    hash_en : IN STD_LOGIC;
    hash_control : IN STD_LOGIC;
    hash_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    hash_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM0_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM0_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM0_en : OUT STD_LOGIC;
    BRAM0_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM0_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM0_rst : OUT STD_LOGIC;
    BRAM0_control : OUT STD_LOGIC;
    BRAM1_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM1_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM1_en : OUT STD_LOGIC;
    BRAM1_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM1_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM1_rst : OUT STD_LOGIC;
    BRAM1_control : OUT STD_LOGIC
  );
END Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1;

ARCHITECTURE Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1_arch OF Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_hash_bram_arbiter IS
    PORT (
      bram_sel : IN STD_LOGIC;
      hash_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      hash_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      hash_en : IN STD_LOGIC;
      hash_control : IN STD_LOGIC;
      hash_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      hash_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM0_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM0_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM0_en : OUT STD_LOGIC;
      BRAM0_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM0_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM0_rst : OUT STD_LOGIC;
      BRAM0_control : OUT STD_LOGIC;
      BRAM1_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM1_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM1_en : OUT STD_LOGIC;
      BRAM1_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM1_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM1_rst : OUT STD_LOGIC;
      BRAM1_control : OUT STD_LOGIC
    );
  END COMPONENT mayo_hash_bram_arbiter;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF BRAM1_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashBig CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM1_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashBig RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM1_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashBig DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM1_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashBig WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM1_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashBig EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM1_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashBig ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM1_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashBig DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM0_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashSmall CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM0_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashSmall RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM0_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashSmall DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM0_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashSmall WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM0_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashSmall EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM0_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashSmall ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM0_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_HashSmall DIN";
  ATTRIBUTE X_INTERFACE_INFO OF hash_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 hash DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF hash_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 hash WE";
  ATTRIBUTE X_INTERFACE_INFO OF hash_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 hash EN";
  ATTRIBUTE X_INTERFACE_INFO OF hash_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 hash ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF hash_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 hash DIN";
BEGIN
  U0 : mayo_hash_bram_arbiter
    PORT MAP (
      bram_sel => bram_sel,
      hash_din => hash_din,
      hash_addr => hash_addr,
      hash_en => hash_en,
      hash_control => hash_control,
      hash_we => hash_we,
      hash_dout => hash_dout,
      BRAM0_din => BRAM0_din,
      BRAM0_addr => BRAM0_addr,
      BRAM0_en => BRAM0_en,
      BRAM0_we => BRAM0_we,
      BRAM0_dout => BRAM0_dout,
      BRAM0_rst => BRAM0_rst,
      BRAM0_control => BRAM0_control,
      BRAM1_din => BRAM1_din,
      BRAM1_addr => BRAM1_addr,
      BRAM1_en => BRAM1_en,
      BRAM1_we => BRAM1_we,
      BRAM1_dout => BRAM1_dout,
      BRAM1_rst => BRAM1_rst,
      BRAM1_control => BRAM1_control
    );
END Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1_arch;
