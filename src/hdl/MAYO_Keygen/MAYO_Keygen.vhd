--------------------------------------------------------------------------------
-- Title       : KEYGEN
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Keygen.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Last update : Mon Oct  3 14:20:46 2022
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
    SIZE      : NATURAL := 999; -- typeholder
    BRAM_SIZE : NATURAL := 31
  );
  PORT (
    CLK               : IN STD_LOGIC;
    ENABLE            : IN STD_LOGIC; -- TODO: Optional or change to internal config regs
    RESET             : IN STD_LOGIC;
    PUBLIC_KEY_ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- TODO: 32 bits adr of ram needs more work in vivado aka. axi DMA
    SECRET_KEY_ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- TODO: 32 bits adr of ram needs more work in vivado aka. axi DMA
                                                          -- o_done            : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);  -- TODO: Maybe transform to type / 00-> nothing, 01 -> valid, 10 -> error , 11 -> reserved
    o_done  : out std_logic;
    i_debug : in  std_logic;
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
    o_red_enable : out std_logic;
    o_red_len    : out std_logic_vector (31 downto 0);
    o_red_adr    : out std_logic_vector (31 downto 0);
    i_red_done   : in  std_logic;

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

    -- NEGATE 
    o_neg_enable : out std_logic;
    o_neg_len    : out std_logic_vector (31 downto 0);
    o_neg_adr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
    i_neg_done   : in  std_logic;

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

    o_mem0a_control : out std_logic;
    o_mem0b_control : out std_logic;
    o_mem1a_control : out std_logic
  );
-- data
END ENTITY MAYO_KEYGEN;

ARCHITECTURE RTL OF MAYO_KEYGEN IS
  TYPE STATES IS (idle, rand0, rand1, rand2, rand3, rand4, rand5, expand0, expand1, expand2, reduce0, reduce1, reduce2, transpose0, transpose1, transpose2,
      transpose3, transpose4, transpose5, transpose6, negate0, negate1, negate2, sample0, sample1, sample2,
      compute0, compute1, compute2, compute3, compute4, compute5, compute6, compute7, compute8, compute9, compute10, compute11,
      compute12, compute13, compute14, compute15, compute16, compute17, compute18, compute19, compute20, compute21, compute22, compute23,
      done, wait_clear);
  SIGNAL STATE : STATES := idle; -- default to reset;

  signal trng : trng_t := DEFAULT_TRNG;

  signal index, counter                   : integer                       := 0;
  signal p1_counter                       : integer                       := 0;
  signal i,j                              : integer                       := 0;
  signal s_p1_index,copy_index            : integer                       := 0;
  signal s_oil_space_index                : integer                       := 0;
  signal s_v1_index                       : integer                       := 0;
  signal s_src_index                      : integer                       := 0;
  signal s_dest_index                     : integer                       := 0;
  signal s_read_bram                      : std_logic_vector(31 downto 0) := ZERO_32;
  signal s_p2_index                       : integer                       := 0;
  signal s_tempt_index,s_oil_space2_index : integer                       := 0;

  ------------------------------------------------------------------------------
  -- Reg Space (AXI-LITE)
  ------------------------------------------------------------------------------
  signal s_status_reg  : std_logic_vector(31 downto 0);
  signal s_control_reg : std_logic_vector(31 downto 0);
  signal s_pk_reg      : std_logic_vector(31 downto 0); --can copy pk and sk to ddr
  signal s_sk_reg      : std_logic_vector(31 downto 0);

  alias en     : std_logic is s_control_reg(1);
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

  o_mem0a_control <= '1' when (state = rand0 or state = rand1 or state = rand2 or state = rand3 or state = rand4 or state = rand5) else '0';
  o_mem0b_control <= '1' when (state = rand2 or state = rand3 or state = rand4 or state = rand5) else '0';
  o_mem1a_control <= '1' when (state = rand2 or state = rand3 or state = rand4 or state = rand5 or state = transpose3 or state = transpose4 or state = transpose5) else '0';


  -- sync compute!
  KEYGEN : PROCESS (CLK) IS
  BEGIN
    if (rising_edge(clk)) then
      if (RESET = '1') then
        -- add reset werte!
        trng.o             <= DEFAULT_OUT_TRNG;
        bram0a.o           <= DEFAULT_OUT_BRAM;
        bram0b.o           <= DEFAULT_OUT_BRAM;
        bram1a.o           <= DEFAULT_OUT_BRAM;
        index              <= 0 ;
        counter            <= 0;
        p1_counter         <= 0;
        i                  <= 0;
        j                  <= 0;
        s_p1_index         <= 0;
        copy_index         <= 0;
        s_oil_space_index  <= 0;
        s_v1_index         <= 0;
        s_src_index        <= 0;
        s_dest_index       <= 0;
        s_read_bram        <= ZERO_32;
        s_p2_index         <= 0;
        s_tempt_index      <= 0;
        s_oil_space2_index <= 0;

      else
        case (state) is
          when idle =>
            o_done <= '0';
            irq    <= '0';
            if (enable = '1' or en = '1') then
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
              bram0a.o.o_we   <= "1111";
              bram0a.o.o_din  <= i_trng_data;
              bram0a.o.o_en   <= '1';
              bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4) ; -- TODO : Check 
            else
              bram0a.o.o_en <= '0';
              bram0a.o.o_we <= "0000";
            end if;

            if (trng.i.done = '1') then
              state <= rand2;
            end if;

          when rand2 => -- copy to PK (brama-> bramb) && (bram0 to bram1) 
            bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));
            bram0b.o.o_addr <= std_logic_vector(to_unsigned(PK_BASE_ADR,PORT_WIDTH));
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH));

            bram0a.o.o_en  <= '0';
            bram0a.o.o_we  <= "0000";
            bram0a.o.o_din <= ZERO_32;

            bram0b.o.o_en  <= '0';
            bram0b.o.o_we  <= "1111";
            bram0b.o.o_din <= ZERO_32;

            bram1a.o.o_en  <= '0';
            bram1a.o.o_we  <= "1111";
            bram1a.o.o_din <= ZERO_32;
            state          <= rand3;

          when rand3 => -- read
            bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) + 4) ;
            bram0a.o.o_en   <= '1';
            bram0b.o.o_en   <= '0';
            bram1a.o.o_en   <= '0';
            state           <= rand4;

          when rand4 =>
            bram0b.o.o_addr <= std_logic_vector(unsigned(bram0b.o.o_addr) + 4) ;
            bram0b.o.o_en   <= '1';
            bram0b.o.o_din  <= i_mem0a_dout;

            bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) + 4) ;
            bram1a.o.o_en   <= '1';
            bram1a.o.o_din  <= i_mem0a_dout;

            if (index >= 4) then
              state <= rand5;
            else
              index <= index +1 ;
              state <= rand3;
            end if;

          when rand5 => -- copy pk seed to big bram (will be overwritten)
            bram0a.o.o_en <= '0';
            bram0b.o.o_en <= '0';
            bram0b.o.o_we <= "0000";
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
            if (i_hash_done = '1') then
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
            if (i_red_done = '1') then
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
            if (i_sam_done = '1') then
              state <= compute0;
            end if ;

            --------------------------------------------------------------------
            -- COMPUTEP2
            -- P2 = - O*P1*O^t - O*P1'
            -- Temp = P1*O^t + P1'
            --------------------------------------------------------------------

          -- PART 1
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
              s_p1_index <= P1_BASE_ADR + p1_counter*M;
              state      <= compute2 ;
            else
              state <= compute8;
            end if;

          when compute2 =>
            if (j < O) then
              state <= compute3;
            else
              state <= compute7;
            end if;

          when compute3 =>
            o_lin_vec_addr    <= std_logic_vector(to_unsigned(s_p1_index,PORT_WIDTH));
            o_lin_coeffs_addr <= std_logic_vector(to_unsigned(s_oil_space_index,PORT_WIDTH));
            o_lin_len         <= std_logic_vector(to_unsigned(N-O-i,PORT_WIDTH));
            o_lin_out_addr    <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH));
            o_lin_enable      <= '1';
            state             <= compute4;

          when compute4 =>
            o_lin_enable <= '0';
            if (i_lin_done = '1') then
              state <= compute5;
            end if;

          when compute5 =>
            o_add_v1_addr  <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
            o_add_v2_addr  <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH));
            o_add_out_addr <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
            o_add_enable   <= '1';
            state          <= compute6;

          when compute6 =>
            o_add_enable <= '0';
            if (i_add_done = '1') then
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

          -- PART 2
          when compute8 =>
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
              state <= transpose0;
            end if;

          when compute10 =>
            if (j < O) then
              s_p1_index <= P1_BASE_ADR + p1_counter*M;
              state      <= compute11;
            else
              state <= compute13;
            end if;

          when compute11 =>
            o_add_v1_addr  <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
            o_add_v2_addr  <= std_logic_vector(to_unsigned(s_p1_index,PORT_WIDTH));
            o_add_out_addr <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
            o_add_enable   <= '1';
            state          <= compute12;

          when compute12 =>
            o_add_enable <= '0';
            if (i_add_done = '1') then
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

          ------------------------------------------------------------------
          -- BEGIN TRANSPOSE TEMP -> TEMPT
          ------------------------------------------------------------------
          when transpose0 => -- Transpose (memcpy)
            i            <= 0;
            j            <= 0;
            s_src_index  <= TEMP_BASE_ADR;
            s_dest_index <= TEMPT_BASE_ADR;
            state        <= transpose1;

          when transpose1 =>
            if (i < O) then
              state <= transpose2;
            else
              state <= compute14;
            end if;

          when transpose2 =>
            if (j < N-O) then
              state <= transpose3;
            else
              j            <= 0 ;
              s_src_index  <= (i+1)*(N-O);
              s_dest_index <= (i+1)*M;
              i            <= i+1;
              state        <= transpose1;
            end if;

          when transpose3 => --read
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(s_src_index + copy_index, PORT_WIDTH));
            bram1a.o.o_we   <= "0000";
            bram1a.o.o_en   <= '1';
            state           <= transpose4;

          when transpose4 => -- writeback
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(s_dest_index + copy_index,PORT_WIDTH));
            bram1a.o.o_din  <= i_mem1a_dout;
            bram1a.o.o_we   <= "1111";
            copy_index      <= copy_index +4;
            state           <= transpose5;

          when transpose5 => --write 
            if (copy_index < 60) then
              state <= transpose3; -- keep copying
            else
              bram1a.o.o_we <= "0000";
              bram1a.o.o_en <= '0';
              state         <= transpose6;
            end if;

          when transpose6 =>
            j            <= j+1;
            s_dest_index <= s_dest_index + M;
            s_src_index  <= s_src_index + O*M;
            state        <= transpose2;
            ------------------------------------------------------------------
            -- END TRANSPOSE TEMP -> TEMPT
            ------------------------------------------------------------------

          when compute14 =>
            counter           <= 0;
            s_p1_index        <= TEMPT_BASE_ADR;
            s_oil_space_index <= OIL_SPACE_BASE_ADR;
            s_p2_index        <= PK_BASE_ADR + SEED_BYTES; -- PK_P2
            state             <= compute23;

          when compute23 =>
            if (i < O) then
              state <= compute15 ;
            else
              state <= negate0;
            end if;

          when compute15 =>
            if (j < O) then
              state <= compute16;
            else
              i     <= i+1;
              state <= compute23;
            end if;

          when compute16 =>
            o_lin_vec_addr    <= std_logic_vector(to_unsigned(s_p1_index, PORT_WIDTH));        -- TEMPT
            o_lin_coeffs_addr <= std_logic_vector(to_unsigned(s_oil_space_index, PORT_WIDTH)); -- OIL_SPACE
            o_lin_len         <= std_logic_vector(to_unsigned(N-O, PORT_WIDTH));
            o_lin_out_addr    <= std_logic_vector(to_unsigned(s_p2_index, PORT_WIDTH)); -- P2
            o_lin_enable      <= '1';
            state             <= compute4;

          when compute17 =>
            o_lin_enable <= '0';
            if (i_lin_done = '1') then
              state <= compute18;
            end if;

          when compute18 =>
            if (i /= j) then
              o_lin_vec_addr    <= std_logic_vector(to_unsigned(s_tempt_index, PORT_WIDTH));      -- TEMPT
              o_lin_coeffs_addr <= std_logic_vector(to_unsigned(s_oil_space2_index, PORT_WIDTH)); -- OIL_SPACE
              o_lin_len         <= std_logic_vector(to_unsigned(N-O, PORT_WIDTH));
              o_lin_out_addr    <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR, PORT_WIDTH)); -- VEC[M]
              o_lin_enable      <= '1';
              state             <= compute19;
            else
              state <= compute22;
            end if;

          when compute19 =>
            o_lin_enable <= '0';
            if (i_lin_done = '1') then
              state <= compute20;
            end if;

          when compute20 =>
            o_add_v1_addr  <= std_logic_vector(to_unsigned(s_v1_index, PORT_WIDTH));     -- P2
            o_add_v2_addr  <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR, PORT_WIDTH)); -- VEC[M]
            o_add_out_addr <= std_logic_vector(to_unsigned(s_v1_index, PORT_WIDTH));     -- P2
            o_add_enable   <= '1';
            state          <= compute21;

          when compute21 =>
            o_add_enable <= '0';
            if (i_add_done = '1') then
              state <= compute22;
            end if;

          when compute22 =>
            counter <= counter +1;
            j       <= j+1;
            -- update indices
            s_p1_index         <= s_p1_index + (N-O)*M;
            s_p2_index         <= s_p2_index + M;
            s_oil_space2_index <= s_oil_space2_index + (N-O);
            s_v1_index         <= s_v1_index + M;
            state              <= compute23;

          when negate0 => -- P2 = -P2
            o_neg_enable <= '1';
            o_neg_len    <= std_logic_vector(to_unsigned(P2_BYTES,PORT_WIDTH));
            o_neg_adr    <= std_logic_vector (to_unsigned(PK_BASE_ADR + SEED_BYTES,PORT_WIDTH));
            state        <= negate1;

          when negate1 =>
            if (i_neg_done = '1') then
              state <= done;
            end if;

          when done =>
            o_done <= '1';
            irq    <= '1';
            state  <= wait_clear;

          when wait_clear =>
            if (irq = '0' or i_debug = '1') then
              state <= idle;
            end if;

          when others =>
            null;
        end case;

      END IF;
    end if;

  END PROCESS KEYGEN;

  --- trng
  o_trng_r     <= trng.o.r;
  o_trng_w     <= trng.o.w ;
  o_trng_data  <= trng.o.data;
  trng.i.valid <= i_trng_valid;
  trng.i.done  <= i_trng_done;
  --trng.i.data  <= i_trng_data;

  --- brams
  --BRAM0-A
  bram0a.i.i_dout <= i_mem0a_dout;
  o_mem0a_din     <= bram0a.o.o_din;
  o_mem0a_addr    <= bram0a.o.o_addr;
  o_mem0a_en      <= bram0a.o.o_en;
  o_mem0a_rst     <= bram0a.o.o_rst;
  o_mem0a_we      <= bram0a.o.o_we;

  --BRAM0-B
  -- bram0b.i.i_dout <= i_mem0b_dout;
  o_mem0b_din  <= bram0b.o.o_din;
  o_mem0b_addr <= bram0b.o.o_addr;
  o_mem0b_en   <= bram0b.o.o_en;
  o_mem0b_rst  <= bram0b.o.o_rst;
  o_mem0b_we   <= bram0b.o.o_we;

  --BRAM1-A
  bram1a.i.i_dout <= i_mem1a_dout;
  o_mem1a_din     <= bram1a.o.o_din;
  o_mem1a_addr    <= bram1a.o.o_addr;
  o_mem1a_en      <= bram1a.o.o_en;
  o_mem1a_rst     <= bram1a.o.o_rst;
  o_mem1a_we      <= bram1a.o.o_we;
END ARCHITECTURE RTL;
