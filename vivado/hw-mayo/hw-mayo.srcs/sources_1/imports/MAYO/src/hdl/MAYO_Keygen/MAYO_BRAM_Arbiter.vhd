--------------------------------------------------------------------------------
-- Title       : MAYO_BRAM_Arbiter
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_BRAM_Arbiter.vhd
-- Author      : XXXXX
-- Company     : 
-- Created     : 
-- Last update : Wed Oct 18 23:54:11 2023
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 User Company Name
-------------------------------------------------------------------------------
-- Description: Pass through for BRAM signals. 
-- Works only in KeyGen
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

entity mayo_bram_arbiter is
	port (
		BRAM_add_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_en   : in  std_logic;
		BRAM_add_rst  : in  std_logic;
		BRAM_add_we   : in  std_logic_vector (3 downto 0);
		BRAM_add_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		BRAM_lin_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_lin_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_lin_en   : in  std_logic;
		BRAM_lin_rst  : in  std_logic;
		BRAM_lin_we   : in  std_logic_vector (3 downto 0);
		BRAM_lin_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		BRAM_neg_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_neg_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_neg_en   : in  std_logic;
		BRAM_neg_rst  : in  std_logic;
		BRAM_neg_we   : in  std_logic_vector (3 downto 0);
		BRAM_neg_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		BRAM_red_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_en   : in  std_logic;
		BRAM_red_rst  : in  std_logic;
		BRAM_red_we   : in  std_logic_vector (3 downto 0);
		BRAM_red_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- KEYGEN Main FSM
		BRAM_key_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_key_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_key_en   : in  std_logic;
		BRAM_key_rst  : in  std_logic;
		BRAM_key_we   : in  std_logic_vector (3 downto 0);
		BRAM_key_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		BRAM_sam_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_en   : in  std_logic;
		BRAM_sam_rst  : in  std_logic;
		BRAM_sam_we   : in  std_logic_vector (3 downto 0);
		BRAM_sam_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- Hash 
		BRAM_hash_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_hash_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_hash_en   : in  std_logic;
		BRAM_hash_rst  : in  std_logic;
		BRAM_hash_we   : in  std_logic_vector (3 downto 0);
		BRAM_hash_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- OUTPUT
		BRAM_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_en   : out std_logic;
		BRAM_rst  : out std_logic;
		BRAM_we   : out std_logic_vector (3 downto 0);
		BRAM_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);

		-- FSM From MAYO Control
		add_control  : in std_logic;
		lin_control  : in std_logic;
		neg_control  : in std_logic;
		red_control  : in std_logic;
		sam_control  : in std_logic;
		hash_control : in std_logic;

		bram_control : in std_logic

	);
end entity mayo_bram_arbiter;

architecture Behavioral of mayo_bram_arbiter is

begin

	BRAM_din <=
		BRAM_key_din  when (bram_control = '1') else
		BRAM_add_din  when (add_control = '1') else
		BRAM_lin_din  when (lin_control = '1') else
		BRAM_neg_din  when (neg_control = '1') else
		BRAM_red_din  when (red_control ='1') else
		BRAM_sam_din  when (sam_control = '1') else
		BRAM_hash_din when (hash_control = '1') else
		(others => '0');

	BRAM_addr <=
		BRAM_key_addr  when (bram_control = '1') else
		BRAM_add_addr  when (add_control = '1') else
		BRAM_lin_addr  when (lin_control = '1') else
		BRAM_neg_addr  when (neg_control = '1') else
		BRAM_red_addr  when (red_control ='1') else
		BRAM_sam_addr  when (sam_control = '1') else
		BRAM_hash_addr when (hash_control = '1') else
		(others => '0');

	BRAM_we <=
		BRAM_key_we  when (bram_control = '1') else
		BRAM_add_we  when (add_control = '1') else
		BRAM_lin_we  when (lin_control = '1') else
		BRAM_neg_we  when (neg_control = '1') else
		BRAM_red_we  when (red_control ='1') else
		BRAM_sam_we  when (sam_control = '1') else
		BRAM_hash_we when (hash_control = '1') else
		(others => '0');

	BRAM_en <= '1' when
		( (BRAM_add_en = '1') or
			(BRAM_lin_en = '1') or
			(BRAM_neg_en = '1') or
			(BRAM_red_en = '1') or
			(BRAM_key_en = '1') or
			(BRAM_sam_en = '1') or
			(BRAM_hash_en = '1'))
	else '0';

	BRAM_rst <= '1' when
		( (BRAM_add_rst = '1') or
			(BRAM_lin_rst = '1') or
			(BRAM_neg_rst = '1') or
			(BRAM_red_rst = '1') or
			(BRAM_key_rst = '1') or
			(BRAM_sam_rst ='1') or
			(BRAM_hash_rst = '1'))
	else '0';

	BRAM_key_dout  <= BRAM_dout when (bram_control = '1') else (others => '0');
	BRAM_add_dout  <= BRAM_dout when (add_control = '1') else (others  => '0');
	BRAM_lin_dout  <= BRAM_dout when (lin_control = '1') else (others  => '0');
	BRAM_neg_dout  <= BRAM_dout when (neg_control = '1') else (others  => '0');
	BRAM_red_dout  <= BRAM_dout when (red_control = '1') else (others  => '0');
	BRAM_sam_dout  <= BRAM_dout when (sam_control = '1') else (others  => '0');
	BRAM_hash_dout <= BRAM_dout when (hash_control = '1') else (others => '0');


end architecture Behavioral;