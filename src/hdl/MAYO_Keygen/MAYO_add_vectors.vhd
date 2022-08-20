--------------------------------------------------------------------------------
-- Title       : Add Vectors
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_add_vectors.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Last update : Sat Aug 20 21:56:57 2022
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: 
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

entity mayo_add_vectors is
	port (
		i_clk      : in  std_logic;                               -- CLK
		rst        : in  std_logic;                               -- RST
		i_enable   : in  std_logic;                               -- ENABLE
		i_v1_addr  : in  std_logic_vector(PORT_WIDTH-1 downto 0); -- V1 ADR in BRAM
		i_v2_addr  : in  std_logic_vector(PORT_WIDTH-1 downto 0); -- V2 ADR in BRAM
		i_out_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0); -- OUT ADR in BRAM
		o_done     : out std_logic;                               -- DONE

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
	);

end entity mayo_add_vectors;


architecture Behavioral of mayo_add_vectors is
	type state is (idle, read1, read2, read3, waiting, done);
	type state_1 is (idle, main, write1);

	signal s_state      : state     := idle;
	signal s_state_1    : state_1   := idle;
	signal s_ctr        : natural   := 0;
	signal s_main_start : std_logic := '0';
	signal s_io_read    : std_logic := '0';

	constant INDEX : natural := M;

	signal s_v1_addr  : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- V1 ADR in BRAM
	signal s_v2_addr  : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- V2 ADR in BRAM
	signal s_out_addr : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- OUT ADR in BRAM
	signal s_out      : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');

	signal s_v1 : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
	signal s_v2 : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
begin
	IO_READ : process(i_clk) is
	begin
		if (rising_edge (i_clk)) then
			if (rst = '1') then
				o_done      <= '0';
				s_v1_addr   <= (others => '0');
				s_v2_addr   <= (others => '0');
				s_out_addr  <= (others => '0');
				s_ctr       <= 0;
				s_io_read   <= '0';
				s_state     <= idle;
				o_mema_din  <= (others => '0');
				o_mema_en   <= '0';
				o_mema_rst  <= '0';
				o_mema_addr <= (others => '0');
				o_mema_we   <= "0000";
			else
				case (s_state) is
					when idle =>
						o_done     <= '0';
						s_v1_addr  <= (others => '0');
						s_v2_addr  <= (others => '0');
						s_out_addr <= (others => '0');
						s_ctr      <= 0;
						s_io_read  <= '0';
						if (i_enable = '1') then
							s_state    <= read1;
							s_v1_addr  <= i_v1_addr;
							s_v2_addr  <= i_v2_addr;
							s_out_addr <= i_out_addr;
						end if;
					when read1 => --READ BLOCK from v1 and v2

						-- V1 BRAM A
						o_mema_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						o_mema_en   <= '1';
						o_mema_rst  <= '0';
						o_mema_we   <= "0000";
						s_state     <= read2;

					when read2 =>
						s_v1 <= i_mema_dout;
						-- V2 BRAM A
						o_mema_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						o_mema_en   <= '1';
						o_mema_rst  <= '0';
						o_mema_we   <= "0000";
						s_state     <= read3;

					when read3 =>
						s_v2         <= i_mema_dout;
						o_mema_en    <= '0';
						s_main_start <= '1';
						if (s_ctr > INDEX) then
							s_state <= done;
						else
							s_ctr   <= s_ctr + 4;
							s_state <= waiting;
						end if;

					when waiting => -- Another BLOCK is needed .. waiting
						if (s_io_read = '1') then
							s_io_read <= '0'; -- ACK
							s_state   <= read1;
						end if;
					when done =>
						o_done  <= '1';
						s_state <= idle;
					when others =>
						null;
				end case;
			end if;
		end if;
	end process;

	MAIN_Pr : process(i_clk) is
	begin
		if (rising_edge (i_clk)) then
			if (rst ='1') then
				o_memb_din  <= (others => '0');
				o_memb_en   <= '0';
				o_memb_rst  <= '0';
				o_memb_addr <= (others => '0');
				o_memb_we   <= "0000";
				s_state_1   <= idle;
			else
				case (s_state_1) is
					when idle =>
						if (s_main_start = '1') then
							s_state_1 <= main;
						end if;
					when main =>
						for k in 0 to 3 loop -- ADDITION && MOD
							o_memb_din(k*8+7 downto k*8) <= std_logic_vector(resize(unsigned(s_v1(k*8+7 downto k*8)) + unsigned(s_v2(k*8+7 downto k*8)),8) mod PRIME);
						end loop;
						s_io_read <= '1'; -- need next block
						s_state_1 <= write1;
					when write1 =>
						o_memb_en    <= '1';
						o_memb_we    <= "1111"; -- WRITE result back to ADR
						o_memb_addr  <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						s_main_start <= '0'; -- ACK
						s_state_1    <= idle;
					when others =>
						null;

				end case;

			end if;
		end if;
	end process;

end architecture Behavioral;