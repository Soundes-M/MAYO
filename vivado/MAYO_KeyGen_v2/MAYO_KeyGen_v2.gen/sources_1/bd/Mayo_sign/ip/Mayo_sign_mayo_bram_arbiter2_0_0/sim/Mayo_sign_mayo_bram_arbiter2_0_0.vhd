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

-- IP VLNV: xilinx.com:module_ref:mayo_bram_arbiter2:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_mayo_bram_arbiter2_0_0 IS
  PORT (
    BRAM_sign_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sign_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sign_en : IN STD_LOGIC;
    BRAM_sign_rst : IN STD_LOGIC;
    BRAM_sign_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_sign_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sign_control : IN STD_LOGIC;
    BRAM_add_vec_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_add_vec_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_add_vec_en : IN STD_LOGIC;
    BRAM_add_vec_rst : IN STD_LOGIC;
    BRAM_add_vec_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_add_vec_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_add_vec_control : IN STD_LOGIC;
    BRAM_lin_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_lin_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_lin_en : IN STD_LOGIC;
    BRAM_lin_rst : IN STD_LOGIC;
    BRAM_lin_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_lin_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_lin_control : IN STD_LOGIC;
    BRAM_neg_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_neg_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_neg_en : IN STD_LOGIC;
    BRAM_neg_rst : IN STD_LOGIC;
    BRAM_neg_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_neg_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_neg_control : IN STD_LOGIC;
    BRAM_red_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_en : IN STD_LOGIC;
    BRAM_red_rst : IN STD_LOGIC;
    BRAM_red_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_red_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_control : IN STD_LOGIC;
    BRAM_sam_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_en : IN STD_LOGIC;
    BRAM_sam_rst : IN STD_LOGIC;
    BRAM_sam_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_sam_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_control : IN STD_LOGIC;
    BRAM_memcpy0_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_memcpy0_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_memcpy0_en : IN STD_LOGIC;
    BRAM_memcpy0_rst : IN STD_LOGIC;
    BRAM_memcpy0_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_memcpy0_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_memcpy0_control : IN STD_LOGIC;
    BRAM_memcpy1_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_memcpy1_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_memcpy1_en : IN STD_LOGIC;
    BRAM_memcpy1_rst : IN STD_LOGIC;
    BRAM_memcpy1_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_memcpy1_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_memcpy1_control : IN STD_LOGIC;
    BRAM_p1p1t_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_p1p1t_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_p1p1t_en : IN STD_LOGIC;
    BRAM_p1p1t_rst : IN STD_LOGIC;
    BRAM_p1p1t_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_p1p1t_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_p1p1t_control : IN STD_LOGIC;
    BRAM_red_ext_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_ext_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_ext_en : IN STD_LOGIC;
    BRAM_red_ext_rst : IN STD_LOGIC;
    BRAM_red_ext_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_red_ext_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_red_ext_control : IN STD_LOGIC;
    BRAM_sam_vin_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_vin_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_vin_en : IN STD_LOGIC;
    BRAM_sam_vin_rst : IN STD_LOGIC;
    BRAM_sam_vin_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_sam_vin_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_vin_control : IN STD_LOGIC;
    BRAM_sam_oil_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_oil_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_oil_en : IN STD_LOGIC;
    BRAM_sam_oil_rst : IN STD_LOGIC;
    BRAM_sam_oil_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_sam_oil_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_sam_oil_control : IN STD_LOGIC;
    BRAM_add_oil_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_add_oil_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_add_oil_en : IN STD_LOGIC;
    BRAM_add_oil_rst : IN STD_LOGIC;
    BRAM_add_oil_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_add_oil_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_add_oil_control : IN STD_LOGIC;
    BRAM_hash_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_hash_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_hash_en : IN STD_LOGIC;
    BRAM_hash_rst : IN STD_LOGIC;
    BRAM_hash_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_hash_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_hash_control : IN STD_LOGIC;
    BRAM_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    BRAM_en : OUT STD_LOGIC;
    BRAM_rst : OUT STD_LOGIC;
    BRAM_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    BRAM_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END Mayo_sign_mayo_bram_arbiter2_0_0;

ARCHITECTURE Mayo_sign_mayo_bram_arbiter2_0_0_arch OF Mayo_sign_mayo_bram_arbiter2_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_mayo_bram_arbiter2_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mayo_bram_arbiter2 IS
    PORT (
      BRAM_sign_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sign_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sign_en : IN STD_LOGIC;
      BRAM_sign_rst : IN STD_LOGIC;
      BRAM_sign_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_sign_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sign_control : IN STD_LOGIC;
      BRAM_add_vec_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_add_vec_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_add_vec_en : IN STD_LOGIC;
      BRAM_add_vec_rst : IN STD_LOGIC;
      BRAM_add_vec_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_add_vec_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_add_vec_control : IN STD_LOGIC;
      BRAM_lin_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_lin_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_lin_en : IN STD_LOGIC;
      BRAM_lin_rst : IN STD_LOGIC;
      BRAM_lin_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_lin_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_lin_control : IN STD_LOGIC;
      BRAM_neg_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_neg_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_neg_en : IN STD_LOGIC;
      BRAM_neg_rst : IN STD_LOGIC;
      BRAM_neg_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_neg_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_neg_control : IN STD_LOGIC;
      BRAM_red_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_en : IN STD_LOGIC;
      BRAM_red_rst : IN STD_LOGIC;
      BRAM_red_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_red_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_control : IN STD_LOGIC;
      BRAM_sam_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_en : IN STD_LOGIC;
      BRAM_sam_rst : IN STD_LOGIC;
      BRAM_sam_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_sam_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_control : IN STD_LOGIC;
      BRAM_memcpy0_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_memcpy0_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_memcpy0_en : IN STD_LOGIC;
      BRAM_memcpy0_rst : IN STD_LOGIC;
      BRAM_memcpy0_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_memcpy0_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_memcpy0_control : IN STD_LOGIC;
      BRAM_memcpy1_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_memcpy1_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_memcpy1_en : IN STD_LOGIC;
      BRAM_memcpy1_rst : IN STD_LOGIC;
      BRAM_memcpy1_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_memcpy1_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_memcpy1_control : IN STD_LOGIC;
      BRAM_p1p1t_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_p1p1t_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_p1p1t_en : IN STD_LOGIC;
      BRAM_p1p1t_rst : IN STD_LOGIC;
      BRAM_p1p1t_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_p1p1t_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_p1p1t_control : IN STD_LOGIC;
      BRAM_red_ext_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_ext_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_ext_en : IN STD_LOGIC;
      BRAM_red_ext_rst : IN STD_LOGIC;
      BRAM_red_ext_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_red_ext_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_red_ext_control : IN STD_LOGIC;
      BRAM_sam_vin_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_vin_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_vin_en : IN STD_LOGIC;
      BRAM_sam_vin_rst : IN STD_LOGIC;
      BRAM_sam_vin_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_sam_vin_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_vin_control : IN STD_LOGIC;
      BRAM_sam_oil_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_oil_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_oil_en : IN STD_LOGIC;
      BRAM_sam_oil_rst : IN STD_LOGIC;
      BRAM_sam_oil_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_sam_oil_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_sam_oil_control : IN STD_LOGIC;
      BRAM_add_oil_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_add_oil_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_add_oil_en : IN STD_LOGIC;
      BRAM_add_oil_rst : IN STD_LOGIC;
      BRAM_add_oil_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_add_oil_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_add_oil_control : IN STD_LOGIC;
      BRAM_hash_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_hash_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_hash_en : IN STD_LOGIC;
      BRAM_hash_rst : IN STD_LOGIC;
      BRAM_hash_we : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_hash_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_hash_control : IN STD_LOGIC;
      BRAM_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      BRAM_en : OUT STD_LOGIC;
      BRAM_rst : OUT STD_LOGIC;
      BRAM_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      BRAM_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT mayo_bram_arbiter2;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_mayo_bram_arbiter2_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_hash_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Hash CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_hash_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Hash DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_hash_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Hash WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_hash_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Hash RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_hash_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Hash EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_hash_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Hash ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_hash_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Hash DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_oil_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_oil_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_oil_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_oil_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_oil_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_oil_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_oil_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_oil_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_oil CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_oil_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_oil DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_oil_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_oil WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_oil_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_oil RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_oil_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_oil EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_oil_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_oil ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_oil_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_oil DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_vin_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_vin_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_vin_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_vin_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_vin_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_vin_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_vin_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_ext_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_ext CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_ext_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_ext DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_ext_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_ext WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_ext_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_ext RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_ext_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_ext EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_ext_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_ext ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_ext_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_ext DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_p1p1t_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_p1p1t_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_p1p1t_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_p1p1t_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_p1p1t_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_p1p1t_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_p1p1t_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy1_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy1 CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy1_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy1 DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy1_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy1 WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy1_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy1 RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy1_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy1 EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy1_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy1 ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy1_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy1 DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy0_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy0 CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy0_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy0 DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy0_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy0 WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy0_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy0 RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy0_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy0 EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy0_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy0 ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_memcpy0_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Memcpy0 DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sam_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_red_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_neg_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Neg CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_neg_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Neg DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_neg_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Neg WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_neg_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Neg RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_neg_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Neg EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_neg_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Neg ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_neg_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Neg DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_lin_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_lin_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_lin_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_lin_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_lin_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_lin_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_lin_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_vec_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_vec CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_vec_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_vec DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_vec_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_vec WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_vec_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_vec RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_vec_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_vec EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_vec_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_vec ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_add_vec_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_vec DIN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sign_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sign_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sign_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign WE";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sign_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign RST";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sign_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign EN";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sign_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF BRAM_sign_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sign DIN";
BEGIN
  U0 : mayo_bram_arbiter2
    PORT MAP (
      BRAM_sign_din => BRAM_sign_din,
      BRAM_sign_addr => BRAM_sign_addr,
      BRAM_sign_en => BRAM_sign_en,
      BRAM_sign_rst => BRAM_sign_rst,
      BRAM_sign_we => BRAM_sign_we,
      BRAM_sign_dout => BRAM_sign_dout,
      BRAM_sign_control => BRAM_sign_control,
      BRAM_add_vec_din => BRAM_add_vec_din,
      BRAM_add_vec_addr => BRAM_add_vec_addr,
      BRAM_add_vec_en => BRAM_add_vec_en,
      BRAM_add_vec_rst => BRAM_add_vec_rst,
      BRAM_add_vec_we => BRAM_add_vec_we,
      BRAM_add_vec_dout => BRAM_add_vec_dout,
      BRAM_add_vec_control => BRAM_add_vec_control,
      BRAM_lin_din => BRAM_lin_din,
      BRAM_lin_addr => BRAM_lin_addr,
      BRAM_lin_en => BRAM_lin_en,
      BRAM_lin_rst => BRAM_lin_rst,
      BRAM_lin_we => BRAM_lin_we,
      BRAM_lin_dout => BRAM_lin_dout,
      BRAM_lin_control => BRAM_lin_control,
      BRAM_neg_din => BRAM_neg_din,
      BRAM_neg_addr => BRAM_neg_addr,
      BRAM_neg_en => BRAM_neg_en,
      BRAM_neg_rst => BRAM_neg_rst,
      BRAM_neg_we => BRAM_neg_we,
      BRAM_neg_dout => BRAM_neg_dout,
      BRAM_neg_control => BRAM_neg_control,
      BRAM_red_din => BRAM_red_din,
      BRAM_red_addr => BRAM_red_addr,
      BRAM_red_en => BRAM_red_en,
      BRAM_red_rst => BRAM_red_rst,
      BRAM_red_we => BRAM_red_we,
      BRAM_red_dout => BRAM_red_dout,
      BRAM_red_control => BRAM_red_control,
      BRAM_sam_din => BRAM_sam_din,
      BRAM_sam_addr => BRAM_sam_addr,
      BRAM_sam_en => BRAM_sam_en,
      BRAM_sam_rst => BRAM_sam_rst,
      BRAM_sam_we => BRAM_sam_we,
      BRAM_sam_dout => BRAM_sam_dout,
      BRAM_sam_control => BRAM_sam_control,
      BRAM_memcpy0_din => BRAM_memcpy0_din,
      BRAM_memcpy0_addr => BRAM_memcpy0_addr,
      BRAM_memcpy0_en => BRAM_memcpy0_en,
      BRAM_memcpy0_rst => BRAM_memcpy0_rst,
      BRAM_memcpy0_we => BRAM_memcpy0_we,
      BRAM_memcpy0_dout => BRAM_memcpy0_dout,
      BRAM_memcpy0_control => BRAM_memcpy0_control,
      BRAM_memcpy1_din => BRAM_memcpy1_din,
      BRAM_memcpy1_addr => BRAM_memcpy1_addr,
      BRAM_memcpy1_en => BRAM_memcpy1_en,
      BRAM_memcpy1_rst => BRAM_memcpy1_rst,
      BRAM_memcpy1_we => BRAM_memcpy1_we,
      BRAM_memcpy1_dout => BRAM_memcpy1_dout,
      BRAM_memcpy1_control => BRAM_memcpy1_control,
      BRAM_p1p1t_din => BRAM_p1p1t_din,
      BRAM_p1p1t_addr => BRAM_p1p1t_addr,
      BRAM_p1p1t_en => BRAM_p1p1t_en,
      BRAM_p1p1t_rst => BRAM_p1p1t_rst,
      BRAM_p1p1t_we => BRAM_p1p1t_we,
      BRAM_p1p1t_dout => BRAM_p1p1t_dout,
      BRAM_p1p1t_control => BRAM_p1p1t_control,
      BRAM_red_ext_din => BRAM_red_ext_din,
      BRAM_red_ext_addr => BRAM_red_ext_addr,
      BRAM_red_ext_en => BRAM_red_ext_en,
      BRAM_red_ext_rst => BRAM_red_ext_rst,
      BRAM_red_ext_we => BRAM_red_ext_we,
      BRAM_red_ext_dout => BRAM_red_ext_dout,
      BRAM_red_ext_control => BRAM_red_ext_control,
      BRAM_sam_vin_din => BRAM_sam_vin_din,
      BRAM_sam_vin_addr => BRAM_sam_vin_addr,
      BRAM_sam_vin_en => BRAM_sam_vin_en,
      BRAM_sam_vin_rst => BRAM_sam_vin_rst,
      BRAM_sam_vin_we => BRAM_sam_vin_we,
      BRAM_sam_vin_dout => BRAM_sam_vin_dout,
      BRAM_sam_vin_control => BRAM_sam_vin_control,
      BRAM_sam_oil_din => BRAM_sam_oil_din,
      BRAM_sam_oil_addr => BRAM_sam_oil_addr,
      BRAM_sam_oil_en => BRAM_sam_oil_en,
      BRAM_sam_oil_rst => BRAM_sam_oil_rst,
      BRAM_sam_oil_we => BRAM_sam_oil_we,
      BRAM_sam_oil_dout => BRAM_sam_oil_dout,
      BRAM_sam_oil_control => BRAM_sam_oil_control,
      BRAM_add_oil_din => BRAM_add_oil_din,
      BRAM_add_oil_addr => BRAM_add_oil_addr,
      BRAM_add_oil_en => BRAM_add_oil_en,
      BRAM_add_oil_rst => BRAM_add_oil_rst,
      BRAM_add_oil_we => BRAM_add_oil_we,
      BRAM_add_oil_dout => BRAM_add_oil_dout,
      BRAM_add_oil_control => BRAM_add_oil_control,
      BRAM_hash_din => BRAM_hash_din,
      BRAM_hash_addr => BRAM_hash_addr,
      BRAM_hash_en => BRAM_hash_en,
      BRAM_hash_rst => BRAM_hash_rst,
      BRAM_hash_we => BRAM_hash_we,
      BRAM_hash_dout => BRAM_hash_dout,
      BRAM_hash_control => BRAM_hash_control,
      BRAM_din => BRAM_din,
      BRAM_addr => BRAM_addr,
      BRAM_en => BRAM_en,
      BRAM_rst => BRAM_rst,
      BRAM_we => BRAM_we,
      BRAM_dout => BRAM_dout
    );
END Mayo_sign_mayo_bram_arbiter2_0_0_arch;
