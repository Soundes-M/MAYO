--------------------------------------------------------------------------------
-- Title       : MAYO SCRAMBLE
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Scramble.vhd
-- Author      : Oussama Sayari
-- Company     : TU Berlin
-- Created     : Sat Apr 29 18:39:54 2023
-- Last update : Sat Apr 29 18:40:16 2023
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 TU Berlin
-------------------------------------------------------------------------------
-- Description: Used to scramble ops against power analysis attacks 
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_scramble is
	port (
		clk : in std_logic;
		rst : in std_logic;
		go  : in std_logic; -- Like enable but always kept high

		o_trng_r     : out std_logic;
		o_trng_w     : out std_logic;
		o_trng_data  : out std_logic_vector(31 downto 0);
		i_trng_data  : in  std_logic_vector(31 downto 0);
		i_trng_valid : in  std_logic;
		i_trng_done  : in  std_logic
	);

end entity mayo_scramble;

architecture Behavioral of mayo_scramble is

	subtype ADD_OP is integer range 0 to 63;
	subtype SUB_OP is integer range 64 to 127;
	subtype MUL_OP is integer range 128 to 191; -- bit shift MUL
	subtype DIV_OP is integer range 192 to 255; -- bit shift div

	type states0_t is (idle, rng0, rng1, rng2, rng3, done);
	type states1_t is (idle,done);
	signal cur_state0, next_state0 : states0_t := idle;
	signal state1                  : states1_t := idle;

	signal opcode : std_logic_vector(7 downto 0);
	signal rd0    : std_logic_vector(11 downto 0);
	signal rd1    : std_logic_vector(11 downto 0);

	type INT_ARRAY is array (0 to 7) of integer;
	signal s_res_buff  : INT_ARRAY;
	signal index       : natural   := 0;
	signal s_expect    : natural   := 4;
	signal s_need_more : std_logic := '0';

-- res(index) = rd0 OPCODE rd1 
begin
	opcode <= i_trng_data(31 downto 24);
	rd0    <= i_trng_data(23 downto 12);
	rd1    <= i_trng_data(11 downto 0);

	scrambler : process(clk, rst, cur_state0, go) is
	begin
		if (rst = '1') then
			opcode      <= (others => '0');
			rd0         <= (others => '0');
			rd1         <= (others => '0');
			index       <= 0;
			s_expect    <= 4;
			s_need_more <= '0';
			s_res_buff  <= (others => 0);
			cur_state0  <= idle;
		elsif (rising_edge(clk)) then
			case (cur_state0) is
				when idle =>
					o_trng_w <= '0';
					if (go = '1') then
						next_state0 <= rng0;
						o_trng_w    <= '1';
						o_trng_r    <= '0';
						if (s_need_more = '1') then
							s_expect    <= s_expect *2;
							o_trng_data <= std_logic_vector(to_unsigned(s_expect,PORT_WIDTH)*2);
						else
							s_expect    <= 4;
							index       <= 0 ;
							o_trng_data <= std_logic_vector(to_unsigned(4,PORT_WIDTH)); -- Only need 4 bytes
						end if;
						s_need_more <= '0';
					else
						s_need_more <= '0';
						s_expect    <= 4;
						index       <= 0;
						next_state0 <= idle;
					end if;

				when rng0 =>
					if (go = '1') then -- Can actually remove this state?
						o_trng_w    <= '0';
						o_trng_r    <= '0';
						next_state0 <= rng1;
					else
						s_need_more <= '0';
						s_expect    <= 4;
						index       <= 0;
						next_state0 <= idle;
					end if;

				when rng1 =>
					if (go = '1') then
						o_trng_w    <= '0';
						o_trng_r    <= '1';
						next_state0 <= rng2;
					else
						s_need_more <= '0';
						s_expect    <= 4;
						index       <= 0;
						next_state0 <= idle;
					end if;

				when rng2 =>
					if (go = '1') then
						if (i_trng_valid = '1') then
							case (to_integer(unsigned(opcode))) is
								when ADD_OP'low to ADD_OP'high =>
									s_res_buff(index) <= to_integer(signed(rd0)+signed(rd1));
								when SUB_OP'low to SUB_OP'high =>
									s_res_buff(index) <= to_integer(signed(rd0)-signed(rd1));
								when MUL_OP'low to MUL_OP'high =>
									s_res_buff(index) <= to_integer(signed(rd0)*signed(rd1));
								when DIV_OP'low to DIV_OP'high =>
									s_res_buff(index) <= to_integer(signed(rd0)/signed(rd1));
								when others =>
									report "Error : Unexpected OPCODE!" severity error;
							end case;
							index <= index +1;
						end if;

						if(i_trng_done = '1') then
							next_state0 <= rng3;
						end if;
					else
						s_need_more <= '0';
						s_expect    <= 4;
						index       <= 0;
						next_state0 <= idle;
					end if;

				when rng3 =>
					o_trng_r <= '0';
					if ( go = '1') then
						s_need_more <= '1';
						next_state0 <= idle;
					else
						s_need_more <= '0';
						s_expect    <= 4;
						index       <= 0;
						next_state0 <= idle;
					end if;

				when others =>
					null;
			end case;
		else
			next_state0 <= cur_state0;
		end if;
		cur_state0 <= next_state0;
	end process;

end architecture Behavioral;