--------------------------------------------------------------------------------
-- Title       : Reduce Func
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_reduce.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : Thu Jul 14 19:35:22 2022
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: 
-- Reduces Input and write Output to BRAM (4 Bytes/CLK)
-- Works only in chunks of 4!
-- BRAM SIZE : Max attached BRAM SIZE (Xilinx Max 8K). log2(Size) is needed.
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;

entity mayo_reduce is
	generic (
		BRAM_SIZE : natural := 13 -- 2^13 = 8K
	);
	port (
		i_clk    : in  std_logic;                      -- CLK
		rst      : in  std_logic;                      -- RST
		i_enable : in  std_logic;                      -- ENABLE
		i_len    : in  std_logic_vector (31 downto 0); -- BYTE LEN
		i_doutb  : in  std_logic_vector (31 downto 0); -- dout port bram
		o_addrb  : out std_logic_vector (31 downto 0); -- address port bram
		o_dinb   : out std_logic_vector (31 downto 0); -- din port bram
		o_enb    : out std_logic;                      -- enable read, write, reset operations port b  
		o_rstb   : out std_logic;                      -- reset port b 
		o_web    : out std_logic_vector (3 downto 0);  -- write enable port b   
		o_done   : out std_logic
	);
end mayo_reduce;

architecture Behavioral of mayo_reduce is

	type state is (idle, read1, read2, write1, write2, done);
	signal t_state   : state := idle;
	signal s_rstb    : std_logic;
	signal s_enb     : std_logic;
	signal s_web     : std_logic_vector(3 downto 0);                              -- enable port b (4 Cells)
	signal s_addrb   : std_logic_vector(BRAM_SIZE-1 downto 0) := (others => '0'); -- Max Depth 8k 
	signal s_data    : std_logic_vector(31 downto 0)          := (others => '0');
	signal s_index   : natural range 2**BRAM_SIZE-1           := 0; --LOOP INDEX
	signal s_max_len : natural range 2**BRAM_SIZE-1           := 0;


begin

	process(i_clk) is
	begin
		if (rising_edge (i_clk)) then
			if (rst = '1') then
				s_rstb  <= '1';
				s_addrb <= (others => '0');
				s_enb   <= '0';
				s_web   <= "0000";
				o_done  <= '0';
				t_state <= idle;
			else
				case t_state is
					when idle =>
						s_rstb  <= '0';
						s_addrb <= (others => '0');
						s_enb   <= '0';
						s_web   <= "0000";
						o_done  <= '0';
						if(i_enable = '1') then -- START
							t_state   <= read1;
							s_max_len <= to_integer(i_len srl 2); -- Div 4
						else
							t_state <= idle;
						end if;

					when read1 =>
						s_addrb <= s_addrb; -- Set READ ADR
						s_enb   <= '1';
						s_rstb  <= '0';
						s_web   <= "0000";
						t_state <= read2;

					when read2 =>
						s_data  <= i_doutb; -- Get DATA
						s_enb   <= '0';
						t_state <= write1;

					when write1 =>
						s_data(7 downto 0)   <= integer(unsigned(s_data(7 downto 0))) mod unsigned(PRIME);
						s_data(15 downto 8)  <= integer(unsigned(s_data(7 downto 0))) mod unsigned(PRIME);
						s_data(23 downto 16) <= integer(unsigned(s_data(7 downto 0))) mod unsigned(PRIME);
						s_data(31 downto 24) <= integer(unsigned(s_data(7 downto 0))) mod unsigned(PRIME);
						t_state              <= write2;

					when write2 =>
						s_enb   <= '1';
						s_web   <= "1111";      -- WRITE result back to ADR
						s_addrb <= s_addrb + 4; -- Go to next ADR
						if (s_index > s_max_len) then
							t_state <= done;
						else
							s_index <= s_index +1;
							t_state <= read1;
						end if;
					when done;
						o_done  <= '1';
						s_index <= 0;
						s_addrb <= (others => '0');
						s_enb   <= '0';
						s_web   <= "0000";
						t_state <= idle;

					when others =>
						null;
				end case;
			end if;
		end if;
	end process;

	o_addrb <= (31 downto BRAM_SIZE => '0') & s_addrb; -- Default 32Bits
	o_dinb  <= s_data;
	o_enb   <= s_enb;
	o_rstb  <= s_rstb;
	o_web   <= s_web;

end architecture ; -- arch