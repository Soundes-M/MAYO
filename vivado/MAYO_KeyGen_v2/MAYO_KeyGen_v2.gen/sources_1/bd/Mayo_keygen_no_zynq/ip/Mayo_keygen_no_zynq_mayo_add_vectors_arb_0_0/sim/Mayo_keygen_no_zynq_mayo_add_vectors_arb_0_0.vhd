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

-- IP VLNV: xilinx.com:module_ref:mayo_add_vectors_arbiter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 IS
  PORT (
    bram_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_mema_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mema_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mema_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_mema_en : IN STD_LOGIC;
    i_mema_rst : IN STD_LOGIC;
    i_mema_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_memb_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memb_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memb_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memb_en : IN STD_LOGIC;
    i_memb_rst : IN STD_LOGIC;
    i_memb_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_memc_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memc_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memc_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_memc_en : IN STD_LOGIC;
    i_memc_rst : IN STD_LOGIC;
    i_memc_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    i_controla : IN STD_LOGIC;
    i_controlb : IN STD_LOGIC;
    i_controlc : IN STD_LOGIC;
    i_BRAM0_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM0_en : OUT STD_LOGIC;
    o_BRAM0_rst : OUT STD_LOGIC;
    o_BRAM0_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM0_control : OUT STD_LOGIC;
    i_BRAM1_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM1_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM1_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM1_en : OUT STD_LOGIC;
    o_BRAM1_rst : OUT STD_LOGIC;
    o_BRAM1_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM1_control : OUT STD_LOGIC
  );
END Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0;

ARCHITECTURE Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0_arch OF Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_add_vectors_arbiter IS
    PORT (
      bram_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_mema_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mema_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mema_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_mema_en : IN STD_LOGIC;
      i_mema_rst : IN STD_LOGIC;
      i_mema_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_memb_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memb_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memb_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memb_en : IN STD_LOGIC;
      i_memb_rst : IN STD_LOGIC;
      i_memb_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_memc_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memc_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memc_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_memc_en : IN STD_LOGIC;
      i_memc_rst : IN STD_LOGIC;
      i_memc_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      i_controla : IN STD_LOGIC;
      i_controlb : IN STD_LOGIC;
      i_controlc : IN STD_LOGIC;
      i_BRAM0_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM0_en : OUT STD_LOGIC;
      o_BRAM0_rst : OUT STD_LOGIC;
      o_BRAM0_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM0_control : OUT STD_LOGIC;
      i_BRAM1_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM1_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM1_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM1_en : OUT STD_LOGIC;
      o_BRAM1_rst : OUT STD_LOGIC;
      o_BRAM1_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM1_control : OUT STD_LOGIC
    );
  END COMPONENT mayo_add_vectors_arbiter;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_BRAM1_rst: SIGNAL IS "XIL_INTERFACENAME o_BRAM1_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM1_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 o_BRAM1_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_BRAM0_rst: SIGNAL IS "XIL_INTERFACENAME o_BRAM0_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_BRAM0_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 o_BRAM0_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_memc_rst: SIGNAL IS "XIL_INTERFACENAME i_memc_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_memc_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 i_memc_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_memb_rst: SIGNAL IS "XIL_INTERFACENAME i_memb_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_memb_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 i_memb_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_mema_rst: SIGNAL IS "XIL_INTERFACENAME i_mema_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_mema_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 i_mema_rst RST";
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
      o_memb_dout => o_memb_dout,
      i_memb_din => i_memb_din,
      i_memb_addr => i_memb_addr,
      i_memb_en => i_memb_en,
      i_memb_rst => i_memb_rst,
      i_memb_we => i_memb_we,
      o_memc_dout => o_memc_dout,
      i_memc_din => i_memc_din,
      i_memc_addr => i_memc_addr,
      i_memc_en => i_memc_en,
      i_memc_rst => i_memc_rst,
      i_memc_we => i_memc_we,
      i_controla => i_controla,
      i_controlb => i_controlb,
      i_controlc => i_controlc,
      i_BRAM0_dout => i_BRAM0_dout,
      o_BRAM0_din => o_BRAM0_din,
      o_BRAM0_addr => o_BRAM0_addr,
      o_BRAM0_en => o_BRAM0_en,
      o_BRAM0_rst => o_BRAM0_rst,
      o_BRAM0_we => o_BRAM0_we,
      o_BRAM0_control => o_BRAM0_control,
      i_BRAM1_dout => i_BRAM1_dout,
      o_BRAM1_din => o_BRAM1_din,
      o_BRAM1_addr => o_BRAM1_addr,
      o_BRAM1_en => o_BRAM1_en,
      o_BRAM1_rst => o_BRAM1_rst,
      o_BRAM1_we => o_BRAM1_we,
      o_BRAM1_control => o_BRAM1_control
    );
END Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0_arch;
