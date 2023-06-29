--------------------------------------------------------------------------------
-- Title       : AXI BRAM MOVER
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : AXI_bram_mover.vhd
-- Author      : XXXXX
-- Company     : XXXXX
-- Last update : Thu Jun 29 19:39:51 2023
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 XXXXX
-------------------------------------------------------------------------------
-- Description: Copies data from BRAM to DDR and fetches the next block.
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity axi_bram_mover is
	generic (
		-- Width of M_AXI address bus. 
		-- The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
		C_M_AXI_ADDR_WIDTH : integer := 6;
		-- Width of M_AXI data bus. 
		-- The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		C_M_AXI_DATA_WIDTH : integer := PORT_WIDTH;
		-- The master requires a target slave base address.
		-- The master will initiate read and write transactions on the slave with base address specified here as a parameter.
		C_M_TARGET_SLAVE_BASE_ADDR : std_logic_vector := x"40000000";
		-- BRAM address in design mapping
		C_BRAM_BASE_ADDR : std_logic_vector := x"40080000";
		C_DDR_BASE_ADDR  : std_logic_vector := x"00000000"

	);
	port(
		-- AXI-LITE
		----------------------------------------------------------------------------
		-- Asserts when ERROR is detected
		-- AXI clock signal
		M_AXI_LITE_ACLK : in std_logic;
		-- AXI active low reset signal
		M_AXI_LITE_ARESETN : in std_logic;
		-- Master Interface Write Address Channel ports. Write address (issued by master)
		M_AXI_LITE_AWADDR : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type.
		-- This signal indicates the privilege and security level of the transaction,
		-- and whether the transaction is a data access or an instruction access.
		--M_AXI_LITE_AWPROT : out std_logic_vector(2 downto 0);
		-- Write address valid. 
		-- This signal indicates that the master signaling valid write address and control information.
		M_AXI_LITE_AWVALID : out std_logic;
		-- Write address ready. 
		-- This signal indicates that the slave is ready to accept an address and associated control signals.
		M_AXI_LITE_AWREADY : in std_logic;
		-- Master Interface Write Data Channel ports. Write data (issued by master)
		M_AXI_LITE_WDATA : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. 
		-- This signal indicates which byte lanes hold valid data.
		-- There is one write strobe bit for each eight bits of the write data bus.
		--M_AXI_LITE_WSTRB : out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		-- Write valid. This signal indicates that valid write data and strobes are available.
		M_AXI_LITE_WVALID : out std_logic;
		-- Write ready. This signal indicates that the slave can accept the write data.
		M_AXI_LITE_WREADY : in std_logic;
		-- Master Interface Write Response Channel ports. 
		-- This signal indicates the status of the write transaction.
		M_AXI_LITE_BRESP : in std_logic_vector(1 downto 0);
		-- Write response valid. 
		-- This signal indicates that the channel is signaling a valid write response
		M_AXI_LITE_BVALID : in std_logic;
		-- Response ready. This signal indicates that the master can accept a write response.
		M_AXI_LITE_BREADY : out std_logic;
		-- Master Interface Read Address Channel ports. Read address (issued by master)
		M_AXI_LITE_ARADDR : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. 
		-- This signal indicates the privilege and security level of the transaction, 
		-- and whether the transaction is a data access or an instruction access.
		--M_AXI_LITE_ARPROT : out std_logic_vector(2 downto 0);
		-- Read address valid. 
		-- This signal indicates that the channel is signaling valid read address and control information.
		M_AXI_LITE_ARVALID : out std_logic;
		-- Read address ready. 
		-- This signal indicates that the slave is ready to accept an address and associated control signals.
		M_AXI_LITE_ARREADY : in std_logic;
		-- Master Interface Read Data Channel ports. Read data (issued by slave)
		M_AXI_LITE_RDATA : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the read transfer.
		M_AXI_LITE_RRESP : in std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is signaling the required read data.
		M_AXI_LITE_RVALID : in std_logic;
		-- Read ready. This signal indicates that the master can accept the read data and response information.
		M_AXI_LITE_RREADY : out std_logic;

		-- CONTROL 
		---------------------------------------------------------------------------
		i_clk         : in  std_logic;
		rst           : in  std_logic;
		i_dma_ioc_irq : in  std_logic;
		i_bram_adr    : in  std_logic_vector (PORT_WIDTH-1 downto 0);
		i_bram_en     : in  std_logic;
		o_halt        : out std_logic;
		o_err         : out std_logic
	);
end axi_bram_mover;

architecture Behavioral of axi_bram_mover is

	-- AXI4-LITE signals
	--write address valid
	signal axi_awvalid : std_logic;
	--write data valid
	signal axi_wvalid : std_logic;
	--read address valid
	signal axi_arvalid : std_logic;
	--read data acceptance
	signal axi_rready : std_logic;
	--write response acceptance
	signal axi_bready : std_logic;
	--write address
	signal axi_awaddr : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	--write data
	signal axi_wdata : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	--read addresss
	signal axi_araddr : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);

	signal halt                          : std_logic := '0';
	signal axi_write, axi_read           : std_logic := '0';
	signal axi_write_done, axi_read_done : std_logic := '0';
	signal axi_error                     : std_logic := '0';
	signal copied_num                    : integer   := 0 ;

	type write_state is (idle, write1, write2, write3);
	signal t_write : write_state;

	type read_state is (idle, read0);
	signal t_read : read_state;

	type main_state is (idle, main0, main1, main2, main3, main4, main5, main6, main7, main8, main9, main10, main11, main12, main13, main14, main15, done);
	signal t_main : main_state;

begin

	-- offset added 
	M_AXI_LITE_AWADDR <= std_logic_vector (unsigned(C_M_TARGET_SLAVE_BASE_ADDR) + unsigned(axi_awaddr));
	--AXI 4 write data
	M_AXI_LITE_WDATA <= axi_wdata;
	--M_AXI_LITE_AWPROT  <= "000";
	M_AXI_LITE_AWVALID <= axi_awvalid;
	--Write Data(W)
	M_AXI_LITE_WVALID <= axi_wvalid;
	--Write Response (B)
	M_AXI_LITE_BREADY <= axi_bready;
	--Read Address (AR)
	M_AXI_LITE_ARADDR  <= std_logic_vector(unsigned(C_M_TARGET_SLAVE_BASE_ADDR) + unsigned(axi_araddr));
	M_AXI_LITE_ARVALID <= axi_arvalid;
	--M_AXI_LITE_ARPROT  <= "001";
	--Read and Read Response (R)
	M_AXI_LITE_RREADY <= axi_rready;
	--Design I/O
	o_halt <= halt;
	o_err  <= axi_error;

	-- Controls AXI-LITE WRITE HANDSHAKE (AXI_WRITE = 1)
	a_write : process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			if rst = '1' then
				t_write     <= idle;
				axi_awvalid <= '0';
				axi_wvalid  <= '0';
				axi_bready  <= '0';
			else
				case (t_write) is
					when idle =>
						axi_write_done <= '0';
						axi_error      <= '0';
						if axi_write = '1' then -- Data and addr should be ready
							axi_awvalid <= '1';
							axi_wvalid  <= '1';
							t_write     <= write1;
						else
							t_write <= idle;
						end if;

					when write1 =>
						if (M_AXI_LITE_AWREADY and M_AXI_LITE_WREADY) = '1' then -- Slave ready
							axi_bready <= '1';
							t_write    <= write2;
						else
							t_write <= write1;
						end if;

					when write2 =>
						if M_AXI_LITE_BVALID = '1' then
							if M_AXI_LITE_BRESP /= "00" then
								axi_error <= '1';
								t_write   <= idle;
								report "AXI WRITE ERROR" severity warning;
							else
								axi_awvalid <= '0';
								axi_wvalid  <= '0';
								axi_bready  <= '1';
								t_write     <= write3;
							end if;
						else
							t_write <= write2;
						end if;

					when write3 =>
						if M_AXI_LITE_BVALID = '0' then -- done 
							axi_bready     <= '0';
							axi_write_done <= '1';
							t_write        <= idle;
						end if;

					when others =>
						null;
				end case;
			end if;
		end if;

	end process;

	-- Controls AXI-LITE READ HANDSHAKE (AXI_READ = 1)
	a_read : process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			if rst = '1' then
				axi_arvalid <= '0';
				axi_rready  <= '0';
				t_read      <= idle;
			else
				case (t_read) is
					when idle =>
						axi_read_done <= '0';
						axi_error     <= '0';
						if axi_read = '1' then
							axi_arvalid <= '1';
							axi_rready  <= '1';
							t_read      <= read0;
						else
							t_read <= idle;
						end if;

					when read0 =>
						if (M_AXI_LITE_RVALID and M_AXI_LITE_ARREADY) = '1' then -- Slave provided data
							if M_AXI_LITE_RRESP /= "00" then
								axi_error <= '1';
								t_read    <= idle;
								report "AXI READ ERROR" severity warning;
							else
								axi_arvalid   <= '0';
								axi_rready    <= '0';
								axi_read_done <= '1';
								t_read        <= idle;
							end if;
						end if;

					when others =>
						null;
				end case;

			end if;
		end if;
	end process;

	main : process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			axi_read   <= '0';
			axi_write  <= '0';
			halt       <= '0';
			axi_error  <= '0';
			axi_wdata  <= (others => '0');
			axi_awaddr <= (others => '0');
			copied_num <= 0;

		else
			case (t_main) is
				when idle =>
					if ((unsigned(i_bram_adr) >= to_unsigned((BRAM_II_PORT_WIDTH / 4) - DMA_PRE_LOAD_DELAY,PORT_WIDTH)) and (i_bram_en = '1')) then -- Almost full BRAM--> FLUSH
						halt   <= '1';
						t_main <= main0;
					else
						t_main <= idle;
						halt   <= '0';
					end if;

				------------------------------------------------------------
				-- STORE BRAM IN DDR (DMA Transaction)
				------------------------------------------------------------
				when main0 => -- IS DMA IDLE?
					          -- M_AXI_LITE_WSTRB <= "0000";
					axi_araddr <= std_logic_vector(to_unsigned(CDMASR,PORT_WIDTH));
					axi_read   <= '1';
					t_main     <= main1;

				when main1 =>
					axi_read <= '0';
					if (axi_read_done = '1' and axi_error = '0') then
						if (M_AXI_LITE_RDATA(1) = '1') then -- idle
							axi_araddr <= std_logic_vector(to_unsigned(CDMACR,PORT_WIDTH));
							axi_read   <= '1';
							t_main     <= main2;
						else
							t_main <= main0;
						end if;
					end if;

				when main2 => -- CONTROL REG
					axi_read <= '0';
					if (axi_read_done = '1' and axi_error = '0') then
						axi_wdata     <= M_AXI_LITE_RDATA;
						axi_awaddr    <= axi_araddr;
						axi_wdata(12) <= '1'; -- DMA Complete IRQ EN 
						axi_wdata(14) <= '0'; -- DMA Err IRQ EN
						                      -- M_AXI_LITE_WSTRB   <= "1111";
						axi_write <= '0';
						t_main    <= main3;
					end if;

				when main3 => -- SOURCE ADDR
					axi_write <= '0';
					if (axi_write_done = '1' and axi_error = '0') then
						axi_wdata  <= C_BRAM_BASE_ADDR;
						axi_awaddr <= std_logic_vector(to_unsigned(SA,PORT_WIDTH));
						-- M_AXI_LITE_WSTRB <= "1111";
						axi_write <= '1';
						t_main    <= main4;
					end if;
				when main4 => -- DEST ADDR
					axi_write <= '0';
					if (axi_write_done = '1' and axi_error = '0') then
						axi_wdata  <= C_DDR_BASE_ADDR;
						axi_awaddr <= std_logic_vector(to_unsigned(DA,PORT_WIDTH));
						-- M_AXI_LITE_WSTRB <= "1111";
						axi_write <= '1';
						t_main    <= main5;
					end if;
				when main5 => -- BTT And START
					axi_write <= '0';
					if (axi_write_done = '1' and axi_error = '0') then
						axi_wdata  <= std_logic_vector(to_unsigned(BRAM_II_PORT_WIDTH,PORT_WIDTH));
						axi_awaddr <= std_logic_vector(to_unsigned(BTT,PORT_WIDTH));
						-- M_AXI_LITE_WSTRB <= "1111";
						axi_write <= '1';
						t_main    <= main6;
					end if;
				when main6 => -- Wait for DMA
					axi_write <= '0';
					if (axi_write_done = '1' and axi_error = '0') then
						t_main <= main7;
					end if;

				when main7 =>
					axi_error <= '0';
					if i_dma_ioc_irq = '1' then
						t_main <= main8; -- done
					end if;

				----------------------------------------------------------------
				-- Copy next block from DDR to BRAM 
				----------------------------------------------------------------
				when main8 => -- Assume DMA is idle
					axi_araddr <= std_logic_vector(to_unsigned(CDMACR,PORT_WIDTH));
					axi_read   <= '1';
					t_main     <= main9;

				when main9 => -- CONTROL REG
					axi_read <= '0';
					if (axi_read_done = '1' and axi_error = '0') then
						axi_wdata     <= M_AXI_LITE_RDATA;
						axi_awaddr    <= axi_araddr;
						axi_wdata(12) <= '1'; -- DMA Complete IRQ EN 
						axi_wdata(14) <= '0'; -- DMA Err IRQ EN
						                      -- M_AXI_LITE_WSTRB   <= "1111";
						axi_write <= '0';
						t_main    <= main10;
					end if;

				when main10 => -- SOURCE ADDR
					axi_write <= '0';
					if (axi_write_done = '1' and axi_error = '0') then
						axi_wdata  <= std_logic_vector(unsigned(C_DDR_BASE_ADDR)+ to_unsigned(BRAM_II_PORT_WIDTH,C_DDR_BASE_ADDR'length)); -- TODO: Fix this is more than 1 copy is needed
						axi_awaddr <= std_logic_vector(to_unsigned(SA,PORT_WIDTH));
						-- M_AXI_LITE_WSTRB <= "1111";
						axi_write <= '1';
						t_main    <= main11;
					end if;
				when main11 => -- DEST ADDR
					axi_write <= '0';
					if (axi_write_done = '1' and axi_error = '0') then
						axi_wdata  <= C_BRAM_BASE_ADDR;
						axi_awaddr <= std_logic_vector(to_unsigned(DA,PORT_WIDTH));
						-- M_AXI_LITE_WSTRB <= "1111";
						axi_write <= '1';
						t_main    <= main12;
					end if;

				when main12 => -- BTT And START
					axi_write <= '0';
					if (axi_write_done = '1' and axi_error = '0') then
						axi_wdata  <= std_logic_vector(to_unsigned(BRAM_II_PORT_WIDTH,PORT_WIDTH));
						axi_awaddr <= std_logic_vector(to_unsigned(BTT,PORT_WIDTH));
						-- M_AXI_LITE_WSTRB <= "1111";
						axi_write <= '1';
						t_main    <= main13;
					end if;

				when main13 => -- Wait for DMA
					axi_write <= '0';
					if (axi_write_done = '1' and axi_error = '0') then
						t_main <= main14;
					end if;

				when main15 =>
					if i_dma_ioc_irq = '1' then
						t_main <= done; -- done
					end if;

				when done =>
					halt   <= '0';
					t_main <= idle;
				when others =>
					null;
			end case;
		end if;
	end process;

end architecture Behavioral;