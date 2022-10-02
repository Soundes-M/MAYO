----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/01/2022 04:00:05 PM
-- Design Name: 
-- Module Name: adder_tb - Behavioral
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
use work.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_tb is
--  Port ( );
end adder_tb;

architecture Behavioral of adder_tb is

component modular is
    Port ( clk : in STD_LOGIC;
           rst : in std_logic;
           v1 : in  std_logic_vector(31 downto 0);
           v2 : in std_logic_vector(31 downto 0);
           o_out : out std_logic_vector(31 downto 0));
end component;

signal clk : std_logic := '0';
signal rst : std_logic := '0';
signal n1 : std_logic_vector(31 downto 0) := (others => '0');
signal n2 : std_logic_vector(31 downto 0) := (others => '0');
signal n3 : std_logic_vector(31 downto 0) := (others => '0');
signal out0, out1, out2, out3 : integer := 0;
constant clk_period : time := 10ns;

begin
    clk <= not clk after clk_period/2;
    dut : modular port map(
        clk => clk,
        rst => rst,
        v1 => n1,
        v2 => n2,
        o_out =>  n3);
        
    out0 <= to_integer(unsigned(n3(7 downto 0))) ; 
    out1 <= to_integer(unsigned(n3(15 downto 8))) ; 
    out2 <= to_integer(unsigned(n3(23 downto 16))) ; 
    out3 <= to_integer(unsigned(n3(31 downto 24))) ; 
        
tb : process is 
begin 
--    for i in 0 to 3 loop
--    n1(7*i+7 downto 7*i) <= std_logic_vector(to_unsigned(10,8));
--    n2(7*i+7 downto 7*i) <= std_logic_vector(to_unsigned(30,8));
--    end loop;
    wait for clk_period;
    
    n1(7 downto 0) <= std_logic_vector(to_unsigned(31,8));
    n2(7 downto 0) <= std_logic_vector(to_unsigned(3,8));
    n1(15 downto 8) <= std_logic_vector(to_unsigned(32,8));
    n2(15 downto 8) <= std_logic_vector(to_unsigned(20,8));
    n1(23 downto 16) <= std_logic_vector(to_unsigned(35,8));
    n2(23 downto 16) <= std_logic_vector(to_unsigned(30,8));
    n1(31 downto 24) <= std_logic_vector(to_unsigned(254,8));
    n2(31 downto 24) <= std_logic_vector(to_unsigned(60,8));
    
    wait for clk_period;
    
    n1(7 downto 0) <= std_logic_vector(to_unsigned(24,8));
    n2(7 downto 0) <= std_logic_vector(to_unsigned(5,8));
    n1(15 downto 8) <= std_logic_vector(to_unsigned(53,8));
    n2(15 downto 8) <= std_logic_vector(to_unsigned(20,8));
    n1(23 downto 16) <= std_logic_vector(to_unsigned(190,8));
    n2(23 downto 16) <= std_logic_vector(to_unsigned(30,8));
    n1(31 downto 24) <= std_logic_vector(to_unsigned(200,8));
    n2(31 downto 24) <= std_logic_vector(to_unsigned(60,8));
    
    
    wait for clk_period;
    report "done " severity failure;
end process;


end Behavioral;
