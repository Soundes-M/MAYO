LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_sample_oil is
	generic ( -- Generics are usualy linked to constants, but can be set 
		RHS_ADR : integer := RHS_BASE_ADR;
		LIN_ADR : integer := LINEAR_BASE_ADR;
		SOL_ADR : integer := OILSOL_BASE_ADR
	);
	port (
		clk  : in  std_logic;
		rst  : in  std_logic;
		en   : in  std_logic;
		ret  : out std_logic; -- 0 if fail else 1 for success
		done : out std_logic;

		-- big bram 2 
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

		-- small bram 0
		--BRAM2-A
		i_mem2a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2a_en   : out std_logic;
		o_mem2a_rst  : out std_logic;
		o_mem2a_we   : out std_logic_vector (3 downto 0);

		--BRAM2-B
		i_mem2b_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2b_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2b_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2b_en   : out std_logic;
		o_mem2b_rst  : out std_logic;
		o_mem2b_we   : out std_logic_vector (3 downto 0)

	);

end entity mayo_sample_oil;

architecture Behavioral of mayo_sample_oil is

	------------------------------------------------------------------------------
	-- BRAM
	------------------------------------------------------------------------------
	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram2b : bram_t := DEFAULT_BRAM;
	signal bram2a : bram_t := DEFAULT_BRAM;
begin

	process(clk) is
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then

				state <= idle;

			else
			end if;
		end if;
	end process;

end architecture Behavioral;