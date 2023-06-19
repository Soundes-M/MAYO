--------------------------------------------------------------------------------
-- Title       : MAYO
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : MAYO_P1P1T.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Thu Jan 12 13:40:45 2023
-- Last update : Wed May 10 11:33:52 2023
-- Platform    : Default Part Number
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 User Company Name
-------------------------------------------------------------------------------
-- Description: Compute compute P1 + P1^T 
-- Only M Round starting from src adr and back to dst adr
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

entity MAYO_P1P1T is
	port (
		clk    : in  std_logic;
		rst    : in  std_logic;
		enable : in  std_logic;
		o_done : out std_logic;

		i_src_adr  : in std_logic_vector(31 downto 0);
		i_dsta_adr : in std_logic_vector(31 downto 0);
		i_dstb_adr : in std_logic_vector(31 downto 0);

		i_ji_equal : in std_logic;

		--BRAM0-B [II]
		i_mem0b_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_en   : out std_logic;
		o_mem0b_rst  : out std_logic;
		o_mem0b_we   : out std_logic_vector (3 downto 0);
		o_control0b  : out std_logic;

		--BRAM1-A [III]
		i_mem1a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_en   : out std_logic;
		o_mem1a_rst  : out std_logic;
		o_mem1a_we   : out std_logic_vector (3 downto 0);
		o_control1a  : out std_logic
	);

end entity;

architecture Behavioral of MAYO_P1P1T is

	ATTRIBUTE X_INTERFACE_INFO                 : STRING;
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0b  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control1a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a CTRL";

	type states_t is (idle, cpy0, cpy1, cpy2, done);
	signal state : states_t := idle;
	type states1_t is (idle, main0, main1, main2, main3, main4, main5, done);
	signal state1             : states1_t                               := idle;
	signal s_src_adr          : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
	signal s_dsta_adr         : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
	signal s_dstb_adr         : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
	signal s_ji_eq,start_main : std_logic                               := '0';
	signal copy_index         : integer                                 := 0;
	signal write_index        : integer                                 := 0 ;
	signal p1_in              : std_logic_vector(PORT_WIDTH-1 downto 0) := ZERO_32;
	signal tmp0,tmp1,tmp2     : std_logic_vector(PORT_WIDTH-1 downto 0) := ZERO_32;
	------------------------------------------------------------------------------
	-- BRAM
	------------------------------------------------------------------------------
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram1a : bram_t := DEFAULT_BRAM;

begin

	IN_Process : process(clk) is
	begin
		if (rising_edge(clk)) then
			if(rst = '1') then
				s_src_adr   <= ZERO_32;
				s_dsta_adr  <= ZERO_32;
				s_ji_eq     <= '0';
				copy_index  <= 0;
				p1_in       <= ZERO_32;
				bram0b.o    <= DEFAULT_OUT_BRAM;
				o_control0b <= '0';
				o_control1a <= '0';
				state       <= idle;

			else
				case (state) is
					when idle =>
						copy_index  <= 0 ;
						o_control1a <= '0';
						o_control0b <= '0';
						o_done      <= '0';
						if (enable = '1') then
							s_src_adr   <= i_src_adr;
							s_dsta_adr  <= i_dsta_adr;
							s_dstb_adr  <= i_dstb_adr;
							s_ji_eq     <= i_ji_equal;
							o_control1a <= '1';
							o_control0b <= '1';
							state       <= cpy0;
						else
							s_ji_eq    <= s_ji_eq;
							s_src_adr  <= s_src_adr;
							s_dsta_adr <= s_dsta_adr;
							s_dstb_adr <= s_dstb_adr;
							state      <= state;
						end if;

					when cpy0 =>
						-- Start reading from BRAM
						bram0b.o.o_addr <= std_logic_vector(unsigned(s_src_adr));
						bram0b.o.o_we   <= "0000";
						bram0b.o.o_en   <= '1';
						state           <= cpy1;

					when cpy1 =>
						state <= cpy2;

					when cpy2 =>
						p1_in <= i_mem0b_dout;
						if (copy_index < M) then
							copy_index      <= copy_index +4;
							bram0b.o.o_addr <= std_logic_vector(unsigned(bram0b.o.o_addr) +4);
							state           <= cpy1;
						else
							bram0b.o.o_we <= "0000";
							bram0b.o.o_en <= '0';
							state         <= done;
						end if;

					when done =>
						o_control0b <= '0';
						if (state1 = done) then
							o_done <= '1';
							state  <= idle;
						end if;

					when others =>
						state <= idle;

				end case;
			end if;
		end if;
	end process;

	MAIN_Process : process(clk) is
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				bram1a.o    <= DEFAULT_OUT_BRAM;
				write_index <= 0 ;
				state1      <= idle;

			else
				case(state1) is
					when idle =>
						write_index <= 0;
						if (start_main = '1' and s_ji_eq = '0') then
							bram1a.o.o_din <= p1_in;
							state1         <= main0;
						elsif (start_main = '1' and s_ji_eq = '1') then
							bram1a.o.o_din <= p1_in;
							state1         <= main1;
						else
							state1 <= idle;
						end if;

					when main0 => -- double write 
						bram1a.o.o_din  <= p1_in;
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_dsta_adr) + write_index);
						bram1a.o.o_en   <= '1';
						bram1a.o.o_we   <= "1111";
						state1          <= main2;

					when main2 =>
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_dstb_adr) + write_index);
						if (write_index < M) then
							write_index <= write_index +4;
							state1      <= main0;
						else
							state1 <= done;
						end if;

					when main1 => -- Multiply by 2 (Pipelined) [NOP CYCLE]
						state1 <= main3;

					when main3 =>
						bram1a.o.o_en <= '0';
						bram1a.o.o_we <= "0000";
						state1        <= main4;

					when main4 =>
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_dsta_adr) + write_index);
						bram1a.o.o_din  <= tmp1;
						bram1a.o.o_en   <= '1';
						bram1a.o.o_we   <= "1111";
						if (write_index < M) then
							write_index <= write_index +4;
							state1      <= main4;
						else
							state1 <= done;
						end if;

					when done =>
						bram1a.o.o_en <= '0';
						bram1a.o.o_we <= "0000";
						state1        <= idle;

					when others =>
						state1 <= idle;
				end case;
			end if;
		end if;
	end process;

	pp_Process : process(clk) is
	begin
		if (rising_edge(clk)) then
			if(rst = '1') then
				tmp0 <= ZERO_32;
				tmp1 <= ZERO_32;

			else
				if (start_main = '1' and s_ji_eq = '1') then
					for k in 0 to 3 loop
						tmp0(k*8+7 downto k*8) <= std_logic_vector(resize(unsigned(p1_in(k*8+7 downto k*8) & '0'),8));
					end loop;
					for k in 0 to 3 loop -- MOD
						tmp1(k*8+7 downto k*8) <= std_logic_vector(unsigned(tmp0(k*8+7 downto k*8)) mod PRIME);
					end loop;
				else -- nop
					tmp0 <= tmp0;
					tmp1 <= tmp1;
				end if;
			end if;
		end if;
	end process;

	start_main <= '1' when (copy_index >= 4) else '0'; -- Start after copying

	bram0b.i.i_dout <= i_mem0b_dout;
	o_mem0b_din     <= bram0b.o.o_din;
	o_mem0b_addr    <= bram0b.o.o_addr;
	o_mem0b_en      <= bram0b.o.o_en;
	o_mem0b_rst     <= bram0b.o.o_rst;
	o_mem0b_we      <= bram0b.o.o_we;

	--BRAM1-A
	bram1a.i.i_dout <= i_mem1a_dout;
	o_mem1a_din     <= bram1a.o.o_din;
	o_mem1a_addr    <= bram1a.o.o_addr;
	o_mem1a_en      <= bram1a.o.o_en;
	o_mem1a_rst     <= bram1a.o.o_rst;
	o_mem1a_we      <= bram1a.o.o_we;
end architecture Behavioral; 