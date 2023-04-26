--------------------------------------------------------------------------------
-- Title       : Sample Vinegar Core
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Sample_Vinegar.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 User Company Name
-------------------------------------------------------------------------------
-- Description: Samples vinegar using randomness func
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_sample_vinegar is
	port (
		clk    : in  std_logic;
		rst    : in  std_logic;
		en     : in  std_logic;
		o_done : out std_logic;

		i_input_adr : in std_logic_vector(PORT_WIDTH-1 downto 0);

		o_trng_r     : out std_logic;
		o_trng_w     : out std_logic;
		o_trng_data  : out std_logic_vector(31 downto 0);
		i_trng_data  : in  std_logic_vector(31 downto 0);
		i_trng_valid : in  std_logic;
		i_trng_done  : in  std_logic;
		o_trng_sel   : out std_logic;

		-- Small BRAM!
		i_memb_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_en   : out std_logic;
		o_memb_rst  : out std_logic;
		o_memb_we   : out std_logic_vector (3 downto 0);
		o_controlb  : out std_logic

	);
end entity mayo_sample_vinegar;


architecture Behavioral of mayo_sample_vinegar is

	type states_t is (idle, rand0, rand1, rand2, rand3, main1, main2, main3, main4, main5, main6, main7, main8, main9, done);
	signal state     : states_t := idle;
	signal i,j,k     : integer;
	signal c         : integer := 0;
	signal s_ctr     : integer := 0;
	signal index     : integer := 0;
	signal out_index : integer := 0;

	signal s_need_rand : std_logic := '1';
	signal s_rand      : std_logic_vector(PORT_WIDTH-1 downto 0);

	signal s_input_adr : std_logic_vector(PORT_WIDTH-1 downto 0) := ZERO_32;
	signal s_inputs    : std_logic_vector(PORT_WIDTH-1 downto 0) := ZERO_32;

begin
	process(clk) is
	begin
		if(rising_edge(clk)) then
			if (rst = '1') then
				state       <= idle;
				c           <= 0;
				i           <= 0;
				j           <= 0;
				out_index   <= 0 ;
				index       <= 0;
				s_need_rand <= '1';
				s_rand      <= ZERO_32;
				o_controlb  <= '0';
			else
				case state is
					when idle =>
						o_done <= '0';
						if (en = '1') then
							s_input_adr <= i_input_adr;
							index       <= 0;
							out_index   <= 0;
							c           <= 0;
							i           <= 0;
							j           <= 0;
							s_need_rand <= '1';
							o_controlb  <= '1';
							state       <= rand0;

						else
							s_input_adr <= ZERO_32;
							o_controlb  <= '0';
							state       <= idle;
						end if;

					when rand0 =>
						o_trng_w    <= '1';
						o_trng_r    <= '0';
						o_trng_data <= std_logic_vector(to_unsigned(N*K,PORT_WIDTH));
						o_memb_we   <= "1111";
						o_memb_addr <= std_logic_vector(to_unsigned(RANDOMNESS_BASE_ADR,PORT_WIDTH));
						state       <= rand1;
						o_trng_sel  <= '1';

					when rand1 =>
						o_trng_w    <= '0';
						o_trng_data <= ZERO_32;
						state       <= rand2;

					when rand2 =>
						o_trng_r <= '1';

						if ( i_trng_valid = '1') then
							o_memb_en   <= '1';
							o_memb_din  <= i_trng_data;
							o_memb_addr <= std_logic_vector(to_unsigned(RANDOMNESS_BASE_ADR+index,PORT_WIDTH)) ;
							index       <= index + 4;
							if (i_trng_done = '1') then
								state <= rand3;
							end if;

						else
							o_memb_en <= '0';
						end if;

					when rand3 =>
						o_trng_r  <= '0';
						o_memb_we <= "0000";
						o_memb_en <= '0';
						index     <= 0;
						out_index <= 0;
						state     <= main1;

					when main1 =>
						if (i < K) then
							j     <= 0 ;
							state <= main2;
						else
							state <= done;
						end if;

					when main2 =>
						if (j < N-O) then
							state <= main3;
						else
							i           <= i+1;
							s_input_adr <= std_logic_vector(unsigned(s_input_adr) + N);
							state       <= main1;
						end if;

					when main3 =>
						if (s_need_rand = '1') then
							o_memb_addr <= std_logic_vector(to_unsigned(RANDOMNESS_BASE_ADR + index,PORT_WIDTH));
							o_memb_en   <= '1';
							o_memb_rst  <= '0';
							o_memb_we   <= "0000";
							state       <= main4;
						else
							state <= main6;
						end if;

					when main4 =>
						s_ctr       <= 0 ;
						s_need_rand <= '0';
						state       <= main5;

					when main5 =>
						o_memb_en <= '0';

						-- 32 = (1<<PRIME_BITS)
						for m in 0 to 3 loop
							s_rand(7+m*8 downto m*8) <= std_logic_vector(unsigned(i_memb_dout(7+m*8 downto m*8)) mod 32);
						end loop;
						state <= main6;

					when main6 =>
						if (unsigned(s_rand(7+s_ctr*8 downto s_ctr*8)) >= PRIME) then
							c <= c+1;
							if (s_ctr < 3) then
								s_ctr <= s_ctr +1;
								state <= main6;
							else
								s_need_rand <= '1';
								index       <= index +4;
								state       <= main3;
							end if;
						else
							state <= main7;
						end if;

					when main7 =>
						s_inputs(7+k*8 downto k*8) <= s_rand(7+s_ctr*8 downto s_ctr*8);
						if (k < 3) then
							k     <= k +1;
							state <= main9;
						else -- Write inputs to BRAM
							k     <= 0;
							state <= main8;
						end if;

					when main8 =>
						o_memb_addr <= std_logic_vector(unsigned(s_input_adr) + out_index);
						o_memb_din  <= s_inputs;
						o_memb_en   <= '1';
						o_memb_we   <= "1111"; -- WRITE FULLWORD in BRAM 
						out_index   <= out_index +4;
						state       <= main9;

					when main9 =>
						o_memb_en <= '0';
						o_memb_we <= "0000";

						c <= c+1;
						if (s_ctr < 3) then
							s_ctr <= s_ctr +1;
						else
							s_need_rand <= '1';
							index       <= index +4;
						end if;

						j <= j+1;

						report "assert? " & integer'image(s_ctr) & "< " & integer'image(N*K);
						state <= main2;

					when done =>
						o_done <= '1';
						state  <= idle;

					when others =>
						state <= idle;
				end case;
			end if;
		end if;
	end process;

end architecture Behavioral;