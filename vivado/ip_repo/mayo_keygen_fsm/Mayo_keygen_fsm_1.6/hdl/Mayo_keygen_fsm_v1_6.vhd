library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity Mayo_keygen_fsm_v1_6 is
	generic (
		-- Users to add parameters here
		SIZE      : NATURAL := 999; -- typeholder
		BRAM_SIZE : NATURAL := 31;

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH : integer := 32;
		C_S00_AXI_ADDR_WIDTH : integer := 5
	);
	port (
		-- Users to add ports here
		CLK     : IN  STD_LOGIC;
		ENABLE  : in  std_logic;
		RESET   : IN  STD_LOGIC;
		o_done  : out std_logic;
		i_debug : in  std_logic;
		-- TODO add axi lite core slv here
		o_trng_r     : out std_logic;
		o_trng_w     : out std_logic;
		o_trng_data  : out std_logic_vector(31 downto 0);
		i_trng_data  : in  std_logic_vector(31 downto 0);
		i_trng_valid : in  std_logic;
		i_trng_done  : in  std_logic;

		--HASH (EXPAND [SHAKE128])
		o_hash_en        : out std_logic;
		o_hash_mlen      : out std_logic_vector(31 downto 0);
		o_hash_olen      : out std_logic_vector(31 downto 0);
		o_hash_write_adr : out std_logic_vector(31 downto 0);
		o_hash_read_adr  : out std_logic_vector(31 downto 0);
		i_hash_done      : in  std_logic;
		i_hash_dyn_done  : in  std_logic;

		o_hash_memsel : out std_logic;

		--REDUCE CORE
		o_red_enable : out std_logic;
		o_red_len    : out std_logic_vector (31 downto 0);
		o_red_adr    : out std_logic_vector (31 downto 0);
		i_red_done   : in  std_logic;

		-- SAMPLE OIL SPACE
		o_sam_enable   : out std_logic;
		i_sam_done     : in  std_logic;
		o_sam_oil_addr : out std_logic_vector(31 downto 0);

		-- LINEAR COMBINATION 
		o_lin_enable      : out std_logic;
		i_lin_done        : in  std_logic;
		o_lin_bram_halt   : out std_logic; -- DMA Wait for Copy (Big BRAM)
		o_lin_vec_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_coeffs_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_out_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_len         : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- ADD VECTORS
		o_add_enable   : out std_logic;
		o_add_v1_addr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_add_v2_addr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_add_out_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_add_done     : in  std_logic;

		-- NEGATE 
		o_neg_enable : out std_logic;
		o_neg_len    : out std_logic_vector (31 downto 0);
		o_neg_adr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_neg_done   : in  std_logic;

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

		--BRAM1-A
		i_mem1a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_en   : out std_logic;
		o_mem1a_rst  : out std_logic;
		o_mem1a_we   : out std_logic_vector (3 downto 0);

		o_mem0a_control : out std_logic;
		o_mem0b_control : out std_logic;
		o_mem1a_control : out std_logic;

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk    : in  std_logic;
		s00_axi_aresetn : in  std_logic;
		s00_axi_awaddr  : in  std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot  : in  std_logic_vector(2 downto 0);
		s00_axi_awvalid : in  std_logic;
		s00_axi_awready : out std_logic;
		s00_axi_wdata   : in  std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb   : in  std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid  : in  std_logic;
		s00_axi_wready  : out std_logic;
		s00_axi_bresp   : out std_logic_vector(1 downto 0);
		s00_axi_bvalid  : out std_logic;
		s00_axi_bready  : in  std_logic;
		s00_axi_araddr  : in  std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot  : in  std_logic_vector(2 downto 0);
		s00_axi_arvalid : in  std_logic;
		s00_axi_arready : out std_logic;
		s00_axi_rdata   : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp   : out std_logic_vector(1 downto 0);
		s00_axi_rvalid  : out std_logic;
		s00_axi_rready  : in  std_logic
	);
end Mayo_keygen_fsm_v1_6;

architecture arch_imp of Mayo_keygen_fsm_v1_6 is

	-- component declaration
	component Mayo_keygen_fsm_v1_6_S00_AXI is
		generic (
			SIZE               : NATURAL := 999; -- typeholder
			BRAM_SIZE          : NATURAL := 31;
			C_S_AXI_DATA_WIDTH : integer := 32;
			C_S_AXI_ADDR_WIDTH : integer := 5
		);
		port (
			S_AXI_ACLK        : in  std_logic;
			S_AXI_ARESETN     : in  std_logic;
			S_AXI_AWADDR      : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
			S_AXI_AWPROT      : in  std_logic_vector(2 downto 0);
			S_AXI_AWVALID     : in  std_logic;
			S_AXI_AWREADY     : out std_logic;
			S_AXI_WDATA       : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			S_AXI_WSTRB       : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
			S_AXI_WVALID      : in  std_logic;
			S_AXI_WREADY      : out std_logic;
			S_AXI_BRESP       : out std_logic_vector(1 downto 0);
			S_AXI_BVALID      : out std_logic;
			S_AXI_BREADY      : in  std_logic;
			S_AXI_ARADDR      : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
			S_AXI_ARPROT      : in  std_logic_vector(2 downto 0);
			S_AXI_ARVALID     : in  std_logic;
			S_AXI_ARREADY     : out std_logic;
			S_AXI_RDATA       : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			S_AXI_RRESP       : out std_logic_vector(1 downto 0);
			S_AXI_RVALID      : out std_logic;
			S_AXI_RREADY      : in  std_logic;
			CLK               : IN  STD_LOGIC;
			ENABLE            : in  std_logic;
			RESET             : IN  STD_LOGIC;
			o_done            : out std_logic;
			i_debug           : in  std_logic;
			o_trng_r          : out std_logic;
			o_trng_w          : out std_logic;
			o_trng_data       : out std_logic_vector(31 downto 0);
			i_trng_data       : in  std_logic_vector(31 downto 0);
			i_trng_valid      : in  std_logic;
			i_trng_done       : in  std_logic;
			o_hash_en         : out std_logic;
			o_hash_mlen       : out std_logic_vector(31 downto 0);
			o_hash_olen       : out std_logic_vector(31 downto 0);
			o_hash_write_adr  : out std_logic_vector(31 downto 0);
			o_hash_read_adr   : out std_logic_vector(31 downto 0);
			i_hash_done       : in  std_logic;
			i_hash_dyn_done   : in  std_logic;
			o_hash_memsel     : out std_logic;
			o_red_enable      : out std_logic;
			o_red_len         : out std_logic_vector (31 downto 0);
			o_red_adr         : out std_logic_vector (31 downto 0);
			i_red_done        : in  std_logic;
			o_sam_enable      : out std_logic;
			i_sam_done        : in  std_logic;
			o_sam_oil_addr    : out std_logic_vector(31 downto 0);
			o_lin_enable      : out std_logic;
			i_lin_done        : in  std_logic;
			o_lin_bram_halt   : out std_logic; -- DMA Wait for Copy (Big BRAM)
			o_lin_vec_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_lin_coeffs_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_lin_out_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_lin_len         : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_add_enable      : out std_logic;
			o_add_v1_addr     : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_add_v2_addr     : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_add_out_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
			i_add_done        : in  std_logic;
			o_neg_enable      : out std_logic;
			o_neg_len         : out std_logic_vector (31 downto 0);
			o_neg_adr         : out std_logic_vector(PORT_WIDTH-1 downto 0);
			i_neg_done        : in  std_logic;
			i_mem0a_dout      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem0a_din       : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem0a_addr      : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem0a_en        : out std_logic;
			o_mem0a_rst       : out std_logic;
			o_mem0a_we        : out std_logic_vector (3 downto 0);
			i_mem0b_dout      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem0b_din       : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem0b_addr      : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem0b_en        : out std_logic;
			o_mem0b_rst       : out std_logic;
			o_mem0b_we        : out std_logic_vector (3 downto 0);
			i_mem1a_dout      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem1a_din       : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem1a_addr      : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_mem1a_en        : out std_logic;
			o_mem1a_rst       : out std_logic;
			o_mem1a_we        : out std_logic_vector (3 downto 0);
			o_mem0a_control   : out std_logic;
			o_mem0b_control   : out std_logic;
			o_mem1a_control   : out std_logic
		);
	end component Mayo_keygen_fsm_v1_6_S00_AXI;

begin

	-- Instantiation of Axi Bus Interface S00_AXI
	Mayo_keygen_fsm_v1_6_S00_AXI_inst : Mayo_keygen_fsm_v1_6_S00_AXI
		generic map (
			SIZE               => SIZE,
			BRAM_SIZE          => BRAM_SIZE,
			C_S_AXI_DATA_WIDTH => C_S00_AXI_DATA_WIDTH,
			C_S_AXI_ADDR_WIDTH => C_S00_AXI_ADDR_WIDTH
		)
		port map (
			CLK               => CLK,
			ENABLE            => ENABLE,
			RESET             => RESET,
			o_done            => o_done,
			i_debug           => i_debug,
			o_trng_r          => o_trng_r,
			o_trng_w          => o_trng_w,
			o_trng_data       => o_trng_data,
			i_trng_data       => i_trng_data,
			i_trng_valid      => i_trng_valid,
			i_trng_done       => i_trng_done,
			o_hash_en         => o_hash_en,
			o_hash_mlen       => o_hash_mlen,
			o_hash_olen       => o_hash_olen,
			o_hash_write_adr  => o_hash_write_adr,
			o_hash_read_adr   => o_hash_read_adr,
			i_hash_done       => i_hash_done,
			i_hash_dyn_done   => i_hash_dyn_done,
			o_hash_memsel     => o_hash_memsel,
			o_red_enable      => o_red_enable,
			o_red_len         => o_red_len,
			o_red_adr         => o_red_adr,
			i_red_done        => i_red_done,
			o_sam_enable      => o_sam_enable,
			i_sam_done        => i_sam_done,
			o_sam_oil_addr    => o_sam_oil_addr,
			o_lin_enable      => o_lin_enable,
			i_lin_done        => i_lin_done,
			o_lin_bram_halt   => o_lin_bram_halt,
			o_lin_vec_addr    => o_lin_vec_addr,
			o_lin_coeffs_addr => o_lin_coeffs_addr,
			o_lin_out_addr    => o_lin_out_addr,
			o_lin_len         => o_lin_len,
			o_add_enable      => o_add_enable,
			o_add_v1_addr     => o_add_v1_addr,
			o_add_v2_addr     => o_add_v2_addr,
			o_add_out_addr    => o_add_out_addr,
			i_add_done        => i_add_done,
			o_neg_enable      => o_neg_enable,
			o_neg_len         => o_neg_len,
			o_neg_adr         => o_neg_adr,
			i_neg_done        => i_neg_done,
			i_mem0a_dout      => i_mem0a_dout,
			o_mem0a_din       => o_mem0a_din,
			o_mem0a_addr      => o_mem0a_addr,
			o_mem0a_en        => o_mem0a_en,
			o_mem0a_rst       => o_mem0a_rst,
			o_mem0a_we        => o_mem0a_we,
			i_mem0b_dout      => i_mem0b_dout,
			o_mem0b_din       => o_mem0b_din,
			o_mem0b_addr      => o_mem0b_addr,
			o_mem0b_en        => o_mem0b_en,
			o_mem0b_rst       => o_mem0b_rst,
			o_mem0b_we        => o_mem0b_we,
			i_mem1a_dout      => i_mem1a_dout,
			o_mem1a_din       => o_mem1a_din,
			o_mem1a_addr      => o_mem1a_addr,
			o_mem1a_en        => o_mem1a_en,
			o_mem1a_rst       => o_mem1a_rst,
			o_mem1a_we        => o_mem1a_we,
			o_mem0a_control   => o_mem0a_control,
			o_mem0b_control   => o_mem0b_control,
			o_mem1a_control   => o_mem1a_control,
			S_AXI_ACLK        => s00_axi_aclk,
			S_AXI_ARESETN     => s00_axi_aresetn,
			S_AXI_AWADDR      => s00_axi_awaddr,
			S_AXI_AWPROT      => s00_axi_awprot,
			S_AXI_AWVALID     => s00_axi_awvalid,
			S_AXI_AWREADY     => s00_axi_awready,
			S_AXI_WDATA       => s00_axi_wdata,
			S_AXI_WSTRB       => s00_axi_wstrb,
			S_AXI_WVALID      => s00_axi_wvalid,
			S_AXI_WREADY      => s00_axi_wready,
			S_AXI_BRESP       => s00_axi_bresp,
			S_AXI_BVALID      => s00_axi_bvalid,
			S_AXI_BREADY      => s00_axi_bready,
			S_AXI_ARADDR      => s00_axi_araddr,
			S_AXI_ARPROT      => s00_axi_arprot,
			S_AXI_ARVALID     => s00_axi_arvalid,
			S_AXI_ARREADY     => s00_axi_arready,
			S_AXI_RDATA       => s00_axi_rdata,
			S_AXI_RRESP       => s00_axi_rresp,
			S_AXI_RVALID      => s00_axi_rvalid,
			S_AXI_RREADY      => s00_axi_rready
		);

	-- Add user logic here

	-- User logic ends

end arch_imp;
