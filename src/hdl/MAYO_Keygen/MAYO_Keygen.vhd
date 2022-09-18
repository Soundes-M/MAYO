LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

ENTITY MAYO_KEYGEN IS
  GENERIC (
    SIZE   : NATURAL := 999; -- typeholder
    SIZE_1 : NATURAL := 999
  );
  PORT (
    CLK               : IN  STD_LOGIC;
    ENABLE            : IN  STD_LOGIC; -- TODO: Optional or change to internal config regs
    RESET             : IN  STD_LOGIC;
    PUBLIC_KEY_ADDR_I : IN  STD_LOGIC_VECTOR(31 DOWNTO 0); -- TODO: 32 bits adr of ram needs more work in vivado aka. axi DMA
    SECRET_KEY_ADDR_I : IN  STD_LOGIC_VECTOR(31 DOWNTO 0); -- TODO: 32 bits adr of ram needs more work in vivado aka. axi DMA
    o_done            : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);  -- TODO: Maybe transform to type / 00-> nothing, 01 -> valid, 10 -> error , 11 -> reserved

    -- TODO add axi lite core slv here
    o_trng_r     : out std_logic;
    o_trng_w     : out std_logic;
    o_trng_data  : out std_logic_vector(31 downto 0);
    i_trng_data  : in  std_logic_vector(31 downto 0);
    i_trng_valid : in  std_logic;
    i_trng_done  : in  std_logic;

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
    o_mem1a_we   : out std_logic_vector (3 downto 0)
  );
-- data
END ENTITY MAYO_KEYGEN;

ARCHITECTURE RTL OF MAYO_KEYGEN IS

  -- MORE SIGNALS NEEDED HERE !
  -- NEOTRG initiated here

  TYPE STATES IS (idle, rand0, rand1 S_START, S_FAILED, S_DONE);
  SIGNAL STATE : STATES := S_RESET; -- default to reset;

  signal trng : trng_t := DEFAULT_TRNG;

  signal index : integer := 0;

  ------------------------------------------------------------------------------
  -- Reg Space (AXI-LITE)
  ------------------------------------------------------------------------------
  signal s_status_reg  : std_logic_vector(31 downto 0);
  signal s_control_reg : std_logic_vector(31 downto 0);
  signal s_pk_reg      : std_logic_vector(31 downto 0); --can copy pk and sk to ddr
  signal s_sk_reg      : std_logic_vector(31 downto 0);

  alias enable : std_logic is s_control_reg(1);
  alias debug  : std_logic is s_control_reg(2);
  alias irq    : std_logic is s_control_reg(3);
  alias expose : std_logic is s_control_reg(4);

  alias busy : std_logic is s_status_reg(1);
  alias err  : std_logic is s_status_reg(2);

  ------------------------------------------------------------------------------
  -- BRAM
  ------------------------------------------------------------------------------
  signal bram0a : bram_t := DEFAULT_BRAM;
  signal bram0b : bram_t := DEFAULT_BRAM;

  signal bram1a : bram_t := DEFAULT_BRAM;


BEGIN

  --- trng
  trng.o.r    => o_trng_r;
  trng.o.w    => o_trng_w;
  trng.o.data => o_trng_data;
  trng.i.valid <= i_trng_valid;
  trng.i.done  <= i_trng_done;
  trng.i.data  <= i_trng_data

    -- sync compute!
    KEYGEN : PROCESS (CLK) IS
    BEGIN

      if (rising_edge(clk)) then
        if (rst = '1') then
        -- add reset werte!
        else
          case (state) is
            when idle =>
              if enable = '1' then
                state <= rand0;
                busy  <= '1';
              else
                busy <= '0';
              end if;

            when rand0 => -- generate public seed and secret seed

              --------------------------------------------------------------------
              -- (1) SK : |PK_SEED|SK_SEED|
              -- (2) PK : |PK_SEED|
              --------------------------------------------------------------------#
              trng.o.w        <= '1';
              trng.o.r        <= '0';
              trng.o.data     <= std_logic_vector(to_unsigned(SEED_BYTES*2,PORT_WIDTH));
              bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));
              state           <= rand1;

            when rand1 =>
              trng.o.w <= '0';
              trng.o.r <= '1';

              if ( trng.i.valid = '1') then
                bram0a.o.o_we   <= '1111';
                bram0a.o.o_din  <= trng.i.data;
                bram0a.o.o_en   <= '1';
                bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4) ;
              else
                bram0a.o.o_en <= '0';
                bram0a.o.o_we <= '0000';
              end if;

              if (trng.i.done = '1') then
                state <= rand2;
              end if;

            when rand2 => -- copy to PK ( a-> b)
              bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));
              bram0b.o.o_addr <= std_logic_vector(to_unsigned(PK_BASE_ADR,PORT_WIDTH));
              bram0a.o.o_en   <= '0';
              bram0a.o.o_we   <= '0000';
              bram0a.o.o_din  <= ZERO_32;
              bram0b.o.o_en   <= '0';
              bram0b.o.o_we   <= '1111';
              bram0b.o.o_din  <= ZERO_32;
              state           <= rand3;

            when rand3 => -- read
              bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4) ;
              bram0a.o.o_en   <= '1';
              state           <= rand4;

            when rand4 =>
              bram0b.o.o_addr <= std_logic_vector(unsigned(bram0b.o.o_addr) + 4) ;
              bram0b.o.o_en   <= '1';
              bram0b.o.o_din  <= bram0a.i.i_dout;
              index           <= index +1;
              if index > 15 then
                state <= rand5;
              else
                index <= index +1 ;
                state <= rand3;
              end if;

            when rand5 => 
            bram0a.o.o_en <= '0';
            bram0b.o.o_en <= '0';
            --------------------------------------------------------------------
            -- EXPAND BEGIN
            --------------------------------------------------------------------
            
            




            when others =>
              null;
          end case;

        END IF;
      end if;

    END PROCESS KEYGEN;

    END ARCHITECTURE RTL;
