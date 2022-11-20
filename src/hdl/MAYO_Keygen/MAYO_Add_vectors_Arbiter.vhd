library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_add_vectors_arbiter is
	port(
		-- Config in readme.md
		bram_sel : in std_logic_vector(1 downto 0);

		------------------------------------------------------------------------INPUT
		--BRAM-A(V1)
		o_mema_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mema_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mema_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_mema_en   : in  std_logic;
		i_mema_rst  : in  std_logic;
		i_mema_we   : in  std_logic_vector (3 downto 0);

		--BRAM-B(V2)
		o_memb_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memb_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memb_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memb_en   : in  std_logic;
		i_memb_rst  : in  std_logic;
		i_memb_we   : in  std_logic_vector (3 downto 0);

		--BRAM-C(OUT)
		o_memc_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memc_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memc_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_memc_en   : in  std_logic;
		i_memc_rst  : in  std_logic;
		i_memc_we   : in  std_logic_vector (3 downto 0);

		i_controla : in std_logic;
		i_controlb : in std_logic;
		i_controlc : in std_logic;
		------------------------------------------------------------------------OUTPUT

		--BRAM0
		i_BRAM0_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM0_en      : out std_logic;
		o_BRAM0_rst     : out std_logic;
		o_BRAM0_we      : out std_logic_vector (3 downto 0);
		o_BRAM0_control : out std_logic;

		--BRAM1
		i_BRAM1_dout    : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM1_din     : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM1_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_BRAM1_en      : out std_logic;
		o_BRAM1_rst     : out std_logic;
		o_BRAM1_we      : out std_logic_vector (3 downto 0);
		o_BRAM1_control : out std_logic

	);


end entity mayo_add_vectors_arbiter;

architecture Behavioral of mayo_add_vectors_arbiter is

begin

	o_BRAM0_din     <= i_memb_din  when (bram_sel = "00") else i_mema_din when (bram_sel ="10" and i_controla = '1') else i_memb_din when (bram_sel ="10" and i_controlb = '1') else i_memc_din when (bram_sel ="10" and i_controlc = '1') else ZERO_32;
	o_BRAM0_addr    <= i_memb_addr when (bram_sel = "00") else i_mema_addr when (bram_sel ="10" and i_controla = '1') else i_memb_addr when (bram_sel ="10" and i_controlb = '1') else i_memc_addr when (bram_sel ="10" and i_controlc = '1') else ZERO_32;
	o_BRAM0_en      <= i_memb_en   when (bram_sel = "00") else i_mema_en when (bram_sel ="10" and i_controla = '1') else i_memb_en when (bram_sel ="10" and i_controlb = '1') else i_memc_en when (bram_sel ="10" and i_controlc = '1') else '0';
	o_BRAM0_we      <= i_memb_we   when (bram_sel = "00") else i_mema_we when (bram_sel ="10" and i_controla = '1') else i_memb_we when (bram_sel ="10" and i_controlb = '1') else i_memc_we when (bram_sel ="10" and i_controlc = '1') else "0000";
	o_BRAM0_control <= i_controla  when (bram_sel = "00") else i_controla when (bram_sel ="10" and i_controla = '1') else i_controlb when (bram_sel ="10" and i_controlb = '1') else i_controlc when (bram_sel ="10" and i_controlc = '1') else '0';
	o_BRAM0_rst     <= i_memb_rst  when (bram_sel = "00") else i_mema_rst when (bram_sel ="10" and i_controla = '1') else i_memb_rst when (bram_sel ="10" and i_controlb = '1') else i_memc_rst when (bram_sel ="10" and i_controlc = '1') else '0';

	o_BRAM1_din     <= i_mema_din  when (bram_sel = "00" and i_controla ='1') else i_memc_din when (bram_sel = "00" and i_controlc ='1') else i_mema_din when (bram_sel = "01" and i_controla = '1') else i_memb_din when (bram_sel = "01" and i_controlb = '1') else i_memc_din when (bram_sel = "01" and i_controlc = '1') else ZERO_32;
	o_BRAM1_addr    <= i_mema_addr when (bram_sel = "00" and i_controla ='1') else i_memc_addr when (bram_sel = "00" and i_controlc ='1') else i_mema_addr when (bram_sel = "01" and i_controla = '1') else i_memb_addr when (bram_sel = "01" and i_controlb = '1') else i_memc_addr when (bram_sel = "01" and i_controlc = '1') else ZERO_32;
	o_BRAM1_en      <= i_mema_en   when (bram_sel = "00" and i_controla ='1') else i_memc_en when (bram_sel = "00" and i_controlc ='1') else i_mema_en when (bram_sel = "01" and i_controla = '1') else i_memb_en when (bram_sel = "01" and i_controlb = '1') else i_memc_en when (bram_sel = "01" and i_controlc = '1') else '0';
	o_BRAM1_we      <= i_mema_we   when (bram_sel = "00" and i_controla ='1') else i_memc_we when (bram_sel = "00" and i_controlc ='1') else i_mema_we when (bram_sel = "01" and i_controla = '1') else i_memb_we when (bram_sel = "01" and i_controlb = '1') else i_memc_we when (bram_sel = "01" and i_controlc = '1') else "0000";
	o_BRAM1_control <= i_controla  when (bram_sel = "00" and i_controla ='1') else i_controlc when (bram_sel = "00" and i_controlc ='1') else i_controla when (bram_sel = "01" and i_controla = '1') else i_controlb when (bram_sel = "01" and i_controlb = '1') else i_controlc when (bram_sel = "01" and i_controlc = '1') else '0';
	o_BRAM1_rst     <= i_mema_rst  when (bram_sel = "00" and i_controla ='1') else i_memc_rst when (bram_sel = "00" and i_controlc ='1') else i_mema_rst when (bram_sel = "01" and i_controla = '1') else i_memb_rst when (bram_sel = "01" and i_controlb = '1') else i_memc_rst when (bram_sel = "01" and i_controlc = '1') else '0';

	o_mema_dout <= i_BRAM0_dout when (bram_sel ="10" and i_controla = '1') else i_BRAM1_dout when ((bram_sel = "00" and i_controla ='1') or (bram_sel = "01" and i_controla = '1')) else ZERO_32;
	o_memc_dout <= i_BRAM0_dout when (bram_sel ="10" and i_controlc = '1') else i_BRAM1_dout when ((bram_sel = "00" and i_controlc ='1') or (bram_sel = "01" and i_controlc = '1')) else ZERO_32;
	o_memb_dout <= i_BRAM0_dout when ((bram_sel = "00") or (bram_sel ="10" and i_controlb = '1')) else i_BRAM1_dout when (bram_sel = "01" and i_controlb = '1') else ZERO_32;


end architecture Behavioral;