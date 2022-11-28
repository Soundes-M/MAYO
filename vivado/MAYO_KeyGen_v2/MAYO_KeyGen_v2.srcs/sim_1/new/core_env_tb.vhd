----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2022 12:34:37 PM
-- Design Name: 
-- Module Name: core_env_tb - Behavioral
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

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity core_env_tb is
--  Port ( );
end core_env_tb;

architecture Behavioral of core_env_tb is

  -- UUT
  component mayo_negate is
    generic (
      BRAM_SIZE : natural := 32 -- 2^13 = 8K
    );
    port (
      i_clk     : in  std_logic;                      -- CLK
      rst       : in  std_logic;                      -- RST
      i_enable  : in  std_logic;                      -- ENABLE
      i_len     : in  std_logic_vector (31 downto 0); -- BYTE LEN
      i_adr     : in  std_logic_vector(BRAM_SIZE-1 downto 0);
      i_doutb   : in  std_logic_vector (31 downto 0); -- dout port bram
      o_addrb   : out std_logic_vector (31 downto 0); -- address port bram
      o_dinb    : out std_logic_vector (31 downto 0); -- din port bram
      o_enb     : out std_logic;                      -- enable read, write, reset operations port b  
      o_rstb    : out std_logic;                      -- reset port b 
      o_web     : out std_logic_vector (3 downto 0);  -- write enable port b   
      o_done    : out std_logic;
      o_control : out std_logic
    );
  end component;

  COMPONENT Test_BRAM0
    PORT (
      clka      : IN  STD_LOGIC;
      rsta      : IN  STD_LOGIC;
      ena       : IN  STD_LOGIC;
      wea       : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
      addra     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
      dina      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
      douta     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      clkb      : IN  STD_LOGIC;
      rstb      : IN  STD_LOGIC;
      enb       : IN  STD_LOGIC;
      web       : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
      addrb     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
      dinb      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
      doutb     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      rsta_busy : OUT STD_LOGIC;
      rstb_busy : OUT STD_LOGIC
    );
  END COMPONENT;

  constant clk_period                                           : time      := 10 ns;
  signal reset                                                  : std_logic := '0';
  signal clk                                                    : std_logic := '0';
  signal clka, rsta, ena, clkb, rstb, enb, rsta_busy, rstb_busy : std_logic;
  signal addra, dina, douta, addrb, dinb, doutb                 : std_logic_vector(31 downto 0);
  signal wea, web                                               : std_logic_vector(3 downto 0);
  signal enable, control, done                                  : std_logic := '0' ;
  signal len, address                                           : std_logic_vector(31 downto 0);
  signal i,bytes                                                      : integer := 0;

begin

  clk   <= not clk after clk_period / 2 ;
  reset <= '1', '0' after 100 ns;

  clka <= clk;
  clkb <= clk;

  bram0 : Test_BRAM0
    PORT MAP (
      clka      => clka,
      rsta      => rsta,
      ena       => ena,
      wea       => wea,
      addra     => addra,
      dina      => dina,
      douta     => douta,
      clkb      => clkb,
      rstb      => rstb,
      enb       => enb,
      web       => web,
      addrb     => addrb,
      dinb      => dinb,
      doutb     => doutb,
      rsta_busy => rsta_busy,
      rstb_busy => rstb_busy
    );

  uut : mayo_negate
    port map (
      i_clk     => clk,
      rst       => reset,
      i_enable  => enable,
      i_len     => len ,
      i_adr     => address,
      i_doutb   => doutb,
      o_addrb   => addrb,
      o_dinb    => dinb,
      o_enb     => enb,
      o_rstb    => rstb,
      o_web     => web ,
      o_done    => done,
      o_control => control
    );

  tb : process
  begin
    wait for 110 ns ;
    enable    <= '0';
    len       <= std_logic_vector(to_unsigned(1024,32));
    rsta_busy <= '0';
    rstb_busy <= '0';

    wait for clk_period;

    -- Fill BRAM
    for i in 0 to to_integer(unsigned(len) / 4 -1) loop
      addra <= std_logic_vector(to_unsigned(i*4,32));
      ena   <= '1';
      wea   <= "1111";
      dina  <= X"1E1E1E1E"; -- 30 30 30 30 
      wait for clk_period;
      bytes <= bytes +4 ;
    end loop;

    ena  <= '0';
    wea  <= "0000";
    dina <= ZERO_32;
    wait for clk_period;

    ----------------------------------------------------------------------------
    -- Start UUT
    address <= ZERO_32;
    enable  <= '1';

    wait for clk_period;

    enable <= '0';

    wait until done = '1';
    
    -- Read BRAM
    for i in 0 to to_integer(unsigned(len) / 4 -1) loop
      addra <= std_logic_vector(to_unsigned(i*4,32));
      ena   <= '1';
      wait for clk_period * 2 ;
      report "Data : " & integer'image(to_integer(unsigned(douta)));
    end loop;


    report "Done" severity failure;

  end process;
end Behavioral;
