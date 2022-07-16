

library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all; 
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram_handler is
    Port ( i_clk               : in   std_logic;
           i_dyn               : in   std_logic;
           i_data              : in   std_logic_vector (7  downto 0);
           addrb               : out  std_logic_vector (31 downto 0);  -- address port b  
           doutb               : in   std_logic_vector (31 downto 0);  -- dout port b
           dinb                : out  std_logic_vector (31 downto 0);  -- din port b
           enb                 : out  std_logic;                       -- enable read, write, reset operations port b  
           rstb                : out  std_logic;                       -- reset port b 
           web                 : out  std_logic_vector (3 downto 0)    -- write enable port b    
          );     
end ram_handler;

architecture Behavioral of ram_handler is


type state is ( idle, wait_write, write1, write2, write3, write4, stop);

signal t_state  : state := idle; 


signal s_index  : integer := 0;
signal s_index2 : integer := 0;

signal s_data : std_logic_vector(31 downto 0) := x"00000000";

signal s_addrb               :  std_logic_vector (12 downto 0) := (others => '0');--(others => '0');-- "1111111111100";  -- address port b  
signal s_enb                 :  std_logic;                       -- enable read, write, reset operations port b  
signal s_rstb                :  std_logic;                       -- reset port b 
signal s_web                 :  std_logic_vector (3 downto 0);   -- write enable port b    



-- in this example i'm writing all the memory space (8k bytes = 2048 * 32bits)

begin

	 process(i_clk)                                                 
	  begin                                                                                             
	    if (rising_edge (i_clk)) then
	    
	       case t_state is
	         when idle => 
	         
	            s_rstb   <= '0';
	            s_addrb  <= (others => '0');--"11111111111111111111111111111100";
	            s_enb    <= '0';
	            s_web    <= "0000";  
	            s_index  <= 0;
	            s_index2 <= 0;
	            
	            if (i_dyn = '1') then
	                t_state <= wait_write;
	            else 
	                t_state <= idle; 
	            end if;
	         
	         when wait_write =>
	              
                if (s_index2 > 1000) then
	                t_state <= write1;
	             else 
	                s_index2 <= s_index2 + 1;
	                t_state <= wait_write;
	             end if;
	                               	             
             when write1 =>
                s_rstb                <= '0';
                s_enb                 <= '0';
	            s_web                 <= "0000";
	            s_data(7 downto 0)    <= i_data;
                t_state               <= write2;
                
             when write2 =>
             
	            s_data(15 downto 8)    <= i_data;
                t_state                <= write3;
                
                when write3 =>
                
	            s_data(23 downto 16)    <= i_data;
                t_state                 <= write4;
                
                when write4 =>
                s_enb                 <= '1';
	            s_web                 <= "1111";
	            s_data(31 downto 24)  <= i_data;
                s_addrb               <= s_addrb + 4; -- s_addrb going from 0 to 8191 included
                
                if (s_index > 2047) then
	                t_state <= stop;
	             else 
	                s_index <= s_index + 1;
	                t_state <= write1;
	             end if;
                
	         when stop =>
	              s_index  <= 0; 
                  s_addrb  <= (others => '0');
	              s_enb    <= '0';
	              s_web    <= "0000";
                  s_index2 <= 0;
	            
	             if (i_dyn = '0') then
	                t_state <= idle;
	             else 
	                t_state <= stop; 
	             end if;
	                     
	        end case;      
	    
	      
	   end if;                                                                                                                                                                                     
	  end  process;
	  

  addrb <= "0000000000000000000" & s_addrb;
  dinb  <=  s_data;
  enb   <= s_enb;
  rstb  <= s_rstb;
  web   <= s_web;  	

end Behavioral;
