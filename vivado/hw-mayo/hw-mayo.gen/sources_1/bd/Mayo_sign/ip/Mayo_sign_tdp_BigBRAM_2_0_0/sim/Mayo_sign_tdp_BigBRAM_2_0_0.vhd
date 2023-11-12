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

-- IP VLNV: xilinx.com:module_ref:tdp_BigBRAM_2:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mayo_sign_tdp_BigBRAM_2_0_0 IS
  PORT (
    addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clka : IN STD_LOGIC;
    clkb : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    web : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ena : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    rstb : IN STD_LOGIC;
    regcea : IN STD_LOGIC;
    regceb : IN STD_LOGIC;
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END Mayo_sign_tdp_BigBRAM_2_0_0;

ARCHITECTURE Mayo_sign_tdp_BigBRAM_2_0_0_arch OF Mayo_sign_tdp_BigBRAM_2_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Mayo_sign_tdp_BigBRAM_2_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT tdp_BigBRAM_2 IS
    GENERIC (
      NB_COL : INTEGER;
      COL_WIDTH : INTEGER;
      RAM_PERFORMANCE : STRING;
      INIT_FILE : STRING
    );
    PORT (
      addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      addrb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dinb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      clka : IN STD_LOGIC;
      clkb : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      web : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ena : IN STD_LOGIC;
      enb : IN STD_LOGIC;
      rsta : IN STD_LOGIC;
      rstb : IN STD_LOGIC;
      regcea : IN STD_LOGIC;
      regceb : IN STD_LOGIC;
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT tdp_BigBRAM_2;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Mayo_sign_tdp_BigBRAM_2_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF doutb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF douta: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF rstb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTB RST";
  ATTRIBUTE X_INTERFACE_INFO OF rsta: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF enb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
  ATTRIBUTE X_INTERFACE_INFO OF ena: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF web: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTB WE";
  ATTRIBUTE X_INTERFACE_INFO OF wea: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF clkb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  ATTRIBUTE X_INTERFACE_INFO OF clka: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF dinb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN";
  ATTRIBUTE X_INTERFACE_INFO OF dina: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF addrb: SIGNAL IS "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF addrb: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF addra: SIGNAL IS "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF addra: SIGNAL IS "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
BEGIN
  U0 : tdp_BigBRAM_2
    GENERIC MAP (
      NB_COL => 4,
      COL_WIDTH => 8,
      RAM_PERFORMANCE => "LOW_LATENCY",
      INIT_FILE => ""
    )
    PORT MAP (
      addra => addra,
      addrb => addrb,
      dina => dina,
      dinb => dinb,
      clka => clka,
      clkb => clkb,
      wea => wea,
      web => web,
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      regcea => regcea,
      regceb => regceb,
      douta => douta,
      doutb => doutb
    );
END Mayo_sign_tdp_BigBRAM_2_0_0_arch;
