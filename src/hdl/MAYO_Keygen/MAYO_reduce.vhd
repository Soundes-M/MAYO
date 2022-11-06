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
use work.UTILS_COMMON.all;

entity mayo_reduce is
	generic (
		BRAM_SIZE : natural := 32 -- 2^13 = 8K
	);
	port (
		i_clk      : in std_logic;                      -- CLK
		rst        : in std_logic;                      -- RST
		i_enable   : in std_logic;                      -- ENABLE
		i_bram_sel : in std_logic;                      -- Select BRAM (SMALL/BIG) ( KEEP HIGH / LOW at all time)
		i_len      : in std_logic_vector (31 downto 0); -- BYTE LEN
		i_adr      : in std_logic_vector (31 downto 0); -- ADR in BRAM

		--SMALL BRAM
		i_dout0 : in  std_logic_vector (31 downto 0); -- dout port bram
		o_addr0 : out std_logic_vector (31 downto 0); -- address port bram
		o_din0  : out std_logic_vector (31 downto 0); -- din port bram
		o_en0   : out std_logic;                      -- enable read, write, reset operations port b  
		o_rst0  : out std_logic;                      -- reset port b 
		o_we0   : out std_logic_vector (3 downto 0);  -- write enable port b  

		-- BIG BRAM
		i_dout1 : in  std_logic_vector (31 downto 0); -- dout port bram
		o_addr1 : out std_logic_vector (31 downto 0); -- address port bram
		o_din1  : out std_logic_vector (31 downto 0); -- din port bram
		o_en1   : out std_logic;                      -- enable read, write, reset operations port b  
		o_rst1  : out std_logic;                      -- reset port b 
		o_we1   : out std_logic_vector (3 downto 0);  -- write enable port b   

		o_done     : out std_logic;
		o_control0 : out std_logic;
		o_control1 : out std_logic
	);
end mayo_reduce;

architecture Behavioral of mayo_reduce is

	type state is (idle, read1, read2,read3, write1, write2, done);
	signal t_state   : state := idle;
	signal s_rstb    : std_logic;
	signal s_enb     : std_logic;
	signal s_web     : std_logic_vector(3 downto 0);                              -- enable port b (4 Cells)
	signal s_addrb   : std_logic_vector(BRAM_SIZE-1 downto 0) := (others => '0'); -- Max Depth 8k 
	signal s_data    : std_logic_vector(31 downto 0)          := (others => '0');
	signal s_index   : natural                                := 0 ; --LOOP INDEX
	signal s_max_len : natural                                := 0 ;
	signal s_addr    : std_logic_vector (31 downto 0)         := (others => '0');

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
				s_index <= 0;
			else
				case t_state is
					when idle =>
						s_rstb     <= '0';
						s_addrb    <= (others => '0');
						s_enb      <= '0';
						s_web      <= "0000";
						o_done     <= '0';
						o_control0 <= '0';
						o_control1 <= '1';

						if(i_enable = '1') then -- START
							t_state   <= read1;
							s_addr    <= i_adr;
							s_max_len <= TO_INTEGER(unsigned(i_len));
							if i_bram_sel ='1' then
								o_control0 <= '0';
								o_control1 <= '1';
							else
								o_control0 <= '1';
								o_control1 <= '0';
							end if ;
						else
							t_state <= idle;
						end if;

					when read1 =>
						s_addrb <= s_addr; -- Set READ ADR
						s_enb   <= '1';
						s_rstb  <= '0';
						s_web   <= "0000";
						t_state <= read2;

					when read3 =>
						s_enb   <= '1';
						s_rstb  <= '0';
						s_web   <= "0000";
						t_state <= read2;

					when read2 =>
						if i_bram_sel = '0' then -- GET DATA
							s_data <= i_dout0;
						else
							s_data <= i_dout1;
						end if ;
						s_enb   <= '0';
						t_state <= write1;

					when write1 =>
						s_data(7 downto 0)   <= std_logic_vector(unsigned(s_data(7 downto 0)) mod PRIME);
						s_data(15 downto 8)  <= std_logic_vector(unsigned(s_data(15 downto 8)) mod PRIME);
						s_data(23 downto 16) <= std_logic_vector(unsigned(s_data(23 downto 16)) mod PRIME);
						s_data(31 downto 24) <= std_logic_vector(unsigned(s_data(31 downto 24)) mod PRIME);
						t_state              <= write2;

					when write2 =>
						s_enb   <= '1';
						s_web   <= "1111";                                  -- WRITE result back to ADR
						s_addrb <= std_logic_vector(to_unsigned(s_index,PORT_WIDTH)); -- Go to next ADR
						if (s_index > s_max_len) then
							t_state <= done;
						else
							s_index <= s_index +4;
							t_state <= read3;
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

	o_addr0 <= s_addrb when i_bram_sel = '0' else ZERO_32; -- Default 32Bits
	o_din0  <= s_data  when i_bram_sel = '0' else ZERO_32;
	o_en0   <= s_enb   when i_bram_sel = '0' else '0';
	o_rst0  <= s_rstb  when i_bram_sel = '0' else '0';
	o_we0   <= s_web   when i_bram_sel = '0' else (others => '0');

	o_addr1 <= s_addrb when i_bram_sel = '1' else ZERO_32; -- Default 32Bits
	o_din1  <= s_data  when i_bram_sel = '1' else ZERO_32;
	o_en1   <= s_enb   when i_bram_sel = '1' else '0';
	o_rst1  <= s_rstb  when i_bram_sel = '1' else '0';
	o_we1   <= s_web   when i_bram_sel = '1' else (others => '0');

end architecture ; -- Behavioral