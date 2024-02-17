--------------------------------------------------------------------------------
-- Title       : Negate Func
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_negate.vhd
-- Author      : XXXXX
-- Company     : 
-- Created     : Thu Jul 14 19:35:22 2022
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 XXXXX
-------------------------------------------------------------------------------
-- Description: 
-- Negate Input and write Output to BRAM (4 Bytes/CLK)
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
use work.UTILS_COMMON.all;

entity mayo_negate is
	generic (
		BRAM_SIZE : natural := 32 -- 2^13 = 8K
	);
	port (
		i_clk     : in  std_logic;                      -- CLK
		rst       : in  std_logic;                      -- RST
		i_enable  : in  std_logic;                      -- ENABLE
		i_len     : in  std_logic_vector (31 downto 0); -- BYTE LEN
		i_adr     : in  std_logic_vector(BRAM_SIZE-1 downto 0);
		i_doutb   : in  std_logic_vector (31 downto 0); -- dout port bram
		o_addrb   : out std_logic_vector (31 downto 0); -- address port bram
		o_dinb    : out std_logic_vector (31 downto 0); -- din port bram
		o_enb     : out std_logic;                      -- enable read, write, reset operations port b  
		o_rstb    : out std_logic;                      -- reset port b 
		o_web     : out std_logic_vector (3 downto 0);  -- write enable port b   
		o_done    : out std_logic;
		o_control : out std_logic
	);
end mayo_negate;

architecture Behavioral of mayo_negate is

	ATTRIBUTE X_INTERFACE_INFO              : STRING;
	ATTRIBUTE X_INTERFACE_INFO of o_dinb    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_addrb   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_enb     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate EN";
	ATTRIBUTE X_INTERFACE_INFO of o_rstb    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate RST";
	ATTRIBUTE X_INTERFACE_INFO of o_web     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate WE";
	ATTRIBUTE X_INTERFACE_INFO of i_doutb   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate CTRL";

	type state is (idle, read1, read2,read3, write1, write2, done);
	signal t_state   : state := idle;
	signal s_rstb    : std_logic;
	signal s_enb     : std_logic;
	signal s_web     : std_logic_vector(3 downto 0);                              -- enable port b (4 Cells)
	signal s_addrb   : std_logic_vector(BRAM_SIZE-1 downto 0) := (others => '0'); -- Max Depth 8k 
	signal s_data    : std_logic_vector(31 downto 0)          := (others => '0');
	signal s_index   : natural                                := 0 ; --LOOP INDEX
	signal s_max_len : natural                                := 0 ;
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
						s_rstb    <= '0';
						s_addrb   <= (others => '0');
						s_enb     <= '0';
						s_web     <= "0000";
						o_done    <= '0';
						o_control <= '0';
						if(i_enable = '1') then -- START
							t_state   <= read1;
							s_max_len <= to_integer(unsigned(i_len)); -- Div 4
							s_addrb   <= i_adr;
							o_control <= '1';
							s_index   <= 0 ;
						else
							t_state <= idle;
						end if;

					when read1 =>
						--s_addrb <= std_logic_vector(unsigned(s_addrb) + to_unsigned(s_index,PORT_WIDTH)); -- Set READ ADR
						if (s_index /= 0) then
							s_addrb <= std_logic_vector(unsigned(s_addrb) + 4);
						end if;
						s_enb   <= '1';
						s_rstb  <= '0';
						s_web   <= "0000";
						t_state <= read3;

					when read3 => -- BRAM delay
						t_state <= read2;

					when read2 =>
						s_data  <= i_doutb; -- Get DATA
						s_enb   <= '0';
						t_state <= write1;

					when write1 =>
						s_data(7 downto 0)   <= std_logic_vector((to_signed(PRIME,8) - signed(s_data(7 downto 0))) mod PRIME);
						s_data(15 downto 8)  <= std_logic_vector((to_signed(PRIME,8) - signed(s_data(15 downto 8))) mod PRIME);
						s_data(23 downto 16) <= std_logic_vector((to_signed(PRIME,8) - signed(s_data(23 downto 16))) mod PRIME);
						s_data(31 downto 24) <= std_logic_vector((to_signed(PRIME,8) - signed(s_data(31 downto 24))) mod PRIME);
						t_state              <= write2;

					when write2 =>
						s_enb <= '1';
						s_web <= "1111"; -- WRITE result back to ADR
						if (s_index >= s_max_len-4) then
							t_state <= done;
						else
							s_index <= s_index +4;
							t_state <= read1;
						end if;

					when done =>
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

	o_addrb <= s_addrb; -- Default 32Bits
	o_dinb  <= s_data;
	o_enb   <= s_enb;
	o_rstb  <= s_rstb;
	o_web   <= s_web;

end architecture ; -- arch

