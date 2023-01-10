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

-- IP VLNV: xilinx.com:module_ref:mayo_add_vectors:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_keygen_mayo_add_vectors_0_0 IS
  PORT (
    i_clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    i_enable : IN STD_LOGIC;
    i_v1_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_v2_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_out_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_bram_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_done : OUT STD_LOGIC;
    i_mema_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mema_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mema_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_mema_en : OUT STD_LOGIC;
    o_mema_rst : OUT STD_LOGIC;
    o_mema_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_memb_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memb_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memb_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memb_en : OUT STD_LOGIC;
    o_memb_rst : OUT STD_LOGIC;
    o_memb_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_memc_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memc_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memc_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_memc_en : OUT STD_LOGIC;
    o_memc_rst : OUT STD_LOGIC;
    o_memc_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_controla : OUT STD_LOGIC;
    o_controlb : OUT STD_LOGIC;
    o_controlc : OUT STD_LOGIC
  );
END Mayo_keygen_mayo_add_vectors_0_0;

ARCHITECTURE Mayo_keygen_mayo_add_vectors_0_0_arch OF Mayo_keygen_mayo_add_vectors_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_keygen_mayo_add_vectors_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_add_vectors IS
    PORT (
      i_clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      i_enable : IN STD_LOGIC;
      i_v1_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_v2_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_out_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_bram_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_done : OUT STD_LOGIC;
      i_mema_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mema_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mema_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_mema_en : OUT STD_LOGIC;
      o_mema_rst : OUT STD_LOGIC;
      o_mema_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_memb_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memb_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memb_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memb_en : OUT STD_LOGIC;
      o_memb_rst : OUT STD_LOGIC;
      o_memb_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_memc_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memc_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memc_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_memc_en : OUT STD_LOGIC;
      o_memc_rst : OUT STD_LOGIC;
      o_memc_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_controla : OUT STD_LOGIC;
      o_controlb : OUT STD_LOGIC;
      o_controlc : OUT STD_LOGIC
    );
  END COMPONENT mayo_add_vectors;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_keygen_mayo_add_vectors_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_memc_rst: SIGNAL IS "XIL_INTERFACENAME o_memc_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_memc_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 o_memc_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_memb_rst: SIGNAL IS "XIL_INTERFACENAME o_memb_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_memb_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 o_memb_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_mema_rst: SIGNAL IS "XIL_INTERFACENAME o_mema_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_mema_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 o_mema_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_clk: SIGNAL IS "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_keygen_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_clk CLK";
BEGIN
  U0 : mayo_add_vectors
    PORT MAP (
      i_clk => i_clk,
      rst => rst,
      i_enable => i_enable,
      i_v1_addr => i_v1_addr,
      i_v2_addr => i_v2_addr,
      i_out_addr => i_out_addr,
      i_bram_sel => i_bram_sel,
      o_done => o_done,
      i_mema_dout => i_mema_dout,
      o_mema_din => o_mema_din,
      o_mema_addr => o_mema_addr,
      o_mema_en => o_mema_en,
      o_mema_rst => o_mema_rst,
      o_mema_we => o_mema_we,
      i_memb_dout => i_memb_dout,
      o_memb_din => o_memb_din,
      o_memb_addr => o_memb_addr,
      o_memb_en => o_memb_en,
      o_memb_rst => o_memb_rst,
      o_memb_we => o_memb_we,
      i_memc_dout => i_memc_dout,
      o_memc_din => o_memc_din,
      o_memc_addr => o_memc_addr,
      o_memc_en => o_memc_en,
      o_memc_rst => o_memc_rst,
      o_memc_we => o_memc_we,
      o_controla => o_controla,
      o_controlb => o_controlb,
      o_controlc => o_controlc
    );
END Mayo_keygen_mayo_add_vectors_0_0_arch;
