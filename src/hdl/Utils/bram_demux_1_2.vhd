library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.UTILS_COMMON.all;


entity bram_demux_1_2 is
	port(
		i_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_en   : in  std_logic;
		o_rst  : in  std_logic;
		o_we   : in  std_logic_vector (3 downto 0);
		--BRAM 0
		i_dout_bram_0 : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_din_bram_0  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_addr_bram_0 : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_en_bram_0   : out std_logic;
		o_rst_bram_0  : out std_logic;
		o_we_bram_0   : out std_logic_vector (3 downto 0);
		--BRAM 1
		i_dout_bram_1 : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_din_bram_1  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_addr_bram_1 : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_en_bram_1   : out std_logic;
		o_rst_bram_1  : out std_logic;
		o_we_bram_1   : out std_logic_vector (3 downto 0)
	);
end entity bram_demux_1_2;

architecture rtl of bram_demux_1_2 is
	signal i_bram_out  : o_bram;
	signal o_bram_in   : i_bram;
	signal i_brams_in  : demux_input(0 to 1);
	signal o_brams_out : demux_output(0 to 1);

begin

	--Assignment
	i_bram_out.o_din     <= o_din;
	i_bram_out.o_addr    <= o_addr;
	i_bram_out.o_en      <= o_en;
	i_bram_out.o_rst     <= o_rst;
	i_bram_out.o_we      <= o_we;
	i_dout               <= o_bram_in.i_dout;
	i_brams_in(0).i_dout <= i_dout_bram_0;
	i_brams_in(1).i_dout <= i_dout_bram_1;
	o_din_bram_0         <= o_brams_out(0).o_din;
	o_addr_bram_0        <= o_brams_out(0).o_addr;
	o_en_bram_0          <= o_brams_out(0).o_en;
	o_rst_bram_0         <= o_brams_out(0).o_rst;
	o_we_bram_0          <= o_brams_out(0).o_we ;
	o_din_bram_1         <= o_brams_out(1).o_din ;
	o_addr_bram_1        <= o_brams_out(1).o_addr ;
	o_en_bram_1          <= o_brams_out(1).o_en ;
	o_rst_bram_1         <= o_brams_out(1).o_rst ;
	o_we_bram_1          <= o_brams_out(1).o_we ;

	demux : entity work.bram_demux(rtl)
		generic map(BRAM_COUNT => 2)
		port map (
			i_bram_out  => i_bram_out,
			o_bram_in  => o_bram_in,
			i_brams_in  => i_brams_in,
			o_brams_out => o_brams_out
		);

end architecture;