--------------------------------------------------------------------------------
-- Title       : Add Vectors
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_add_vectors.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Last update : Mon Jun 19 15:37:38 2023
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
		i_bram_sel : in  std_logic_vector(1 downto 0);
		o_done     : out std_logic; -- DONE

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

	ATTRIBUTE X_INTERFACE_INFO                : STRING;
	ATTRIBUTE X_INTERFACE_INFO of o_mema_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mema_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_controla  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_memb_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB EN";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB RST";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB WE";
	ATTRIBUTE X_INTERFACE_INFO of i_memb_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_controlb  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_memc_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_memc_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_memc_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC EN";
	ATTRIBUTE X_INTERFACE_INFO of o_memc_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC RST";
	ATTRIBUTE X_INTERFACE_INFO of o_memc_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC WE";
	ATTRIBUTE X_INTERFACE_INFO of i_memc_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_controlc  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC CTRL";

	ATTRIBUTE X_INTERFACE_IGNORE               : STRING;
	ATTRIBUTE X_INTERFACE_IGNORE OF i_v1_addr  : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF i_v2_addr  : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF i_out_addr : SIGNAL IS "TRUE";

	type state is (idle, read0, read1, read2, read3, read4, read5, read6, read7, read8, read9, read10, read11, read12, read13, read14, read15,
			read16, read17, read18, read19, write0, write1, write2, write3, write4, done0, done1, done2);
	type state_1 is (idle, main0, main1, main2);

	signal s_state   : state   := idle;
	signal s_state_1 : state_1 := idle;
	signal s_ctr     : natural := 0;

	signal s_main_start : std_logic := '0';
	signal s_main_en    : std_logic := '0';

	signal s_v1_addr  : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- V1 ADR in BRAM
	signal s_v2_addr  : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- V2 ADR in BRAM
	signal s_out_addr : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0'); -- OUT ADR in BRAM
	signal s_v1       : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
	signal s_v2       : std_logic_vector(PORT_WIDTH-1 downto 0) := (others => '0');
	signal s_finish   : std_logic                               := '0';

	signal tmp0,tmp1,tmp2 : std_logic_vector(PORT_WIDTH-1 downto 0) := ZERO_32;

	------------------------------------------------------------------------------
	-- BRAM
	------------------------------------------------------------------------------
	signal bram0a    : bram_t    := DEFAULT_BRAM;
	signal bram0b    : bram_t    := DEFAULT_BRAM;
	signal bram1a    : bram_t    := DEFAULT_BRAM;
	signal control0a : std_logic := '0';
	signal control0b : std_logic := '0';
	signal control1a : std_logic := '0';

begin
	IO_Process : process(i_clk) is
	begin
		if (rising_edge (i_clk)) then
			if (rst = '1') then
				s_v1_addr    <= (others => '0');
				s_v2_addr    <= (others => '0');
				s_out_addr   <= (others => '0');
				s_ctr        <= 0;
				s_main_start <= '0';
				s_state      <= idle;
				bram0a.o     <= DEFAULT_OUT_BRAM;
				bram0b.o     <= DEFAULT_OUT_BRAM;
				bram1a.o     <= DEFAULT_OUT_BRAM;
				control1a    <= '0';
				control0a    <= '0';
				s_finish     <= '0';
			else
				case (s_state) is
					when idle =>
						s_finish      <= '0';
						s_ctr         <= 0;
						control1a     <= '0';
						control0a     <= '0';
						control0b     <= '0';
						bram1a.o.o_we <= "0000";
						bram0a.o.o_we <= "0000";
						bram1a.o.o_en <= '0';
						bram0a.o.o_en <= '0';
						if (i_enable = '1') then
							s_v1_addr  <= i_v1_addr;
							s_v2_addr  <= i_v2_addr;
							s_out_addr <= i_out_addr;
							report "MAYO Add_vec core :" &
							LF & "V1 Adr : " & integer'image(to_integer(unsigned(i_v1_addr))) &
							"V2 Adr: " & integer'image(to_integer(unsigned(i_v2_addr))) &
							"OUT Adr :" & integer'image(to_integer(unsigned(i_out_addr))) severity note;

							if (i_bram_sel = "00") then -- V1 and V2 Parallel [Dual port]
								control1a <= '1';
								control0a <= '1';
								s_state   <= read0;
							elsif (i_bram_sel = "01") then -- read -> read ->  write [Same port]
								control1a <= '1';
								s_state   <= read7;
							elsif(i_bram_sel = "10" ) then
								control0a <= '1';
								control0b <= '1';
								s_state   <= read13;
							else
								report "Reserved i_bram sel entry" severity error;
								s_state <= idle;
							end if;
						end if;

					--------------------------------------------------------------------------------
					-- BRAM SEL 00
					--------------------------------------------------------------------------------
					when read0 =>
						--v1 bram1a
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						bram1a.o.o_en   <= '1';
						bram1a.o.o_we   <= "0000";
						--v2 bram0a
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						s_main_start    <= '1' ;
						s_state         <= read1;

					when read1 => -- BRAM Delay
						s_main_start <= '0' ;
						s_ctr        <= s_ctr +4 ;
						s_main_en    <= '1';
						s_state      <= read2;

					when read2 =>
						s_v1            <= bram1a.i.i_dout;
						s_v2            <= bram0a.i.i_dout;
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr ,PORT_WIDTH));
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr ,PORT_WIDTH));
						s_state         <= read3;

					when read3 =>
						s_ctr   <= s_ctr +4 ;
						s_state <= write0;

					when write0 => -- write 
						s_v1            <= bram1a.i.i_dout;
						s_v2            <= bram0a.i.i_dout;
						bram1a.o.o_din  <= tmp1;
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr-8,PORT_WIDTH));
						bram1a.o.o_we   <= "1111";
						s_state         <= read4;

					when read4 =>
						bram1a.o.o_we <= "0000";
						if (s_ctr <= M - 4) then
							bram1a.o.o_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
							bram0a.o.o_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
							s_state         <= read5;
						else
							s_state <= write1;
						end if;

					when read5 =>
						s_state <= read6;

					when read6 =>
						s_v1            <= bram1a.i.i_dout;
						s_v2            <= bram0a.i.i_dout;
						bram1a.o.o_din  <= tmp2;
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr-4,PORT_WIDTH));
						bram1a.o.o_we   <= "1111";
						s_ctr           <= s_ctr + 4;
						s_state         <= read4;

					when write1 => -- last write and done
						bram1a.o.o_din  <= tmp1;
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr-4,PORT_WIDTH));
						bram1a.o.o_we   <= "1111";
						s_main_en       <= '0';
						s_state         <= done0;

					when done0 =>
						bram1a.o.o_we <= "0000";
						bram0a.o.o_we <= "0000";
						bram1a.o.o_en <= '0';
						bram0a.o.o_en <= '0';
						s_finish      <= '1' ;
						s_state       <= idle;

					--------------------------------------------------------------------------------
					-- BRAM SEL 01
					--------------------------------------------------------------------------------
					when read7 =>
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						bram1a.o.o_en   <= '1';
						bram1a.o.o_we   <= "0000";
						s_state         <= read8;
						s_main_start    <= '1' ;

					when read8 =>
						s_main_start <= '0' ;
						s_main_en    <= '1';
						s_state      <= read9;

					when read9 =>
						s_v1            <= bram1a.i.i_dout;
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						s_state         <= read10;

					when read10 =>
						s_state <= read11;

					when read11 =>
						s_v2          <= bram0a.i.i_dout;
						bram1a.o.o_en <= '0';
						s_state       <= read12;

					when read12 =>
						s_state <= write2;

					when write2 =>
						s_ctr           <= s_ctr + 4;
						bram1a.o.o_din  <= tmp1;
						bram1a.o.o_en   <= '1';
						bram1a.o.o_addr <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						bram1a.o.o_we   <= "1111";
						if (s_ctr +4 <= M - 4) then
							s_state <= read7;
						else
							s_main_en <= '0';
							s_state   <= done1;
						end if;

					when done1 =>
						bram1a.o.o_we <= "0000";
						bram1a.o.o_en <= '0';
						s_finish      <= '1';
						s_state       <= idle;

					--------------------------------------------------------------------------------
					-- BRAM SEL 10
					--------------------------------------------------------------------------------
					when read13 =>
						--v1 bram0a
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						--v2 bram0b
						bram0b.o.o_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
						bram0b.o.o_en   <= '1';
						bram0b.o.o_we   <= "0000";
						s_main_start    <= '1' ;
						s_state         <= read14;

					when read14 => -- BRAM Delay
						s_main_start <= '0' ;
						s_ctr        <= s_ctr +4 ;
						s_main_en    <= '1';
						s_state      <= read15;

					when read15 =>
						s_v1            <= bram0a.i.i_dout;
						s_v2            <= bram0b.i.i_dout;
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr ,PORT_WIDTH));
						bram0b.o.o_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr ,PORT_WIDTH));
						s_state         <= read16;

					when read16 =>
						s_ctr   <= s_ctr +4 ;
						s_state <= write3;

					when write3 => -- write 
						s_v1            <= bram0a.i.i_dout;
						s_v2            <= bram0b.i.i_dout;
						bram0a.o.o_din  <= tmp1;
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr-8,PORT_WIDTH));
						bram0a.o.o_we   <= "1111";
						s_state         <= read17;

					when read17 =>
						bram0a.o.o_we <= "0000";
						if (s_ctr <= M - 4) then
							bram0a.o.o_addr <= std_logic_vector(unsigned(s_v1_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
							bram0b.o.o_addr <= std_logic_vector(unsigned(s_v2_addr) + TO_UNSIGNED(s_ctr,PORT_WIDTH));
							s_state         <= read18;
						else
							bram0b.o.o_en <= '0';
							bram0b.o.o_we <= "0000";
					 		s_state       <= write4;
						end if;

					when read18 =>
						s_state <= read19;

					when read19 =>
						s_v1            <= bram0a.i.i_dout;
						s_v2            <= bram0b.i.i_dout;
						bram0a.o.o_din  <= tmp2;
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr-4,PORT_WIDTH));
						bram0a.o.o_we   <= "1111";
						s_ctr           <= s_ctr + 4;
						s_state         <= read17;

					when write4 => -- last write and done
						bram0a.o.o_din  <= tmp1;
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_out_addr) + TO_UNSIGNED(s_ctr-4,PORT_WIDTH));
						bram0a.o.o_we   <= "1111";
						s_main_en       <= '0';
						s_state         <= done2;

					when done2 =>
						bram0a.o.o_we <= "0000";
						bram0b.o.o_we <= "0000";
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';
						s_finish      <= '1' ;
						s_state       <= idle;
					--------------------------------------------------------------------------------
					-- BRAM SEL 11 RESERVED
					--------------------------------------------------------------------------------
					when others =>
						null;
				end case;
			end if;
		end if;
	end process;


	MAIN_Process : process(i_clk) is
	begin
		if (rising_edge (i_clk)) then
			if (rst ='1') then
				s_state_1 <= idle;
				tmp0      <= ZERO_32;
				tmp1      <= ZERO_32;
				tmp2      <= ZERO_32;
			else
				case (s_state_1) is
					when idle =>
						if (s_main_start = '1') then
							if (i_bram_sel = "00") then
								s_state_1 <= main0;
							elsif (i_bram_sel = "01") then
								s_state_1 <= main1;
							elsif (i_bram_sel = "10") then
								s_state_1 <= main2;
							end if;
						end if;

					--------------------------------------------------------------------------------
					-- BRAM SEL 00
					--------------------------------------------------------------------------------
					when main0 => -- [2 ~ 3 Clk Delay]
						if (s_main_en = '1') then
							for k in 0 to 3 loop -- ADDITION 
								tmp0(k*8+7 downto k*8) <= std_logic_vector(resize(unsigned(bram1a.i.i_dout(k*8+7 downto k*8)) + unsigned(bram0a.i.i_dout(k*8+7 downto k*8)),8));
							end loop;
							for k in 0 to 3 loop -- MOD
								tmp1(k*8+7 downto k*8) <= std_logic_vector(unsigned(tmp0(k*8+7 downto k*8)) mod PRIME);
							end loop;
							tmp2 <= tmp1; -- extra delay in pipeline
						else
							s_state_1 <= idle;
						end if ;

					--------------------------------------------------------------------------------
					-- BRAM SEL 01
					--------------------------------------------------------------------------------
					when main1 => -- [2~ Clk Delay]
						if (s_main_en = '1') then
							for k in 0 to 3 loop -- ADDITION 
								tmp0(k*8+7 downto k*8) <= std_logic_vector(resize(unsigned(s_v1(k*8+7 downto k*8)) + unsigned(bram1a.i.i_dout(k*8+7 downto k*8)),8));
							end loop;
							for k in 0 to 3 loop -- MOD
								tmp1(k*8+7 downto k*8) <= std_logic_vector(unsigned(tmp0(k*8+7 downto k*8)) mod PRIME);
							end loop;
						else
							s_state_1 <= idle;
						end if;

					--------------------------------------------------------------------------------
					-- BRAM SEL 10
					--------------------------------------------------------------------------------
					when main2 => -- [2 ~ 3 Clk Delay]
						if (s_main_en = '1') then
							for k in 0 to 3 loop -- ADDITION 
								tmp0(k*8+7 downto k*8) <= std_logic_vector(resize(unsigned(bram0a.i.i_dout(k*8+7 downto k*8)) + unsigned(bram0b.i.i_dout(k*8+7 downto k*8)),8));
							end loop;
							for k in 0 to 3 loop -- MOD
								tmp1(k*8+7 downto k*8) <= std_logic_vector(unsigned(tmp0(k*8+7 downto k*8)) mod PRIME);
							end loop;
							tmp2 <= tmp1; -- extra delay in pipeline
						else
							s_state_1 <= idle;
						end if ;
					when others =>
						null;
				end case;
			end if;
		end if;
	end process;

	o_done <= s_finish;
	--BRAM0-A
	bram0a.i.i_dout <= i_mema_dout;
	o_mema_din      <= bram0a.o.o_din;
	o_mema_addr     <= bram0a.o.o_addr;
	o_mema_en       <= bram0a.o.o_en;
	o_mema_rst      <= bram0a.o.o_rst;
	o_mema_we       <= bram0a.o.o_we;
	o_controla      <= control0a;

	--BRAM0-B
	bram0b.i.i_dout <= i_memb_dout;
	o_memb_din      <= bram0b.o.o_din;
	o_memb_addr     <= bram0b.o.o_addr;
	o_memb_en       <= bram0b.o.o_en;
	o_memb_rst      <= bram0b.o.o_rst;
	o_memb_we       <= bram0b.o.o_we;
	o_controlb      <= control0b;

	--BRAM1-A
	bram1a.i.i_dout <= i_memc_dout;
	o_memc_din      <= bram1a.o.o_din;
	o_memc_addr     <= bram1a.o.o_addr;
	o_memc_en       <= bram1a.o.o_en;
	o_memc_rst      <= bram1a.o.o_rst;
	o_memc_we       <= bram1a.o.o_we;
	o_controlc      <= control1a;


end architecture Behavioral;