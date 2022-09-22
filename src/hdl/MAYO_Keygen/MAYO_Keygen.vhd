--------------------------------------------------------------------------------
-- Title       : KEYGEN
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Keygen.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Last update : Thu Sep 22 13:51:45 2022
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: Keygen for MAYO, USES 2 BRAMS
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

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

    --HASH (EXPAND [SHAKE128])
    o_hash_en        : out std_logic;
    o_hash_mlen      : out std_logic_vector(31 downto 0);
    o_hash_olen      : out std_logic_vector(31 downto 0);
    o_hash_write_adr : out std_logic_vector(31 downto 0);
    o_hash_read_adr  : out std_logic_vector(31 downto 0);
    i_hash_done      : in  std_logic;
    i_hash_dyn_done  : in  std_logic;

    --REDUCE CORE
    o_red_enable : in std_logic;
    o_red_len    : in std_logic_vector (31 downto 0);
    o_red_adr    : in std_logic_vector (31 downto 0);
    i_red_done   : in std_logic;

    -- SAMPLE OIL SPACE
    o_sam_enable   : out std_logic;
    i_sam_done     : in  std_logic;
    o_sam_oil_addr : out std_logic_vector(31 downto 0);

    -- LINEAR COMBINATION 
    o_lin_enable      : out std_logic;
    i_lin_done        : in  std_logic;
    o_lin_bram_halt   : out std_logic; -- DMA Wait for Copy (Big BRAM)
    o_lin_vec_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_lin_coeffs_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_lin_out_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_lin_len         : out std_logic_vector(PORT_WIDTH-1 downto 0);

    -- ADD VECTORS
    o_add_enable   : out std_logic;
    o_add_v1_addr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_add_v2_addr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_add_out_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
    i_add_done     : in  std_logic;

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

  signal index             : integer := 0;
  signal p1_counter        : integer := 0;
  signal i,j               : integer := 0;
  signal s_p1_index        : integer := 0;
  signal s_oil_space_index : integer := 0;
  signal s_v1_index        : integer := 0;
  signal s_src_index       : integer := 0;
  signal s_dest_index      : integer := 0;

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

            when rand2 => -- copy to PK ( a-> b) && (0 to 1) (in 1 (big bram) it will be overwritten)
              bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));
              bram0b.o.o_addr <= std_logic_vector(to_unsigned(PK_BASE_ADR,PORT_WIDTH));
              bram1a.o.o_addr <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH));

              bram0a.o.o_en  <= '0';
              bram0a.o.o_we  <= '0000';
              bram0a.o.o_din <= ZERO_32;

              bram0b.o.o_en  <= '0';
              bram0b.o.o_we  <= '1111';
              bram0b.o.o_din <= ZERO_32;

              bram1a.o.o_en  <= '0';
              bram1a.o.o_we  <= '1111';
              bram1a.o.o_din <= ZERO_32;
              state          <= rand3;

            when rand3 => -- read
              bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4) ;
              bram0a.o.o_en   <= '1';
              state           <= rand4;

            when rand4 =>
              bram0b.o.o_addr <= std_logic_vector(unsigned(bram0b.o.o_addr) + 4) ;
              bram0b.o.o_en   <= '1';
              bram0b.o.o_din  <= bram0a.i.i_dout;

              bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) + 4) ;
              bram1a.o.o_en   <= '1';
              bram1a.o.o_din  <= bram0a.i.i_dout;
              index           <= index +1;
              if index > 15 then
                state <= rand5;
              else
                index <= index +1 ;
                state <= rand3;
              end if;

            when rand5 => -- copy pk seed to big bram (will be overwritten)
              bram0a.o.o_en <= '0';
              bram0b.o.o_en <= '0';
              bram0b.o.o_we <= '0000';
              state         <= expand0;

            --------------------------------------------------------------------
            -- EXPAND PK  BEGIN
            --------------------------------------------------------------------
            when expand0 =>
              o_hash_mlen      <= std_logic_vector(to_unsigned(SEED_BYTES,PORT_WIDTH));
              o_hash_olen      <= std_logic_vector(to_unsigned(P1_BYTES,PORT_WIDTH));
              o_hash_read_adr  <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH));
              o_hash_write_adr <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH)); -- Linked to BRAM 1 (BIG)
              o_hash_en        <= '1';
              state            <= expand1;

            when expand1 =>
              o_hash_en        <= '0';
              o_hash_mlen      <= ZERO_32;
              o_hash_olen      <= ZERO_32;
              o_hash_read_adr  <= ZERO_32;
              o_hash_write_adr <= ZERO_32;
              state            <= expand2;

            when expand2 =>
              if (i_hash_done) then
                state <= reduce0;
              end if;

            when reduce0 =>
              o_red_adr    <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH));
              o_red_len    <= std_logic_vector(to_unsigned(P1_BYTES,PORT_WIDTH));
              o_red_enable <= '1';
              state        <= reduce1;

            when reduce1 =>
              o_red_enable <= '0';
              state        <= reduce2;

            when reduce2 =>
              if (i_red_done) then
                state <= sample0;
              end if;
            --------------------------------------------------------------------
            -- EXPAND PK END
            --------------------------------------------------------------------
            when sample0 => -- USES BOTH BRAM 0 PORTS!
              o_sam_enable   <= '1';
              o_sam_oil_addr <= std_logic_vector(to_unsigned(OIL_SPACE_BASE_ADR,PORT_WIDTH));
              state          <= sample1;

            when sample1 =>
              o_sam_enable <= '0';
              state        <= sample2;

            when sample2 =>
              if (i_sam_done) then
                state <= compute0;
              end if ;
            --------------------------------------------------------------------
            -- COMPUTEP2
            --------------------------------------------------------------------
            when compute0 =>
              i <= 0;
              j <= 0;
              -- Lin Combination
              s_p1_index        <= P1_BASE_ADR;        -- fix 
              s_oil_space_index <= OIL_SPACE_BASE_ADR; -- fix 

              -- Add vec
              s_v1_index <= TEMP_BASE_ADR;
              state      <= compute1 ;

            when compute1 =>
              if (i < N-O) then
                state <= compute2 ;
              else
                state <= compute8;
              end if;

            when compute2 =>
              if (j < O) then
                s_p1_index <= s_p1_index + p1_counter*M;
                state      <= compute3;
              else
                state <= compute7;
              end if;

            when compute3 =>
              o_lin_vec_addr    <= s_p1_index;
              o_lin_coeffs_addr <= s_oil_space_index;
              o_lin_len         <= N-O-i;
              o_lin_vec_addr    <= P2VEC_BASE_ADR;
              o_lin_enable      <= '1';
              state             <= compute4;

            when compute4 =>
              o_lin_enable <= '0';
              if (i_lin_done) then
                state <= compute5;
              end if;

            when compute5 =>
              o_add_v1_addr  <= s_v1_index;
              o_add_v2_addr  <= P2VEC_BASE_ADR;
              o_add_out_addr <= s_v1_index;
              o_add_enable   <= '1';
              state          <= compute6;

            when compute6 =>
              o_add_enable <= '0';
              if (i_add_done) then
                j                 <= j+1;
                s_oil_space_index <= s_oil_space_index + (N-O);
                s_v1_index        <= s_v1_index + M;
                state             <= compute2;
              end if;

            when compute7 =>
              p1_counter <= p1_counter + (N-O-i);
              -- update ctrs for next round
              s_oil_space_index <= OIL_SPACE_BASE_ADR + i+1;
              s_v1_index        <= TEMP_BASE_ADR + (i+1)*O*M;
              i                 <= i+1 ;
              j                 <= 0;
              state             <= compute1;

            when compute8
              i <= 0;
              j <= 0;

              -- Add vec
              s_v1_index <= TEMP_BASE_ADR;
              s_p1_index <= P1_BASE_ADR;
              state      <= compute9 ;

            when compute9 =>
              if (i < N-O) then
                state <= compute10;
              else
                state <= tranpose0;
              end if;

            when compute10 =>
              if (j < O) then
                s_p1_index <= s_p1_index + p1_counter*M;
                state      <= compute11;
              else
                state <= compute13;
              end if;

            when compute11 =>
              o_add_v1_addr  <= s_v1_index;
              o_add_v2_addr  <= s_p1_index;
              o_add_out_addr <= s_v1_index;
              o_add_enable   <= '1';
              state          <= compute12;

            when compute12 =>
              o_add_enable <= '0';
              if (i_add_done) then
                j          <= j+1;
                p1_counter <= p1_counter +1;
                s_v1_index <= s_v1_index + M;
                state      <= compute10;
              end if;

            when compute13 =>
              s_v1_index <= TEMP_BASE_ADR + (i+1)*O*M;
              i          <= i+1 ;
              j          <= 0;
              state      <= compute9;

            when tranpose0 => -- Transpose
              i            <= 0;
              j            <= 0;
              s_src_index  <= TEMP_BASE_ADR;
              s_dest_index <= TEMPT_BASE_ADR;
              









            when others =>
              null;
          end case;

        END IF;
      end if;

    END PROCESS KEYGEN;

    END ARCHITECTURE RTL;
