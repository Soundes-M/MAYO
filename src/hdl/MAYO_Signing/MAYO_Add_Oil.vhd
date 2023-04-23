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

	signal i,j,k      : integer := 0;
	signal copy_index : integer := 0;

	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram1a : bram_t := DEFAULT_BRAM;

	type states is (idle, done);
	signal state : states := idle;

begin
	main : process(clk) is
	begin
		if(rising_edge(clk))then
			if (rst = '1') then
				i          <= 0;
				j          <= 0;
				k          <= 0;
				copy_index <= 0;
				state      <= idle;

			else
				case (state) is
					when idle =>
						if (i_enable ='1')then
							k     <= 0;
							state <= main0;
						else
							state <= idle;
						end if;
					when main0 =>
						if (k < K)then
							state <= memcpy0;
						else
							state <= done;
						end if;
					--------------------------------------------------------------------
					-- MEMCPY
					--------------------------------------------------------------------
					when memcpy0 => --read
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_src_adr));
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_en   <= '1';
						state           <= memcpy1;

					when memcpy1 =>
						bram0b.o.o_we <= "0000";
						bram0b.o.o_en <= '0';
						state         <= memcpy2;

					when memcpy2 => -- writeback

						bram0b.o.o_addr <= std_logic_vector(unsigned(s_dst_adr) + copy_index);
						bram0b.o.o_din  <= bram0a.i.i_dout;
						bram0b.o.o_en   <= '1';
						bram0b.o.o_we   <= "1111";

						if (copy_index < O) then -- keep copying len Bytes! TODO: 0 is 6! not div by for
							copy_index      <= copy_index +4;
							bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
							state           <= memcpy1;
						else
							bram0a.o.o_we <= "0000";
							bram0a.o.o_en <= '0';
							state         <= done;
						end if;

					when others =>
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