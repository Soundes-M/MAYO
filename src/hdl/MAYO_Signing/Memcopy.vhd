--------------------------------------------------------------------------------
-- Title       : MEMCPY
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : Memcopy.vhd
-- Author      : Oussama Sayari 
-- Company     : TU BERLIN
-- Created     : Mon Jan  9 00:23:33 2023
-- Last update : Thu Jan 26 15:52:20 2023
-- Platform    : Default Part Number
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 User Company Name
-------------------------------------------------------------------------------
-- Description: Memcpy hardware implmentation using two BRAM ports 
-- CHECK i_mem_port_sel for configuration
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

entity memcpy is
	port (
		clk : in std_logic;
		rst : in std_logic;

		start          : in  std_logic;
		i_src_adr      : in  std_logic_vector(31 downto 0);
		i_dst_adr      : in  std_logic_vector(31 downto 0);
		i_len          : in  std_logic_vector(31 downto 0);
		o_done         : out std_logic;
		i_mem_port_sel : in  std_logic_vector(1 downto 0);

		--BRAM0-A
		i_src_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_src_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_src_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_src_en   : out std_logic;
		o_src_rst  : out std_logic;
		o_src_we   : out std_logic_vector (3 downto 0);

		--BRAM0-B
		i_dest_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_dest_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_dest_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_dest_en   : out std_logic;
		o_dest_rst  : out std_logic;
		o_dest_we   : out std_logic_vector (3 downto 0)
	);

end entity memcpy;

architecture Behavioral of memcpy is
	type states_t is (idle, cpy0, cpy1, cpy2, cpy3, cpy4, cpy5, cpy6, cpy7, cpy8, cpy9, cpy10, done, done0, done1);
	signal state                : states_t := idle;
	signal copy_index           : integer  := 0 ;
	signal s_src_adr, s_dst_adr : std_logic_vector(31 downto 0);
	signal len                  : integer                      := 0;
	signal s_mode               : std_logic_vector(1 downto 0) := "00" ;
	-- 00 Two ports
	-- 01 1 port: src 
	-- 10 1 port: dest
	-- 11 RESERVED 

	signal bram_src : bram_t := DEFAULT_BRAM;
	signal bram_dst : bram_t := DEFAULT_BRAM;

begin
	process(clk) is
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				copy_index <= 0;
				o_done     <= '0';
				len        <= 0 ;
				s_src_adr  <= ZERO_32;
				s_dst_adr  <= ZERO_32;
				state      <= idle;

			else
				case (state) is
					when idle =>
						o_done <= '0';

						if (start = '1')then
							s_src_adr  <= i_src_adr;
							s_dst_adr  <= i_dst_adr;
							len        <= to_integer(unsigned(i_len));
							s_mode     <= i_mem_port_sel;
							copy_index <= 0;

							case (i_mem_port_sel) is
								when "00" =>
									state <= cpy0;
								when "01" =>
									state <= cpy4;
								when "10" =>
									null;
								when "11" =>
									state <= idle; -- RESERVED
									null;
								when others =>
									state <= idle;
							end case ;

						else
							s_src_adr <= s_src_adr;
							s_dst_adr <= s_dst_adr;
							state     <= idle;
						end if;

					----------------------------------00-----------------------------------
					when cpy0 => --read
						bram_src.o.o_addr <= std_logic_vector(unsigned(s_src_adr));
						bram_src.o.o_we   <= "0000";
						bram_src.o.o_en   <= '1';
						state             <= cpy1;

					when cpy1 =>
						bram_dst.o.o_we <= "0000";
						bram_dst.o.o_en <= '0';
						state           <= cpy2;

					when cpy2 => -- writeback

						bram_dst.o.o_addr <= std_logic_vector(unsigned(s_dst_adr) + copy_index);
						bram_dst.o.o_din  <= bram_src.i.i_dout;
						bram_dst.o.o_en   <= '1';
						bram_dst.o.o_we   <= "1111";

						if (copy_index < len ) then -- keep copying copying len Bytes! [TODO Check this loop]
							copy_index        <= copy_index +4;
							bram_src.o.o_addr <= std_logic_vector(unsigned(bram_src.o.o_addr) +4);
							state             <= cpy1;
						else
							bram_src.o.o_we <= "0000";
							bram_src.o.o_en <= '0';
							state           <= done;
						end if;

					when done =>
						bram_dst.o.o_en <= '0';
						bram_dst.o.o_we <= "0000";
						o_done          <= '1';
						state           <= idle;

					--------------------------------------01------------------------------------------
					when cpy4 =>
						bram_src.o.o_addr <= std_logic_vector(unsigned(s_src_adr)+ copy_index);
						bram_src.o.o_we   <= "0000";
						bram_src.o.o_en   <= '1';
						state             <= cpy5;

					when cpy5 =>
						state <= cpy6;

					when cpy7 =>
						bram_src.o.o_addr <= std_logic_vector(unsigned(s_dst_adr) + copy_index);
						bram_src.o.o_din  <= bram_src.i.i_dout;
						bram_src.o.o_en   <= '1';
						bram_src.o.o_we   <= "1111";
						if (copy_index < len) then
							copy_index <= copy_index +4;
							state      <= cpy4;
						else
							state <= done0;
						end if;

					when done0 =>
						o_done          <= '1';
						bram_src.o.o_en <= '0';
						bram_src.o.o_we <= "0000";
						state           <= idle;

					--------------------------------------10-------------------------------------------
					when cpy8 =>
						bram_dst.o.o_addr <= std_logic_vector(unsigned(s_src_adr)+ copy_index);
						bram_dst.o.o_we   <= "0000";
						bram_dst.o.o_en   <= '1';
						state             <= cpy9;

					when cpy9 =>
						state <= cpy10;

					when cpy10 =>
						bram_dst.o.o_addr <= std_logic_vector(unsigned(s_dst_adr) + copy_index);
						bram_dst.o.o_din  <= bram_dst.i.i_dout;
						bram_dst.o.o_en   <= '1';
						bram_dst.o.o_we   <= "1111";
						if (copy_index < len) then
							copy_index <= copy_index +4;
							state      <= cpy8;
						else
							state <= done0;
						end if;

					when done1 =>
						o_done          <= '1';
						bram_dst.o.o_en <= '0';
						bram_dst.o.o_we <= "0000";
						state           <= idle;

					when others =>
						state <= idle;

				--------------------------------------------------------------------
				end case ;
			end if;
		end if;
	end process;

	bram_src.i.i_dout <= i_src_dout;
	o_src_din         <= bram_src.o.o_din;
	o_src_addr        <= bram_src.o.o_addr;
	o_src_en          <= bram_src.o.o_en;
	o_src_rst         <= bram_src.o.o_rst;
	o_src_we          <= bram_src.o.o_we;

	--BRAM0-B
	bram_dst.i.i_dout <= i_dest_dout;
	o_dest_din        <= bram_dst.o.o_din;
	o_dest_addr       <= bram_dst.o.o_addr;
	o_dest_en         <= bram_dst.o.o_en;
	o_dest_rst        <= bram_dst.o.o_rst;
	o_dest_we         <= bram_dst.o.o_we;
end architecture Behavioral;
