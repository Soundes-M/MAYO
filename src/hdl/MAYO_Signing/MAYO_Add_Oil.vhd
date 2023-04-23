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

		--BRAM0-B
		i_mem0b_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_en   : out std_logic;
		o_mem0b_rst  : out std_logic;
		o_mem0b_we   : out std_logic_vector (3 downto 0);

		--BRAM1-A
		i_mem1a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_en   : out std_logic;
		o_mem1a_rst  : out std_logic;
		o_mem1a_we   : out std_logic_vector (3 downto 0)

	);
end entity mayo_add_oil;

architecture Behavioral of mayo_add_oil is
	-- These can be changed
	constant INPUTS_ADR   : integer := SIG_INPUTS;
	constant OILSOL_ADR   : integer := OILSOL_BASE_ADR;
	constant OILSPACE_ADR : integer := SK_EXP_BASE_ADR + SK_EXP_OIL;

	signal i,j,l      : integer := 0;
	signal copy_index : integer := 0;

	signal s_src_ctr : integer := 0;
	signal s_dst_ctr : integer := 0;

	signal s_inp_base_adr    : integer := 0;
	signal s_inp_pos_in_line : integer range 0 to 3;
	signal s_oil_base_adr    : integer := 0;
	signal s_oil_pos_in_line : integer range 0 to 3;
	signal mempcpy_scratch   : std_logic_vector(47 downto 0);
	signal bytes_first_line  : integer := 0;
	signal bytes_second_line : integer := 0;
	signal offset            : integer := 0;

	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram1a : bram_t := DEFAULT_BRAM;

	type states is (idle,
			memcpy0, memcpy1, memcpy2, memcpy3, memcpy4, memcpy5, memcpy6, memcpy7, memcpy8, memcpy9,
			main0,main1,
			done);
	signal state : states := idle;

	-- trunc to Closet Muliple of 4
	function base_adr(x : integer) return integer is
	begin
		return to_integer(unsigned(std_logic_vector(to_unsigned(x,PORT_WIDTH)) and not "00000000000000000000000000000011"));
	end function;

	function clip4(x : integer) return integer is
	begin
		if(x<4) then
			return x;
		else
			return 4;
		end if;
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
				copy_index        <= 0;
				s_inp_base_adr    <= 0;
				s_inp_pos_in_line <= 0;
				s_oil_base_adr    <= 0;
				s_oil_pos_in_line <= 0;
				mempcpy_scratch   <= (others => '0');
				bytes_first_line  <= 0;
				bytes_second_line <= 0;
				offset            <= 0;
				state             <= idle;

			else
				case (state) is
					when idle =>
						if (i_enable ='1')then
							l <= 0;
							report "add_oil core :" &
							LF & "OILSOL_ADR : " & integer'image(OILSOL_ADR) &
							LF & "INPUTS_ADR: " & integer'image(INPUTS_ADR) &
							LF & "OILSPACE_ADR: " & integer'image(OILSPACE_ADR) severity note;
							state <= main0;
						else
							state <= idle;
						end if;

					when main0 =>
						report integer'image(l);
						if (l < K) then
							v_tmp             := base_adr(OILSOL_ADR + l*O);
							v_tmp1            := (OILSOL_ADR + l*O) - base_adr(OILSOL_ADR + l*O);
							s_oil_base_adr    <= v_tmp;
							s_oil_pos_in_line <= v_tmp1; -- |3|2|1|0| ? 
							report integer'image(v_tmp1);
							if (v_tmp1 < 3) then
								-- 2 lines 
								-- WARNING: O is hardcoded to 6!!!! 
								bytes_first_line  <= 4- s_oil_pos_in_line;     -- how many bytes to copy from first line 
								bytes_second_line <= 6- (4-s_oil_pos_in_line); -- how many bytes to copy from second line
								state             <= memcpy0;
							else
								-- 3 lines
								state <= memcpy3;
							end if;

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
						state <= memcpy2;

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

					when memcpy6 =>
						v_tmp             := base_adr((INPUTS_ADR + N-O) + l*N);
						v_tmp1            := ((INPUTS_ADR + N-O) + l*N) - base_adr((INPUTS_ADR + N-O) + l*N);
						s_inp_base_adr    <= v_tmp;
						s_inp_pos_in_line <= v_tmp1; -- |3|2|1|0| ? 

						if (((INPUTS_ADR + N-O) + l*N) - base_adr((INPUTS_ADR + N-O) + l*N) < 3)then
							-- 2 lines 
							-- WARNING: O is hardcoded to 6!!!! 
							bytes_first_line  <= 4- s_inp_pos_in_line;     -- how many bytes to copy from first line 
							bytes_second_line <= 6- (4-s_inp_pos_in_line); -- how many bytes to copy from second line
							state             <= memcpy7;
						else
							-- 3 lines
							state <= memcpy8;
						end if;

					when memcpy7 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr,PORT_WIDTH));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_din  <= mempcpy_scratch(8*bytes_first_line-1 downto 0);

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

						bram0b.o.o_addr                                <= std_logic_vector(to_unsigned(s_inp_base_adr+4,PORT_WIDTH));
						bram0b.o.o_en                                  <= '1';
						bram0b.o.o_din(31 downto 8*bytes_second_line)  <= (others => '0');
						bram0b.o.o_din(8*bytes_second_line-1 downto 0) <= mempcpy_scratch(8*bytes_second_line-1 + 8*bytes_first_line downto 8*bytes_first_line);

						state <= main1;

					when memcpy8 => -- write to dst
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr,PORT_WIDTH));
						bram0a.o.o_din  <= mempcpy_scratch(7 downto 0) & X"00_00_00";
						bram0a.o.o_we   <= "1000";
						bram0a.o.o_en   <= '1';


						bram0b.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr+4,PORT_WIDTH));
						bram0b.o.o_din  <= mempcpy_scratch(39 downto 8);
						bram0b.o.o_we   <= "1111";
						bram0b.o.o_en   <= '1';

						state <= memcpy9;

					when memcpy9 =>
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";

						bram0a.o.o_addr <= std_logic_vector(to_unsigned(s_inp_base_adr+8,PORT_WIDTH));
						bram0a.o.o_din  <= X"00_00_00" & mempcpy_scratch(47 downto 40);
						bram0a.o.o_we   <= "0001";
						state           <= main1;
						--------------------------------------------------------------------
						-- MEMCPY DONE
						--------------------------------------------------------------------

					when main1 =>
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						bram0b.o.o_we <= "0000";
						state         <= done;

					when done =>
						o_done <= '1';
						state  <= idle;

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