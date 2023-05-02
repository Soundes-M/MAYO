--------------------------------------------------------------------------------
-- Title       : Linear Combination
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_linear_combination.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: Linear Combination : 
-- Using 8* DSPs to accumulate. The Functional Description can be understood with the code below.
-- * Synthesis-sensitive
--------------------------------------------------------------------------------
-- SW C Version: 
--void _linear_combination(const unsigned char* vecs, const unsigned char* coeffs, int len, unsigned char *out){
--	uint32_t accumulators[M] = {0};
--	for (int i = 0; i < len; ++i)
--	{
--		for(int j=0; j< M; j++){
--			accumulators[j] += ((uint32_t) vecs[i*M + j]) * ((uint32_t) coeffs[i]);
--		}
--	}

--	for (int i = 0; i < M; ++i)
--	{
--		out[i] = (unsigned char) (accumulators[i] % PRIME);
--	}
--}
------------------------------------------------------------------------------------------
-- Sw (HW-Like Version)
-- accmulators[8] = {0};
--	for (int j = 0; j < M; j+=4)
--	{
--		for(int i=0; i< len; i++){
--			accumulators[j] += ((uint32_t) vecs[i*M + j]) * ((uint32_t) coeffs[i]);
-- 			accumulators[j+1] += ((uint32_t) vecs[i*M + j+1]) * ((uint32_t) coeffs[i]);
-- 			accumulators[j+2] += ((uint32_t) vecs[i*M + j+2]) * ((uint32_t) coeffs[i]);
--			accumulators[j+3] += ((uint32_t) vecs[i*M + j+3]) * ((uint32_t) coeffs[i]);
--		}
--	}

--	for (int i = 0; i < M; ++i)
--	{
--		out[i] = (unsigned char) (accumulators[i] % PRIME);
--	}
--}
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

entity mayo_linear_combination is
	port(
		i_clk    : in  std_logic;
		rst      : in  std_logic;
		i_enable : in  std_logic; -- ENABLE
		o_done   : out std_logic; -- DONE

		i_bram_halt : in std_logic; -- DMA Wait for Copy (Big BRAM)

		i_vec_addr    : in std_logic_vector(PORT_WIDTH-1 downto 0);
		i_coeffs_addr : in std_logic_vector(PORT_WIDTH-1 downto 0);
		i_out_addr    : in std_logic_vector(PORT_WIDTH-1 downto 0);
		i_len         : in std_logic_vector(PORT_WIDTH-1 downto 0);

		--BRAM0-A
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
		o_mem1a_we   : out std_logic_vector (3 downto 0);

		o_control0a : out std_logic;
		o_control0b : out std_logic;
		o_control1a : out std_logic
	);


end entity mayo_linear_combination;
architecture Behavioral of mayo_linear_combination is

	ATTRIBUTE X_INTERFACE_INFO                  : STRING;
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0b  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control1a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a CTRL";

	type state is (idle, read1, read2, read3, read4, read5, done);
	signal t_state : state := idle;
	type state1 is (idle, main1, main2, main3, main4, done);
	signal t_state1 : state1 := idle;

	-- BRAM 0 reg for small data (Dual Channel R/W)
	-- BRAM 1 reg only for big data (Single Channel R/W)
	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;

	signal bram1a : bram_t := DEFAULT_BRAM;

	signal s_acc            : array_32(0 to 7) := (others => ZERO_32); -- Buffer for accumulation, using double buffering for WAR Hazards 
	signal tmp              : array_32(0 to 7) := (others => ZERO_32);
	attribute keep          : string; -- Force DSP usage
	attribute keep of tmp   : signal is "true";
	attribute keep of s_acc : signal is "true";

	signal tmp_sel : std_logic := '0';

	signal s_acc_sel    : std_logic := '0';
	signal s_acc_change : std_logic := '0';
	signal s_acc_flush  : std_logic := '0';
	signal s_main       : std_logic;
	signal first        : std_logic;
	signal dspb         : std_logic_vector(7 downto 0) := (others => '0');
	signal dsp_enable   : std_logic                    := '0';

	signal s_nomac_en  : std_logic        := '0';
	signal s_tmp_nomac : array_32(0 to 3) := (others => ZERO_32);

	signal s_vecs_addr   : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_coeffs_addr : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_out_addr    : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_vecs        : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_coeffs      : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_len         : std_logic_vector(PORT_WIDTH-1 downto 0);
	-- Loop counters
	signal i,j,c,s_out_ctr : integer := 0 ;

	component DSP_Accum
		port (clk : in std_logic;
			i_global_en,i_en                        : in  std_logic;
			i_sel                                   : in  std_logic;
			rst                                     : in  std_logic;
			ain0,ain1,ain2,ain3,bin0                : in  std_logic_vector(7 downto 0);
			i_flush                                 : in  std_logic;
			res0,res1,res2,res3,res4,res5,res6,res7 : out std_logic_vector(PORT_WIDTH-1 downto 0)
		);
	end component DSP_Accum;

begin

	DSP_Inst :
		DSP_Accum port map (
			clk         => i_clk,
			i_global_en => dsp_enable,
			i_en        => s_main,
			i_sel       => s_acc_sel,
			rst         => rst,
			ain0        => s_vecs(7 downto 0),
			ain1        => s_vecs(15 downto 8),
			ain2        => s_vecs(23 downto 16),
			ain3        => s_vecs(31 downto 24),
			bin0        => dspb,
			i_flush     => s_acc_flush,
			res0        => s_acc(0),
			res1        => s_acc(1),
			res2        => s_acc(2),
			res3        => s_acc(3),
			res4        => s_acc(4),
			res5        => s_acc(5),
			res6        => s_acc(6),
			res7        => s_acc(7)
		);

	dsp_enable <= '1' when ((t_state /= idle or t_state1 /= idle) and s_nomac_en ='0') else '0';

	INPUT_Pr : process(i_clk) is
	begin
		if(rising_edge(i_clk)) then
			if(rst = '1') then
				--bram0a.o        <= DEFAULT_OUT_BRAM;
				--bram0b.o        <= DEFAULT_OUT_BRAM;
				--bram1a.o        <= DEFAULT_OUT_BRAM;
				s_vecs_addr   <= ZERO_32;
				s_coeffs_addr <= ZERO_32;
				s_out_addr    <= ZERO_32;
				s_len         <= ZERO_32;
				s_vecs        <= ZERO_32;
				s_coeffs      <= ZERO_32;
				s_main        <= '0';
				s_nomac_en    <= '0';
				dspb          <= (others => '0');
				for k in 0 to 3 loop
					s_tmp_nomac(k) <= ZERO_32;
				end loop;
				t_state <= idle;

			else
				case (t_state) is
					when idle =>
						c <= 0;
						i <= 0;
						j <= 0;

						if (i_enable ='1' and unsigned(i_len) > 0) then
							-- READ Params
							s_vecs_addr   <= i_vec_addr;
							s_coeffs_addr <= i_coeffs_addr;
							s_out_addr    <= i_out_addr;
							s_len         <= i_len;

							if (unsigned(i_len) = 1) then
								s_nomac_en <= '1';
							else
								s_nomac_en <= '0';
							end if;
							t_state     <= read1;
							o_control0a <= '1';
							o_control1a <= '1';
						else
							t_state     <= idle;
							o_control0a <= '0';
							o_control1a <= '0';
						end if;

					when read1 =>
						-- Enable BRAMs and start reading
						bram0a.o.o_addr <= s_coeffs_addr;
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						bram1a.o.o_addr <= s_vecs_addr;
						bram1a.o.o_en   <= '1';
						bram1a.o.o_we   <= "0000";
						t_state         <= read3;

					when read3 =>          -- BRAM Extra Delay
						s_main       <= '0'; -- DSPs should not take this data in ! 
						s_acc_change <= '0';

						if ( s_nomac_en = '0') then
							t_state <= read2;
						else
							t_state <= read4;
						end if;

					when read2 =>                -- Read Vecs and Coefs, start DSPs and check loop conditions
						s_vecs <= bram1a.i.i_dout; -- 32 Bits (4 Byte/Round)
						if (c = 0) then
							s_coeffs <= bram0a.i.i_dout; -- 32 Bits (1 Byte/Round)
							dspb     <= bram0a.i.i_dout(7 downto 0);
						else
							dspb <= s_coeffs(c*8+7 downto c*8);
						end if;

						s_main <= '1'; -- Start lin_comb

						if(i >= (unsigned(s_len)-1)) then -- i Loop done --> Reset i [Last DSP Round]
							bram0a.o.o_addr <= s_coeffs_addr;
							bram1a.o.o_addr <= std_logic_vector(unsigned(s_vecs_addr)+j+4); -- [ j+4, loop is inverted and 4j based]
							i               <= 0 ;
							s_acc_change    <= '1'; -- Change acc buffer

							if (j >= (M-4)) then --j loop done
								t_state <= done;   -- END; no more input data
							else
								j       <= j + 4 ;
								c       <= 0;
								t_state <= read3;
							end if;

						else
							i <= i +1 ;

							--Coeffs 
							if (c >= 3) then -- Need more coeffs 
								bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4);
								c               <= 0;
							else
								c <= c +1 ;
							end if;

							-- Vecs 
							bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) + M); -- Next vecs (i is also used here) [i+1]
							t_state         <= read3;
						end if;

					-- Special NO ACCUMULATE----------------------------------------------
					when read4 =>
						s_vecs          <= bram1a.i.i_dout;
						s_coeffs        <= bram0a.i.i_dout;
						bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) +4); -- More vecs (j+4)
						s_acc_change    <= '0';
						t_state         <= read5;

					when read5 =>
						s_tmp_nomac(0) <= X"0000" & std_logic_vector(unsigned(s_vecs(7 downto 0)) * unsigned(s_coeffs(7 downto 0)));
						s_tmp_nomac(1) <= X"0000" & std_logic_vector(unsigned(s_vecs(15 downto 8)) * unsigned(s_coeffs(7 downto 0)));
						s_tmp_nomac(2) <= X"0000" & std_logic_vector(unsigned(s_vecs(23 downto 16)) * unsigned(s_coeffs(7 downto 0)));
						s_tmp_nomac(3) <= X"0000" & std_logic_vector(unsigned(s_vecs(31 downto 24)) * unsigned(s_coeffs(7 downto 0)));
						s_acc_change   <= '1';

						if (j >= (M-4)) then
							t_state <= done;
						else
							j       <= j+4 ;
							t_state <= read4;
						end if ;


					when done => -- Done reading
						s_acc_change  <= '0';
						s_main        <= '0';
						bram0a.o.o_en <= '0';
						bram1a.o.o_en <= '0';
						t_state       <= idle;
					when others =>
						t_state <= idle;
				end case;
			end if;
		end if;
	end process;

	MAIN_Pr : process(i_clk) is
	begin
		if(rising_edge(i_clk)) then
			if (rst = '1') then
				s_acc_sel <= '0';
			else
				-- Change to next buffer
				if (s_acc_change = '1') then
					s_acc_sel <= not s_acc_sel;
				else
					s_acc_sel <= s_acc_sel;
				end if;
			end if;
		end if;
	end process;

	OUTPUT_Pr : process(i_clk) is
	begin
		if(rising_edge(i_clk)) then
			if(rst = '1') then
				s_out_ctr <= 0 ; -- This counter is the same as i but for safety measure it runs async to it.
				o_done    <= '0';
				t_state1  <= idle;
				first     <= '0';
				for k in 0 to 7 loop
					tmp(k) <= ZERO_32;
				end loop;
				tmp_sel <= '0';
			else
				case (t_state1) is
					when idle =>
						o_done        <= '0';
						o_control0b   <= '0';
						s_acc_flush   <= '0';
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						tmp_sel       <= '0';
						if (s_acc_change= '1' and s_nomac_en = '0') then
							t_state1    <= main2;
							o_control0b <= '1';
						elsif (s_acc_change= '1' and s_nomac_en = '1') then
							t_state1    <= main4;
							o_control0b <= '1';
						else
							t_state1 <= idle;
						end if;

					when main2 =>
						t_state1 <= main3;

					when main3 =>
						for k in 0 to 7 loop
							tmp(k) <= s_acc(k);
						end loop;

						if (s_acc_sel = '1') then
							tmp_sel <= '1';
						else
							tmp_sel <= '0';
						end if;
						t_state1 <= main1;

					when main1 =>
						if (tmp_sel = '1') then
							bram0b.o.o_din(31 downto 24) <= tmp(3)(7 downto 0);
							bram0b.o.o_din(23 downto 16) <= tmp(2)(7 downto 0);
							bram0b.o.o_din(15 downto 8)  <= tmp(1)(7 downto 0);
							bram0b.o.o_din(7 downto 0)   <= tmp(0)(7 downto 0);
						else
							bram0b.o.o_din(31 downto 24) <= tmp(7)(7 downto 0);
							bram0b.o.o_din(23 downto 16) <= tmp(6)(7 downto 0);
							bram0b.o.o_din(15 downto 8)  <= tmp(5)(7 downto 0);
							bram0b.o.o_din(7 downto 0)   <= tmp(4)(7 downto 0);
						end if;

						bram0b.o.o_en <= '1';
						bram0b.o.o_we <= "1111";

						if (first = '0') then
							bram0b.o.o_addr <= s_out_addr;
							first           <= '1';
						else
							bram0b.o.o_addr <= std_logic_vector(unsigned(bram0b.o.o_addr) + 4);
						end if;

						s_acc_flush <= '1';
						if (s_out_ctr >= (M -4)) then
							t_state1 <= done;
						else
							s_out_ctr <= s_out_ctr + 4;
							t_state1  <= idle;
						end if;

					-- Special NO ACCUMULATE----------------------------------------------
					when main4 =>
						bram0b.o.o_din (31 downto 24) <= std_logic_vector(resize(unsigned(s_tmp_nomac(3)) mod 31,8));
						bram0b.o.o_din (23 downto 16) <= std_logic_vector(resize(unsigned(s_tmp_nomac(2)) mod 31,8));
						bram0b.o.o_din (15 downto 8)  <= std_logic_vector(resize(unsigned(s_tmp_nomac(1)) mod 31,8));
						bram0b.o.o_din (7 downto 0)   <= std_logic_vector(resize(unsigned(s_tmp_nomac(0)) mod 31,8));
						bram0b.o.o_en                 <= '1';
						bram0b.o.o_we                 <= "1111";

						if (first = '0') then
							bram0b.o.o_addr <= s_out_addr;
							first           <= '1';
						else
							bram0b.o.o_addr <= std_logic_vector(unsigned(bram0b.o.o_addr) + 4);
						end if;

						if (s_out_ctr >= (M -4)) then
							t_state1 <= done;
						else
							s_out_ctr <= s_out_ctr + 4;
							t_state1  <= idle;
						end if;

					when done =>
						report "Linear Combination done";
						s_acc_flush   <= '0';
						o_done        <= '1';
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						s_out_ctr     <= 0;
						first         <= '0';
						t_state1      <= idle;
					when others =>
						t_state1 <= idle;
						null;
				end case;
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

--------------------------------------------------------------------------------
-- 8xDSP BOX (MACC) 
--------------------------------------------------------------------------------
-- TODO: USe Schoolbook method to reduce DSPs amount

-- RETURNS MOD! 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity DSP_Accum is
	Port (clk : in std_logic;
		i_global_en                             : in  std_logic;
		i_en                                    : in  std_logic;
		i_sel                                   : in  std_logic;
		rst                                     : in  std_logic;
		ain0,ain1,ain2,ain3,bin0                : in  std_logic_vector(7 downto 0);
		i_flush                                 : in  std_logic;
		res0,res1,res2,res3,res4,res5,res6,res7 : out std_logic_vector(PORT_WIDTH-1 downto 0));
	attribute use_dsp : string; -- Force DSP usage

end DSP_Accum;

architecture Behavioral of DSP_Accum is
	type uarray_16 is array(natural range <>) of unsigned(15 downto 0);
	signal acc_a                    : uarray_16(0 to 3) := (others => (others => '0'));
	signal mult_a                   : uarray_16(0 to 3) := (others => (others => '0'));
	signal acc_b                    : uarray_16(0 to 3) := (others => (others => '0'));
	signal mult_b                   : uarray_16(0 to 3) := (others => (others => '0'));
	attribute use_dsp of Behavioral : architecture is "yes";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				for k in 0 to 3 loop
					acc_a(k)  <= (others => '0');
					mult_a(k) <= (others => '0');
				end loop;
			else
				if i_global_en = '1' then
					if (i_en = '1' and i_sel = '0') then
						mult_a(0) <= unsigned(ain0) * unsigned(bin0);
						mult_a(1) <= unsigned(ain1) * unsigned(bin0);
						mult_a(2) <= unsigned(ain2) * unsigned(bin0);
						mult_a(3) <= unsigned(ain3) * unsigned(bin0);
					else
						for k in 0 to 3 loop
							mult_a(k) <= (others => '0');
						end loop;
					end if;

					acc_a(0) <= acc_a(0) + mult_a(0);
					acc_a(1) <= acc_a(1) + mult_a(1);
					acc_a(2) <= acc_a(2) + mult_a(2);
					acc_a(3) <= acc_a(3) + mult_a(3);
					if (i_flush = '1' and i_sel = '1') then
						for k in 0 to 3 loop
							acc_a(k) <= (others => '0');
						end loop;
					end if;
				end if;
			end if;
		end if;
	end process;

	process (clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				for k in 0 to 3 loop
					acc_b(k)  <= (others => '0');
					mult_b(k) <= (others => '0');
				end loop;
			else
				if i_global_en = '1' then
					if (i_en = '1' and i_sel = '1') then
						mult_b(0) <= unsigned(ain0) * unsigned(bin0);
						mult_b(1) <= unsigned(ain1) * unsigned(bin0);
						mult_b(2) <= unsigned(ain2) * unsigned(bin0);
						mult_b(3) <= unsigned(ain3) * unsigned(bin0);
					else
						for k in 0 to 3 loop
							mult_b(k) <= (others => '0');
						end loop;
					end if;

					acc_b(0) <= acc_b(0) + mult_b(0);
					acc_b(1) <= acc_b(1) + mult_b(1);
					acc_b(2) <= acc_b(2) + mult_b(2);
					acc_b(3) <= acc_b(3) + mult_b(3);

					if (i_flush = '1' and i_sel = '0') then
						for k in 0 to 3 loop
							acc_b(k) <= (others => '0');
						end loop;
					end if;
				end if;
			end if;
		end if;
	end process;

	res0 <= X"0000" & std_logic_vector(acc_a(0) mod PRIME);
	res1 <= X"0000" & std_logic_vector(acc_a(1) mod PRIME);
	res2 <= X"0000" & std_logic_vector(acc_a(2) mod PRIME);
	res3 <= X"0000" & std_logic_vector(acc_a(3) mod PRIME);
	res4 <= X"0000" & std_logic_vector(acc_b(0) mod PRIME);
	res5 <= X"0000" & std_logic_vector(acc_b(1) mod PRIME);
	res6 <= X"0000" & std_logic_vector(acc_b(2) mod PRIME);
	res7 <= X"0000" & std_logic_vector(acc_b(3) mod PRIME);

end Behavioral;