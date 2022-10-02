----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/01/2022 01:34:24 PM
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
    Port ( clk : in STD_LOGIC;
           rst : in std_logic;
           v1 : in  std_logic_vector(31 downto 0);
           v2 : in std_logic_vector(31 downto 0);
           o_out : out std_logic_vector(31 downto 0));
end adder;

architecture Behavioral of adder is

begin

process(clk) is 
begin 
if (rising_edge (clk)) then
if (rst = '1')  then
    null ;
 else 
for i in 0 to 3 loop 
o_out(8*i+7 downto 8*i) <= std_logic_vector(resize(unsigned(v1(8*i+7 downto 8*i)) + unsigned(v2(8*i+7 downto 8*i)),8)) ;
end loop;
end if;
end if;
end process;
end Behavioral;
