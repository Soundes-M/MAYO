----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/12/2022 10:30:10 PM
-- Design Name: 
-- Module Name: keccak_hash - Behavioral
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
library work;
	use work.keccak_globals.all;

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_misc.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_textio.all;
	use ieee.std_logic_unsigned."+"; 


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity keccak_hash is
    Port ( din : in STD_LOGIC_VECTOR (31 downto 0);
           dout : out STD_LOGIC_VECTOR (255 downto 0);
           rst_n : in STD_LOGIC;
           clk : in STD_LOGIC;
           in_valid : in STD_LOGIC;
           out_valid : out STD_LOGIC);
end keccak_hash;

architecture Behavioral of keccak_hash is
-- keccak
component keccak
  
  port (
    clk     : in  std_logic;
    rst_n   : in  std_logic;
    init : in std_logic;
    go : in std_logic;
    absorb : in std_logic;
    squeeze : in std_logic;
    din     : in  std_logic_vector(N-1 downto 0);    
    ready : out std_logic;
    dout    : out std_logic_vector(N-1 downto 0))
end component;

--signals
signal init, go, absorb, ready, squeeze : std_logic;
signal message : STD_LOGIC_VECTOR (31 downto 0);
signal hash : STD_LOGIC_VECTOR (255 downto 0);
type st_type is (initial,read_first_input,st0,st1,st1a,END_HASH1,END_HASH2,STOP);
signal st : st_type;

dout <= hash; 

begin
keccak_inst : keccak port map(
    clk => clk,
    rst_n=> rst_n,
    init => init,
    go => go,
    absorb => absorb,
    squeeze => squeeze,
    din => message,
    ready => ready,
    dout =>hash 
    );
-- fsm 
main :process (clk,rst_n)
variable counter,count_hash,num_test: integer;
variable temp: std_logic_vector(63 downto 0);	
begin
    if rst_n = '0' then                 -- asynchronous rst_n (active low)
		st <= initial;
		counter:=0;
		count_hash:=0;
		init<='0';
		absorb<='0';
		squeeze<='0';
		go<='0';
	elsif clk'event and clk = '1' then
	   case st is
			when initial =>
			    if in_valid = '1' then 
				    st<=read_first_input;
				init<='1';
		
			when read_first_input =>
				init<='0';
	
                if(in_valid = '0') then						
                    st<= END_HASH1;
            
                else
                    message <= din;
                    absorb<='1';	
                    
                    st<=st0;
                    counter:=0;						
                end if;
								

			
			when st0 =>

				if(counter<16) then
					if(counter<15) then
						readline(filein,line_in);
						hread(line_in,temp);
						din<= temp;
						absorb<='1';						
					end if;
					
					counter:=counter+1;
					st<=st0;
				else
					st <= st1;
					absorb<='0';
					go<='1';
				end if;
			when st1 =>
				go<='0';
				-- wait one clock cycle before checking if the core is ready ro not
				st <= st1a;
			when st1a =>				
				
				if(ready='0') then
				
					st <= st1;
				else
					st <= read_first_input;
				end if;
			when END_HASH1 =>
				if(ready='0') then
					st<=END_HASH1;
				else
					squeeze<='1';
					st<=END_HASH2;
					counter:=0;
				end if;
			when END_HASH2 =>
				squeeze<='1';


				temp:=dout;
				hwrite(line_out,temp);
				writeline(fileout,line_out);
				if(counter<3) then
					counter:=counter+1;
				else
					squeeze<='0';
					init<='1';
					st<=read_first_input;
					write(line_out, string'("-"));
					writeline(fileout,line_out);
				end if;
			when STOP =>
				null;
			end case;
    end if;
    
end process main;
end Behavioral;
