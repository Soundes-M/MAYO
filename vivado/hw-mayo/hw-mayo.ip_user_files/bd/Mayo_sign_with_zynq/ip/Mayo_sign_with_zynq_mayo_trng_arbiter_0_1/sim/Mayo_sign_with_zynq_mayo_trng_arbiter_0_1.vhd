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

-- IP VLNV: xilinx.com:module_ref:mayo_trng_arbiter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_with_zynq_mayo_trng_arbiter_0_1 IS
  PORT (
    i_trng_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    o_trng_en : OUT STD_LOGIC;
    i_trng_random_data : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    i_trng_valid : IN STD_LOGIC;
    i_trng0_en : IN STD_LOGIC;
    o_trng0_random_data : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    o_trng0_valid : OUT STD_LOGIC;
    i_trng1_en : IN STD_LOGIC;
    o_trng1_random_data : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    o_trng1_valid : OUT STD_LOGIC;
    i_trng2_en : IN STD_LOGIC;
    o_trng2_random_data : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    o_trng2_valid : OUT STD_LOGIC
  );
END Mayo_sign_with_zynq_mayo_trng_arbiter_0_1;

ARCHITECTURE Mayo_sign_with_zynq_mayo_trng_arbiter_0_1_arch OF Mayo_sign_with_zynq_mayo_trng_arbiter_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_with_zynq_mayo_trng_arbiter_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_trng_arbiter IS
    PORT (
      i_trng_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      o_trng_en : OUT STD_LOGIC;
      i_trng_random_data : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      i_trng_valid : IN STD_LOGIC;
      i_trng0_en : IN STD_LOGIC;
      o_trng0_random_data : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      o_trng0_valid : OUT STD_LOGIC;
      i_trng1_en : IN STD_LOGIC;
      o_trng1_random_data : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      o_trng1_valid : OUT STD_LOGIC;
      i_trng2_en : IN STD_LOGIC;
      o_trng2_random_data : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      o_trng2_valid : OUT STD_LOGIC
    );
  END COMPONENT mayo_trng_arbiter;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_with_zynq_mayo_trng_arbiter_0_1_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : mayo_trng_arbiter
    PORT MAP (
      i_trng_sel => i_trng_sel,
      o_trng_en => o_trng_en,
      i_trng_random_data => i_trng_random_data,
      i_trng_valid => i_trng_valid,
      i_trng0_en => i_trng0_en,
      o_trng0_random_data => o_trng0_random_data,
      o_trng0_valid => o_trng0_valid,
      i_trng1_en => i_trng1_en,
      o_trng1_random_data => o_trng1_random_data,
      o_trng1_valid => o_trng1_valid,
      i_trng2_en => i_trng2_en,
      o_trng2_random_data => o_trng2_random_data,
      o_trng2_valid => o_trng2_valid
    );
END Mayo_sign_with_zynq_mayo_trng_arbiter_0_1_arch;
