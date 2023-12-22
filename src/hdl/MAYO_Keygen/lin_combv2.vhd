library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use std.textio.all;

entity comb2 is
	port(
		i_clk    : in  std_logic;
		rst      : in  std_logic;
		i_enable : in  std_logic; -- ENABLE
		o_done   : out std_logic; -- DONE

		i_vec_addr : in std_logic_vector(31 downto 0);
		i_len      : in std_logic_vector(31 downto 0);

		--BRAM0-A
		i_mem0a_dout : in  std_logic_vector(31 downto 0);
		o_mem0a_din  : out std_logic_vector(31 downto 0);
		o_mem0a_addr : out std_logic_vector(31 downto 0);
		o_mem0a_en   : out std_logic;
		o_mem0a_rst  : out std_logic;
		o_mem0a_we   : out std_logic_vector (3 downto 0);

		--BRAM0-B
		i_mem0b_dout : in  std_logic_vector(31 downto 0);
		o_mem0b_din  : out std_logic_vector(31 downto 0);
		o_mem0b_addr : out std_logic_vector(31 downto 0);
		o_mem0b_en   : out std_logic;
		o_mem0b_rst  : out std_logic;
		o_mem0b_we   : out std_logic_vector (3 downto 0)
	);
end entity;

architecture Behavioral of comb2 is
	signal x : integer := 0;
	signal i : integer := 0;
	type fsm_t is (idle, reading, done);
	signal state : fsm_t := idle;

	signal accumulate : std_logic := '0';

	signal s_acc    : std_logic_vector(36 downto 0 );
	signal s_mult   : std_logic_vector(36 downto 0 );
	signal s_byte0a : std_logic_vector(7 downto 0);
	signal s_byte0b : std_logic_vector(7 downto 0);

	attribute use_dsp48          : string;
	attribute use_dsp48 of s_acc : signal is "logic";

begin

	accumulate <= '1' when i /= 0;
	s_byte0a   <= i_mem0a_dout(7 downto 0);
	s_byte0b   <= i_mem0b_dout(7 downto 0);

	process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			if(rst = '1') then
				x     <= 0;
				state <= idle;
			else
				case(state) is
					when idle =>
						o_done <= '0';
						if(i_enable = '1') then
							i     <= 0 ;
							state <= reading ;
						end if;

					when reading =>
						o_mem0a_addr <= std_logic_vector(unsigned(i_vec_addr) + i);
						o_mem0a_en   <= '1';
						o_mem0b_addr <= std_logic_vector(unsigned(i_vec_addr) + i);
						o_mem0b_en   <= '1';
						i            <= i+4;
						if (unsigned(i_len) < i) then
							state <= reading;
						else
							state <= done;
						end if;

					when done =>
						o_done <= '1';
						state  <= idle;

					when others =>
						state <= idle ;

				end case;
			end if;
		end if ;
	end process;

	process(i_clk)
	begin
		if (rising_edge(i_clk)) then
			if (rst = '1') then
				s_mult <= (others => '0');
				s_acc  <= (others => '0');
			else
				if (accumulate = '1') then
					s_mult <= std_logic_vector(unsigned(s_byte0a) * unsigned(s_byte0b));
					s_acc  <= std_logic_vector(unsigned(s_acc) + unsigned(s_mult));
				end if;
			end if;
		end if;
	end process;
end architecture Behavioral;