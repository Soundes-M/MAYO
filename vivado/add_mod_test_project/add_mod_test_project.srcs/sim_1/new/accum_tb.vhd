----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/04/2022 12:49:50 PM
-- Design Name: 
-- Module Name: accum_tb - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity accum_tb is
--  Port ( );
end accum_tb;

architecture Behavioral of accum_tb is
component accum is
Port ( clk :in std_logic;
rst : in std_logic; 
ain,bin : in std_logic_vector(7 downto 0);
s : out std_logic_vector(47 downto 0));
end component;

signal clk :std_logic := '0';
signal rst : std_logic := '0';
signal ain,bin : std_logic_vector(7 downto 0);
signal s :  std_logic_vector(47 downto 0);

constant clk_period : time := 10ns;
begin
    clk <= not clk after clk_period/2;
    dut : accum port map(
        clk => clk,
        rst => rst,
        ain => ain,
        bin => bin,
        s => s);

tb : process is 
begin 

    wait for clk_period;
    rst <= '1';
    wait for clk_period;
    rst <= '0';
    ain <=  std_logic_vector(to_unsigned(20,8));
    bin <= std_logic_vector(to_unsigned(20,8));
    wait for clk_period;
    ain <=  std_logic_vector(to_unsigned(21,8));
    wait for clk_period;
    ain <=  std_logic_vector(to_unsigned(22,8));
    wait for clk_period;
    ain <=  std_logic_vector(to_unsigned(23,8));
    wait for clk_period;
    ain <=  std_logic_vector(to_unsigned(24,8));



    wait until unsigned(s) = 2200;
    report "Found 2200 PASS" severity failure;
  
    wait;
    end process;


end Behavioral;
