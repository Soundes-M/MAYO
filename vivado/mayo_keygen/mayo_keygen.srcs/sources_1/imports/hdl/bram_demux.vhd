library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.UTILS_COMMON.all;

-- 		   |     |<-in0
-- 		   |     |>--out0
-- <-in----|count|<--in1
-- >-out---|  3  |>--out1
--	       |     |<--in2
--		   |     |>--out2
entity bram_demux is
	generic(
		BRAM_COUNT : natural := 1 -- OUTPUT Instances (MAX32)
	);
	port (
		-- 1
		i_bram_out : in  o_bram;
		o_bram_in  : out i_bram;
		-- N
		i_brams_in  : in  demux_input(0 to BRAM_COUNT -1);
		o_brams_out : out demux_output(0 to BRAM_COUNT -1)
	);

end entity bram_demux;

architecture rtl of bram_demux is

constant zero_out_bram : o_bram := (
o_din => (others => '0'),
o_addr => (others => '0'),
o_en => '0',
o_rst => '0', 
o_we => (others => '0')); 
begin

	process(i_bram_out) is
	begin
		for i in 0 to (BRAM_COUNT -1) loop
			if (TO_INTEGER(unsigned(i_bram_out.o_addr(17 downto 13))) = i) then -- Only for 32 BRAMS (17..13 --> 32 bits)
				o_brams_out(i) <= i_bram_out;
				o_bram_in      <= i_brams_in(i);
				
			else 
			    o_brams_out(i) <= zero_out_bram;
			    o_bram_in.i_dout <= (others => '0'); 
			end if;
		end loop ;
	end process;

end architecture ; -- rtl
