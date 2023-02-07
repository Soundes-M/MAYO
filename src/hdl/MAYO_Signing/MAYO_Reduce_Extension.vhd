LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_reduce_extension is
	port (
		clk          : in  std_logic;
		rst          : in  std_logic;
		en           : in  std_logic;
		o_done       : out std_logic;
		i_input_adr  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_output_adr : in  std_logic_vector(PORT_WIDTH-1 downto 0);

		-- small bram
		i_mema_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_en   : out std_logic;
		o_mema_rst  : out std_logic;
		o_mema_we   : out std_logic_vector (3 downto 0);

		i_memb_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_en   : out std_logic;
		o_memb_rst  : out std_logic;
		o_memb_we   : out std_logic_vector (3 downto 0);

		-- big bram 2 ( output)
		i_memc_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memc_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memc_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memc_en   : out std_logic;
		o_memc_rst  : out std_logic;
		o_memc_we   : out std_logic_vector (3 downto 0)

	);

end entity mayo_reduce_extension;

architecture Behav of mayo_reduce_extension is
	type states0_t is (idle, main0, main1, main2, main3, main4, main5, main6, done);
	signal state0       : states0_t := idle;
	signal s_input_adr  : std_logic_vector(PORT_WIDTH -1 downto 0);
	signal s_output_adr : std_logic_vector(PORT_WIDTH -1 downto 0);
	signal read_ctr     : integer := 0;
	signal write_ctr    : integer := 0;

	-- internal scartch memories
	type uarray_32 is array(natural range <>) of unsigned(PORT_WIDTH-1 downto 0);
	signal orig_input                : uarray_32(0 to 1) := (others => (others => '0'));
	signal input_coef                : uarray_32(0 to 2) := (others => (others => '0'));
	signal temp_output               : uarray_32(0 to 1) := (others => (others => '0'));
	signal in_ctr, coef_ctr, out_ctr : integer           := 0 ;
	signal prev_ctr                  : integer           := 0;
	--control
	signal first_add : std_logic := '0';
	signal start_add : std_logic := '0';
	signal write_out : std_logic := '0';

	signal i   : integer := 0;
	signal k   : integer := 0;
	signal tmp : unsigned(PORT_WIDTH-1 downto 0 );
begin

	main_process : process(clk) is
	begin
		if (rising_edge(clk)) then
			if(rst = '1') then
				s_input_adr  <= ZERO_32;
				s_output_adr <= ZERO_32;
				first_add    <= '0';
				start_add    <= '0';
				in_ctr       <= 0;
				coef_ctr     <= 0;
				out_ctr      <= 0;
				i            <= 118;
				o_mema_en    <= '0';
				o_mema_we    <= "0000";
				o_memb_en    <= '0';
				o_memb_we    <= "0000";

				state0 <= idle;

			else
				case state0 is
					when idle =>
						if (en = '1') then
							s_input_adr  <= i_input_adr;
							s_output_adr <= i_output_adr;
							i            <= 118;
							in_ctr       <= 0;
							coef_ctr     <= 0;
							state0       <= main0;
						end if;

					when main0 => -- preload memory with inputs

						o_mema_addr <= std_logic_vector(unsigned(s_input_adr) +i-4); ----------------- Loop goes backwards we need 0 -1 -2 -3 indices
						o_mema_en   <= '1';
						o_mema_we   <= "0000";

						o_memb_addr <= std_logic_vector(unsigned(s_input_adr)+i - 60 - 4);
						o_memb_en   <= '1';
						o_memb_we   <= "0000";

						state0 <= main1;

					when main1 =>
						state0 <= main2;

					when main2 =>
						o_mema_en <= '0';
						o_memb_en <= '0';
						for x in 0 to 3 loop
							input_coef(coef_ctr)(7+x*8 downto x*8) <= unsigned(i_mema_dout(7+x*8 downto x*8));
							orig_input(in_ctr)(7+x*8 downto x*8)   <= unsigned(i_memb_dout(7+x*8 downto x*8));
						end loop;
						i         <= i -4;
						first_add <= '1';

						state0 <= main3;

					when main3 =>
						first_add <= '0';
						start_add <= '0';

						if (i > 59) then
							state0 <= main4;
						else
							state0 <= done;
						end if;

					when main4 =>
						o_mema_addr <= std_logic_vector(unsigned(s_input_adr) +i-4);
						o_mema_en   <= '1';
						o_mema_we   <= "0000";

						o_memb_addr <= std_logic_vector(unsigned(s_input_adr) +i- 60 -4);
						o_memb_en   <= '1';
						o_memb_we   <= "0000";

						state0 <= main5;

					when main5 =>
						coef_ctr <= clipNext(coef_ctr,1);
						in_ctr   <= clipNext(in_ctr,2);
						state0   <= main6;

					when main6 =>
						o_mema_en <= '0';
						o_memb_en <= '0';
						start_add <= '1';
						for x in 0 to 3 loop
							input_coef(coef_ctr)(7+x*8 downto x*8) <= unsigned(i_mema_dout(7+x*8 downto x*8));
							orig_input(in_ctr)(7+x*8 downto x*8)   <= unsigned(i_memb_dout(7+x*8 downto x*8));
						end loop;
						i      <= i - 4;
						state0 <= main3;

					when done =>
						state0 <= idle;

				end case;
			end if;
		end if;
	end process;

	prev_ctr <= clipPrev(coef_ctr,2);
	adder : process(clk) is
	begin
		if (rising_edge(clk)) then
			if(rst = '1') then
				temp_output <= (others => (others => '0'));
				out_ctr     <= 0;
			else
				if (first_add = '1') then
					temp_output(out_ctr)(31 downto 24) <= orig_input(in_ctr)(31 downto 24) - input_coef(coef_ctr)(31 downto 24);
					temp_output(out_ctr)(23 downto 16) <= orig_input(in_ctr)(23 downto 16) - 3*input_coef(coef_ctr)(31 downto 24)- input_coef(coef_ctr)(23 downto 16);
					temp_output(out_ctr)(15 downto 8)  <= orig_input(in_ctr)(15 downto 8) - 27*input_coef(coef_ctr)(31 downto 24)- 3*input_coef(coef_ctr)(23 downto 16) - input_coef(coef_ctr)(15 downto 8);
					temp_output(out_ctr)(7 downto 0)   <= orig_input(in_ctr)(7 downto 0) - 27*input_coef(coef_ctr)(23 downto 16)- 3*input_coef(coef_ctr)(15 downto 8) - input_coef(coef_ctr)(7 downto 0);
					write_out                          <= '1';

				elsif (start_add = '1') then
					temp_output(out_ctr)(31 downto 24) <= orig_input(in_ctr)(31 downto 24) - 27*input_coef(prev_ctr)(15 downto 8)- 3*input_coef(prev_ctr)(7 downto 0) - input_coef(coef_ctr)(31 downto 24);
					temp_output(out_ctr)(23 downto 16) <= orig_input(in_ctr)(23 downto 16) - 27*input_coef(prev_ctr)(7 downto 0)- 3*input_coef(coef_ctr)(31 downto 24) - input_coef(coef_ctr)(23 downto 16);
					temp_output(out_ctr)(15 downto 8)  <= orig_input(in_ctr)(15 downto 8) - 27*input_coef(coef_ctr)(31 downto 24)- 3*input_coef(coef_ctr)(23 downto 16) - input_coef(coef_ctr)(15 downto 8);
					temp_output(out_ctr)(7 downto 0)   <= orig_input(in_ctr)(7 downto 0) - 27*input_coef(coef_ctr)(31 downto 24)- 3*input_coef(coef_ctr)(23 downto 16) - input_coef(coef_ctr)(15 downto 8);
					write_out                          <= '1';

				else
					write_out <= '0';
				end if;

				out_ctr <= clipNext(out_ctr,1);

			end if;
		end if;
	end process;

	output : process(clk) is
	begin
		if(rising_edge(clk)) then
			if(rst ='1') then
				k         <= M;
				o_memc_en <= '0';
				o_memc_we <= "0000";
			else
				if (write_out <= '1') then
					o_memc_din  <= std_logic_vector(((temp_output(clipPrev(out_ctr)) mod PRIME )+ PRIME) mod PRIME); -- todo : maybe too long : Timing
					o_memc_addr <= std_logic_vector(unsigned(s_output_adr) +k-4);
					o_memc_en   <= '1';
					o_memc_we   <= "1111";
					k           <= k -4 ;
				else
					k         <= k;
					o_memc_en <= '0';
					o_memc_we <= "0000";
				end if;

				if (k = 0) then
					o_done <= '1';
					report "Reduce_extension done";
					k <= M;
				end if;

				o_done <= '0';
			end if;
		end if;
	end process;


end architecture Behav;