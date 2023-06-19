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
		i_oil_addr   : in  std_logic_vector(31 downto 0);
		i_mode       : in  std_logic; -- 0 : keygen, 1 : signing
		o_trng_r     : out std_logic;
		o_trng_w     : out std_logic;
		o_trng_data  : out std_logic_vector(31 downto 0);
		i_trng_data  : in  std_logic_vector(31 downto 0);
		i_trng_valid : in  std_logic;
		i_trng_done  : in  std_logic;

		--BRAM-0
		-- ONLY FOR KEYGEN! Using 1 BRAM port
		i_mema_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_en   : out std_logic;
		o_mema_rst  : out std_logic;
		o_mema_we   : out std_logic_vector (3 downto 0);
		o_controla  : out std_logic;

		--BRAM-1
		i_memb_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_en   : out std_logic;
		o_memb_rst  : out std_logic;
		o_memb_we   : out std_logic_vector (3 downto 0);
		o_controlb  : out std_logic;
		o_trng_sel  : out std_logic
	);
end entity mayo_sample_oil_space;

architecture Behavioral of mayo_sample_oil_space is

	ATTRIBUTE X_INTERFACE_INFO                : STRING;
	ATTRIBUTE X_INTERFACE_INFO of o_mema_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mema_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_controla  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_memb_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb EN";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb RST";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb WE";
	ATTRIBUTE X_INTERFACE_INFO of i_memb_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_controlb  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb CTRL";

	ATTRIBUTE X_INTERFACE_IGNORE               : STRING;
	ATTRIBUTE X_INTERFACE_IGNORE OF i_oil_addr : SIGNAL IS "TRUE";

	type state is (idle, rand0, rand1, rand2, rand3, main1, main2, main3, main4, main5, main6, main7, main8, done);

	signal t_state : state := idle;

	--signal s_seed : array_32 (0 to ((SEED_BYTES / 4)-1)); -- TODO Possibilty to make this outisde of this module (Not in BRAM either) (REMOVED SEED IS ONLY IN BRAM)

	--signal s_seed_index : natural   := 0; -- BRAM counter 

	signal s_rand      : std_logic_vector(31 downto 0);
	signal s_oil_space : std_logic_vector(31 downto 0);
	signal s_ctr       : natural := 0; -- BRAM Counter
	signal s_oil_adr   : std_logic_vector(31 downto 0);
	signal s_oil_index : natural := 0; -- BRAM counter 
	signal index       : natural := 0 ;
	signal mode        : std_logic;

	signal i   : integer := 0;
	signal k   : integer := 0;
	signal tmp : integer := 0 ;


	--signal s_brama_addr : std_logic_vector(31 downto 0) := ZERO_32;

begin

	IO : process (i_clk) is

	begin
		if (rising_edge (i_clk)) then
			if (rst = '1') then
				index       <= 0;
				i           <= 0 ;
				k           <= 0 ;
				o_done      <= '0';
				s_ctr       <= 0;
				s_rand      <= ZERO_32;
				o_trng_sel  <= '0';
				o_trng_w    <= '0';
				o_trng_r    <= '0';
				mode        <= '0';

				o_memb_en   <= '0';
				o_memb_addr <= ZERO_32;
				o_memb_we   <= "0000";
				o_memb_din  <= ZERO_32;
				o_controlb  <= '0';
				o_mema_en   <= '0';
				o_mema_addr <= ZERO_32;
				o_mema_we   <= "0000";
				o_mema_din  <= ZERO_32;
				o_controla  <= '0';
				
				s_oil_adr   <= (others => '0');
				s_oil_space <= ZERO_32;
				tmp         <= 0;
				t_state     <= idle;

			else
				case t_state is
					when idle =>
						--s_seed_index  <= 0;
						s_oil_adr  <= (others => '0');
						o_trng_sel <= '0';
						o_controla <= '0';
						o_controlb <= '0';

						if (i_enable = '1') then -- START
							o_controla <= '1';
							o_controlb <= '1';
							s_oil_adr  <= i_oil_addr;
							mode       <= i_mode;
							t_state    <= rand0;
							o_trng_sel <= '1';
						end if;

					when rand0 =>
						o_trng_w    <= '1';
						o_trng_r    <= '0';
						o_trng_data <= std_logic_vector(to_unsigned(OIL_SPACE_BYTES*2,PORT_WIDTH));
						o_mema_we   <= "1111";
						o_mema_addr <= std_logic_vector(to_unsigned(RANDOMNESS_BASE_ADR,PORT_WIDTH));
						t_state     <= rand1;

					when rand1 =>
						o_trng_w    <= '0';
						o_trng_data <= ZERO_32;
						t_state     <= rand2;

					when rand2 =>
						o_trng_r <= '1';
						if ( i_trng_valid = '1') then
							o_mema_en   <= '1';
							o_mema_din  <= i_trng_data;
							o_mema_addr <= std_logic_vector(to_unsigned(RANDOMNESS_BASE_ADR+index,PORT_WIDTH)) ;
							index       <= index + 4;
							if (i_trng_done = '1') then
								t_state <= rand3;
							end if;

						else
							o_mema_en <= '0';
						end if;

					when rand3 =>
						o_trng_r    <= '0';
						o_mema_we   <= "0000";
						o_mema_en   <= '0';
						t_state     <= main1;
						s_ctr       <= 0;
						s_oil_index <= 0;

					when main1 =>
						o_trng_sel  <= '0';
						o_mema_addr <= std_logic_vector(to_unsigned(RANDOMNESS_BASE_ADR + s_ctr,PORT_WIDTH));
						o_mema_en   <= '1';
						o_mema_rst  <= '0';
						o_mema_we   <= "0000";
						t_state     <= main7;

					when main7 => -- ADD CLOCK DELAY HERE! 100ps delayBRAM
						t_state <= main2;
						i       <= 0 ;

					when main2 => -- GET 4 Bytes of randomness  
						s_rand    <= i_mema_dout;
						o_mema_en <= '0';
						t_state   <= main8;

					when main8 =>
						tmp     <= to_integer(unsigned(s_rand(7+i*8 downto i*8))) mod 32; -- ARITH
						t_state <= main3;

					when main3 =>
						-- 32 = (1<<PRIME_BITS)
						if (tmp >= PRIME) then
							if (i < 3) then
								i       <= i +1;
								t_state <= main8;
							else
								s_ctr   <= s_ctr +4 ;
								t_state <= main1; -- Get next 32 Bits of randomness
							end if;
						else
							t_state <= main4;
						end if;

					when main4 => -- oil_space[i] = randomness[ctr]
						s_oil_space(7+k*8 downto k*8) <= s_rand(7+i*8 downto i*8);
						if (k < 3) then
							k <= k +1;
							if (i <3) then
								i       <= i +1 ;
								t_state <= main8;
							else
								s_ctr   <= s_ctr + 4;
								t_state <= main1; -- Get next 32 Bits of randomness
							end if;
						else
							k       <= 0 ;
							t_state <= main5;
						end if;

					when main5 => -- OIL_SPACE TO BRAM
						if (mode = '1') then
							o_memb_addr <= std_logic_vector(unsigned(s_oil_adr) + s_oil_index);
							o_memb_din  <= s_oil_space;
							o_memb_en   <= '1';
							o_memb_rst  <= '0';
							o_memb_we   <= "1111"; -- WRITE FULLWORD in BRAM 
						else
							o_mema_addr <= std_logic_vector(unsigned(s_oil_adr) + s_oil_index);
							o_mema_din  <= s_oil_space;
							o_mema_en   <= '1';
							o_mema_rst  <= '0';
							o_mema_we   <= "1111"; -- WRITE FULLWORD in BRAM 
						end if;
						t_state <= main6;

					when main6 =>
						if (mode = '1') then
							o_memb_en <= '0';
							o_memb_we <= "0000";
						else
							o_mema_en <= '0';
							o_mema_we <= "0000";
						end if;
						if (s_oil_index < OIL_SPACE_RANGE -4) then
							s_oil_index <= s_oil_index +4 ;
							if (i <3) then
								i       <= i +1 ;
								t_state <= main8;
							else
								s_ctr   <= s_ctr + 4;
								t_state <= main1; -- Get next 32 Bits of randomness
							end if;
						else
							t_state <= done;
						end if;

					when done =>
						report "Sample Oil space done, ctr = " & integer'image(s_ctr);
						o_done      <= '1';
						s_oil_index <= 0;
						i           <= 0;
						k           <= 0;
						s_ctr       <= 0;
						o_memb_addr <= (others => '0');
						o_memb_en   <= '0';
						o_memb_we   <= "0000";
						t_state     <= idle;

					when others =>
						null;
				end case;
			end if;
		end if;
	end process;
end architecture Behavioral;
