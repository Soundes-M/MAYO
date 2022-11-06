library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity Mayo_keygen_fsm_v1_6_S00_AXI is
	generic (
		-- Users to add parameters here
		SIZE      : NATURAL := 999; -- typeholder
		BRAM_SIZE : NATURAL := 31;

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH : integer := 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH : integer := 5
	);
	port (
		-- Users to add ports here
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
		o_mem1a_control   : out std_logic;

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK : in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN : in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
		-- privilege and security level of the transaction, and whether
		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT : in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
		-- valid write address and control information.
		S_AXI_AWVALID : in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
		-- to accept an address and associated control signals.
		S_AXI_AWREADY : out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
		-- valid data. There is one write strobe bit for each eight
		-- bits of the write data bus.    
		S_AXI_WSTRB : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
		-- data and strobes are available.
		S_AXI_WVALID : in std_logic;
		-- Write ready. This signal indicates that the slave
		-- can accept the write data.
		S_AXI_WREADY : out std_logic;
		-- Write response. This signal indicates the status
		-- of the write transaction.
		S_AXI_BRESP : out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
		-- is signaling a valid write response.
		S_AXI_BVALID : out std_logic;
		-- Response ready. This signal indicates that the master
		-- can accept a write response.
		S_AXI_BREADY : in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
		-- and security level of the transaction, and whether the
		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT : in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
		-- is signaling valid read address and control information.
		S_AXI_ARVALID : in std_logic;
		-- Read address ready. This signal indicates that the slave is
		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY : out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
		-- read transfer.
		S_AXI_RRESP : out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
		-- signaling the required read data.
		S_AXI_RVALID : out std_logic;
		-- Read ready. This signal indicates that the master can
		-- accept the read data and response information.
		S_AXI_RREADY : in std_logic
	);
end Mayo_keygen_fsm_v1_6_S00_AXI;

architecture arch_imp of Mayo_keygen_fsm_v1_6_S00_AXI is

	-- AXI4LITE signals
	signal axi_awaddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready : std_logic;
	signal axi_wready  : std_logic;
	signal axi_bresp   : std_logic_vector(1 downto 0);
	signal axi_bvalid  : std_logic;
	signal axi_araddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready : std_logic;
	signal axi_rdata   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp   : std_logic_vector(1 downto 0);
	signal axi_rvalid  : std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB          : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 2;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 6
	signal slv_reg0     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg1     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg2     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg3     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg4     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg5     : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg_rden : std_logic;
	signal slv_reg_wren : std_logic;
	signal reg_data_out : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index   : integer;
	signal aw_en        : std_logic;


	----------------------------------------------------------------------------
	-- MAYO KEYGEN FSM
	----------------------------------------------------------------------------
	TYPE STATES IS (idle, rand0, rand1, rand2, rand3, rand4, rand5, expand0, expand1, expand2, reduce0, reduce1, reduce2, transpose0, transpose1, transpose2,
			transpose3, transpose4, transpose5, transpose6, negate0, negate1, negate2, sample0, sample1, sample2,
			compute0, compute1, compute2, compute3, compute4, compute5, compute6, compute7, compute8, compute9, compute10, compute11,
			compute12, compute13, compute14, compute15, compute16, compute17, compute18, compute19, compute20, compute21, compute22, compute23,
			done, wait_clear);
	SIGNAL STATE : STATES := idle; -- default to reset;

	signal trng : trng_t := DEFAULT_TRNG;

	signal index, counter                   : integer                       := 0;
	signal p1_counter                       : integer                       := 0;
	signal i,j                              : integer                       := 0;
	signal s_p1_index,copy_index            : integer                       := 0;
	signal s_oil_space_index                : integer                       := 0;
	signal s_v1_index                       : integer                       := 0;
	signal s_src_index                      : integer                       := 0;
	signal s_dest_index                     : integer                       := 0;
	signal s_read_bram                      : std_logic_vector(31 downto 0) := ZERO_32;
	signal s_p2_index                       : integer                       := 0;
	signal s_tempt_index,s_oil_space2_index : integer                       := 0;
	signal s_hash_mem_sel                   : std_logic                     := '0';

	------------------------------------------------------------------------------
	-- Reg Space (AXI-LITE)
	------------------------------------------------------------------------------
	signal s_status_reg  : std_logic_vector(31 downto 0);
	signal s_control_reg : std_logic_vector(31 downto 0);
	signal s_pk_reg      : std_logic_vector(31 downto 0); --can copy pk and sk to ddr
	signal s_sk_reg      : std_logic_vector(31 downto 0);

	alias en     : std_logic is s_control_reg(1);
	alias debug  : std_logic is s_control_reg(2);
	alias irq    : std_logic is s_control_reg(3);
	alias expose : std_logic is s_control_reg(4);

	alias busy : std_logic is s_status_reg(1);
	alias err  : std_logic is s_status_reg(2);

	------------------------------------------------------------------------------
	-- BRAM
	------------------------------------------------------------------------------
	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram1a : bram_t := DEFAULT_BRAM;

begin
	-- I/O Connections assignments

	S_AXI_AWREADY <= axi_awready;
	S_AXI_WREADY  <= axi_wready;
	S_AXI_BRESP   <= axi_bresp;
	S_AXI_BVALID  <= axi_bvalid;
	S_AXI_ARREADY <= axi_arready;
	S_AXI_RDATA   <= axi_rdata;
	S_AXI_RRESP   <= axi_rresp;
	S_AXI_RVALID  <= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				axi_awready <= '0';
				aw_en       <= '1';
			else
				if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
					-- slave is ready to accept write address when
					-- there is a valid write address and write data
					-- on the write address and data bus. This design 
					-- expects no outstanding transactions. 
					axi_awready <= '1';
					aw_en       <= '0';
				elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
					aw_en       <= '1';
					axi_awready <= '0';
				else
					axi_awready <= '0';
				end if;
			end if;
		end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				axi_awaddr <= (others => '0');
			else
				if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
					-- Write Address latching
					axi_awaddr <= S_AXI_AWADDR;
				end if;
			end if;
		end if;
	end process;

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				axi_wready <= '0';
			else
				if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then
					-- slave is ready to accept write data when 
					-- there is a valid write address and write data
					-- on the write address and data bus. This design 
					-- expects no outstanding transactions.           
					axi_wready <= '1';
				else
					axi_wready <= '0';
				end if;
			end if;
		end if;
	end process;

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
		variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				slv_reg0 <= (others => '0');
				slv_reg1 <= (others => '0');
				slv_reg2 <= (others => '0');
				slv_reg3 <= (others => '0');
				slv_reg4 <= (others => '0');
				slv_reg5 <= (others => '0');
			else
				loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
				if (slv_reg_wren = '1') then
					case loc_addr is
						when b"000" =>
							for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if ( S_AXI_WSTRB(byte_index) = '1' ) then
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 0
									slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"001" =>
							for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if ( S_AXI_WSTRB(byte_index) = '1' ) then
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 1
									slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"010" =>
							for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if ( S_AXI_WSTRB(byte_index) = '1' ) then
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 2
									slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"011" =>
							for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if ( S_AXI_WSTRB(byte_index) = '1' ) then
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 3
									slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"100" =>
							for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if ( S_AXI_WSTRB(byte_index) = '1' ) then
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 4
									slv_reg4(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when b"101" =>
							for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if ( S_AXI_WSTRB(byte_index) = '1' ) then
									-- Respective byte enables are asserted as per write strobes                   
									-- slave registor 5
									slv_reg5(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
								end if;
							end loop;
						when others =>
							slv_reg0 <= slv_reg0;
							slv_reg1 <= slv_reg1;
							slv_reg2 <= slv_reg2;
							slv_reg3 <= slv_reg3;
							slv_reg4 <= slv_reg4;
							slv_reg5 <= slv_reg5;
					end case;
				end if;
			end if;
		end if;
	end process;

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				axi_bvalid <= '0';
				axi_bresp  <= "00"; --need to work more on the responses
			else
				if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0' ) then
					axi_bvalid <= '1';
					axi_bresp  <= "00";
				elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then --check if bready is asserted while bvalid is high)
					axi_bvalid <= '0';                               -- (there is a possibility that bready is always asserted high)
				end if;
			end if;
		end if;
	end process;

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				axi_arready <= '0';
				axi_araddr  <= (others => '1');
			else
				if (axi_arready = '0' and S_AXI_ARVALID = '1') then
					-- indicates that the slave has acceped the valid read address
					axi_arready <= '1';
					-- Read Address latching 
					axi_araddr <= S_AXI_ARADDR;
				else
					axi_arready <= '0';
				end if;
			end if;
		end if;
	end process;

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				axi_rvalid <= '0';
				axi_rresp  <= "00";
			else
				if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
					-- Valid read data is available at the read data bus
					axi_rvalid <= '1';
					axi_rresp  <= "00"; -- 'OKAY' response
				elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
					-- Read data is accepted by the master
					axi_rvalid <= '0';
				end if;
			end if;
		end if;
	end process;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
		variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
		-- Address decoding for reading registers
		loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
		case loc_addr is
			when b"000" =>
				reg_data_out <= slv_reg0;
			when b"001" =>
				reg_data_out <= slv_reg1;
			when b"010" =>
				reg_data_out <= slv_reg2;
			when b"011" =>
				reg_data_out <= slv_reg3;
			when b"100" =>
				reg_data_out <= slv_reg4;
			when b"101" =>
				reg_data_out <= slv_reg5;
			when others =>
				reg_data_out <= (others => '0');
		end case;
	end process;

	-- Output register or memory read data
	process( S_AXI_ACLK ) is
	begin
		if (rising_edge (S_AXI_ACLK)) then
			if ( S_AXI_ARESETN = '0' ) then
				axi_rdata <= (others => '0');
			else
				if (slv_reg_rden = '1') then
					-- When there is a valid read address (S_AXI_ARVALID) with 
					-- acceptance of read address by the slave (axi_arready), 
					-- output the read dada 
					-- Read address mux
					axi_rdata <= reg_data_out; -- register read data
				end if;
			end if;
		end if;
	end process;


	-- Add user logic here

	o_mem0a_control <= '1' when (state = rand0 or state = rand1 or state = rand2 or state = rand3 or state = rand4 or state = rand5) else '0';
	o_mem0b_control <= '1' when (state = rand2 or state = rand3 or state = rand4 or state = rand5) else '0';
	o_mem1a_control <= '1' when (state = rand2 or state = rand3 or state = rand4 or state = rand5 or state = transpose3 or state = transpose4 or state = transpose5) else '0';

	-- sync compute!
	KEYGEN : PROCESS (CLK) IS
	BEGIN
		if (rising_edge(clk)) then
			if (RESET = '1') then
				-- add reset werte!
				trng.o             <= DEFAULT_OUT_TRNG;
				bram0a.o           <= DEFAULT_OUT_BRAM;
				bram0b.o           <= DEFAULT_OUT_BRAM;
				bram1a.o           <= DEFAULT_OUT_BRAM;
				index              <= 0 ;
				counter            <= 0;
				p1_counter         <= 0;
				i                  <= 0;
				j                  <= 0;
				s_p1_index         <= 0;
				copy_index         <= 0;
				s_oil_space_index  <= 0;
				s_v1_index         <= 0;
				s_src_index        <= 0;
				s_dest_index       <= 0;
				s_read_bram        <= ZERO_32;
				s_p2_index         <= 0;
				s_tempt_index      <= 0;
				s_oil_space2_index <= 0;

			else
				case (state) is
					when idle =>
						o_done <= '0';
						irq    <= '0';
						if (enable = '1' or en = '1') then
							state <= rand0;
							busy  <= '1';
						else
							busy <= '0';
						end if;

					when rand0 => -- generate public seed and secret seed

						--------------------------------------------------------------------
						-- (1) SK : |PK_SEED|SK_SEED|
						-- (2) PK : |PK_SEED|
						--------------------------------------------------------------------#
						trng.o.w        <= '1';
						trng.o.r        <= '0';
						trng.o.data     <= std_logic_vector(to_unsigned(SEED_BYTES*2,PORT_WIDTH));
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));
						state           <= rand1;

					when rand1 =>
						trng.o.w <= '0';
						trng.o.r <= '1';

						if ( trng.i.valid = '1') then
							bram0a.o.o_we   <= "1111";
							bram0a.o.o_din  <= i_trng_data;
							bram0a.o.o_en   <= '1';
							bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4) ; -- TODO : Check 
						else
							bram0a.o.o_en <= '0';
							bram0a.o.o_we <= "0000";
						end if;

						if (trng.i.done = '1') then
							state <= rand2;
						end if;

					when rand2 => -- copy to PK (brama-> bramb) && (bram0 to bram1) 
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));
						bram0b.o.o_addr <= std_logic_vector(to_unsigned(PK_BASE_ADR,PORT_WIDTH));
						bram1a.o.o_addr <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH));

						bram0a.o.o_en  <= '0';
						bram0a.o.o_we  <= "0000";
						bram0a.o.o_din <= ZERO_32;

						bram0b.o.o_en  <= '0';
						bram0b.o.o_we  <= "1111";
						bram0b.o.o_din <= ZERO_32;

						bram1a.o.o_en  <= '0';
						bram1a.o.o_we  <= "1111";
						bram1a.o.o_din <= ZERO_32;
						state          <= rand3;

					when rand3 => -- read
						bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4) ;
						bram0a.o.o_en   <= '1';
						bram0b.o.o_en   <= '0';
						bram1a.o.o_en   <= '0';
						state           <= rand4;

					when rand4 =>
						bram0b.o.o_addr <= std_logic_vector(unsigned(bram0b.o.o_addr) + 4) ;
						bram0b.o.o_en   <= '1';
						bram0b.o.o_din  <= i_mem0a_dout;

						bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) + 4) ;
						bram1a.o.o_en   <= '1';
						bram1a.o.o_din  <= i_mem0a_dout;

						if (index >= 4) then
							state <= rand5;
						else
							index <= index +1 ;
							state <= rand3;
						end if;

					when rand5 => -- copy pk seed to big bram (will be overwritten)
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						state         <= expand0;

					--------------------------------------------------------------------
					-- EXPAND PK  BEGIN
					--------------------------------------------------------------------
					when expand0 =>
						o_hash_mlen      <= std_logic_vector(to_unsigned(SEED_BYTES,PORT_WIDTH));
						o_hash_olen      <= std_logic_vector(to_unsigned(P1_BYTES,PORT_WIDTH));
						o_hash_read_adr  <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH));
						o_hash_write_adr <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH)); -- Linked to BRAM 1 (BIG)
						o_hash_en        <= '1';
						state            <= expand1;

					when expand1 =>
						o_hash_en        <= '0';
						o_hash_mlen      <= ZERO_32;
						o_hash_olen      <= ZERO_32;
						o_hash_read_adr  <= ZERO_32;
						o_hash_write_adr <= ZERO_32;
						state            <= expand2;

					when expand2 =>
						if (i_hash_done = '1') then
							state <= reduce0;
						end if;

					when reduce0 =>
						o_red_adr    <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH));
						o_red_len    <= std_logic_vector(to_unsigned(P1_BYTES,PORT_WIDTH));
						o_red_enable <= '1';
						state        <= reduce1;

					when reduce1 =>
						o_red_enable <= '0';
						state        <= reduce2;

					when reduce2 =>
						if (i_red_done = '1') then
							state          <= sample0;
							s_hash_mem_sel <= '0'; -- Hash using smal bram
						end if;
					--------------------------------------------------------------------
					-- EXPAND PK END
					--------------------------------------------------------------------
					when sample0 => -- USES BOTH BRAM 0 PORTS!
						o_sam_enable   <= '1';
						o_sam_oil_addr <= std_logic_vector(to_unsigned(OIL_SPACE_BASE_ADR,PORT_WIDTH));
						state          <= sample1;

					when sample1 =>
						o_sam_enable <= '0';
						state        <= sample2;

					when sample2 =>
						if (i_sam_done = '1') then
							state <= compute0;
						end if ;

						--------------------------------------------------------------------
						-- COMPUTEP2
						-- P2 = - O*P1*O^t - O*P1'
						-- Temp = P1*O^t + P1'
						--------------------------------------------------------------------

					-- PART 1
					when compute0 =>
						i <= 0;
						j <= 0;
						-- Lin Combination
						s_p1_index        <= P1_BASE_ADR;        -- fix 
						s_oil_space_index <= OIL_SPACE_BASE_ADR; -- fix 

						-- Add vec
						s_v1_index <= TEMP_BASE_ADR;
						state      <= compute1 ;

					when compute1 =>
						if (i < N-O) then
							s_p1_index <= P1_BASE_ADR + p1_counter*M;
							state      <= compute2 ;
						else
							state <= compute8;
						end if;

					when compute2 =>
						if (j < O) then
							state <= compute3;
						else
							state <= compute7;
						end if;

					when compute3 =>
						o_lin_vec_addr    <= std_logic_vector(to_unsigned(s_p1_index,PORT_WIDTH));
						o_lin_coeffs_addr <= std_logic_vector(to_unsigned(s_oil_space_index,PORT_WIDTH));
						o_lin_len         <= std_logic_vector(to_unsigned(N-O-i,PORT_WIDTH));
						o_lin_out_addr    <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH));
						o_lin_enable      <= '1';
						state             <= compute4;

					when compute4 =>
						o_lin_enable <= '0';
						if (i_lin_done = '1') then
							state <= compute5;
						end if;

					when compute5 =>
						o_add_v1_addr  <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
						o_add_v2_addr  <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH));
						o_add_out_addr <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
						o_add_enable   <= '1';
						state          <= compute6;

					when compute6 =>
						o_add_enable <= '0';
						if (i_add_done = '1') then
							j                 <= j+1;
							s_oil_space_index <= s_oil_space_index + (N-O);
							s_v1_index        <= s_v1_index + M;
							state             <= compute2;
						end if;

					when compute7 =>
						p1_counter <= p1_counter + (N-O-i);
						-- update ctrs for next round
						s_oil_space_index <= OIL_SPACE_BASE_ADR + i+1;
						s_v1_index        <= TEMP_BASE_ADR + (i+1)*O*M;
						i                 <= i+1 ;
						j                 <= 0;
						state             <= compute1;

					-- PART 2
					when compute8 =>
						i <= 0;
						j <= 0;

						-- Add vec
						s_v1_index <= TEMP_BASE_ADR;
						s_p1_index <= P1_BASE_ADR;
						state      <= compute9 ;

					when compute9 =>
						if (i < N-O) then
							state <= compute10;
						else
							state <= transpose0;
						end if;

					when compute10 =>
						if (j < O) then
							s_p1_index <= P1_BASE_ADR + p1_counter*M;
							state      <= compute11;
						else
							state <= compute13;
						end if;

					when compute11 =>
						o_add_v1_addr  <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
						o_add_v2_addr  <= std_logic_vector(to_unsigned(s_p1_index,PORT_WIDTH));
						o_add_out_addr <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
						o_add_enable   <= '1';
						state          <= compute12;

					when compute12 =>
						o_add_enable <= '0';
						if (i_add_done = '1') then
							j          <= j+1;
							p1_counter <= p1_counter +1;
							s_v1_index <= s_v1_index + M;
							state      <= compute10;
						end if;

					when compute13 =>
						s_v1_index <= TEMP_BASE_ADR + (i+1)*O*M;
						i          <= i+1 ;
						j          <= 0;
						state      <= compute9;

					------------------------------------------------------------------
					-- BEGIN TRANSPOSE TEMP -> TEMPT
					------------------------------------------------------------------
					when transpose0 => -- Transpose (memcpy)
						i            <= 0;
						j            <= 0;
						s_src_index  <= TEMP_BASE_ADR;
						s_dest_index <= TEMPT_BASE_ADR;
						state        <= transpose1;

					when transpose1 =>
						if (i < O) then
							state <= transpose2;
						else
							state <= compute14;
						end if;

					when transpose2 =>
						if (j < N-O) then
							state <= transpose3;
						else
							j            <= 0 ;
							s_src_index  <= (i+1)*(N-O);
							s_dest_index <= (i+1)*M;
							i            <= i+1;
							state        <= transpose1;
						end if;

					when transpose3 => --read
						bram1a.o.o_addr <= std_logic_vector(to_unsigned(s_src_index + copy_index, PORT_WIDTH));
						bram1a.o.o_we   <= "0000";
						bram1a.o.o_en   <= '1';
						state           <= transpose4;

					when transpose4 => -- writeback
						bram1a.o.o_addr <= std_logic_vector(to_unsigned(s_dest_index + copy_index,PORT_WIDTH));
						bram1a.o.o_din  <= i_mem1a_dout;
						bram1a.o.o_we   <= "1111";
						copy_index      <= copy_index +4;
						state           <= transpose5;

					when transpose5 => --write 
						if (copy_index < 60) then
							state <= transpose3; -- keep copying
						else
							bram1a.o.o_we <= "0000";
							bram1a.o.o_en <= '0';
							state         <= transpose6;
						end if;

					when transpose6 =>
						j            <= j+1;
						s_dest_index <= s_dest_index + M;
						s_src_index  <= s_src_index + O*M;
						state        <= transpose2;
						------------------------------------------------------------------
						-- END TRANSPOSE TEMP -> TEMPT
						------------------------------------------------------------------

					when compute14 =>
						counter           <= 0;
						s_p1_index        <= TEMPT_BASE_ADR;
						s_oil_space_index <= OIL_SPACE_BASE_ADR;
						s_p2_index        <= PK_BASE_ADR + SEED_BYTES; -- PK_P2
						state             <= compute23;

					when compute23 =>
						if (i < O) then
							state <= compute15 ;
						else
							state <= negate0;
						end if;

					when compute15 =>
						if (j < O) then
							state <= compute16;
						else
							i     <= i+1;
							state <= compute23;
						end if;

					when compute16 =>
						o_lin_vec_addr    <= std_logic_vector(to_unsigned(s_p1_index, PORT_WIDTH));        -- TEMPT
						o_lin_coeffs_addr <= std_logic_vector(to_unsigned(s_oil_space_index, PORT_WIDTH)); -- OIL_SPACE
						o_lin_len         <= std_logic_vector(to_unsigned(N-O, PORT_WIDTH));
						o_lin_out_addr    <= std_logic_vector(to_unsigned(s_p2_index, PORT_WIDTH)); -- P2
						o_lin_enable      <= '1';
						state             <= compute4;

					when compute17 =>
						o_lin_enable <= '0';
						if (i_lin_done = '1') then
							state <= compute18;
						end if;

					when compute18 =>
						if (i /= j) then
							o_lin_vec_addr    <= std_logic_vector(to_unsigned(s_tempt_index, PORT_WIDTH));      -- TEMPT
							o_lin_coeffs_addr <= std_logic_vector(to_unsigned(s_oil_space2_index, PORT_WIDTH)); -- OIL_SPACE
							o_lin_len         <= std_logic_vector(to_unsigned(N-O, PORT_WIDTH));
							o_lin_out_addr    <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR, PORT_WIDTH)); -- VEC[M]
							o_lin_enable      <= '1';
							state             <= compute19;
						else
							state <= compute22;
						end if;

					when compute19 =>
						o_lin_enable <= '0';
						if (i_lin_done = '1') then
							state <= compute20;
						end if;

					when compute20 =>
						o_add_v1_addr  <= std_logic_vector(to_unsigned(s_v1_index, PORT_WIDTH));     -- P2
						o_add_v2_addr  <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR, PORT_WIDTH)); -- VEC[M]
						o_add_out_addr <= std_logic_vector(to_unsigned(s_v1_index, PORT_WIDTH));     -- P2
						o_add_enable   <= '1';
						state          <= compute21;

					when compute21 =>
						o_add_enable <= '0';
						if (i_add_done = '1') then
							state <= compute22;
						end if;

					when compute22 =>
						counter <= counter +1;
						j       <= j+1;
						-- update indices
						s_p1_index         <= s_p1_index + (N-O)*M;
						s_p2_index         <= s_p2_index + M;
						s_oil_space2_index <= s_oil_space2_index + (N-O);
						s_v1_index         <= s_v1_index + M;
						state              <= compute23;

					when negate0 => -- P2 = -P2
						o_neg_enable <= '1';
						o_neg_len    <= std_logic_vector(to_unsigned(P2_BYTES,PORT_WIDTH));
						o_neg_adr    <= std_logic_vector (to_unsigned(PK_BASE_ADR + SEED_BYTES,PORT_WIDTH));
						state        <= negate1;

					when negate1 =>
						if (i_neg_done = '1') then
							state <= done;
						end if;

					when done =>
						o_done <= '1';
						irq    <= '1';
						state  <= wait_clear;

					when wait_clear =>
						if (irq = '0' or i_debug = '1') then
							state <= idle;
						end if;

					when others =>
						null;
				end case;

			END IF;
		end if;

	END PROCESS KEYGEN;

	o_hash_memsel <= s_hash_mem_sel;

	--- trng
	o_trng_r     <= trng.o.r;
	o_trng_w     <= trng.o.w ;
	o_trng_data  <= trng.o.data;
	trng.i.valid <= i_trng_valid;
	trng.i.done  <= i_trng_done;
	--trng.i.data  <= i_trng_data;

	--- brams
	--BRAM0-A
	bram0a.i.i_dout <= i_mem0a_dout;
	o_mem0a_din     <= bram0a.o.o_din;
	o_mem0a_addr    <= bram0a.o.o_addr;
	o_mem0a_en      <= bram0a.o.o_en;
	o_mem0a_rst     <= bram0a.o.o_rst;
	o_mem0a_we      <= bram0a.o.o_we;

	--BRAM0-B
	-- bram0b.i.i_dout <= i_mem0b_dout;
	o_mem0b_din  <= bram0b.o.o_din;
	o_mem0b_addr <= bram0b.o.o_addr;
	o_mem0b_en   <= bram0b.o.o_en;
	o_mem0b_rst  <= bram0b.o.o_rst;
	o_mem0b_we   <= bram0b.o.o_we;

	--BRAM1-A
	bram1a.i.i_dout <= i_mem1a_dout;
	o_mem1a_din     <= bram1a.o.o_din;
	o_mem1a_addr    <= bram1a.o.o_addr;
	o_mem1a_en      <= bram1a.o.o_en;
	o_mem1a_rst     <= bram1a.o.o_rst;
	o_mem1a_we      <= bram1a.o.o_we;

	slv_reg0 <= s_status_reg ;
	s_control_reg <= slv_reg1;

	-- User logic ends

end arch_imp;
