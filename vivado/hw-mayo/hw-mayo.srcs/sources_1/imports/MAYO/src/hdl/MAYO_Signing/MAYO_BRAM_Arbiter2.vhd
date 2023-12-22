--------------------------------------------------------------------------------
-- Title       : <Title Block>
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : MAYO_BRAM_Arbiter.vhd
-- Author      : XXXXX
-- Company     : XXXXX
-- Created     : Mon Oct  3 12:33:18 2022
-- Last update : Thu Jun 29 19:40:21 2023
-- Platform    : Default Part Number
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 User Company Name
-------------------------------------------------------------------------------
-- Description: Pass through for BRAM signals. 
-- Works only in Sign
-- Leave ports open if not needed.
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_bram_arbiter2 is
	port (
		-- Sign Main FSM
		BRAM_sign_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sign_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sign_en      : in  std_logic;
		BRAM_sign_rst     : in  std_logic;
		BRAM_sign_we      : in  std_logic_vector (3 downto 0);
		BRAM_sign_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sign_control : in  std_logic;

		BRAM_add_vec_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_vec_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_vec_en      : in  std_logic;
		BRAM_add_vec_rst     : in  std_logic;
		BRAM_add_vec_we      : in  std_logic_vector (3 downto 0);
		BRAM_add_vec_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_vec_control : in  std_logic;

		BRAM_lin_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_lin_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_lin_en      : in  std_logic;
		BRAM_lin_rst     : in  std_logic;
		BRAM_lin_we      : in  std_logic_vector (3 downto 0);
		BRAM_lin_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_lin_control : in  std_logic;

		BRAM_neg_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_neg_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_neg_en      : in  std_logic;
		BRAM_neg_rst     : in  std_logic;
		BRAM_neg_we      : in  std_logic_vector (3 downto 0);
		BRAM_neg_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_neg_control : in  std_logic;

		BRAM_red_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_en      : in  std_logic;
		BRAM_red_rst     : in  std_logic;
		BRAM_red_we      : in  std_logic_vector (3 downto 0);
		BRAM_red_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_control : in  std_logic;

		BRAM_sam_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_en      : in  std_logic;
		BRAM_sam_rst     : in  std_logic;
		BRAM_sam_we      : in  std_logic_vector (3 downto 0);
		BRAM_sam_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_control : in  std_logic;

		BRAM_memcpy0_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_memcpy0_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_memcpy0_en      : in  std_logic;
		BRAM_memcpy0_rst     : in  std_logic;
		BRAM_memcpy0_we      : in  std_logic_vector (3 downto 0);
		BRAM_memcpy0_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_memcpy0_control : in  std_logic;

		BRAM_memcpy1_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_memcpy1_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_memcpy1_en      : in  std_logic;
		BRAM_memcpy1_rst     : in  std_logic;
		BRAM_memcpy1_we      : in  std_logic_vector (3 downto 0);
		BRAM_memcpy1_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_memcpy1_control : in  std_logic;

		BRAM_p1p1t_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_p1p1t_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_p1p1t_en      : in  std_logic;
		BRAM_p1p1t_rst     : in  std_logic;
		BRAM_p1p1t_we      : in  std_logic_vector (3 downto 0);
		BRAM_p1p1t_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_p1p1t_control : in  std_logic;

		BRAM_red_ext_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_ext_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_ext_en      : in  std_logic;
		BRAM_red_ext_rst     : in  std_logic;
		BRAM_red_ext_we      : in  std_logic_vector (3 downto 0);
		BRAM_red_ext_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_ext_control : in  std_logic;

		BRAM_sam_vin_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_vin_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_vin_en      : in  std_logic;
		BRAM_sam_vin_rst     : in  std_logic;
		BRAM_sam_vin_we      : in  std_logic_vector (3 downto 0);
		BRAM_sam_vin_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_vin_control : in  std_logic;

		BRAM_sam_oil_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_oil_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_oil_en      : in  std_logic;
		BRAM_sam_oil_rst     : in  std_logic;
		BRAM_sam_oil_we      : in  std_logic_vector (3 downto 0);
		BRAM_sam_oil_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_oil_control : in  std_logic;

		BRAM_add_oil_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_oil_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_oil_en      : in  std_logic;
		BRAM_add_oil_rst     : in  std_logic;
		BRAM_add_oil_we      : in  std_logic_vector (3 downto 0);
		BRAM_add_oil_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_oil_control : in  std_logic;

		-- Hash 
		BRAM_hash_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_hash_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_hash_en      : in  std_logic;
		BRAM_hash_rst     : in  std_logic;
		BRAM_hash_we      : in  std_logic_vector (3 downto 0);
		BRAM_hash_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_hash_control : in  std_logic;

		-- OUTPUT
		BRAM_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_en   : out std_logic;
		BRAM_rst  : out std_logic;
		BRAM_we   : out std_logic_vector (3 downto 0);
		BRAM_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0)
	);
end entity mayo_bram_arbiter2;

architecture Behavioral of mayo_bram_arbiter2 is
	ATTRIBUTE X_INTERFACE_INFO                      : STRING;
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sign_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sign_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sign_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sign_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sign_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sign_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sign_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_vec_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_vec_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_vec_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_vec_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_vec_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_vec_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_vec_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_vec CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_lin_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_lin_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_lin_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_lin_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_lin_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_lin_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_lin_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_neg_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Neg DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_neg_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Neg ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_neg_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Neg EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_neg_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Neg RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_neg_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Neg WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_neg_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Neg DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_neg_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Neg CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy0_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0 DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy0_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0 ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy0_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0 EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy0_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0 RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy0_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0 WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy0_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0 DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy0_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy0 CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy1_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy1 DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy1_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy1 ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy1_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy1 EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy1_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy1 RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy1_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy1 WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy1_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy1 DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_memcpy1_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Memcpy1 CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_p1p1t_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_p1p1t_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_p1p1t_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_p1p1t_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_p1p1t_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_p1p1t_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_p1p1t_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_ext_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_ext_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_ext_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_ext_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_ext_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_ext_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_red_ext_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_ext CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_vin_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_vin_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_vin_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_vin_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_vin_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_vin_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_vin_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_oil_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_oil_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_oil_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_oil_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_oil_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_oil_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_sam_oil_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_oil CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_oil_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_oil_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_oil_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_oil_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_oil_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_oil_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_add_oil_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM_hash_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_hash_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_hash_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_hash_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_hash_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_hash_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM_hash_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Hash CTRL";

	-- Uncomment the following to set interface specific parameter on the bus interface.
	--  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
	--  ATTRIBUTE X_INTERFACE_PARAMETER of <port_name>: SIGNAL is "MASTER_TYPE <value>,MEM_ECC <value>,MEM_WIDTH <value>,MEM_SIZE <value>,READ_WRITE_MODE <value>";


begin
	BRAM_din <= BRAM_sign_din when (BRAM_sign_control = '1')
	else BRAM_add_vec_din     when (BRAM_add_vec_control = '1')
	else BRAM_lin_din         when (BRAM_lin_control = '1')
	else BRAM_neg_din         when (BRAM_neg_control = '1')
	else BRAM_red_din         when (BRAM_red_control ='1')
	else BRAM_sam_din         when (BRAM_sam_control = '1')
	else BRAM_hash_din        when (BRAM_hash_control = '1')
	else BRAM_memcpy0_din     when (BRAM_memcpy0_control = '1')
	else BRAM_memcpy1_din     when (BRAM_memcpy1_control = '1')
	else BRAM_p1p1t_din       when (BRAM_p1p1t_control = '1')
	else BRAM_red_ext_din     when (BRAM_red_ext_control = '1')
	else BRAM_sam_vin_din     when (BRAM_sam_vin_control = '1')
	else BRAM_sam_oil_din     when (BRAM_sam_oil_control = '1')
	else BRAM_add_oil_din     when (BRAM_add_oil_control = '1')
	else (others => '0');

	BRAM_addr <= BRAM_sign_addr when (BRAM_sign_control = '1')
	else BRAM_add_vec_addr      when (BRAM_add_vec_control = '1')
	else BRAM_lin_addr          when (BRAM_lin_control = '1')
	else BRAM_neg_addr          when (BRAM_neg_control = '1')
	else BRAM_red_addr          when (BRAM_red_control ='1')
	else BRAM_sam_addr          when (BRAM_sam_control = '1')
	else BRAM_hash_addr         when (BRAM_hash_control = '1')
	else BRAM_memcpy0_addr      when (BRAM_memcpy0_control = '1')
	else BRAM_memcpy1_addr      when (BRAM_memcpy1_control = '1')
	else BRAM_p1p1t_addr        when (BRAM_p1p1t_control = '1')
	else BRAM_red_ext_addr      when (BRAM_red_ext_control = '1')
	else BRAM_sam_vin_addr      when (BRAM_sam_vin_control = '1')
	else BRAM_sam_oil_addr      when (BRAM_sam_oil_control = '1')
	else BRAM_add_oil_addr      when (BRAM_add_oil_control = '1')
	else (others => '0');

	BRAM_we <= BRAM_sign_we when (BRAM_sign_control = '1')
	else BRAM_add_vec_we    when (BRAM_add_vec_control = '1')
	else BRAM_lin_we        when (BRAM_lin_control = '1')
	else BRAM_neg_we        when (BRAM_neg_control = '1')
	else BRAM_red_we        when (BRAM_red_control ='1')
	else BRAM_sam_we        when (BRAM_sam_control = '1')
	else BRAM_hash_we       when (BRAM_hash_control = '1')
	else BRAM_memcpy0_we    when (BRAM_memcpy0_control = '1')
	else BRAM_memcpy1_we    when (BRAM_memcpy1_control = '1')
	else BRAM_p1p1t_we      when (BRAM_p1p1t_control = '1')
	else BRAM_red_ext_we    when (BRAM_red_ext_control = '1')
	else BRAM_sam_vin_we    when (BRAM_sam_vin_control = '1')
	else BRAM_sam_oil_we    when (BRAM_sam_oil_control = '1')
	else BRAM_add_oil_we    when (BRAM_add_oil_control = '1')
	else (others => '0');

	BRAM_en <= '1' when ((BRAM_add_vec_en = '1')
			or (BRAM_lin_en = '1')
			or (BRAM_neg_en = '1')
			or (BRAM_red_en = '1')
			or (BRAM_sign_en = '1')
			or (BRAM_sam_en = '1')
			or (BRAM_hash_en = '1')
			or (BRAM_memcpy0_en = '1')
			or (BRAM_memcpy1_en = '1')
			or (BRAM_p1p1t_en = '1')
			or (BRAM_red_ext_en = '1')
			or (BRAM_sam_vin_en = '1')
			or (BRAM_sam_oil_en = '1')
			or (BRAM_add_oil_en = '1'))
	else '0';

	BRAM_rst <= '1' when ( (BRAM_add_vec_rst = '1')
			or (BRAM_lin_rst = '1')
			or (BRAM_neg_rst = '1')
			or (BRAM_red_rst = '1')
			or (BRAM_sign_rst = '1')
			or (BRAM_sam_rst = '1')
			or (BRAM_hash_rst = '1')
			or (BRAM_memcpy0_rst = '1')
			or (BRAM_memcpy1_rst = '1')
			or (BRAM_p1p1t_rst = '1')
			or (BRAM_red_ext_rst = '1')
			or (BRAM_sam_vin_rst = '1')
			or (BRAM_sam_oil_rst = '1')
			or (BRAM_add_oil_rst = '1'))
	else '0';

	BRAM_sign_dout    <= BRAM_dout when (BRAM_sign_control = '1') else (others    => '0');
	BRAM_add_vec_dout <= BRAM_dout when (BRAM_add_vec_control = '1') else (others => '0');
	BRAM_lin_dout     <= BRAM_dout when (BRAM_lin_control = '1') else (others     => '0');
	BRAM_neg_dout     <= BRAM_dout when (BRAM_neg_control = '1') else (others     => '0');
	BRAM_red_dout     <= BRAM_dout when (BRAM_red_control = '1') else (others     => '0');
	BRAM_sam_dout     <= BRAM_dout when (BRAM_sam_control = '1') else (others     => '0');
	BRAM_hash_dout    <= BRAM_dout when (BRAM_hash_control = '1') else (others    => '0');
	BRAM_memcpy0_dout <= BRAM_dout when (BRAM_memcpy0_control = '1') else (others => '0');
	BRAM_memcpy1_dout <= BRAM_dout when (BRAM_memcpy1_control = '1') else (others => '0');
	BRAM_p1p1t_dout   <= BRAM_dout when (BRAM_p1p1t_control = '1') else (others   => '0');
	BRAM_red_ext_dout <= BRAM_dout when (BRAM_red_ext_control = '1') else (others => '0');
	BRAM_sam_vin_dout <= BRAM_dout when (BRAM_sam_vin_control = '1') else (others => '0');
	BRAM_sam_oil_dout <= BRAM_dout when (BRAM_sam_oil_control = '1') else (others => '0');
	BRAM_add_oil_dout <= BRAM_dout when (BRAM_add_oil_control = '1') else (others => '0');

end architecture Behavioral;