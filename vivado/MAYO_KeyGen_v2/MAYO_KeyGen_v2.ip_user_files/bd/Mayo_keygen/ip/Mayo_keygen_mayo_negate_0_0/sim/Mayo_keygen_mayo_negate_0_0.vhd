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

-- IP VLNV: xilinx.com:module_ref:mayo_negate:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_keygen_mayo_negate_0_0 IS
  PORT (
    i_clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    i_enable : IN STD_LOGIC;
    i_len : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_doutb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_addrb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_dinb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_enb : OUT STD_LOGIC;
    o_rstb : OUT STD_LOGIC;
    o_web : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_done : OUT STD_LOGIC;
    o_control : OUT STD_LOGIC
  );
END Mayo_keygen_mayo_negate_0_0;

ARCHITECTURE Mayo_keygen_mayo_negate_0_0_arch OF Mayo_keygen_mayo_negate_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_keygen_mayo_negate_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_negate IS
    GENERIC (
      BRAM_SIZE : INTEGER
    );
    PORT (
      i_clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      i_enable : IN STD_LOGIC;
      i_len : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_doutb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_addrb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_dinb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_enb : OUT STD_LOGIC;
      o_rstb : OUT STD_LOGIC;
      o_web : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_done : OUT STD_LOGIC;
      o_control : OUT STD_LOGIC
    );
  END COMPONENT mayo_negate;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_keygen_mayo_negate_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_clk: SIGNAL IS "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_keygen_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_clk CLK";
BEGIN
  U0 : mayo_negate
    GENERIC MAP (
      BRAM_SIZE => 32
    )
    PORT MAP (
      i_clk => i_clk,
      rst => rst,
      i_enable => i_enable,
      i_len => i_len,
      i_adr => i_adr,
      i_doutb => i_doutb,
      o_addrb => o_addrb,
      o_dinb => o_dinb,
      o_enb => o_enb,
      o_rstb => o_rstb,
      o_web => o_web,
      o_done => o_done,
      o_control => o_control
    );
END Mayo_keygen_mayo_negate_0_0_arch;
