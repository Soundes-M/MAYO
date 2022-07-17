--------------------------------------------------------------------------------
-- Title       : Bram Demux
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : bram_demux.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : Sat Jul 16 17:42:40 2022
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: 
-- 1 to N (MAX 32) BRAM Demultiplexer (Only works at one BRAM at a time)
-- Keep Addr high through the whole read/write process.
-- Example: BRAM_COUNT = 3 
-- 		   |     |<-in0
-- 		   |     |>--out0
-- <-in----|count|<--in1
-- >-out---|  3  |>--out1
--	       |     |<--in2
--		   |     |>--out2
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.UTILS_COMMON.all;


-- Non Vivado Version
entity bram_demux is
	generic(
		BRAM_COUNT : natural := 1 -- OUTPUT Instances (MAX32)
	);
	port (
		-- 1
		i_bram_out : in  o_bram;
		o_bram_in  : out i_bram;
		-- N
		i_brams_in  : in  demux_input(0 to BRAM_COUNT -1);
		o_brams_out : out demux_output(0 to BRAM_COUNT -1)
	);

end entity bram_demux;

architecture rtl of bram_demux is

	constant zero_out_bram : o_bram := (
			o_din  => (others => '0'),
			o_addr => (others => '0'),
			o_en   => '0',
			o_rst  => '0',
			o_we   => (others => '0'));
begin

	process(i_bram_out) is
	begin
		for i in 0 to (BRAM_COUNT -1) loop
			if (TO_INTEGER(unsigned(i_bram_out.o_addr(17 downto 13))) = i) then -- Only for 32 BRAMS (17..13 --> 32 bits)
				o_brams_out(i) <= i_bram_out;
				o_bram_in      <= i_brams_in(i);

			else
				o_brams_out(i)   <= zero_out_bram;
				o_bram_in.i_dout <= (others => '0');
			end if;
		end loop ;
	end process;


end architecture ; -- rtl
