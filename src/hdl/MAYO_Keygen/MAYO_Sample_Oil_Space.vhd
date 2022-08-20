--------------------------------------------------------------------------------
-- Title       : Sample Oil Space
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Sample_Oil_Space.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: Generate secret oil space (O-by-(N-O) matrix)
-- Uses HASH Core Inside	
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

entity mayo_sample_oil_space is
	port(
		i_clk    : in  std_logic; -- CLK
		rst      : in  std_logic; -- RST
		i_enable : in  std_logic; -- ENABLE
		o_done   : out std_logic; -- DONE

		-- CONTROL 
		i_oil_addr : in std_logic_vector(31 downto 0);

		-- SHAKE
		i_hash_done       : in  std_logic;
		i_hash_mnext      : in  std_logic;
		i_hash_output_o   : in  std_logic_vector(255 downto 0);
		o_hash_enable     : out std_logic;
		o_hash_len        : out std_logic_vector(10 downto 0);
		o_hash_output_len : out std_logic_vector(31 downto 0);
		o_hash_input      : out std_logic_vector(255 downto 0);

		--BRAM-A
		i_mema_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_en   : out std_logic;
		o_mema_rst  : out std_logic;
		o_mema_we   : out std_logic_vector (3 downto 0);

		--BRAM-B
		i_memb_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_en   : out std_logic;
		o_memb_rst  : out std_logic;
		o_memb_we   : out std_logic_vector (3 downto 0)

		-- TODO: FSM for hash done (Once first Full Word available)

	);
end entity mayo_sample_oil_space;


architecture Behavioral of mayo_sample_oil_space is

	type state is (idle, read_seed_1, read_seed_2, hash1, hash2, hash3, hash4, done);
	type state_1 is (idle, main1, main2, main3, main4, main5, main6, done);

	signal t_state   : state   := idle;
	signal t_state_1 : state_1 := idle;

	signal s_seed : array_32 (0 to ((SEED_BYTES / 4)-1)); -- TODO Possibilty to make this outisde of this module (Not in BRAM either)

	signal s_seed_index : natural   := 0;   -- BRAM counter 
	signal s_main_start : std_logic := '0'; -- Start the MAIN process 

	signal s_rand      : std_logic_vector(31 downto 0);
	signal s_oil_space : std_logic_vector(31 downto 0);
	signal s_ctr       : natural := 0; -- BRAM Counter
	signal s_oil_adr   : std_logic_vector(31 downto 0);
	signal s_oil_index : natural := 0; -- BRAM counter 


begin
	IO : process (i_clk) is
	begin
		if (rising_edge (i_clk)) then
			if (rst = '1') then
				t_state      <= idle;
				s_seed_index <= 0;
				s_main_start <= '0';
				s_oil_adr    <= (others => '0');

				o_done        <= '0';
				o_hash_enable <= '0';
				o_mema_en     <= '0';

			else
				case t_state is
					when idle =>
						s_seed_index  <= 0;
						s_main_start  <= '0';
						s_oil_adr     <= (others => '0');
						s_ctr         <= 0;
						o_done        <= '0';
						o_hash_enable <= '0';
						o_memb_en     <= '0';
						if (i_enable = '1') then -- START
							s_oil_adr <= i_oil_addr;
							t_state   <= read_seed_1;
						end if;
					when read_seed_1 =>
						o_mema_addr <= std_logic_vector(TO_UNSIGNED(SK_BASE_ADR + s_seed_index,PORT_WIDTH));
						o_mema_en   <= '1';
						o_mema_rst  <= '0';
						o_mema_we   <= "0000";
						t_state     <= read_seed_2;
					when read_seed_2 =>
						s_seed(s_seed_index) <= i_mema_dout;
						if (s_seed_index > SK_RANGE -1) then -- Done reading
							o_mema_en <= '0';
							t_state   <= hash1;
						else
							s_seed_index <= s_seed_index +4 ;
							t_state      <= read_seed_1;
						end if;
					when hash1 =>
						o_hash_len <= std_logic_vector(to_unsigned(OIL_SPACE_BYTES*2,10));

						-- TODO: Is For LOOP Unrolled
						for i in 0 to ((SEED_BYTES / 4)-1) loop -- Set HASH input as seed
							o_hash_input(31+i downto i) <= s_seed(i);
						end loop;
						o_hash_enable <= '1';

						t_state <= hash2;
					when hash2 =>
						if (i_hash_done = '1') then -- GET RESULT
							                        -- TODO : Hash OUTPUT NOT SUPPORTED (Maybe port to Using keccack.lib on ARMv8)
							t_state      <= hash3;
							s_main_start <= '1';
							-- Suppose that Hash here is done and Randomness is being written 
							-- While hash is being imported you can start with the for loop in MAIN
							-- Start once first 32 Bits arrived
							-- TODO : Finish Implementation

						end if;
					when hash3 =>
						null;
					when hash4 =>
						null;
					when done =>
						t_state <= idle;
					when others =>
						null;
				end case;
			end if;
		end if;
	end process;

	MAIN       : process(i_clk) is
		variable i : integer := 0;
		variable k : integer := 0;
	begin
		if (rising_edge (i_clk)) then
			if (rst = '1') then
				-- ALL RESET WERTE
				i         := 0 ;
				k         := 0 ;
				t_state_1 <= idle;
				o_memb_en <= '0';

			else
				case t_state_1 is
					when idle =>
						o_memb_en <= '0';

						if (s_main_start = '1') then
							t_state_1 <= main1;
						end if;

					when main1 =>
						-- USE BRAM PORT B 
						o_memb_addr <= std_logic_vector(to_unsigned(RANDOMNESS_BASE_ADR + s_ctr,PORT_WIDTH));
						o_memb_en   <= '1';
						o_memb_rst  <= '0';
						o_memb_we   <= "0000";
						t_state_1   <= main2;

					when main2 => -- GET 4 Bytes of randomness
						s_rand    <= i_memb_dout;
						o_memb_en <= '0';
						t_state_1 <= main3;
						i         := 0;

					when main3 =>
						-- 32 = (1<<PRIME_BITS)
						if ((unsigned(s_rand(7+i*8 downto i*8)) mod 32) >= PRIME) then
							if (i < 3) then
								i := i +1;
							else
								s_ctr     <= s_ctr +4 ;
								t_state_1 <= main1; -- Get next 32 Bits of randomness
							end if;
						else
							t_state_1 <= main4;
						end if;

					when main4 => -- oil_space[i] = randomness[ctr]
						s_oil_space(7+k*8 downto k*8) <= s_rand(7+i*8 downto i*8);
						if (k < 3) then
							k := k +1;
							if (i <3) then
								i         := i +1 ;
								t_state_1 <= main3;
							else
								s_ctr     <= s_ctr + 4;
								t_state_1 <= main1; -- Get next 32 Bits of randomness
							end if;
						else
							k         := 0 ;
							t_state_1 <= main5;
						end if;

					when main5 => -- OIL_SPACE TO BRAM
						o_memb_addr <= std_logic_vector(unsigned(s_oil_adr) + s_oil_index);
						o_memb_din  <= s_oil_space;
						o_memb_en   <= '1';
						o_memb_rst  <= '0';
						o_memb_we   <= "1111"; -- WRITE FULLWORD in BRAM 
						t_state_1   <= main5;

					when main6 =>
						if (s_oil_index > OIL_SPACE_RANGE -1) then
							t_state_1 <= done;
						else
							s_oil_index <= s_oil_index +4 ;
							t_state_1   <= main3;
						end if;

					when done =>
						o_done      <= '1';
						s_oil_index <= 0;
						o_memb_addr <= (others => '0');
						o_memb_en   <= '0';
						o_memb_we   <= "0000";
						t_state_1   <= idle;


					when others =>
						null;
				end case;
			end if;
		end if;
	end process;

end architecture Behavioral;
