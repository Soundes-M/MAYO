----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2022 07:10:57 PM
-- Design Name: 
-- Module Name: sha384_tb - Behavioral
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
use IEEE.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sha384_tb is
--  Port ( );
end sha384_tb;

architecture Behavioral of sha384_tb is

component SHA384_RETIMING_VAR_SIZE
	PORT (  
        CLK             : IN  STD_LOGIC;
        -- CONTROL PORTS ---------------	
        RESET           : IN  STD_LOGIC;
        ENABLE          : IN  STD_LOGIC;
        DONE            : OUT STD_LOGIC;
        -- SIZE ------------------------
        SIZE            : IN  STD_LOGIC_VECTOR(19 DOWNTO 0);
        -- MESSAGE ---------------------
        M               : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
        M_VALID         : IN  STD_LOGIC;
        M_RDY           : OUT STD_LOGIC;
        -- HASH ------------------------
        HASH            : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        HASH_ADDR       : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        HASH_VALID      : OUT STD_LOGIC
    );
   end component;
    
 signal clk : std_logic := '0';  
 signal rst : std_logic := '1';  

-- control 
 signal sha_clk :std_logic;
 signal sha_reset: std_logic;
 signal sha_enable: std_logic;
 signal sha_done :STD_LOGIC;
 signal sha_m_valid, sha_m_rdy,sha_hash_valid : std_logic;
 
 signal sha_m : std_logic_vector(31 downto 0);
 signal sha_hash : std_logic_vector(31 downto 0);
 signal sha_size : STD_LOGIC_VECTOR(19 DOWNTO 0);
 signal sha_hash_addr : std_logic_vector(2 downto 0);
 CONSTANT CLK_PERIOD  : TIME := 10 NS;
 
begin 
--generate 
    clk <= not clk after CLK_PERIOD; 


--sha 
sha_inst : SHA384_RETIMING_VAR_SIZE 
port map (
        CLK => clk,
        -- CONTROL PORTS ---------------	
        RESET  => rst,
        ENABLE  => sha_enable,
        DONE    => sha_done,
        -- SIZE ------------------------
        SIZE            => sha_size,
        -- MESSAGE ---------------------
        M               => sha_m,
        M_VALID         => sha_m_valid,
        M_RDY           => sha_m_rdy,
        -- HASH ------------------------
        HASH            => sha_hash,
        HASH_ADDR       => sha_hash_addr,
        HASH_VALID      => sha_hash_valid
);

tb : process
    FILE FILE_INPUT : TEXT open READ_MODE is "../../../../../../tb/hash_gen/input.dat"; -- Files should in main MAYO root dir
    variable v_iline_input : line;
    variable message : std_logic_vector(31 downto 0);
    variable correct_first :std_logic_vector(31 downto 0) := X"6aedd6c1";
    variable i : integer := 0 ;
begin
    wait for 100 ns; 
    rst <= '0';
    wait for 100 ns; 
    rst <= '1';
    wait for 100 ns; 
    
    i := 640; -- used for size
    rst <= '0';
    sha_m <=  (others => '0');
    
    wait for 4* CLK_PERIOD; 
    sha_enable <= '1';
    sha_size <= std_logic_vector(to_unsigned(i,sha_size'length));
    
    wait until sha_m_rdy = '1';
    wait for CLK_PERIOD;
    sha_m_valid <= '1';
    
    while not (endfile(file_input)) loop
        readline(file_input,v_iline_input);
        hread(v_iline_input,message);
        sha_m <= message; 
        WAIT FOR CLK_PERIOD;
    end loop; 
       
    -- wait until clk_gen = '1';
    sha_m_valid <= '0';

    wait until sha_done = '1';
    report "DONE" & integer'image(i);
    
    wait for 8* CLK_PERIOD;
    sha_enable <= '0';
    rst <= '1';
    wait;
end process tb;

end Behavioral;
