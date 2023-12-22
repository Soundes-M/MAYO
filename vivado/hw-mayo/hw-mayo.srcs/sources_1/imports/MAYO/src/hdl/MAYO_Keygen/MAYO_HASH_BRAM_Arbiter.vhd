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
		BRAM0_rst     : out std_logic;
		BRAM0_control : out std_logic;

		--BIG BRAM
		BRAM1_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM1_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM1_en      : out std_logic;
		BRAM1_we      : out std_logic_vector (3 downto 0);
		BRAM1_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM1_rst     : out std_logic;
		BRAM1_control : out std_logic
	);


end entity mayo_hash_bram_arbiter;

architecture Behavioral of mayo_hash_bram_arbiter is

	ATTRIBUTE X_INTERFACE_INFO                  : STRING;
	ATTRIBUTE X_INTERFACE_INFO of BRAM0_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashSmall DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM0_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashSmall ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM0_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashSmall EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM0_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashSmall WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM0_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashSmall DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM0_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashSmall RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM0_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashSmall CTRL";

	ATTRIBUTE X_INTERFACE_INFO of BRAM1_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashBig DIN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM1_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashBig ADDR";
	ATTRIBUTE X_INTERFACE_INFO of BRAM1_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashBig EN";
	ATTRIBUTE X_INTERFACE_INFO of BRAM1_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashBig WE";
	ATTRIBUTE X_INTERFACE_INFO of BRAM1_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashBig DOUT";
	ATTRIBUTE X_INTERFACE_INFO of BRAM1_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashBig RST";
	ATTRIBUTE X_INTERFACE_INFO of BRAM1_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_HashBig CTRL";

begin

	BRAM0_din     <= hash_din     when bram_sel = '0' else ZERO_32;
	BRAM0_addr    <= hash_addr    when bram_sel = '0' else ZERO_32;
	BRAM0_en      <= hash_en      when bram_sel = '0' else '0';
	BRAM0_we      <= hash_we      when bram_sel = '0' else "0000";
	BRAM0_control <= hash_control when bram_sel = '0' else '0';
	BRAM0_rst     <= '0';

	BRAM1_din     <= hash_din     when bram_sel = '1' else ZERO_32;
	BRAM1_addr    <= hash_addr    when bram_sel = '1' else ZERO_32;
	BRAM1_en      <= hash_en      when bram_sel = '1' else '0';
	BRAM1_we      <= hash_we      when bram_sel = '1' else "0000";
	BRAM1_control <= hash_control when bram_sel = '1' else '0';
	BRAM1_rst     <= '0';

	hash_dout <= BRAM0_dout when bram_sel = '0' else BRAM1_dout;


end architecture Behavioral;