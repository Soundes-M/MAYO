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

-- IP VLNV: xilinx.com:module_ref:mayo_hash_arbiter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 IS
  PORT (
    rst : IN STD_LOGIC;
    o_en : OUT STD_LOGIC;
    o_mlen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_olen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_write_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_read_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_done : IN STD_LOGIC;
    i_dyn_done : IN STD_LOGIC;
    i_key_en : IN STD_LOGIC;
    i_key_mlen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_key_olen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_key_write_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_key_read_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_key_done : OUT STD_LOGIC;
    o_key_dyn_done : OUT STD_LOGIC;
    i_sam_en : IN STD_LOGIC;
    i_sam_mlen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_sam_olen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_sam_write_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_sam_read_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_sam_done : OUT STD_LOGIC;
    o_sam_dyn_done : OUT STD_LOGIC
  );
END Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0;

ARCHITECTURE Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_arch OF Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_hash_arbiter IS
    PORT (
      rst : IN STD_LOGIC;
      o_en : OUT STD_LOGIC;
      o_mlen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_olen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_write_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_read_adr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_done : IN STD_LOGIC;
      i_dyn_done : IN STD_LOGIC;
      i_key_en : IN STD_LOGIC;
      i_key_mlen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_key_olen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_key_write_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_key_read_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_key_done : OUT STD_LOGIC;
      o_key_dyn_done : OUT STD_LOGIC;
      i_sam_en : IN STD_LOGIC;
      i_sam_mlen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_sam_olen : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_sam_write_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_sam_read_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_sam_done : OUT STD_LOGIC;
      o_sam_dyn_done : OUT STD_LOGIC
    );
  END COMPONENT mayo_hash_arbiter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_arch: ARCHITECTURE IS "mayo_hash_arbiter,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_arch : ARCHITECTURE IS "Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0,mayo_hash_arbiter,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_arch: ARCHITECTURE IS "Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0,mayo_hash_arbiter,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mayo_hash_arbiter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : mayo_hash_arbiter
    PORT MAP (
      rst => rst,
      o_en => o_en,
      o_mlen => o_mlen,
      o_olen => o_olen,
      o_write_adr => o_write_adr,
      o_read_adr => o_read_adr,
      i_done => i_done,
      i_dyn_done => i_dyn_done,
      i_key_en => i_key_en,
      i_key_mlen => i_key_mlen,
      i_key_olen => i_key_olen,
      i_key_write_adr => i_key_write_adr,
      i_key_read_adr => i_key_read_adr,
      o_key_done => o_key_done,
      o_key_dyn_done => o_key_dyn_done,
      i_sam_en => i_sam_en,
      i_sam_mlen => i_sam_mlen,
      i_sam_olen => i_sam_olen,
      i_sam_write_adr => i_sam_write_adr,
      i_sam_read_adr => i_sam_read_adr,
      o_sam_done => o_sam_done,
      o_sam_dyn_done => o_sam_dyn_done
    );
END Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_arch;
