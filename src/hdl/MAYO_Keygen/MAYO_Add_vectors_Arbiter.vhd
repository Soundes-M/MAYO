library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_add_vectors_arbiter is
	port(
		-- Config in readme.md
		bram_sel : in std_logic_vector(4 downto 0);

		------------------------------------------------------------------------INPUT
		--BRAM-A(V1)
		o_mema_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mema_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mema_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mema_en   : in  std_logic;
		i_mema_rst  : in  std_logic;
		i_mema_we   : in  std_logic_vector (3 downto 0);
		i_controla  : in  std_logic;

		--BRAM-B(V2)
		o_memb_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memb_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memb_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memb_en   : in  std_logic;
		i_memb_rst  : in  std_logic;
		i_memb_we   : in  std_logic_vector (3 downto 0);
		i_controlb  : in  std_logic;

		--BRAM-C(OUT)
		o_memc_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memc_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memc_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memc_en   : in  std_logic;
		i_memc_rst  : in  std_logic;
		i_memc_we   : in  std_logic_vector (3 downto 0);
		i_controlc  : in  std_logic;
		------------------------------------------------------------------------OUTPUT

		--BRAM0A
		i_BRAM0A_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0A_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0A_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0A_en      : out std_logic;
		o_BRAM0A_rst     : out std_logic;
		o_BRAM0A_we      : out std_logic_vector (3 downto 0);
		o_BRAM0A_control : out std_logic;

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


end entity mayo_add_vectors_arbiter;

architecture Behavioral of mayo_add_vectors_arbiter is

	--------------------------------------------------------------------------------
	-- INTERFACES
	--------------------------------------------------------------------------------
	ATTRIBUTE X_INTERFACE_INFO                : STRING;
	ATTRIBUTE X_INTERFACE_INFO of i_mema_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddA DIN";
	ATTRIBUTE X_INTERFACE_INFO of i_mema_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddA ADDR";
	ATTRIBUTE X_INTERFACE_INFO of i_mema_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddA EN";
	ATTRIBUTE X_INTERFACE_INFO of i_mema_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddA RST";
	ATTRIBUTE X_INTERFACE_INFO of i_mema_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddA WE";
	ATTRIBUTE X_INTERFACE_INFO of o_mema_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddA DOUT";
	ATTRIBUTE X_INTERFACE_INFO of i_controla  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddA CTRL";

	ATTRIBUTE X_INTERFACE_INFO of i_memb_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddB DIN";
	ATTRIBUTE X_INTERFACE_INFO of i_memb_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddB ADDR";
	ATTRIBUTE X_INTERFACE_INFO of i_memb_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddB EN";
	ATTRIBUTE X_INTERFACE_INFO of i_memb_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddB RST";
	ATTRIBUTE X_INTERFACE_INFO of i_memb_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddB WE";
	ATTRIBUTE X_INTERFACE_INFO of o_memb_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddB DOUT";
	ATTRIBUTE X_INTERFACE_INFO of i_controlb  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddB CTRL";

	ATTRIBUTE X_INTERFACE_INFO of i_memc_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddC DIN";
	ATTRIBUTE X_INTERFACE_INFO of i_memc_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddC ADDR";
	ATTRIBUTE X_INTERFACE_INFO of i_memc_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddC EN";
	ATTRIBUTE X_INTERFACE_INFO of i_memc_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddC RST";
	ATTRIBUTE X_INTERFACE_INFO of i_memc_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddC WE";
	ATTRIBUTE X_INTERFACE_INFO of o_memc_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddC DOUT";
	ATTRIBUTE X_INTERFACE_INFO of i_controlc  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_I_AddC CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add0A DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add0A ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add0A EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add0A RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add0A WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM0a_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add0A DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM0a_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add0A CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add1A DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add1A ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add1A EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add1A RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add1A WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM1a_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add1A DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM1a_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add1A CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2A DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2A ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2A EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2A RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2A WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM2a_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2A DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2a_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2A CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_din     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2B DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_addr    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2B ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_en      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2B EN";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_rst     : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2B RST";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_we      : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2B WE";
	ATTRIBUTE X_INTERFACE_INFO of i_BRAM2b_dout    : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2B DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_BRAM2b_control : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_O_Add2B CTRL";

begin

	--------------------------------------------------------------------------------
	-- BRAM 0A
	--------------------------------------------------------------------------------
	o_BRAM0A_din <= i_memb_din when (bram_sel = "00010")
	else i_mema_din            when (bram_sel = "00011")
	else ZERO_32;

	o_BRAM0A_addr <= i_memb_addr when (bram_sel = "00010")
	else i_mema_addr             when (bram_sel = "00011")
	else ZERO_32;

	o_BRAM0A_en <= i_memb_en when (bram_sel = "00010")
	else i_mema_en           when (bram_sel = "00011")
	else '0';

	o_BRAM0A_we <= i_memb_we when (bram_sel = "00010")
	else i_mema_we           when (bram_sel = "00011")
	else "0000";

	o_BRAM0A_control <= i_controlb when (bram_sel = "00010")
	else i_controla                when (bram_sel = "00011")
	else '0';

	o_BRAM0A_rst <= i_memb_rst when (bram_sel = "00010")
	else i_mema_rst            when (bram_sel = "00011")
	else '0';

	--------------------------------------------------------------------------------
	-- BRAM 2A
	--------------------------------------------------------------------------------
	o_BRAM2A_din <= i_mema_din when (bram_sel = "00000" or bram_sel = "00001" or bram_sel = "00010")
	else ZERO_32;

	o_BRAM2A_addr <= i_mema_addr when (bram_sel = "00000" or bram_sel = "00001" or bram_sel = "00010")
	else ZERO_32;

	o_BRAM2A_en <= i_mema_en when (bram_sel = "00000" or bram_sel = "00001" or bram_sel = "00010")
	else '0';

	o_BRAM2A_we <= i_mema_we when (bram_sel = "00000" or bram_sel = "00001" or bram_sel = "00010")
	else "0000";

	o_BRAM2A_control <= i_controla when (bram_sel = "00000" or bram_sel = "00001" or bram_sel = "00010")
	else '0';

	o_BRAM2A_rst <= i_mema_rst when (bram_sel = "00000" or bram_sel = "00001" or bram_sel = "00010")
	else '0';

	--------------------------------------------------------------------------------
	-- BRAM 2B
	--------------------------------------------------------------------------------
	o_BRAM2B_din <= i_memc_din when (bram_sel = "00000" or bram_sel = "00010")
	else i_memb_din            when (bram_sel = "00001")
	else ZERO_32;

	o_BRAM2B_addr <= i_memc_addr when (bram_sel = "00000" or bram_sel = "00010")
	else i_memb_addr             when (bram_sel = "00001")
	else ZERO_32;

	o_BRAM2B_en <= i_memc_en when (bram_sel = "00000" or bram_sel = "00010")
	else i_memb_en           when (bram_sel = "00001")
	else '0';

	o_BRAM2B_we <= i_memc_we when (bram_sel = "00000" or bram_sel = "00010")
	else i_memb_we           when (bram_sel = "00001")
	else "0000";

	o_BRAM2B_control <= i_controlc when (bram_sel = "00000" or bram_sel = "00010")
	else i_controlb                when (bram_sel = "00001")
	else '0';

	o_BRAM2B_rst <= i_memc_rst when (bram_sel = "00000" or bram_sel = "00010")
	else i_memb_rst            when (bram_sel = "00001")
	else '0';

	--------------------------------------------------------------------------------
	-- BRAM 1A
	--------------------------------------------------------------------------------
	o_BRAM1A_din <= i_memb_din when (bram_sel = "00000")
	else i_memc_din            when (bram_sel = "00011" or bram_sel = "00100")
	else ZERO_32;

	o_BRAM1A_addr <= i_memb_addr when (bram_sel = "00000")
	else i_memc_addr             when (bram_sel = "00011" or bram_sel = "00100")
	else ZERO_32;

	o_BRAM1A_en <= i_memb_en when (bram_sel = "00000")
	else i_memc_en           when (bram_sel = "00011" or bram_sel = "00100")
	else '0';

	o_BRAM1A_we <= i_memb_we when (bram_sel = "00000")
	else i_memc_we           when (bram_sel = "00011" or bram_sel = "00100")
	else "0000";

	o_BRAM1A_control <= i_controlb when (bram_sel = "00000")
	else i_controlc                when (bram_sel = "00011" or bram_sel = "00100")
	else '0';

	o_BRAM1A_rst <= i_memb_rst when (bram_sel = "00000")
	else i_memc_rst            when (bram_sel = "00011" or bram_sel = "00100")
	else '0';

	o_mema_dout <= i_BRAM2A_dout when (bram_sel = "00000" or bram_sel = "00001" or bram_sel = "00010")
	else i_BRAM0A_dout           when (bram_Sel = "00011")
	else ZERO_32;

	o_memb_dout <= i_BRAM1A_dout when (bram_sel = "00000")
	else i_BRAM2B_dout           when (bram_sel = "00001")
	else i_BRAM0A_dout           when (bram_sel = "00010")
	else ZERO_32;

	o_memc_dout <= i_BRAM2B_dout when (bram_sel = "00000" or bram_sel = "00010")
	else i_BRAM1A_dout           when (bram_Sel = "00011" or bram_sel = "00100")
	else ZERO_32;

end architecture Behavioral;