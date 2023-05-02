--------------------------------------------------------------------------------
-- Title       : ADD_OIL
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Add_Oil.vhd
-- Author      : Oussama Sayari
-- Company     : TU Berlin
-- Created     : Sat Apr 29 18:39:04 2023
-- Last update : Sun Apr 30 21:21:56 2023
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 TU Berlin
-------------------------------------------------------------------------------
-- Description: Adds solution to the appropriate memory space (used as final space)
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

entity mayo_add_oil is
	port (
		clk      : in  std_logic;
		rst      : in  std_logic;
		i_enable : in  std_logic;
		o_done   : out std_logic;

		--BRAM0-A (SMALL)
		i_mem0a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_en   : out std_logic;
		o_mem0a_rst  : out std_logic;
		o_mem0a_we   : out std_logic_vector (3 downto 0);
		o_control0a  : out std_logic;

		--BRAM0-B
		i_mem0b_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_en   : out std_logic;
		o_mem0b_rst  : out std_logic;
		o_mem0b_we   : out std_logic_vector (3 downto 0);
		o_control0b  : out std_logic;

		--BRAM1-A
		i_mem1a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_en   : out std_logic;
		o_mem1a_rst  : out std_logic;
		o_mem1a_we   : out std_logic_vector (3 downto 0);
		o_control1a  : out std_logic

	);
end entity mayo_add_oil;

architecture Behavioral of mayo_add_oil is
	ATTRIBUTE X_INTERFACE_INFO                 : STRING;
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0b  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control1a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a CTRL";

	-- These can be changed
	constant INPUTS_ADR   : integer := SIG_INPUTS;
	constant OILSOL_ADR   : integer := OILSOL_BASE_ADR;
	constant OILSPACE_ADR : integer := SK_EXP_BASE_ADR + SK_EXP_OIL;

	signal i,j,l : integer := 0;

	signal s_inp_base_adr    : integer := 0;
	signal s_inp_pos_in_line : integer range 0 to 3;
	signal s_oil_base_adr    : integer := 0;
	signal s_oil_pos_in_line : integer range 0 to 3;
	signal mempcpy_scratch   : std_logic_vector(47 downto 0) := (others => '0');
	signal mempcpy_scratch1  : std_logic_vector(47 downto 0) := (others => '0');
	signal s_3_lines         : std_logic                     := '0';
	signal bytes_first_line  : integer                       := 0;
	signal bytes_second_line : integer                       := 0;
	signal t0                : std_logic_vector(15 downto 0) := ZERO_16;

	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram1a : bram_t := DEFAULT_BRAM;

	type states is (idle,
			memcpy0, memcpy1, memcpy2, memcpy3, memcpy4, memcpy5, memcpy6, memcpy7, memcpy8, memcpy9,
			main0, main1, main2, main3, main4, main5, main6, main7, main8, main9, main10, main11, main12,
			main13, main14, main15, main16, main17, main18, main19, main20, main21, main22, main23, main24,
			done);
	signal state : states := idle;

	-- trunc to Closet Muliple of 4
	function base_adr(x : integer) return integer is
	begin
		return to_integer(unsigned(std_logic_vector(to_unsigned(x,PORT_WIDTH)) and not "00000000000000000000000000000011"));
	end function;

begin
	main            : process(clk) is
		variable v_tmp  : integer;
		variable v_tmp1 : integer;
	begin
		if(rising_edge(clk))then
			if (rst = '1') then
				i                 <= 0;
				j                 <= 0;
				l                 <= 0;
				s_inp_base_adr    <= 0;
				s_inp_pos_in_line <= 0;
				s_oil_base_adr    <= 0;
				s_oil_pos_in_line <= 0;
				mempcpy_scratch   <= (others => '0');
				bytes_first_line  <= 0;
				bytes_second_line <= 0;
				s_3_lines         <= '0';
				t0                <= ZERO_16;
				state             <= idle;
			else
				case (state) is
					when idle =>
						l <= 0;
						if (i_enable ='1')then
							report "Add_oil core :" &
							LF & "OILSOL_ADR : " & integer'image(OILSOL_ADR) &
							LF & "INPUTS_ADR: " & integer'image(INPUTS_ADR) &
							LF & "OILSPACE_ADR: " & integer'image(OILSPACE_ADR) severity note;
							o_control0a <= '1';
							o_control0b <= '1';
							o_control1a <= '1';
							state       <= main0;
						else
							state <= idle;
						end if;

					when main0 =>
						if (l < K) then
							v_tmp             := base_adr(OILSOL_ADR + l*O);
							v_tmp1            := (OILSOL_ADR + l*O) - base_adr(OILSOL_ADR + l*O);
							s_oil_base_adr    <= v_tmp;
							s_oil_pos_in_line <= v_tmp1; -- |3|2|1|0| ? 

							if (v_tmp1 < 3) then                  -- 2 lines 
								                                    -- WARNING: O is hardcoded to 6!
								bytes_first_line  <= 4- v_tmp1;     -- how many bytes to copy from first line 
								bytes_second_line <= 6- (4-v_tmp1); -- how many bytes to copy from second line
								s_3_lines         <= '0';
							else
								s_3_lines <= '1';
							end if;
							state <= memcpy0;
						else
							state <= done;
						end if;

					--------------------------------------------------------------------
					-- MEMCPY
					--	Pos		 0 	1 2
					--	First  4  3 2
					--	Second 2  3 4
					--------------------------------------------------------------------
					when memcpy0 => --read from src
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(s_oil_base_adr,PORT_WIDTH));
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_en   <= '1';

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(s_oil_base_adr+4,PORT_WIDTH));
						bram0b.o.o_we   <= "0000";
						bram0b.o.o_en   <= '1';
						state           <= memcpy1;

					when memcpy1 =>
						if s_3_lines = '0' then
							state <= memcpy2;
						else
							state <= memcpy3;
						end if;

					when memcpy2 => -- write to scratch buffer
						mempcpy_scratch(8*bytes_first_line-1 downto 0)                                        <= bram0a.i.i_dout(31 downto 8*s_oil_pos_in_line);
						mempcpy_scratch(8*bytes_second_line-1 + 8*bytes_first_line downto 8*bytes_first_line) <= bram0b.i.i_dout(8*bytes_second_line-1 downto 0);

						bram0a.o.o_we <= "0000";
						bram0a.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						bram0b.o.o_en <= '0';
						state         <= memcpy6;

					when memcpy3 =>
						bram0a.o.o_addr              <= std_logic_vector(to_unsigned(s_oil_base_adr+8,PORT_WIDTH));
						bram0b.o.o_en                <= '0';
						mempcpy_scratch(7 downto 0)  <= bram0a.i.i_dout(31 downto 24);
						mempcpy_scratch(39 downto 8) <= bram0b.i.i_dout(31 downto 0);
						state                        <= memcpy4;

					when memcpy4 =>
						state <= memcpy5;

					when memcpy5 =>
						bram0a.o.o_en                 <= '0';
						mempcpy_scratch(47 downto 40) <= bram0a.i.i_dout(7 downto 0);
						state                         <= memcpy6;

					when memcpy6 => -- write to dst
						v_tmp             := base_adr((INPUTS_ADR + N-O) + l*N);
						v_tmp1            := ((INPUTS_ADR + N-O) + l*N) - base_adr((INPUTS_ADR + N-O) + l*N);
						s_inp_base_adr    <= v_tmp;
						s_inp_pos_in_line <= v_tmp1; -- |3|2|1|0| ? 

						if (v_tmp1 < 3)then                   -- 2 lines 
							                                    -- WARNING: O is hardcoded to 6! 
							bytes_first_line  <= 4- v_tmp1;     -- how many bytes to copy from first line 
							bytes_second_line <= 6- (4-v_tmp1); -- how many bytes to copy from second line
							state             <= memcpy7;
						else -- 3 lines
							state <= memcpy8;
						end if;

					when memcpy7 =>
						bram0a.o.o_addr                               <= std_logic_vector(to_unsigned(s_inp_base_adr,PORT_WIDTH));
						bram0a.o.o_en                                 <= '1';
						bram0a.o.o_din                                <= (others => '0');
						bram0a.o.o_din(31 downto 8*s_inp_pos_in_line) <= mempcpy_scratch(8*bytes_first_line-1 downto 0);

						bram0b.o.o_addr                                <= std_logic_vector(to_unsigned(s_inp_base_adr+4,PORT_WIDTH));
						bram0b.o.o_en                                  <= '1';
						bram0b.o.o_din                                 <= (others => '0');
						bram0b.o.o_din(8*bytes_second_line-1 downto 0) <= mempcpy_scratch(8*bytes_second_line-1 + 8*bytes_first_line downto 8*bytes_first_line);

						case(s_inp_pos_in_line) is
							when (0) =>
								bram0a.o.o_we <= "1111";
								bram0b.o.o_we <= "0011";

							when (1) =>
								bram0a.o.o_we <= "1110";
								bram0b.o.o_we <= "0111";

							when (2) =>
								bram0a.o.o_we <= "1100";
								bram0b.o.o_we <= "1111";

							when others =>
								report "Unexpected pos: " & integer'image(s_inp_pos_in_line) severity error;
						end case;
						state <= main1;

					when memcpy8 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr,PORT_WIDTH));
						bram0a.o.o_din  <= mempcpy_scratch(7 downto 0) & X"00_00_00";
						bram0a.o.o_we   <= "1000";
						bram0a.o.o_en   <= '1';

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr+4,PORT_WIDTH));
						bram0b.o.o_din  <= mempcpy_scratch(39 downto 8);
						bram0b.o.o_we   <= "1111";
						bram0b.o.o_en   <= '1';
						state           <= memcpy9;

					when memcpy9 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr+8,PORT_WIDTH));
						bram0a.o.o_din  <= X"00_00_00" & mempcpy_scratch(47 downto 40);
						bram0a.o.o_we   <= "0001";

						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";

						state <= main1;
						--------------------------------------------------------------------
						-- MEMCPY DONE
						--------------------------------------------------------------------

					when main1 =>
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						bram0b.o.o_we <= "0000";
						i             <= 0;
						state         <= main2;

					when main2 =>
						if (i< (N-O)) then
							state <= main3;
						else
							state <= main7;
						end if;

					when main3 =>
						-- Fill t = inputs[k*N + i]
						v_tmp             := base_adr(INPUTS_ADR + l*N +i);
						v_tmp1            := (INPUTS_ADR + l*N +i) - base_adr(INPUTS_ADR + l*N +i);
						s_inp_base_adr    <= v_tmp;
						s_inp_pos_in_line <= v_tmp1; -- |3|2|1|0| ? 
						state             <= main4;

					when main4 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr,PORT_WIDTH));
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_en   <= '1';
						state           <= main5;

					when main5 =>
						state <= main6;

					when main6 => -- write to t
						case (s_inp_pos_in_line) is
							when (0) =>
								t0 <= X"00" & bram0a.i.i_dout(7 downto 0);

							when (1) =>
								t0 <= X"00" & bram0a.i.i_dout(15 downto 8);

							when (2) =>
								t0 <= X"00" & bram0a.i.i_dout(23 downto 16);

							when (3) =>
								t0 <= X"00" & bram0a.i.i_dout(31 downto 24);

							when others =>
								report "Unexpected position " severity error;
						end case ;
						bram0a.o.o_we <= "0000";
						bram0a.o.o_en <= '0';
						state         <= main10;

					when main10 => -- GET RS1 : inputs[k*N + N-O + j]
						v_tmp             := base_adr(INPUTS_ADR + l*N + N-O);
						v_tmp1            := (INPUTS_ADR + l*N + N-O) - base_adr(INPUTS_ADR + l*N + N-O);
						s_inp_base_adr    <= v_tmp;
						s_inp_pos_in_line <= v_tmp1; -- |3|2|1|0| ? 
						if (v_tmp1 < 3) then
							bytes_first_line  <= 4- v_tmp1;
							bytes_second_line <= 6- (4-v_tmp1);
							s_3_lines         <= '0';
						else
							s_3_lines <= '1';
						end if;
						state <= main11;

					when main11 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr,PORT_WIDTH));
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_en   <= '1';

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr+4,PORT_WIDTH));
						bram0b.o.o_we   <= "0000";
						bram0b.o.o_en   <= '1';
						state           <= main12;

					when main12 =>
						if s_3_lines = '0' then
							state <= main13;
						else
							state <= main14;
						end if;

					when main13 => -- write to scratch buffer1
						mempcpy_scratch(8*bytes_first_line-1 downto 0)                                        <= bram0a.i.i_dout(31 downto 8*s_inp_pos_in_line);
						mempcpy_scratch(8*bytes_second_line-1 + 8*bytes_first_line downto 8*bytes_first_line) <= bram0b.i.i_dout(8*bytes_second_line-1 downto 0);

						bram0a.o.o_we <= "0000";
						bram0a.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						bram0b.o.o_en <= '0';
						j             <= 0;
						state         <= main17;

					when main14 =>
						bram0a.o.o_addr              <= std_logic_vector(to_unsigned(s_inp_base_adr+8,PORT_WIDTH));
						bram0b.o.o_en                <= '0';
						mempcpy_scratch(7 downto 0)  <= bram0a.i.i_dout(31 downto 24);
						mempcpy_scratch(39 downto 8) <= bram0b.i.i_dout(31 downto 0);
						state                        <= main15;

					when main15 =>
						state <= main16;

					when main16 =>
						bram0a.o.o_en                 <= '0';
						mempcpy_scratch(47 downto 40) <= bram0a.i.i_dout(7 downto 0);
						j                             <= 0;
						state                         <= main17;

					when main17 => -- GET RS2 : oil_space[j*(N-O) + i] and do math
						if (j <6) then
							v_tmp           := base_adr(OILSPACE_ADR + j*(N-O)+i);
							bram1a.o.o_addr <= std_logic_vector(to_unsigned(v_tmp,PORT_WIDTH));
							bram1a.o.o_en   <= '1';
							bram1a.o.o_we   <= "0000";

							v_tmp1            := (OILSPACE_ADR + j*(N-O)+i) - base_adr(OILSPACE_ADR + j*(N-O)+i);
							s_oil_base_adr    <= v_tmp;
							s_oil_pos_in_line <= v_tmp1; -- |3|2|1|0| ? 
							state             <= main18;
						else
							state <= main20;
						end if;

					when main18 =>
						state <= main19;

					when main19 => -- Do ALU OP
						bram1a.o.o_en <= '0';

						t0    <= std_logic_vector(resize(unsigned(t0) + unsigned(mempcpy_scratch(8*j+7 downto 8*j))*unsigned(bram1a.i.i_dout(s_oil_pos_in_line*8+7 downto s_oil_pos_in_line*8)),t0'length));
						j     <= j +1;
						state <= main17;

					when main20 => -- write result
						v_tmp             := base_adr(INPUTS_ADR + l*N +i);
						v_tmp1            := (INPUTS_ADR + l*N +i) - base_adr(INPUTS_ADR + l*N +i);
						s_inp_base_adr    <= v_tmp;
						s_inp_pos_in_line <= v_tmp1; -- |3|2|1|0| ? 
						t0                <= std_logic_vector(unsigned(t0) mod PRIME);
						state             <= main21;

					when main21 =>
						bram0a.o.o_addr                                                  <= std_logic_vector(to_unsigned(s_inp_base_adr,PORT_WIDTH));
						bram0a.o.o_en                                                    <= '1';
						bram0a.o.o_din                                                   <= ZERO_32;
						bram0a.o.o_din(s_inp_pos_in_line*8+7 downto s_inp_pos_in_line*8) <= t0(7 downto 0);

						case(s_inp_pos_in_line) is
							when (0) =>
								bram0a.o.o_we <= "0001";
							when (1) =>
								bram0a.o.o_we <= "0010";
							when (2) =>
								bram0a.o.o_we <= "0100";
							when (3) =>
								bram0a.o.o_we <= "1000";
							when others =>
								report "Unexpected position" severity error;
						end case;
						state <= main22;

					when main22 =>
						bram0a.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						i             <= i +1 ;
						state         <= main2;

					when main7 =>
						l     <= l+1;
						state <= main0;

					when done =>
						o_done      <= '1';
						o_control0a <= '0';
						o_control0b <= '0';
						o_control1a <= '0';
						state       <= idle;

					when others =>
						report "Others state";
						state <= idle;
				end case ;
			end if;
		end if;
	end process;

	--BRAM0-A
	bram0a.i.i_dout <= i_mem0a_dout;
	o_mem0a_din     <= bram0a.o.o_din;
	o_mem0a_addr    <= bram0a.o.o_addr;
	o_mem0a_en      <= bram0a.o.o_en;
	o_mem0a_rst     <= bram0a.o.o_rst;
	o_mem0a_we      <= bram0a.o.o_we;

	--BRAM0-B
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