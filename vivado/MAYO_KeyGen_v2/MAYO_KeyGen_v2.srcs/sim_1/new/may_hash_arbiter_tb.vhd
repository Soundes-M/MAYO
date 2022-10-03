----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/02/2022 08:55:30 PM
-- Design Name: 
-- Module Name: may_hash_arbiter_tb - Behavioral
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
use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity may_hash_arbiter_tb is
--  Port ( );
end may_hash_arbiter_tb;

architecture Behavioral of may_hash_arbiter_tb is
component mayo_hash_arbiter is 
    port ( 
    		clk : in std_logic;
		rst : in std_logic;

		--HASH
		o_en        : out std_logic;
		o_mlen      : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_olen      : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_write_adr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_read_adr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_done      : in  std_logic;
		i_dyn_done  : in  std_logic;

		i_key_en        : in  std_logic;
		i_key_mlen      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_key_olen      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_key_write_adr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_key_read_adr  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_key_done      : out std_logic;
		o_key_dyn_done  : out std_logic;

		i_sam_en        : in  std_logic;
		i_sam_mlen      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_sam_olen      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_sam_write_adr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		i_sam_read_adr  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_sam_done      : out std_logic;
		o_sam_dyn_done  : out std_logic
		); 
		end component;

begin


end Behavioral;
