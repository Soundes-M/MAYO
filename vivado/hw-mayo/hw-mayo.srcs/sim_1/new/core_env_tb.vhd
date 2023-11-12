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
-- TB for MAYO Cores, the UUT keep changing so please look at the previous git versions to see the changes
-- Some variables can sometimes be unused
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

entity core_env_tb is
--  Port ( );
end core_env_tb;

architecture Behavioral of core_env_tb is

  -- UUT 
  component mayo_add_vectors is -- not used
    port (
      i_clk      : in  std_logic;                               -- CLK
      rst        : in  std_logic;                               -- RST
      i_enable   : in  std_logic;                               -- ENABLE
      i_v1_addr  : in  std_logic_vector(PORT_WIDTH-1 downto 0); -- V1 ADR in BRAM
      i_v2_addr  : in  std_logic_vector(PORT_WIDTH-1 downto 0); -- V2 ADR in BRAM
      i_out_addr : in  std_logic_vector(PORT_WIDTH-1 downto 0); -- OUT ADR in BRAM
      i_bram_sel : in  std_logic_vector(1 downto 0);
      o_done     : out std_logic; -- DONE

      --BRAM-A(V1)
      i_mema_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mema_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mema_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_mema_en   : out std_logic;
      o_mema_rst  : out std_logic;
      o_mema_we   : out std_logic_vector (3 downto 0);

      --BRAM-B(V2)
      i_memb_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
      o_memb_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_memb_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_memb_en   : out std_logic;
      o_memb_rst  : out std_logic;
      o_memb_we   : out std_logic_vector (3 downto 0);

      --BRAM-C(OUT)
      i_memc_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
      o_memc_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_memc_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
      o_memc_en   : out std_logic;
      o_memc_rst  : out std_logic;
      o_memc_we   : out std_logic_vector (3 downto 0);

      o_controla : out std_logic;
      o_controlb : out std_logic;
      o_controlc : out std_logic
    );
  end component;

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
  ------------------------------------------------------------------------------
  -- TB Signals 0 for BRAM0 and 1 for BRAM1. If BRAM_Mine for BRAM0 is 0 then directly ported to core. Otherwise user has control
  ------------------------------------------------------------------------------

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

  signal enable, controla, controlb, controlc, done : std_logic                     := '0' ;
  signal len, v1_addr, v2_addr, out_addr            : std_logic_vector(31 downto 0) := ZERO_32;
  signal i,bytes                                    : integer                       := 0;
  signal addraa, dinaa, doutaa                      : std_logic_vector(31 downto 0);
  signal control                                    : std_logic := '0';
  signal bram_sel                                   : std_logic_vector(1 downto 0);

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

  uut : mayo_negate
    port map (
      i_clk     => clk,
      rst       => reset,
      i_enable  => enable,
      i_len     => len,
      i_adr     => v1_addr,
      i_doutb   => douta1,
      o_addrb   => addra1,
      o_dinb    => dina1,
      o_enb     => ena1,
      o_rstb    => rsta1,
      o_web     => wea1,
      o_done    => done,
      o_control => controla
    );

  tb               : process
    file filein1     : text is in "/home/osm/Documents/SECT-MAYO/MAYO/tb/negate_tb/pre_negateP2.txt";
    variable v_line1 : line;
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
    enable   <= '0';
    len      <= std_logic_vector(to_unsigned(P2_BYTES,32));
    v1_addr  <= std_logic_vector(to_unsigned(0,32));
    v2_addr  <= std_logic_vector(to_unsigned(60,32));
    out_addr <= std_logic_vector(to_unsigned(120,32));
    bram_sel <= "10";

    rsta_busy0 <= '0';
    rstb_busy0 <= '0';
    rsta_busy1 <= '0';
    rstb_busy1 <= '0';
    wait for clk_period;

    FILE_OPEN(filein1,"/home/osm/Documents/SECT-MAYO/MAYO/tb/negate_tb/pre_negateP2.txt",read_mode);

    wait for clk_period;
    while not endfile(filein1) loop
      -- Fill BRAM with P2
      readline(filein1, v_line1);
      hread(v_line1, v_tmp, good);
      assert good
        report "Text I/O read error" severity error;
      addrb1 <= std_logic_vector(to_unsigned(i,32));
      dinb1  <= v_tmp;
      i      <= i+4;
      enb1   <= '1';
      web1   <= "1111";
      wait for clk_period;
      bytes <= bytes +4 ;
    end loop;

    enb1  <= '0';
    web1  <= "0000";
    dinb1 <= ZERO_32;

    --bram_mine0 <= '1'; -- Take control over BRAM Port 
    --wait for clk_period;

    ---- Fill BRAM v2
    --for i in 0 to (30-1) loop --15 -1 == M / 4 -1  + addr offset
    --  user_addra0 <= std_logic_vector(to_unsigned(i*4,32));
    --  user_ena0   <= '1';
    --  user_wea0   <= "1111";
    --  user_dina0  <= std_logic_vector(to_unsigned(i+1,8)) & std_logic_vector(to_unsigned(i+1,8)) & std_logic_vector(to_unsigned(i+1,8)) & std_logic_vector(to_unsigned(i+1,8)); -- 30 30 30 30 
    --  wait for clk_period;
    --  bytes <= bytes +4 ;
    --end loop;

    --user_ena0  <= '0';
    --user_wea0  <= "0000";
    --useR_dina0 <= ZERO_32;
    --wait for clk_period;
    --bram_mine0 <= '0';
    --wait for clk_period;

    ----------------------------------------------------------------------------
    -- Start UUT
    enable <= '1';

    wait for clk_period;

    enable <= '0';

    wait until done = '1';

    wait for 2*clk_period;

    -- Read BRAM 
    web1  <= "0000";
    dinb1 <= ZERO_32;
    rstb1 <= '0';
    for i in 0 to P2_BYTES/4 loop --15 -1 == M / 4 -1  + addr offset [Last Read to check overflow, should expect 0] 
      addrb1 <= std_logic_vector(to_unsigned(i*4,32));
      enb1   <= '1';
      wait for clk_period * 2 ;
    end loop;

    report "Done" severity failure;

  end process;
end Behavioral;
