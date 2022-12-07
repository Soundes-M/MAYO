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

	type state is (idle, read1, read2, read3, read4, done);
	signal t_state : state := idle;
	type state1 is (idle, main1, write1, done);
	signal t_state1 : state1 := idle;

	-- BRAM 0 reg for small data (Dual Channel R/W)
	-- BRAM 1 reg only for big data (Single Channel R/W)
	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;

	signal bram1a : bram_t := DEFAULT_BRAM;

	-- Control Registers
	signal s_acc        : array_32(0 to 7) := (others => ZERO_32); -- Buffer for accumulation, using double buffering for WAR Hazards 
	signal s_acc_sel    : std_logic        := '0';
	signal s_acc_change : std_logic        := '0';
	signal s_acc_flush  : std_logic        := '0';
	signal s_main       : std_logic;
	signal first        : std_logic;
	signal dspb         : std_logic_vector(7 downto 0) := (others => '0');

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
			i_en                                    : in  std_logic;
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
			clk     => i_clk,
			i_en    => s_main,
			i_sel   => s_acc_sel,
			rst     => rst,
			ain0    => s_vecs(7 downto 0),
			ain1    => s_vecs(15 downto 8),
			ain2    => s_vecs(23 downto 16),
			ain3    => s_vecs(31 downto 24),
			bin0    => dspb,
			i_flush => s_acc_flush,
			res0    => s_acc(0),
			res1    => s_acc(1),
			res2    => s_acc(2),
			res3    => s_acc(3),
			res4    => s_acc(4),
			res5    => s_acc(5),
			res6    => s_acc(6),
			res7    => s_acc(7)
		);

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
				t_state       <= idle;
				dspb          <= (others => '0');

			else
				case (t_state) is
					when idle =>
						c <= 0;
						i <= 0;
						j <= 0;
						if (i_enable ='1') then
							-- READ Params
							s_vecs_addr   <= i_vec_addr;
							s_coeffs_addr <= i_coeffs_addr;
							s_out_addr    <= i_out_addr;
							s_len         <= i_len;
							t_state       <= read1;
							o_control0a   <= '1';
							o_control1a   <= '1';
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

					when read3 =>            -- BRAM Extra Delay
						s_main       <= '0'; -- DSPs should not take this data in ! 
						s_acc_change <= '0';
						t_state      <= read4;

					when read4 => -- BRAM Extra Delay
						t_state <= read2;

					when read2 =>                  -- Read Vecs and Coefs, start DSPs and check lood conditions
						s_vecs <= bram1a.i.i_dout; -- 32 Bits (4 Byte/clk)
						if (c = 0) then
							s_coeffs <= bram0a.i.i_dout; -- 32 Bits (1 Byte/clk)
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

							if (j >= (M-1)) then --j loop done
								t_state <= done; -- END; no more input data
							else
								j       <= j +4 ;
								c       <= 0;
								t_state <= read3;

							end if;

						else
							i <= i +1 ;

							--Coeffs
							if (c >= 3) then
								bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4);
								c               <= 0;
							else
								c <= c +1 ;
							end if;

							-- Vecs 
							bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) + M); -- Next vecs (i is also used here) [i+1]
							t_state         <= read3;
						end if;

					when done => -- Done reading
						s_acc_change  <= '0';
						s_main        <= '0';
						bram0a.o.o_en <= '0';
						bram1a.o.o_en <= '0';
						t_state       <= idle;
					when others =>
						null;
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
			else
				case (t_state1) is
					when idle =>
						o_done        <= '0';
						o_control0b   <= '0';
						s_acc_flush   <= '0';
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						if (s_acc_change= '1') then
							t_state1    <= main1;
							o_control0b <= '1';
						end if;

					when main1 =>
						if (s_acc_sel = '1') then
							bram0b.o.o_din <= std_logic_vector(resize(unsigned(s_acc(3)) mod PRIME,8)) &
								std_logic_vector(resize(unsigned(s_acc(2)) mod PRIME,8)) &
								std_logic_vector(resize(unsigned(s_acc(1)) mod PRIME,8)) &
								std_logic_vector(resize(unsigned(s_acc(0)) mod PRIME,8));

						else
							bram0b.o.o_din <= std_logic_vector(resize(unsigned(s_acc(7)) mod PRIME,8)) &
								std_logic_vector(resize(unsigned(s_acc(6)) mod PRIME,8)) &
								std_logic_vector(resize(unsigned(s_acc(5)) mod PRIME,8)) &
								std_logic_vector(resize(unsigned(s_acc(4)) mod PRIME,8));
						end if;
						t_state1 <= idle;

						bram0b.o.o_en <= '1';
						bram0b.o.o_we <= "1111";

						if first = '0' then
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


					when done =>
						s_acc_flush <= '0';
						report "Linear Combination done";
						o_done        <= '1';
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						s_out_ctr     <= 0;
						first         <= '0';
						t_state1      <= idle;
					when others =>
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
-- 8xDSP BOX (ACCUM) 
--------------------------------------------------------------------------------
-- TODO: USe Schoolbook method to reduce DSPs amount

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.UTILS_COMMON.all;

entity DSP_Accum is
	Port (clk : in std_logic;
		i_en                                    : in  std_logic;
		i_sel                                   : in  std_logic;
		rst                                     : in  std_logic;
		ain0,ain1,ain2,ain3,bin0                : in  std_logic_vector(7 downto 0);
		i_flush                                 : in  std_logic;
		res0,res1,res2,res3,res4,res5,res6,res7 : out std_logic_vector(PORT_WIDTH-1 downto 0));
end DSP_Accum;

architecture Behavioral of DSP_Accum is
	signal acc               : array_32(0 to 7) := (others => ZERO_32);
	attribute use_dsp        : string; -- Force DSP usage
	attribute use_dsp of acc : signal is "yes";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				for k in 0 to 7 loop
					acc(k) <= (others => '0');
				end loop;
			else
				if i_en = '1' then
					if i_sel = '0' then
						acc(0) <= std_logic_vector(unsigned(acc(0)) + (unsigned(ain0) * (unsigned(bin0))));
						acc(1) <= std_logic_vector(unsigned(acc(1)) + (unsigned(ain1) * (unsigned(bin0))));
						acc(2) <= std_logic_vector(unsigned(acc(2)) + (unsigned(ain2) * (unsigned(bin0))));
						acc(3) <= std_logic_vector(unsigned(acc(3)) + (unsigned(ain3) * (unsigned(bin0))));
					else
						acc(4) <= std_logic_vector(unsigned(acc(4)) + (unsigned(ain0) * (unsigned(bin0))));
						acc(5) <= std_logic_vector(unsigned(acc(5)) + (unsigned(ain1) * (unsigned(bin0))));
						acc(6) <= std_logic_vector(unsigned(acc(6)) + (unsigned(ain2) * (unsigned(bin0))));
						acc(7) <= std_logic_vector(unsigned(acc(7)) + (unsigned(ain3) * (unsigned(bin0))));
					end if;
				end if;
				if i_flush = '1' then
					for k in 0 to 3 loop
						if i_sel = '1' then
							acc(k) <= (others => '0');
						else
							acc(k+4) <= (others => '0');
						end if;
					end loop;
				end if;
			end if;
		end if;
	end process;

	res0 <= acc(0);
	res1 <= acc(1);
	res2 <= acc(2);
	res3 <= acc(3);
	res4 <= acc(4);
	res5 <= acc(5);
	res6 <= acc(6);
	res7 <= acc(7);

end Behavioral;