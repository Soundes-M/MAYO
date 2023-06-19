library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_lin_comb_arbiter is
	port(
		-- Config in readme.md
		bram_sel : in std_logic_vector(4 downto 0);

		------------------------------------------------------------------------INPUT
		--BRAM0A
		o_mem0a_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem0a_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem0a_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem0a_en   : in  std_logic;
		i_mem0a_rst  : in  std_logic;
		i_mem0a_we   : in  std_logic_vector (3 downto 0);
		i_control0a  : in  std_logic;

		--BRAM0B
		o_mem0b_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem0b_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem0b_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem0b_en   : in  std_logic;
		i_mem0b_rst  : in  std_logic;
		i_mem0b_we   : in  std_logic_vector (3 downto 0);
		i_control0b  : in  std_logic;

		--BRAM1A
		o_mem1a_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem1a_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem1a_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mem1a_en   : in  std_logic;
		i_mem1a_rst  : in  std_logic;
		i_mem1a_we   : in  std_logic_vector (3 downto 0);
		i_control1a  : in  std_logic;
		------------------------------------------------------------------------OUTPUT

		--BRAM0A
		i_BRAM0A_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0A_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0A_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0A_en      : out std_logic;
		o_BRAM0A_rst     : out std_logic;
		o_BRAM0A_we      : out std_logic_vector (3 downto 0);
		o_BRAM0A_control : out std_logic;

		--BRAM0B
		i_BRAM0B_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0B_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0B_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0B_en      : out std_logic;
		o_BRAM0B_rst     : out std_logic;
		o_BRAM0B_we      : out std_logic_vector (3 downto 0);
		o_BRAM0B_control : out std_logic;

		--BRAM1A
		i_BRAM1A_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM1A_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM1A_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM1A_en      : out std_logic;
		o_BRAM1A_rst     : out std_logic;
		o_BRAM1A_we      : out std_logic_vector (3 downto 0);
		o_BRAM1A_control : out std_logic;

		--BRAM2A
		i_BRAM2A_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM2A_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM2A_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM2A_en      : out std_logic;
		o_BRAM2A_rst     : out std_logic;
		o_BRAM2A_we      : out std_logic_vector (3 downto 0);
		o_BRAM2A_control : out std_logic;

		--BRAM2B
		i_BRAM2B_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM2B_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM2B_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM2B_en      : out std_logic;
		o_BRAM2B_rst     : out std_logic;
		o_BRAM2B_we      : out std_logic_vector (3 downto 0);
		o_BRAM2B_control : out std_logic
	);


end entity mayo_lin_comb_arbiter;

architecture Behavioral of mayo_lin_comb_arbiter is

	--------------------------------------------------------------------------------
	-- INTERFACES
	--------------------------------------------------------------------------------
	ATTRIBUTE X_INTERFACE_INFO                 : STRING;
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0a DIN";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0a EN";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0a RST";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0a WE";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of i_control0a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0b DIN";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0b EN";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0b RST";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0b WE";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of i_control0b  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb0b CTRL";

	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb1a DIN";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb1a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb1a EN";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb1a RST";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb1a WE";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb1a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of i_control1a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_LinArb1a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM0a_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0b_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0b DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0b_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0b_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0b EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0b_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0b RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0b_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0b WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM0b_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0b_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb0b CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb1a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb1a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb1a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb1a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb1a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM1a_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb1a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb1a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM2a_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2b DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2b EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2b RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2b WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM2b_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_LinArb2b CTRL";

begin

	------------------------------------------------------------------------------
	-- IN -> OUT
	-- 00000: 0a -> 0a, 0b -> 0b, 1a -> 1a
	-- 00001: 0a -> 1a, 0b -> 2b, 1a -> 2a  
	-- 00010: 0a -> 2a, 0b -> 2b, 1a -> 1a 
	-- 00011: XXX
	--
	--------------------------------------------------------------------------------
	-- BRAM 0A
	--------------------------------------------------------------------------------
	o_BRAM0A_din <= i_mem0a_din when (bram_sel = "00000")
	else ZERO_32;

	o_BRAM0A_addr <= i_mem0a_addr when (bram_sel = "00000")
	else ZERO_32;

	o_BRAM0A_en <= i_mem0a_en when (bram_sel = "00000")
	else '0';

	o_BRAM0A_we <= i_mem0a_we when (bram_sel = "00000")
	else "0000";

	o_BRAM0A_control <= i_control0a when (bram_sel = "00000")
	else '0';

	o_BRAM0A_rst <= i_mem0a_rst when (bram_sel = "00000")
	else '0';

	--------------------------------------------------------------------------------
	-- BRAM 0B
	--------------------------------------------------------------------------------
	o_BRAM0B_din <= i_mem0b_din when (bram_sel = "00000" )
	else ZERO_32;

	o_BRAM0B_addr <= i_mem0b_addr when (bram_sel = "00000" )
	else ZERO_32;

	o_BRAM0B_en <= i_mem0b_en when (bram_sel = "00000" )
	else '0';

	o_BRAM0B_we <= i_mem0b_we when (bram_sel = "00000" )
	else "0000";

	o_BRAM0B_control <= i_control0b when (bram_sel = "00000" )
	else '0';

	o_BRAM0B_rst <= i_mem0b_rst when (bram_sel = "0000" )
	else '0';

	--------------------------------------------------------------------------------
	-- BRAM 1A
	--------------------------------------------------------------------------------
	o_BRAM1A_din <= i_mem1a_din when (bram_sel = "00000" or bram_sel = "00010")
	else i_mem0a_din            when (bram_sel = "00001")
	else ZERO_32;

	o_BRAM1A_addr <= i_mem1a_addr when (bram_sel = "00000" or bram_sel = "00010")
	else i_mem0a_addr             when (bram_sel = "00001")
	else ZERO_32;

	o_BRAM1A_en <= i_mem1a_en when (bram_sel = "00000" or bram_sel = "00010")
	else i_mem0a_en           when (bram_sel = "00001")
	else '0';

	o_BRAM1A_we <= i_mem1a_we when (bram_sel = "00000" or bram_sel = "00010")
	else i_mem0a_we           when (bram_sel = "00001")
	else "0000";

	o_BRAM1A_control <= i_control1a when (bram_sel = "00000" or bram_sel = "00010")
	else i_control0a                when (bram_sel = "00001")
	else '0';

	o_BRAM1A_rst <= i_mem1a_rst when (bram_sel = "00000" or bram_sel = "00010")
	else i_mem0a_rst            when (bram_sel = "00001")
	else '0';

	--------------------------------------------------------------------------------
	-- BRAM 2A
	--------------------------------------------------------------------------------
	o_BRAM2A_din <= i_mem1a_din when (bram_sel = "00001")
	else i_mem0a_din            when (bram_sel = "00010")
	else ZERO_32;

	o_BRAM2A_addr <= i_mem1a_addr when (bram_sel = "00001")
	else i_mem0a_addr             when (bram_sel = "00010")
	else ZERO_32;

	o_BRAM2A_en <= i_mem1a_en when (bram_sel = "00001")
	else i_mem0a_en           when (bram_sel = "00010")
	else '0';

	o_BRAM2A_we <= i_mem1a_we when (bram_sel = "00001")
	else i_mem0a_we           when (bram_sel = "00010")
	else "0000";

	o_BRAM2A_control <= i_control1a when (bram_sel = "00001")
	else i_control0a                when (bram_sel = "00010")
	else '0';

	o_BRAM2A_rst <= i_mem1a_rst when (bram_sel = "00001")
	else i_mem0a_rst            when (bram_sel = "00010")
	else '0';

	--------------------------------------------------------------------------------
	-- BRAM 2B
	--------------------------------------------------------------------------------
	o_BRAM2B_din <= i_mem0b_din when (bram_sel = "00001" or bram_sel = "00010")
	else ZERO_32;

	o_BRAM2B_addr <= i_mem0b_addr when (bram_sel = "00001" or bram_sel = "00010")
	else ZERO_32;

	o_BRAM2B_en <= i_mem0b_en when (bram_sel = "00001" or bram_sel = "00010")
	else '0';

	o_BRAM2B_we <= i_mem0b_we when (bram_sel = "00001" or bram_sel = "00010")
	else "0000";

	o_BRAM2B_control <= i_control0b when (bram_sel = "00001" or bram_sel = "00010")
	else '0';

	o_BRAM2B_rst <= i_mem0b_rst when (bram_sel = "00001" or bram_sel = "00010")
	else '0';

	--------------------------------------------------------------------------------

	o_mem0a_dout <= i_BRAM0A_dout when (bram_sel = "00000")
	else i_BRAM1A_dout            when (bram_sel = "00001")
	else i_BRAM2A_dout            when (bram_Sel = "00010")
	else ZERO_32;

	o_mem0b_dout <= i_BRAM0B_dout when (bram_sel = "00000")
	else i_BRAM2B_dout            when (bram_sel = "00001" or bram_sel = "00010")
	else ZERO_32;

	o_mem1a_dout <= i_BRAM1A_dout when (bram_sel = "00000" or bram_sel = "00010")
	else i_BRAM2A_dout            when (bram_Sel = "00001")
	else ZERO_32;

end architecture Behavioral;