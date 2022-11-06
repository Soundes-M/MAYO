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

-- IP VLNV: xilinx.com:module_ref:mayo_bram_arbiter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_keygen_no_zynq_arbit_brama0_0 IS
  PORT (
    rst : IN STD_LOGIC;
    BRAM_add_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_add_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_add_en : IN STD_LOGIC;
    BRAM_add_rst : IN STD_LOGIC;
    BRAM_add_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_add_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_lin_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_lin_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_lin_en : IN STD_LOGIC;
    BRAM_lin_rst : IN STD_LOGIC;
    BRAM_lin_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_lin_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_neg_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_neg_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_neg_en : IN STD_LOGIC;
    BRAM_neg_rst : IN STD_LOGIC;
    BRAM_neg_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_neg_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_en : IN STD_LOGIC;
    BRAM_red_rst : IN STD_LOGIC;
    BRAM_red_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_red_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_key_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_key_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_key_en : IN STD_LOGIC;
    BRAM_key_rst : IN STD_LOGIC;
    BRAM_key_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_key_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_en : IN STD_LOGIC;
    BRAM_sam_rst : IN STD_LOGIC;
    BRAM_sam_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_sam_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_hash_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_hash_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_hash_en : IN STD_LOGIC;
    BRAM_hash_rst : IN STD_LOGIC;
    BRAM_hash_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_hash_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_en : OUT STD_LOGIC;
    BRAM_rst : OUT STD_LOGIC;
    BRAM_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    add_control : IN STD_LOGIC;
    lin_control : IN STD_LOGIC;
    neg_control : IN STD_LOGIC;
    red_control : IN STD_LOGIC;
    sam_control : IN STD_LOGIC;
    hash_control : IN STD_LOGIC;
    bram_control : IN STD_LOGIC
  );
END Mayo_keygen_no_zynq_arbit_brama0_0;

ARCHITECTURE Mayo_keygen_no_zynq_arbit_brama0_0_arch OF Mayo_keygen_no_zynq_arbit_brama0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_keygen_no_zynq_arbit_brama0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_bram_arbiter IS
    PORT (
      rst : IN STD_LOGIC;
      BRAM_add_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_add_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_add_en : IN STD_LOGIC;
      BRAM_add_rst : IN STD_LOGIC;
      BRAM_add_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_add_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_lin_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_lin_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_lin_en : IN STD_LOGIC;
      BRAM_lin_rst : IN STD_LOGIC;
      BRAM_lin_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_lin_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_neg_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_neg_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_neg_en : IN STD_LOGIC;
      BRAM_neg_rst : IN STD_LOGIC;
      BRAM_neg_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_neg_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_en : IN STD_LOGIC;
      BRAM_red_rst : IN STD_LOGIC;
      BRAM_red_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_red_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_key_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_key_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_key_en : IN STD_LOGIC;
      BRAM_key_rst : IN STD_LOGIC;
      BRAM_key_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_key_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_en : IN STD_LOGIC;
      BRAM_sam_rst : IN STD_LOGIC;
      BRAM_sam_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_sam_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_hash_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_hash_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_hash_en : IN STD_LOGIC;
      BRAM_hash_rst : IN STD_LOGIC;
      BRAM_hash_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_hash_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_en : OUT STD_LOGIC;
      BRAM_rst : OUT STD_LOGIC;
      BRAM_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      add_control : IN STD_LOGIC;
      lin_control : IN STD_LOGIC;
      neg_control : IN STD_LOGIC;
      red_control : IN STD_LOGIC;
      sam_control : IN STD_LOGIC;
      hash_control : IN STD_LOGIC;
      bram_control : IN STD_LOGIC
    );
  END COMPONENT mayo_bram_arbiter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Mayo_keygen_no_zynq_arbit_brama0_0_arch: ARCHITECTURE IS "mayo_bram_arbiter,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Mayo_keygen_no_zynq_arbit_brama0_0_arch : ARCHITECTURE IS "Mayo_keygen_no_zynq_arbit_brama0_0,mayo_bram_arbiter,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Mayo_keygen_no_zynq_arbit_brama0_0_arch: ARCHITECTURE IS "Mayo_keygen_no_zynq_arbit_brama0_0,mayo_bram_arbiter,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mayo_bram_arbiter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_keygen_no_zynq_arbit_brama0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF BRAM_rst: SIGNAL IS "XIL_INTERFACENAME BRAM_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 BRAM_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF BRAM_hash_rst: SIGNAL IS "XIL_INTERFACENAME BRAM_hash_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_hash_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 BRAM_hash_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF BRAM_sam_rst: SIGNAL IS "XIL_INTERFACENAME BRAM_sam_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 BRAM_sam_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF BRAM_key_rst: SIGNAL IS "XIL_INTERFACENAME BRAM_key_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_key_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 BRAM_key_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF BRAM_red_rst: SIGNAL IS "XIL_INTERFACENAME BRAM_red_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 BRAM_red_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF BRAM_neg_rst: SIGNAL IS "XIL_INTERFACENAME BRAM_neg_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_neg_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 BRAM_neg_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF BRAM_lin_rst: SIGNAL IS "XIL_INTERFACENAME BRAM_lin_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_lin_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 BRAM_lin_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF BRAM_add_rst: SIGNAL IS "XIL_INTERFACENAME BRAM_add_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 BRAM_add_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : mayo_bram_arbiter
    PORT MAP (
      rst => rst,
      BRAM_add_din => BRAM_add_din,
      BRAM_add_addr => BRAM_add_addr,
      BRAM_add_en => BRAM_add_en,
      BRAM_add_rst => BRAM_add_rst,
      BRAM_add_we => BRAM_add_we,
      BRAM_add_dout => BRAM_add_dout,
      BRAM_lin_din => BRAM_lin_din,
      BRAM_lin_addr => BRAM_lin_addr,
      BRAM_lin_en => BRAM_lin_en,
      BRAM_lin_rst => BRAM_lin_rst,
      BRAM_lin_we => BRAM_lin_we,
      BRAM_lin_dout => BRAM_lin_dout,
      BRAM_neg_din => BRAM_neg_din,
      BRAM_neg_addr => BRAM_neg_addr,
      BRAM_neg_en => BRAM_neg_en,
      BRAM_neg_rst => BRAM_neg_rst,
      BRAM_neg_we => BRAM_neg_we,
      BRAM_neg_dout => BRAM_neg_dout,
      BRAM_red_din => BRAM_red_din,
      BRAM_red_addr => BRAM_red_addr,
      BRAM_red_en => BRAM_red_en,
      BRAM_red_rst => BRAM_red_rst,
      BRAM_red_we => BRAM_red_we,
      BRAM_red_dout => BRAM_red_dout,
      BRAM_key_din => BRAM_key_din,
      BRAM_key_addr => BRAM_key_addr,
      BRAM_key_en => BRAM_key_en,
      BRAM_key_rst => BRAM_key_rst,
      BRAM_key_we => BRAM_key_we,
      BRAM_key_dout => BRAM_key_dout,
      BRAM_sam_din => BRAM_sam_din,
      BRAM_sam_addr => BRAM_sam_addr,
      BRAM_sam_en => BRAM_sam_en,
      BRAM_sam_rst => BRAM_sam_rst,
      BRAM_sam_we => BRAM_sam_we,
      BRAM_sam_dout => BRAM_sam_dout,
      BRAM_hash_din => BRAM_hash_din,
      BRAM_hash_addr => BRAM_hash_addr,
      BRAM_hash_en => BRAM_hash_en,
      BRAM_hash_rst => BRAM_hash_rst,
      BRAM_hash_we => BRAM_hash_we,
      BRAM_hash_dout => BRAM_hash_dout,
      BRAM_din => BRAM_din,
      BRAM_addr => BRAM_addr,
      BRAM_en => BRAM_en,
      BRAM_rst => BRAM_rst,
      BRAM_we => BRAM_we,
      BRAM_dout => BRAM_dout,
      add_control => add_control,
      lin_control => lin_control,
      neg_control => neg_control,
      red_control => red_control,
      sam_control => sam_control,
      hash_control => hash_control,
      bram_control => bram_control
    );
END Mayo_keygen_no_zynq_arbit_brama0_0_arch;
