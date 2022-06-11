----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2022 08:14:59 PM
-- Design Name: 
-- Module Name: TRNG_tb - Behavioral
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
use ieee.numeric_std.all;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TRNG_tb is
end TRNG_tb;

architecture Behavioral of TRNG_tb is

    -- dut --
    component TRNG  
    GENERIC (
      IS_SIM : boolean
   );
   PORT (
      CLK_I        : IN std_logic;
      R_I       : IN std_logic;
      W_I       : IN std_logic;
      RST          : IN std_logic;
      TRNG_DATA_I  : IN std_logic_vector(31 DOWNTO 0);
      TRNG_DATA_O  : OUT std_logic_vector(31 DOWNTO 0);
      TRNG_VALID_O : OUT std_logic;
      TRNG_DONE_O  : OUT std_logic  
   );
    end component;
    
    signal clk_gen, rst_gen : std_logic := '0';    
    
      -- data output --
    signal TRNG_DATA_I : std_logic_vector(31 DOWNTO 0);
    signal TRNG_DATA_O  : std_logic_vector(31 DOWNTO 0);
    signal TRNG_VALID_O : std_logic;
    signal TRNG_DONE_O  :  std_logic;  
    signal  R_I       : std_logic := '0';
    signal  W_I       : std_logic := '0';
    constant clk_period : time := 10 ns;

begin
    -- generators --
    clk_gen <= not clk_gen after clk_period; 
    rst_gen <= '1', '0' after clk_period*6 ; 

    -- dut --
    TRNG_inst: TRNG
    generic map (
      IS_SIM => true
   )
   PORT map(
      CLK_I        =>  clk_gen,
      r_i     =>  r_i,
      w_i => w_i,
      RST          =>  rst_gen,
      TRNG_DATA_I  => TRNG_DATA_I,
      TRNG_DATA_O  => TRNG_DATA_O,
      TRNG_VALID_O => TRNG_VALID_O,
      TRNG_DONE_O => TRNG_DONE_O
   );
   tb : process 
   begin 
       wait until  rst_gen = '0';
      
       TRNG_DATA_I <= std_logic_vector(to_unsigned(16,TRNG_DATA_I'length));
       report "Starting..";
       wait for 500 us;
       
       report "Writing1";       
       w_i <= '1'; 
       wait for clk_period;
       w_i <= '0'; 
       wait for 3*clk_period;
       
       report "Reading1";
       r_i <='1';
       
       wait until TRNG_DONE_O = '1';
       wait for 2*clk_period;
       r_i <='0'; 
       TRNG_DATA_I <= std_logic_vector(to_unsigned(32,TRNG_DATA_I'length));
       wait for 5*clk_period;
       report "Writing2";       
       w_i <= '1'; 
       wait for clk_period;
       w_i <= '0'; 
       wait for 3*clk_period;
       
       report "Reading2";
       r_i <='1';
       
       wait until TRNG_DONE_O = '1';
       wait for 2*clk_period;
       r_i <='0'; 
       wait for 5 ms;
       
       report "DONE" severity failure;
   end process tb;

end Behavioral;
