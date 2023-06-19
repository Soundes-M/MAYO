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

-- IP VLNV: xilinx.com:module_ref:memcpy:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_with_zynq_memcpy_1_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    start : IN STD_LOGIC;
    i_src_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_dst_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_len : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_done : OUT STD_LOGIC;
    i_mem_port_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    i_src_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_src_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_src_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_src_en : OUT STD_LOGIC;
    o_src_rst : OUT STD_LOGIC;
    o_src_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_src_control : OUT STD_LOGIC;
    i_dest_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_dest_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_dest_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_dest_en : OUT STD_LOGIC;
    o_dest_rst : OUT STD_LOGIC;
    o_dest_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_dest_control : OUT STD_LOGIC
  );
END Mayo_sign_with_zynq_memcpy_1_0;

ARCHITECTURE Mayo_sign_with_zynq_memcpy_1_0_arch OF Mayo_sign_with_zynq_memcpy_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_with_zynq_memcpy_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT memcpy IS
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      start : IN STD_LOGIC;
      i_src_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_dst_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_len : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_done : OUT STD_LOGIC;
      i_mem_port_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      i_src_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_src_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_src_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_src_en : OUT STD_LOGIC;
      o_src_rst : OUT STD_LOGIC;
      o_src_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_src_control : OUT STD_LOGIC;
      i_dest_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_dest_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_dest_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_dest_en : OUT STD_LOGIC;
      o_dest_rst : OUT STD_LOGIC;
      o_dest_we : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_dest_control : OUT STD_LOGIC
    );
  END COMPONENT memcpy;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Mayo_sign_with_zynq_memcpy_1_0_arch: ARCHITECTURE IS "memcpy,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Mayo_sign_with_zynq_memcpy_1_0_arch : ARCHITECTURE IS "Mayo_sign_with_zynq_memcpy_1_0,memcpy,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Mayo_sign_with_zynq_memcpy_1_0_arch: ARCHITECTURE IS "Mayo_sign_with_zynq_memcpy_1_0,memcpy,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=memcpy,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_with_zynq_memcpy_1_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF o_dest_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_dest_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_dest_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_dest_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_dest_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_dest_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_dest_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF o_src_control: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA CTRL";
  ATTRIBUTE X_INTERFACE_INFO OF o_src_we: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF o_src_rst: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF o_src_en: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF o_src_addr: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF o_src_din: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF i_src_dout: SIGNAL IS "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_with_zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : memcpy
    PORT MAP (
      clk => clk,
      rst => rst,
      start => start,
      i_src_adr => i_src_adr,
      i_dst_adr => i_dst_adr,
      i_len => i_len,
      o_done => o_done,
      i_mem_port_sel => i_mem_port_sel,
      i_src_dout => i_src_dout,
      o_src_din => o_src_din,
      o_src_addr => o_src_addr,
      o_src_en => o_src_en,
      o_src_rst => o_src_rst,
      o_src_we => o_src_we,
      o_src_control => o_src_control,
      i_dest_dout => i_dest_dout,
      o_dest_din => o_dest_din,
      o_dest_addr => o_dest_addr,
      o_dest_en => o_dest_en,
      o_dest_rst => o_dest_rst,
      o_dest_we => o_dest_we,
      o_dest_control => o_dest_control
    );
END Mayo_sign_with_zynq_memcpy_1_0_arch;
