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

-- IP VLNV: xilinx.com:module_ref:aes_128_ctr:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_with_zynq_aes_128_ctr_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    en : IN STD_LOGIC;
    o_valid : OUT STD_LOGIC;
    o_random_data : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
  );
END Mayo_sign_with_zynq_aes_128_ctr_0_0;

ARCHITECTURE Mayo_sign_with_zynq_aes_128_ctr_0_0_arch OF Mayo_sign_with_zynq_aes_128_ctr_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_with_zynq_aes_128_ctr_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT aes_128_ctr IS
    GENERIC (
      DEBUG : INTEGER;
      ADDR_CTRL : INTEGER;
      ADDR_CONFIG : INTEGER;
      ADDR_KEY0 : INTEGER;
      ADDR_KEY1 : INTEGER;
      ADDR_KEY2 : INTEGER;
      ADDR_KEY3 : INTEGER;
      ADDR_KEY4 : INTEGER;
      ADDR_KEY5 : INTEGER;
      ADDR_KEY6 : INTEGER;
      ADDR_KEY7 : INTEGER;
      ADDR_BLOCK0 : INTEGER;
      ADDR_BLOCK1 : INTEGER;
      ADDR_BLOCK2 : INTEGER;
      ADDR_BLOCK3 : INTEGER;
      ADDR_RESULT0 : INTEGER;
      ADDR_RESULT1 : INTEGER;
      ADDR_RESULT2 : INTEGER;
      ADDR_RESULT3 : INTEGER;
      AES_128_BIT_KEY : INTEGER;
      AES_ENCIPHER : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      en : IN STD_LOGIC;
      o_valid : OUT STD_LOGIC;
      o_random_data : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
    );
  END COMPONENT aes_128_ctr;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Mayo_sign_with_zynq_aes_128_ctr_0_0_arch: ARCHITECTURE IS "aes_128_ctr,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Mayo_sign_with_zynq_aes_128_ctr_0_0_arch : ARCHITECTURE IS "Mayo_sign_with_zynq_aes_128_ctr_0_0,aes_128_ctr,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Mayo_sign_with_zynq_aes_128_ctr_0_0_arch: ARCHITECTURE IS "Mayo_sign_with_zynq_aes_128_ctr_0_0,aes_128_ctr,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=aes_128_ctr,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DEBUG=0,ADDR_CTRL=00001000,ADDR_CONFIG=00001010,ADDR_KEY0=00010000,ADDR_KEY1=00010001,ADDR_KEY2=00010010,ADDR_KEY3=00010011,ADDR_KEY4=00010100,ADDR_KEY5=00010101,ADDR_KEY6=00010110,ADDR_KEY7=00010111,ADDR_BLOCK0=00100000,ADDR_BLOCK1=00100001,ADDR_BLOCK2=00100010,ADDR_BLOCK3=00100011," & 
"ADDR_RESULT0=00110000,ADDR_RESULT1=00110001,ADDR_RESULT2=00110010,ADDR_RESULT3=00110011,AES_128_BIT_KEY=0,AES_ENCIPHER=1}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_with_zynq_aes_128_ctr_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 user_BRAM_BUS_custom EN";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 user_BRAM_BUS_custom RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_with_zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : aes_128_ctr
    GENERIC MAP (
      DEBUG => 0,
      ADDR_CTRL => 8,
      ADDR_CONFIG => 10,
      ADDR_KEY0 => 16,
      ADDR_KEY1 => 17,
      ADDR_KEY2 => 18,
      ADDR_KEY3 => 19,
      ADDR_KEY4 => 20,
      ADDR_KEY5 => 21,
      ADDR_KEY6 => 22,
      ADDR_KEY7 => 23,
      ADDR_BLOCK0 => 32,
      ADDR_BLOCK1 => 33,
      ADDR_BLOCK2 => 34,
      ADDR_BLOCK3 => 35,
      ADDR_RESULT0 => 48,
      ADDR_RESULT1 => 49,
      ADDR_RESULT2 => 50,
      ADDR_RESULT3 => 51,
      AES_128_BIT_KEY => 0,
      AES_ENCIPHER => 1
    )
    PORT MAP (
      clk => clk,
      rst => rst,
      en => en,
      o_valid => o_valid,
      o_random_data => o_random_data
    );
END Mayo_sign_with_zynq_aes_128_ctr_0_0_arch;
