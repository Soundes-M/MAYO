----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2022 07:57:56 PM
-- Design Name: 
-- Module Name: Mayo_keygen_no_zynq_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mayo_keygen_no_zynq_tb is
--  Port ( );
end Mayo_keygen_no_zynq_tb;

architecture Behavioral of Mayo_keygen_no_zynq_tb is

  component Mayo_keygen_no_zynq_wrapper is
    port (
      rst    : in  STD_LOGIC;
      clk    : in  STD_LOGIC;
      enable : in  STD_LOGIC;
      done   : out STD_LOGIC
    );
  end component Mayo_keygen_no_zynq_wrapper;

  constant clk_period : time      := 10 ns;
  signal clk          : std_logic := '0';
  signal reset        : std_logic := '0';
  signal enable       : std_logic := '0';
  signal done         : std_logic := '0';
begin

  clk   <= not clk after clk_period / 2 ;
  reset <= '1', '0' after 100 ns;

  keygen : Mayo_keygen_no_zynq_wrapper

    port map (
      rst    => reset,
      clk    => clk,
      enable => enable,
      done   => done);

  tb : process
  begin
    report "Mayo Keyen (RTL) Begin" severity note;

    wait for 100 ns;

    enable <= '1';

    wait until done = '1';

    report "Done" severity failure;

  end process;

end Behavioral;
