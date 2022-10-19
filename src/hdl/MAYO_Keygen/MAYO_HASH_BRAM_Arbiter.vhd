library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_hash_bram_arbiter is
	port(
		-- 0 : Small, 1 : Big
		bram_sel : in std_logic;

		hash_din     : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		hash_addr    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		hash_en      : in  std_logic;
		hash_control : in  std_logic;
		hash_we      : in  std_logic_vector (3 downto 0);
		hash_dout    : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- SMALL BRAM
		BRAM0_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM0_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM0_en      : out std_logic;
		BRAM0_we      : out std_logic_vector (3 downto 0);
		BRAM0_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM0_control : out std_logic;

		--BIG BRAM
		BRAM1_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM1_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM1_en      : out std_logic;
		BRAM1_we      : out std_logic_vector (3 downto 0);
		BRAM1_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM1_control : out std_logic
	);


end entity mayo_hash_bram_arbiter;

architecture Behavioral of mayo_hash_bram_arbiter is

begin

	BRAM0_din     <= hash_din     when bram_sel = '0' else ZERO_32;
	BRAM0_addr    <= hash_din     when bram_sel = '0' else ZERO_32;
	BRAM0_en      <= hash_en      when bram_sel = '0' else '0';
	BRAM0_rst     <= hash_rst     when bram_sel = '0' else '0';
	BRAM0_we      <= hash_we      when bram_sel = '0' else "0000";
	BRAM0_control <= hash_control when bram_sel = '0' else '0';

	BRAM1_din     <= hash_din     when bram_sel = '1' else ZERO_32;
	BRAM1_addr    <= hash_din     when bram_sel = '1' else ZERO_32;
	BRAM1_en      <= hash_en      when bram_sel = '1' else '0';
	BRAM1_we      <= hash_we      when bram_sel = '1' else "0000";
	BRAM1_control <= hash_control when bram_sel = '1' else '0';

	hash_dout <= BRAM0_dout when bram_sel = '0' else BRAM1_dout;


end architecture Behavioral;