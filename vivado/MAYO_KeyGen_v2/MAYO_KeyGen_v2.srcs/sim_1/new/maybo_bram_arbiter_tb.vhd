----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2022 09:38:38 PM
-- Design Name: 
-- Module Name: mayo_hash_arbiter_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;


entity mayo_bram_arbiter_tb is
--  Port ( );
end mayo_bram_arbiter_tb;

architecture Behavioral of mayo_bram_arbiter_tb is

	component mayo_bram_arbiter is
		port (
rst : in std_logic;

		BRAM_add_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_add_en   : in  std_logic;
		BRAM_add_rst  : in  std_logic;
		BRAM_add_we   : in  std_logic_vector (3 downto 0);
		BRAM_add_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		BRAM_lin_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_lin_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_lin_en   : in  std_logic;
		BRAM_lin_rst  : in  std_logic;
		BRAM_lin_we   : in  std_logic_vector (3 downto 0);
		BRAM_lin_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		BRAM_neg_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_neg_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_neg_en   : in  std_logic;
		BRAM_neg_rst  : in  std_logic;
		BRAM_neg_we   : in  std_logic_vector (3 downto 0);
		BRAM_neg_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		BRAM_red_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_red_en   : in  std_logic;
		BRAM_red_rst  : in  std_logic;
		BRAM_red_we   : in  std_logic_vector (3 downto 0);
		BRAM_red_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- KEYGEN Main FSM
		BRAM_key_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_key_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_key_en   : in  std_logic;
		BRAM_key_rst  : in  std_logic;
		BRAM_key_we   : in  std_logic_vector (3 downto 0);
		BRAM_key_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		BRAM_sam_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_sam_en   : in  std_logic;
		BRAM_sam_rst  : in  std_logic;
		BRAM_sam_we   : in  std_logic_vector (3 downto 0);
		BRAM_sam_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- Hash 
		BRAM_hash_din  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_hash_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_hash_en   : in  std_logic;
		BRAM_hash_rst  : in  std_logic;
		BRAM_hash_we   : in  std_logic_vector (3 downto 0);
		BRAM_hash_dout : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- OUTPUT
		BRAM_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		BRAM_en   : out std_logic;
		BRAM_rst  : out std_logic;
		BRAM_we   : out std_logic_vector (3 downto 0);
		BRAM_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);

		-- FSM From MAYO Control
		add_control  : in std_logic;
		lin_control  : in std_logic;
		neg_control  : in std_logic;
		red_control  : in std_logic;
		sam_control  : in std_logic;
		hash_control : in std_logic;

		bram_control : in std_logic
		);
	end component;

	constant clk_period : time      := 10 ns;
	signal clk          : std_logic := '0';
	signal reset        : std_logic := '0';
    signal rst : std_logic := '0';

	signal din, addr , dout : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal en : std_logic;
    signal we : std_logic_vector (3 downto 0);

	signal add_din, add_addr , add_dout : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal add_en : std_logic;
    signal add_we : std_logic_vector (3 downto 0);
    
    signal lin_din, lin_addr , lin_dout : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal lin_en : std_logic;
    signal lin_we : std_logic_vector (3 downto 0);
    
    
	
	signal add_control, lin_control, neg_control, red_control, sam_control, hash_control, bram_control : std_logic;

begin

	clk   <= not clk after clk_period / 2 ;
	reset <= '1', '0' after 100 ns;
	

	arbiter : mayo_bram_arbiter
		port map (
			rst => reset,

		BRAM_add_din  => add_din,
		BRAM_add_addr => add_addr,
		BRAM_add_en   => add_en,
		BRAM_add_rst  => rst,
		BRAM_add_we   => add_we,
		BRAM_add_dout => add_dout,

		BRAM_lin_din  => lin_din,
		BRAM_lin_addr => lin_addr,
		BRAM_lin_en   => lin_en,
		BRAM_lin_rst  => rst,
		BRAM_lin_we   => lin_we,
		BRAM_lin_dout => lin_dout,

		BRAM_neg_din  => ZERO_32,
		BRAM_neg_addr => ZERO_32,
		BRAM_neg_en   => '0',
		BRAM_neg_rst  => rst,
		BRAM_neg_we   => (others => '0'),
		BRAM_neg_dout => open,

		BRAM_red_din  => ZERO_32,
		BRAM_red_addr => ZERO_32,
		BRAM_red_en   => '0',
		BRAM_red_rst  => rst,
		BRAM_red_we   => (others => '0'),
		BRAM_red_dout => open,

		-- KEYGEN Main FSM
		BRAM_key_din  => ZERO_32,
		BRAM_key_addr => ZERO_32,
		BRAM_key_en   => '0',
		BRAM_key_rst  => rst,
		BRAM_key_we   => (others => '0'),
		BRAM_key_dout => open,

		BRAM_sam_din  => ZERO_32,
		BRAM_sam_addr => ZERO_32,
		BRAM_sam_en   => '0',
		BRAM_sam_rst  => rst,
		BRAM_sam_we   => (others => '0'),
		BRAM_sam_dout => open,

		-- Hash 
		BRAM_hash_din  => ZERO_32,
		BRAM_hash_addr => ZERO_32,
		BRAM_hash_en   => '0',
		BRAM_hash_rst  => rst,
		BRAM_hash_we   => (others => '0'),
		BRAM_hash_dout => open,

		-- OUTPUT
		BRAM_din  => din, 
		BRAM_addr => addr,
		BRAM_en   => en,
		BRAM_rst  => open,
		BRAM_we   => we,
		BRAM_dout => dout,

		-- FSM From MAYO Control
		add_control  => add_control,
		lin_control  => lin_control,
		neg_control  => '0',
		red_control  => '0',
		sam_control  => '0',
		hash_control => '0',

		bram_control => '0'
			);

	tb : process 
	begin

		report "Begin." severity note ; 
        wait for 100 ns;
        
        add_control <= '1';
        add_en <= '1';
        add_din <= x"deadbeef";
		add_addr <= x"deadbeef";
		add_we <= "0110";
		
		wait for clk_period;
		add_din <= ZERO_32;
		add_addr <= ZERO_32;
		add_we <= "0000";
		dout <= x"beefdead";
		wait for clk_period;
		add_control <= '0';
		
		wait for clk_period; 
		lin_control <= '1';
        lin_en <= '1';
        lin_din <= x"deadbeef";
		lin_addr <= x"deadbeef";
		lin_we <= "0110";
		wait for clk_period;
		lin_din <= ZERO_32;
		lin_addr <= ZERO_32;
		lin_we <= "0000";
		dout <= x"beefdead";
		wait for clk_period;
		lin_control <= '0';
	  
		wait for clk_period;

		report "Done." severity failure ; 
		
	end process;

end Behavioral;
