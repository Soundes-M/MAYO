----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2022 09:52:36 PM
-- Design Name: 
-- Module Name: lin_comb_tb - Behavioral
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

use STD.textio.all;
use ieee.std_logic_textio.all;

--library textutil;       -- Synposys Text I/O package
--use textutil.std_logic_textio.all;


entity lin_comb_tb is
--  Port ( );
end lin_comb_tb;

architecture Behavioral of lin_comb_tb is

  -- UUT
  component mayo_linear_combination is
    port(
      i_clk    : in  std_logic;
      rst      : in  std_logic;
      i_enable : in  std_logic; -- ENABLE
      o_done   : out std_logic; -- DONE

      i_bram_halt : in std_logic; -- DMA Wait for Copy (Big BRAM)

      i_vec_addr    : in std_logic_vector(PORT_WIDTH-1 downto 0);
      i_coeffs_addr : in std_logic_vector(PORT_WIDTH-1 downto 0);
      i_out_addr    : in std_logic_vector(PORT_WIDTH-1 downto 0);
      i_len         : in std_logic_vector(PORT_WIDTH-1 downto 0);

      --BRAM0-A
      i_mem0a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem0a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem0a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem0a_en   : out std_logic;
      o_mem0a_rst  : out std_logic;
      o_mem0a_we   : out std_logic_vector (3 downto 0);

      --BRAM0-B
      i_mem0b_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem0b_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem0b_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem0b_en   : out std_logic;
      o_mem0b_rst  : out std_logic;
      o_mem0b_we   : out std_logic_vector (3 downto 0);

      --BRAM1-A
      i_mem1a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem1a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem1a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mem1a_en   : out std_logic;
      o_mem1a_rst  : out std_logic;
      o_mem1a_we   : out std_logic_vector (3 downto 0);

      o_control0a : out std_logic;
      o_control0b : out std_logic;
      o_control1a : out std_logic
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

  constant clk_period                                                   : time      := 10 ns;
  signal reset                                                          : std_logic := '0';
  signal clk                                                            : std_logic := '0';
  signal clka0, rsta0, ena0, clkb0, rstb0, enb0, rsta_busy0, rstb_busy0 : std_logic;
  signal addra0, dina0, douta0, addrb0, dinb0, doutb0                   : std_logic_vector(31 downto 0);
  signal wea0, web0                                                     : std_logic_vector(3 downto 0);

  signal bram_mine0              : std_logic                     := '0';
  signal user_ena0               : std_logic                     := '0';
  signal user_addra0, user_dina0 : std_logic_vector(31 downto 0) := ZERO_32;
  signal user_wea0               : std_logic_vector(3 downto 0)  := "0000";

  signal std_ena0              : std_logic                     := '0';
  signal std_addra0, std_dina0 : std_logic_vector(31 downto 0) := ZERO_32;
  signal std_wea0              : std_logic_vector(3 downto 0)  := "0000";

  signal clka1, rsta1, ena1, clkb1, rstb1, enb1, rsta_busy1, rstb_busy1 : std_logic;
  signal addra1, dina1, douta1, addrb1, dinb1, doutb1                   : std_logic_vector(31 downto 0);
  signal wea1, web1                                                     : std_logic_vector(3 downto 0);

  signal halt, enable, controla, controlb, controlc, done : std_logic                     := '0' ;
  signal len, vec_addr, coeffs_addr, out_addr             : std_logic_vector(31 downto 0) := ZERO_32;
  signal i,bytes                                          : integer                       := 0;
  signal addraa, dinaa, doutaa                            : std_logic_vector(31 downto 0);
  signal control                                          : std_logic := '0';
  signal bram_sel                                         : std_logic_vector(1 downto 0);

begin

  clk   <= not clk after clk_period / 2 ;
  reset <= '1', '0' after 100 ns;

  clka0 <= clk;
  clkb0 <= clk;
  clka1 <= clk;
  clkb1 <= clk;

  -- BRAM multiplexing
  ena0   <= std_ena0   when bram_mine0 = '0' else user_ena0;
  addra0 <= std_addra0 when bram_mine0 = '0' else user_addra0;
  dina0  <= std_dina0  when bram_mine0 = '0' else user_dina0;
  wea0   <= std_wea0   when bram_mine0 = '0' else user_wea0;

  bram0 : Test_BRAM0
    PORT MAP (
      clka      => clka0,
      rsta      => rsta0,
      ena       => ena0,
      wea       => wea0,
      addra     => addra0,
      dina      => dina0,
      douta     => douta0,
      clkb      => clkb0,
      rstb      => rstb0,
      enb       => enb0,
      web       => web0,
      addrb     => addrb0,
      dinb      => dinb0,
      doutb     => doutb0,
      rsta_busy => rsta_busy0,
      rstb_busy => rstb_busy0
    );

  bram1 : Test_BRAM0
    PORT MAP (
      clka      => clka1,
      rsta      => rsta1,
      ena       => ena1,
      wea       => wea1,
      addra     => addra1,
      dina      => dina1,
      douta     => douta1,
      clkb      => clkb1,
      rstb      => rstb1,
      enb       => enb1,
      web       => web1,
      addrb     => addrb1,
      dinb      => dinb1,
      doutb     => doutb1,
      rsta_busy => rsta_busy1,
      rstb_busy => rstb_busy1
    );

  uut : mayo_linear_combination
    port map (
      i_clk       => clk,
      rst         => reset,
      i_enable    => enable,
      o_done      => done,
      i_bram_halt => halt,

      i_vec_addr    => vec_addr,
      i_coeffs_addr => coeffs_addr,
      i_out_addr    => out_addr,
      i_len         => len,

      i_mem0a_dout => douta0,
      o_mem0a_din  => std_dina0,
      o_mem0a_addr => std_addra0,
      o_mem0a_en   => std_ena0,
      o_mem0a_rst  => rsta0,
      o_mem0a_we   => std_wea0,

      i_mem0b_dout => doutb0,
      o_mem0b_din  => dinb0,
      o_mem0b_addr => addrb0,
      o_mem0b_en   => enb0,
      o_mem0b_rst  => rstb0,
      o_mem0b_we   => web0,

      i_mem1a_dout => douta1,
      o_mem1a_din  => dina1,
      o_mem1a_addr => addra1,
      o_mem1a_en   => ena1,
      o_mem1a_rst  => rsta1,
      o_mem1a_we   => wea1,

      o_control0a => controla,
      o_control0b => controlb,
      o_control1a => controlc
    );

  tb               : process
    file filein1     : text is in "/home/osm/Documents/Sect/SECT-MAYO/MAYO/tb/lin_comb_tb/500linear.dat";
    file filein2     : text is in "/home/osm/Documents/Sect/SECT-MAYO/MAYO/tb/lin_comb_tb/500solution.dat";
    variable v_line1 : line;
    variable v_line2 : line;
    variable v_tmp   : std_logic_vector(31 downto 0);
    variable good    : boolean;

  begin
    bram_mine0 <= '0';
    addrb1     <= ZERO_32;
    dinb1      <= ZERO_32;
    enb1       <= '0';
    web1       <= "0000";
    rstb1      <= '0';
    
    wait for 110 ns ;
    enable      <= '0';
    len         <= std_logic_vector(to_unsigned(1,32));
    vec_addr    <= std_logic_vector(to_unsigned(0,32));  -- in bram1
    coeffs_addr <= std_logic_vector(to_unsigned(0,32));  -- in bram0
    out_addr    <= std_logic_vector(to_unsigned(64,32)); -- in bram 0 
    bram_sel    <= "10";

    rsta_busy0 <= '0';
    rstb_busy0 <= '0';
    rsta_busy1 <= '0';
    rstb_busy1 <= '0';
    i          <= 0;
    wait for clk_period;
    FILE_OPEN(filein1,"/home/osm/Documents/Sect/SECT-MAYO/MAYO/tb/lin_comb_tb/500linear.dat",read_mode);
    FILE_OPEN(filein2,"/home/osm/Documents/Sect/SECT-MAYO/MAYO/tb/lin_comb_tb/500solution.dat",read_mode);
    -- Fill BRAM Vecs
    while not endfile(filein1) loop
      readline(filein1, v_line1);
      hread(v_line1, v_tmp, good);
      assert good
        report "Text I/O read error" severity error;
      addrb1 <= std_logic_vector(to_unsigned(i,32));
      enb1   <= '1';
      web1   <= "1111";
      dinb1  <= v_tmp;
      i      <= i+4;
      wait for clk_period;
      bytes <= bytes +4 ;
    end loop;

    enb1  <= '0';
    web1  <= "0000";
    dinb1 <= ZERO_32;

    bram_mine0 <= '1'; -- Take control over BRAM Port 
    wait for clk_period;

    i <= 0;
    wait for clk_period;
    -- Fill BRAM Coeffs
    while not endfile(filein2) loop
      readline(filein2, v_line2);
      hread(v_line2, v_tmp, good);
      assert good
        report "Text I/O read error" severity error;
      user_addra0 <= std_logic_vector(to_unsigned(i,32));
      user_ena0   <= '1';
      user_wea0   <= "1111";
      user_dina0  <= v_tmp;
      i           <= i+4;
      wait for clk_period;
      bytes <= bytes +4 ;
    end loop;

    user_ena0  <= '0';
    user_wea0  <= "0000";
    user_dina0 <= ZERO_32;
    wait for clk_period;
    bram_mine0 <= '0';
    wait for clk_period;

    ----------------------------------------------------------------------------
    -- Start UUT
    ----------------------------------------------------------------------------

    enable <= '1';

    wait for clk_period;

    enable <= '0';

    wait until done = '1';

    wait for 2*clk_period;
    -- Read BRAM (EXPECTED 1d1d1d1d) (30 + 30) mod 31 

    bram_mine0 <= '1'; -- Take control over BRAM Port 
    wait for clk_period;

    user_wea0  <= "0000";
    user_dina0 <= ZERO_32;
    rstb1      <= '0';
    for i in 0 to 15 loop --15 -1 == M / 4 -1  + addr offset [Last Read to check overflow, should expect 0] 
      user_addra0 <= std_logic_vector(to_unsigned(i*4 + 64,32));
      user_ena0   <= '1';
      wait for clk_period * 2 ;
    end loop;
    
    FILE_CLOSE(filein1);
    FILE_CLOSE(filein2);
    report "Done" severity failure;

  end process;


end Behavioral;
