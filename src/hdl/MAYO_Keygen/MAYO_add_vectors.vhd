--------------------------------------------------------------------------------
-- Title       : Add Vectors
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_add_vectors.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Last update : Sat Nov 26 22:12:54 2022
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: Please read the readme file and use the arbiter accordingly
-- add_vector : v1 + v2 = out (60==M steps)
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

		--BRAM-A(V1)
		i_mema_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_en   : out std_logic;
		o_mema_rst  : out std_logic;
		o_mema_we   : out std_logic_vector (3 downto 0);

		--BRAM-B(V2)
		i_memb_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_en   : out std_logic;
		o_memb_rst  : out std_logic;
		o_memb_we   : out std_logic_vector (3 downto 0);

		--BRAM-C(OUT)
		i_memc_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memc_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memc_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memc_en   : out std_logic;
		o_memc_rst  : out std_logic;
		o_memc_we   : out std_logic_vector (3 downto 0);

		o_controla : out std_logic;
		o_controlb : out std_logic;
		o_controlc : out std_logic
	);

end entity mayo_add_vectors;


architecture Behavioral of mayo_add_vectors is
	type state is (idle, read1, read2, read3, read4, read5, waiting, done);
	type state_1 is (idle, main0, main1, write1);

	signal s_state      : state     := idle;
	signal s_state_1    : state_1   := idle;
	signal s_ctr        : natural   := 0;
	signal s_main_start : std_logic := '0';
	signal s_io_read    : std_logic := '0';

	constant INDEX : natural := M;

	signal s_v1_addr  : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- V1 ADR in BRAM
	signal s_v2_addr  : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- V2 ADR in BRAM
	signal s_out_addr : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- OUT ADR in BRAM
	                                                                                --signal s_out             : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
	signal o_memc_din_buffer : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');

	signal s_v1 : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
	signal s_v2 : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
begin
	IO_READ : process(i_clk) is
	begin
		if (rising_edge (i_clk)) then
			if (rst = '1') then
				o_done       <= '0';
				s_v1_addr    <= (others => '0');
				s_v2_addr    <= (others => '0');
				s_out_addr   <= (others => '0');
				s_ctr        <= 0;
				s_main_start <= '0';
				s_state      <= idle;
				o_mema_din   <= (others => '0');
				o_memb_din   <= (others => '0');
				o_mema_en    <= '0';
				o_memb_en    <= '0';
				o_mema_rst   <= '0';
				o_memb_rst   <= '0';
				o_mema_addr  <= (others => '0');
				o_memb_addr  <= (others => '0');
				o_mema_we    <= "0000";
				o_memb_we    <= "0000";
				o_controla   <= '0';
			else
				case (s_state) is
					when idle =>
						o_done     <= '0';
						s_v1_addr  <= (others => '0');
						s_v2_addr  <= (others => '0');
						s_out_addr <= (others => '0');
						s_ctr      <= 0;
						if (i_enable = '1') then
							s_state    <= read1;
							s_v1_addr  <= i_v1_addr;
							s_v2_addr  <= i_v2_addr;
							s_out_addr <= i_out_addr;
							o_controla <= '1';
							o_controlb <= '1';

						end if;

					when read1 => --READ BLOCK from v1 and v2 at a time to avoid collision with all configs
						          -- V1 BRAM A
						o_mema_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						o_mema_en   <= '1';
						o_mema_we   <= "0000";
						s_state     <= read4;

					when read4 => -- BRAM Delay
						s_state <= read2;

					when read2 =>
						o_mema_en <= '0';
						s_v1      <= i_mema_dout;
						-- V2 BRAM B
						o_memb_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						o_memb_en   <= '1';
						o_memb_we   <= "0000";
						s_state     <= read5;

					when read5 => -- Bram Delay
						s_state <= read3;

					when read3 =>
						s_v2      <= i_memb_dout;
						o_memb_en <= '0';

						s_main_start <= '1';
						if (s_ctr >= INDEX-4) then -- i < M 
							s_state <= done;
						else
							s_ctr   <= s_ctr + 4;
							s_state <= waiting;
						end if;

					when waiting => -- Another BLOCK is needed .. waiting
						s_main_start <= '0';
						if (s_io_read = '1') then
							s_state <= read1;
						end if;
					when done =>
						o_controla   <= '0';
						o_controlb   <= '0';
						o_done       <= '1';
						s_main_start <= '0';
						s_state      <= idle;
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
				o_memc_din_buffer <= (others => '0');
				o_memc_en         <= '0';
				o_memc_rst        <= '0';
				o_memc_addr       <= (others => '0');
				o_memc_we         <= "0000";
				s_state_1         <= idle;
				s_io_read         <= '0';
				o_controlc        <= '0';
			else
				case (s_state_1) is
					when idle =>
						o_memc_en <= '0';
						o_memc_we <= "0000";
						if (s_main_start = '1') then
							s_state_1  <= main0;
							o_controlc <= '1';
						end if;
						o_controlc <= '0';

					when main0 =>
						for k in 0 to 3 loop -- ADDITION 
							o_memc_din_buffer(k*8+7 downto k*8) <= std_logic_vector(resize(unsigned(s_v1(k*8+7 downto k*8)) + unsigned(s_v2(k*8+7 downto k*8)),8));
						end loop;
						s_state_1 <= main1;

					when main1 =>
						s_io_read <= '1'; -- need next block

						for k in 0 to 3 loop -- MOD
							o_memc_din_buffer(k*8+7 downto k*8) <= std_logic_vector(unsigned(o_memc_din_buffer(k*8+7 downto k*8)) mod PRIME);
						end loop;
						s_state_1 <= write1;

					when write1 =>
						s_io_read <= '0';

						o_memc_en   <= '1';
						o_memc_we   <= "1111"; -- WRITE result back to ADR
						o_memc_addr <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr -4 ,PORT_WIDTH));
						s_state_1   <= idle;
					when others =>
						null;

				end case;

			end if;
		end if;
	end process;

	o_memc_din <= o_memc_din_buffer;


end architecture Behavioral;