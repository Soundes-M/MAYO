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