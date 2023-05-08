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

entity Mayo_sign_no_zynq_tb is
--  Port ( );
end Mayo_sign_no_zynq_tb;

architecture Behavioral of Mayo_sign_no_zynq_tb is

  component Mayo_sign_wrapper is
  port (
    clk : in STD_LOGIC;
    done : out STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_secret : in STD_LOGIC;
    o_err : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC
  );
  end component Mayo_sign_wrapper;

  constant clk_period : time      := 10 ns;
  signal clk          : std_logic := '0';
  signal reset        : std_logic := '0';
  signal enable       : std_logic := '0';
  signal done         : std_logic := '0';
  signal secret : std_logic := '0';
  signal err :std_logic_vector(1 downto 0) := "00";
begin

  clk   <= not clk after clk_period / 2 ;
  reset <= '1', '0' after 500 ns;

  Sign : Mayo_sign_wrapper
    port map (
      clk    => clk,
      done   => done,
      i_enable => enable,
      i_secret => secret,
      o_err => err,
      rst => reset
      );

  tb : process
  begin
    report "Mayo Keyen (RTL) Begin" severity note;

    wait for 1000 ns;

    enable <= '1';

    wait until done = '1';
    if (err /= "00" ) then 
    report "Something went wrong" severity warning;
    end if;
    report "Done" severity failure;

  end process;

end Behavioral;
