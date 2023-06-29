--------------------------------------------------------------------------------
-- Title       : KEYGEN
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Keygen.vhd
-- Author      : XXXXX
-- Company     : 
-- Created     : 
-- Last update : Thu Jun 29 19:40:02 2023
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 XXXXX
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
use STD.textio.all;
use ieee.std_logic_textio.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

ENTITY MAYO_KEYGEN_FSM IS
  GENERIC (
    SIZE      : NATURAL := 31; -- typeholder
    BRAM_SIZE : NATURAL := 31
  );
  PORT (
    CLK               : IN STD_LOGIC;
    ENABLE            : IN STD_LOGIC;
    RESET             : IN STD_LOGIC;
    PUBLIC_KEY_ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- TODO: 32 bits adr of ram needs more work in vivado aka. axi DMA
    SECRET_KEY_ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- TODO: 32 bits adr of ram needs more work in vivado aka. axi DMA

    o_busy   : out std_logic;
    o_done   : out std_logic;
    i_expose : in  std_logic;
    i_irq    : in  std_logic;
    i_debug  : in  std_logic;
    o_err    : out std_logic_vector(1 downto 0);

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

    o_hash_memsel : out std_logic;

    --REDUCE CORE
    o_red_enable   : out std_logic;
    o_red_len      : out std_logic_vector (31 downto 0);
    o_red_adr      : out std_logic_vector (31 downto 0);
    o_red_bram_sel : out std_logic;
    i_red_done     : in  std_logic;

    -- SAMPLE OIL SPACE
    o_sam_enable   : out std_logic;
    i_sam_done     : in  std_logic;
    o_sam_oil_addr : out std_logic_vector(31 downto 0);

    -- LINEAR COMBINATION 
    o_lin_enable         : out std_logic;
    i_lin_done           : in  std_logic;
    o_lin_bram_halt      : out std_logic; -- DMA Wait for Copy (Big BRAM)
    o_lin_vec_addr       : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_lin_coeffs_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_lin_out_addr       : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_lin_len            : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_lin_demux_bram_sel : out std_logic_vector(4 downto 0);

    -- ADD VECTORS
    o_add_enable         : out std_logic;
    o_add_v1_addr        : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_add_v2_addr        : out std_logic_vector(PORT_WIDTH-1 downto 0);
    o_add_out_addr       : out std_logic_vector(PORT_WIDTH-1 downto 0);
    i_add_done           : in  std_logic;
    o_add_bram_sel       : out std_logic_vector(1 downto 0);
    o_add_demux_bram_sel : out std_logic_vector(4 downto 0);

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
END ENTITY MAYO_KEYGEN_FSM;

ARCHITECTURE RTL OF MAYO_KEYGEN_FSM IS
  TYPE STATES IS (idle, rand0, rand1, rand2, rand3, rand4, rand5, rand6, expand0, expand1, expand2, reduce0, reduce1, reduce2, transpose0, transpose1, transpose2,
      transpose3, transpose4, transpose5, transpose6, transpose7, negate0, negate1, negate2, sample0, sample1, sample2,
      compute0, compute1, compute2, compute3, compute4, compute5, compute6, compute7, compute8, compute9, compute10, compute11,
      compute12, compute13, compute14, compute15, compute16, compute17, compute18, compute19, compute20, compute21, compute22, compute23,
      done, wait_clear,fill_sk0,fill_sk1,fill_sk2,fill_sk3,fill_sk4, cpy0, cpy1, cpy2, cpy3, cpy4, cpy5, debug0, debug1, debug2, debug3, debug4, debug5, debug6, debug7, debug9, debug10, debug11, debug12
      ,debug13,debug14,debug15,debug16, debug20, debug21, debug22, debug23, debug24, debug25, debug26, debug27, debug28, debug29, debug30, debug31);
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
  signal s_hash_mem_sel                   : std_logic                     := '1';
  signal s_tmp                            : std_logic_vector(31 downto 0) := ZERO_32;

  ------------------------------------------------------------------------------
  -- Reg Space (AXI-LITE)
  ------------------------------------------------------------------------------
  signal s_pk_reg : std_logic_vector(31 downto 0); --can copy pk and sk to ddr
  signal s_sk_reg : std_logic_vector(31 downto 0);
  signal s_debug  : std_logic;
  signal s_expose : std_logic;

  -- Control
  signal en     : std_logic := '0';
  signal debug  : std_logic := '0';
  signal expose : std_logic := '0';
  -- Status
  signal busy : std_logic                    := '0';
  signal err  : std_logic_vector(1 downto 0) := "00";

  ------------------------------------------------------------------------------
  -- BRAM
  ------------------------------------------------------------------------------
  signal bram0a : bram_t := DEFAULT_BRAM;
  signal bram0b : bram_t := DEFAULT_BRAM;
  signal bram1a : bram_t := DEFAULT_BRAM;

  ------------------------------------------------------------------------------
  -- DEBUG
  ------------------------------------------------------------------------------
  constant C_DEBUG : std_logic := '0';
  file myFile      : text;
  signal debug_ctr : integer := 0 ;
BEGIN

  o_mem0a_control <= '1' when (state = rand0 or state = rand1 or state = rand2 or state = rand3 or state = rand4 or state = rand5 or state = rand6 or state = cpy0 or state = cpy1 or state = cpy2 or state = cpy3 or state = cpy4 or state = cpy5 or state = fill_sk0 or state = fill_sk1 or state = fill_sk2 or state = fill_sk3 or state = fill_sk4 or state = debug4 or state = debug5 or state = debug6 or state = debug7 or state = debug24 or state = debug25 or state = debug26 or state = debug27 or state = debug28 or state = debug29 or state = debug30 or state = debug31) else '0';
  o_mem0b_control <= '1' when (state = rand0 or state = rand1 or state = rand2 or state = rand3 or state = rand4 or state = rand5 or state = rand6) else '0';
  o_mem1a_control <= '1' when (state = rand0 or state = rand1 or state = rand2 or state = rand3 or state = rand4 or state = rand5 or state = rand6 or state = cpy0 or state = cpy1 or state = cpy2 or state = cpy3 or state = cpy4 or state = cpy5 or state = transpose3 or state = transpose4 or state = transpose5 or state = transpose7 or state = debug0 or state = debug1 or state = debug2 or state = debug3 or state = debug9 or state = debug10 or state = debug11 or state = debug12 or state = debug13 or state = debug14 or state = debug15 or state = debug16 or state = debug20 or state = debug21 or state = debug22 or state = debug23) else '0';

  -- sync compute!
  KEYGEN            : PROCESS (CLK) IS
    variable v_myLine : line;
  BEGIN
    if (rising_edge(clk)) then
      if (RESET = '1') then
        -- add reset werte!
        trng.o               <= DEFAULT_OUT_TRNG;
        bram0a.o             <= DEFAULT_OUT_BRAM;
        bram0b.o             <= DEFAULT_OUT_BRAM;
        bram1a.o             <= DEFAULT_OUT_BRAM;
        index                <= 0 ;
        counter              <= 0;
        p1_counter           <= 0;
        i                    <= 0;
        j                    <= 0;
        s_p1_index           <= 0;
        copy_index           <= 0;
        s_oil_space_index    <= 0;
        s_v1_index           <= 0;
        s_src_index          <= 0;
        s_dest_index         <= 0;
        s_read_bram          <= ZERO_32;
        s_p2_index           <= 0;
        s_tempt_index        <= 0;
        s_oil_space2_index   <= 0;
        s_hash_mem_sel       <= '1';
        o_red_bram_sel       <= '0';
        o_add_bram_sel       <= "00";
        o_lin_demux_bram_sel <= "00000";
        busy                 <= '0';
        err                  <= "00";

      else
        case (state) is
          when idle =>
            o_done <= '0';
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
            trng.o.w      <= '1';
            trng.o.r      <= '0';
            trng.o.data   <= std_logic_vector(to_unsigned(SEED_BYTES*2,PORT_WIDTH));
            bram0b.o.o_we <= "1111";
            bram1a.o.o_we <= "1111";
            bram0a.o.o_we <= "1111";
            state         <= rand2;

          when rand2 =>
            trng.o.w <= '0';
            trng.o.r <= '0';
            state    <= rand1;

          when rand1 =>
            trng.o.w <= '0';
            trng.o.r <= '1';

            if (trng.i.valid = '1') then
              bram0a.o.o_din  <= i_trng_data;
              bram0a.o.o_en   <= '1';
              bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR+index,PORT_WIDTH)) ;
              index           <= index + 4;

              if (index < 16) then -- copy pk seed to big bram (will be overwritten)
                bram0b.o.o_en <= '1';
                bram1a.o.o_en <= '1';

                bram0b.o.o_din <= i_trng_data;
                bram1a.o.o_din <= i_trng_data;

                bram0b.o.o_addr <= std_logic_vector(to_unsigned(PK_BASE_ADR+index,PORT_WIDTH));
                bram1a.o.o_addr <= std_logic_vector(to_unsigned(P1_BASE_ADR+index,PORT_WIDTH));
              end if ;
            else
              bram0a.o.o_en <= '0';
              bram0b.o.o_en <= '0';
              bram1a.o.o_en <= '0';
            end if;

            if (trng.i.done = '1') then
              state <= rand6;
            end if;

          when rand6 =>
            trng.o.r <= '0';

            bram0a.o.o_en  <= '0';
            bram0b.o.o_en  <= '0';
            bram1a.o.o_en  <= '0';
            bram0b.o.o_we  <= "0000";
            bram1a.o.o_we  <= "0000";
            bram0a.o.o_we  <= "0000";
            index          <= 0;
            state          <= expand0;
            s_hash_mem_sel <= '1';

          --------------------------------------------------------------------
          -- EXPAND PK  BEGIN
          -- Hash using big BRAM
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
              state          <= reduce0;
              o_red_bram_sel <= '1';
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
              state          <= sample0;
              s_hash_mem_sel <= '0'; -- Hash using small bram
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
              if (C_DEBUG = '1') then
                state <= debug0; -- [DEBUG ON]
              else
                state <= compute0; --[DEBUG OFF]
              end if;
            end if ;

            --------------------------------------------------------------------
            -- COMPUTEP2
            -- P2 = - O*P1*O^t - O*P1'
            -- Temp = P1*O^t + P1'
            --------------------------------------------------------------------

          --------------------------------------------------------------------
          -- DEBUG START
          --------------------------------------------------------------------
          when debug0 =>
            report "Writing P1";
            file_open(myFile, "P1.txt", write_mode);
            i               <= 0;
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(P1_BASE_ADR,PORT_WIDTH));
            bram1a.o.o_we   <= "0000";
            bram1a.o.o_en   <= '1';
            state           <= debug1;

          when debug1 => --bram delay
            state <= debug2;

          when debug2 =>
            hwrite(v_myLine, bram1a.i.i_dout); -- hex write 
            writeline(myFile, v_myLine);
            bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) +4);
            if (i <= P1_BYTES -1 ) then
              i     <= i+4;
              state <= debug1;
            else
              state <= debug3;
            end if;

          when debug3 =>
            bram1a.o.o_en <= '0';
            file_close(myFile);
            state <= debug4;

          when debug4 =>
            report "Writing Oil Space";
            file_open(myFile, "Oilspace.txt", write_mode);
            i               <= 0;
            bram0a.o.o_addr <= std_logic_vector(to_unsigned(OIL_SPACE_BASE_ADR,PORT_WIDTH));
            bram0a.o.o_we   <= "0000";
            bram0a.o.o_en   <= '1';
            state           <= debug5;

          when debug5 => --bram delay
            state <= debug6;

          when debug6 =>
            hwrite(v_myLine, bram0a.i.i_dout); -- hex write 
            writeline(myFile, v_myLine);
            bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
            if (i <= OIL_SPACE_BYTES -1 ) then
              i     <= i+4;
              state <= debug5;
            else
              state <= debug7;
            end if;

          when debug7 =>
            bram0a.o.o_en <= '0';
            file_close(myFile);
            state <= debug24;

          when debug24 =>
            report "Writing Sk!";
            file_open(myFile, "SK.txt", write_mode);
            i               <= 0;
            bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));
            bram0a.o.o_we   <= "0000";
            bram0a.o.o_en   <= '1';
            state           <= debug25;

          when debug25 =>
            state <= debug26;

          when debug26 =>
            hwrite(v_myLine, bram0a.i.i_dout); -- hex write 
            writeline(myFile, v_myLine);
            bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
            if (i <= SK_RANGE -1 ) then
              i     <= i+4;
              state <= debug25;
            else
              state <= debug27;
            end if;

          when debug27 =>
            bram0a.o.o_en <= '0';
            file_close(myFile);
            state <= compute0;
            --------------------------------------------------------------------
            -- DEBUG END
            --------------------------------------------------------------------

          -- PART 1
          when compute0 =>
            -- IGNORE IF DEBUG OFF! 
            if (C_DEBUG = '1') then
              report "Writing VEC";
              file_open(myFile, "vec.txt", write_mode);
              debug_ctr <= 0;
            end if;

            i <= 0;
            j <= 0;
            -- Lin Combination
            s_p1_index        <= P1_BASE_ADR;        -- fix 
            s_oil_space_index <= OIL_SPACE_BASE_ADR; -- fix 
            p1_counter        <= 0 ;

            -- Add vec
            s_v1_index <= TEMP_BASE_ADR;
            state      <= compute1 ;


          when compute1 => ----------------------------------------------------- I CHECk
            if (i < N-O) then
              s_p1_index <= P1_BASE_ADR + p1_counter*M;
              state      <= compute2 ;
            else
              -- IGNORE IF DEBUG OFF! 
              if (C_DEBUG = '1') then
                file_close(myFile);
              end if;

              state <= compute8;
            end if;

          when compute2 => ----------------------------------------------------- J CHECK
            if (j < O) then
              state <= compute3;
            else
              i     <= i+1 ;
              state <= compute7;
            end if;

          when compute3 => -- Start lin comb
            o_lin_vec_addr    <= std_logic_vector(to_unsigned(s_p1_index,PORT_WIDTH));
            o_lin_coeffs_addr <= std_logic_vector(to_unsigned(s_oil_space_index,PORT_WIDTH));
            o_lin_len         <= std_logic_vector(to_unsigned(N-O-i,PORT_WIDTH));
            o_lin_out_addr    <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH));
            o_lin_enable      <= '1';
            state             <= compute4;

          when compute4 =>
            o_lin_enable <= '0';
            if (i_lin_done = '1') then

              if (C_DEBUG = '1') then
                state <= debug28; --[DEBUG ON] 
              else
                state <= compute5; --[DEBUG OFF]
              end if;

            end if;

          when compute5 =>
            o_add_v1_addr        <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
            o_add_v2_addr        <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH));
            o_add_out_addr       <= std_logic_vector(to_unsigned(s_v1_index,PORT_WIDTH));
            o_add_bram_sel       <= "00";
            o_add_enable         <= '1';
            o_add_demux_bram_sel <= "00011";
            state                <= compute6;

          when compute6 => ----------------------------------------------------- END J 
            o_add_enable <= '0';
            if (i_add_done = '1') then
              j                 <= j+1;
              s_oil_space_index <= s_oil_space_index + (N-O);
              s_v1_index        <= s_v1_index + M;
              state             <= compute2;
            end if;

          --------------------------------------------------------------------
          -- DEBUG Start
          --------------------------------------------------------------------
          when debug28 =>
            bram0a.o.o_addr <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH));
            bram0a.o.o_we   <= "0000";
            bram0a.o.o_en   <= '1';
            debug_ctr       <= 0;
            state           <= debug29;

          when debug29 =>
            state <= debug30;

          when debug30 =>
            hwrite(v_myLine, bram0a.i.i_dout); -- hex write 
            writeline(myFile, v_myLine);
            bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
            if (debug_ctr <= P2VEC_RANGE -1 ) then
              debug_ctr <= debug_ctr+4;
              state     <= debug29;
            else
              state <= debug31;
            end if;

          when debug31 =>
            bram0a.o.o_en <= '0';
            --write(v_myLine, string'(""));
            writeline(myFile, v_myLine);
            state <= compute5;
            --------------------------------------------------------------------
            -- DEBUG END
            --------------------------------------------------------------------

          when compute7 => ----------------------------------------------------- END I
            p1_counter <= p1_counter + (N-O-i-1);
            -- update ctrs for next round
            s_oil_space_index <= OIL_SPACE_BASE_ADR + i;
            s_v1_index        <= TEMP_BASE_ADR + i*O*M;
            j                 <= 0;
            state             <= compute1;

            --------------------------------------------------------------------
            -- DEBUG START
            --------------------------------------------------------------------

          when debug9 =>
            report "Writing Temp";
            file_open(myFile, "Temp1.txt", write_mode);
            i               <= 0;
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(TEMP_BASE_ADR,PORT_WIDTH));
            bram1a.o.o_we   <= "0000";
            bram1a.o.o_en   <= '1';
            state           <= debug10;

          when debug10 => --bram delay
            state <= debug11;

          when debug11 =>
            hwrite(v_myLine, bram1a.i.i_dout); -- hex write 
            writeline(myFile, v_myLine);
            bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) +4);
            if (i <= TEMP_RANGE -1 ) then
              i     <= i+4;
              state <= debug10;
            else
              state <= debug12;
            end if;

          when debug12 =>
            bram1a.o.o_en <= '0';
            file_close(myFile);
            state <= compute8;

            --------------------------------------------------------------------
            -- DEBUG END
            --------------------------------------------------------------------

          -- PART 2
          when compute8 =>
            i <= 0;
            j <= 0;

            -- Add vec
            s_v1_index           <= TEMP_BASE_ADR;
            s_p1_index           <= P1_BASE_ADR;
            o_add_bram_sel       <= "01";
            o_add_demux_bram_sel <= "00100";
            state                <= compute9 ;

          when compute9 =>
            if (i < N-O) then
              state <= compute10;
            else
              if (C_DEBUG = '1') then
                state <= debug20;
              else
                state <= transpose0; -- [DEBUG OFF]
              end if;

            end if;

          when compute10 =>
            if (j < O) then
              s_p1_index <= P1_BASE_ADR + p1_counter*M;
              state      <= compute11;
            else
              i     <= i+1 ;
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
            s_v1_index <= TEMP_BASE_ADR + i*O*M;
            j          <= 0;
            state      <= compute9;

            --------------------------------------------------------------------
            -- DEBUG START
            --------------------------------------------------------------------

          when debug20 =>
            report "Writing Temp Pre T";
            file_open(myFile, "Temp2.txt", write_mode);
            i               <= 0;
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(TEMP_BASE_ADR,PORT_WIDTH));
            bram1a.o.o_we   <= "0000";
            bram1a.o.o_en   <= '1';
            state           <= debug21;

          when debug21 => --bram delay
            state <= debug22;

          when debug22 =>
            hwrite(v_myLine, bram1a.i.i_dout); -- hex write 
            writeline(myFile, v_myLine);
            bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) +4);
            if (i <= TEMP_RANGE -1 ) then
              i     <= i+4;
              state <= debug21;
            else
              state <= debug23;
            end if;

          when debug23 =>
            bram1a.o.o_en <= '0';
            file_close(myFile);
            state <= transpose0;

            --------------------------------------------------------------------
            -- DEBUG END
            --------------------------------------------------------------------

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
              state        <= transpose2;
              s_src_index  <= TEMP_BASE_ADR + i*M;
              s_dest_index <= TEMPT_BASE_ADR + i*(N-O)*M;
            else
              if (C_DEBUG ='1') then
                state <= debug13;
              else
                state <= compute14; --DEBUG OFF
              end if;
            end if;

          when transpose2 =>
            if (j < N-O) then
              state <= transpose3;
            else
              j     <= 0 ;
              i     <= i+1;
              state <= transpose1;
            end if;

          when transpose3 => --read
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(s_src_index + copy_index, PORT_WIDTH));
            bram1a.o.o_we   <= "0000";
            bram1a.o.o_en   <= '1';
            state           <= transpose7;

          when transpose7 =>
            state <= transpose4;

          when transpose4 => -- writeback
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(s_dest_index + copy_index,PORT_WIDTH));
            bram1a.o.o_din  <= i_mem1a_dout;
            bram1a.o.o_we   <= "1111";
            copy_index      <= copy_index +4;
            state           <= transpose5;

          when transpose5 =>         --write 
            if (copy_index < M) then -- keep copying copying M Bytes!
              state <= transpose3;
            else
              bram1a.o.o_we <= "0000";
              bram1a.o.o_en <= '0';
              state         <= transpose6;
            end if;

          when transpose6 =>
            copy_index   <= 0;
            j            <= j+1;
            s_dest_index <= s_dest_index + M;
            s_src_index  <= s_src_index + O*M;
            state        <= transpose2;
            ------------------------------------------------------------------
            -- END TRANSPOSE TEMP -> TEMPT
            ------------------------------------------------------------------

          --------------------------------------------------------------------
          -- DEBUG START
          --------------------------------------------------------------------
          when debug13 =>
            report "Writing Tempt!";
            file_open(myFile, "Tempt1.txt", write_mode);
            i               <= 0;
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(TEMPT_BASE_ADR,PORT_WIDTH));
            bram1a.o.o_we   <= "0000";
            bram1a.o.o_en   <= '1';
            state           <= debug14;

          when debug14 => --bram delay
            state <= debug15;

          when debug15 =>
            hwrite(v_myLine, bram1a.i.i_dout); -- hex write 
            writeline(myFile, v_myLine);
            bram1a.o.o_addr <= std_logic_vector(unsigned(bram1a.o.o_addr) +4);
            if (i <= TEMPT_RANGE -1 ) then
              i     <= i+4;
              state <= debug14;
            else
              state <= debug16;
            end if;

          when debug16 =>
            bram1a.o.o_en <= '0';
            file_close(myFile);
            state <= compute14;
            --------------------------------------------------------------------
            -- DEBUG END
            --------------------------------------------------------------------

          when compute14 =>
            counter       <= 0;
            s_p1_index    <= TEMPT_BASE_ADR;
            s_tempt_index <= TEMPT_BASE_ADR;

            s_oil_space_index  <= OIL_SPACE_BASE_ADR;
            s_oil_space2_index <= OIL_SPACE_BASE_ADR;

            s_p2_index           <= PK_BASE_ADR + SEED_BYTES; -- PK_P2
            s_v1_index           <= PK_BASE_ADR + SEED_BYTES;
            o_add_bram_sel       <= "10";
            o_add_demux_bram_sel <= "00100";
            i                    <= 0;
            j                    <= 0;
            state                <= compute23;

          when compute23 =>
            if (i < O) then
              -- update indices
              j                  <= i;
              s_oil_space2_index <= OIL_SPACE_BASE_ADR + i *(N-O);
              s_p1_index         <= TEMPT_BASE_ADR + i*(N-O)*M;
              state              <= compute15 ;
            else
              state <= negate0;
            end if;

          when compute15 =>
            if (j < O) then
              state <= compute16;
            else
              i <= i+1;
              -- update indices
              s_oil_space_index <= s_oil_space_index + N-O;
              s_tempt_index     <= s_tempt_index + (N-O)*M;
              state             <= compute23;
            end if;

          when compute16 =>
            o_lin_vec_addr    <= std_logic_vector(to_unsigned(s_p1_index, PORT_WIDTH));        -- TEMPT
            o_lin_coeffs_addr <= std_logic_vector(to_unsigned(s_oil_space_index, PORT_WIDTH)); -- OIL_SPACE
            o_lin_len         <= std_logic_vector(to_unsigned(N-O, PORT_WIDTH));
            o_lin_out_addr    <= std_logic_vector(to_unsigned(s_p2_index, PORT_WIDTH)); -- P2
            o_lin_enable      <= '1';
            state             <= compute17;

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
            state              <= compute15;

          when negate0 => -- P2 = -P2
            o_neg_enable <= '1';
            o_neg_len    <= std_logic_vector(to_unsigned(P2_BYTES,PORT_WIDTH));
            o_neg_adr    <= std_logic_vector (to_unsigned(PK_BASE_ADR + SEED_BYTES,PORT_WIDTH));
            state        <= negate1;

          when negate1 =>
            if (i_neg_done = '1') then
              if (C_DEBUG = '1') then
                state <= fill_sk0;
                i     <= 0 ;
              else
                if (s_expose ='1') then
                  copy_index <= 0;
                  state      <= cpy0;
                else
                  state <= done; -- DEBUG OFF
                end if;
              end if;
            end if;

          --------------------------------------------------------------------
          -- Copy PK && and SK to CPU SPACE
          --------------------------------------------------------------------
          when cpy0 => --read
            bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));
            bram0a.o.o_we   <= "0000";
            bram0a.o.o_en   <= '1';
            state           <= cpy1;

          when cpy1 =>
            bram1a.o.o_we <= "0000";
            bram1a.o.o_en <= '0';
            state         <= cpy2;

          when cpy2 => -- writeback
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(CPU_SPACE_SK_BASE_ADR,PORT_WIDTH) + copy_index);
            bram1a.o.o_din  <= bram0a.i.i_dout;
            bram1a.o.o_en   <= '1';
            bram1a.o.o_we   <= "1111";

            if (copy_index < SK_RANGE ) then -- keep copying copying 
              copy_index      <= copy_index +4;
              bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
              state           <= cpy1;
            else
              bram0a.o.o_we <= "0000";
              bram0a.o.o_en <= '0';
              copy_index    <= 0;
              state         <= cpy3;
            end if;

          when cpy3 => --read
            bram0a.o.o_addr <= std_logic_vector(to_unsigned(PK_BASE_ADR,PORT_WIDTH));
            bram0a.o.o_we   <= "0000";
            bram0a.o.o_en   <= '1';
            state           <= cpy1;

          when cpy4 =>
            bram1a.o.o_we <= "0000";
            bram1a.o.o_en <= '0';
            state         <= cpy2;

          when cpy5 => -- writeback
            bram1a.o.o_addr <= std_logic_vector(to_unsigned(CPU_SPACE_PK_BASE_ADR,PORT_WIDTH) + copy_index);
            bram1a.o.o_din  <= bram0a.i.i_dout;
            bram1a.o.o_en   <= '1';
            bram1a.o.o_we   <= "1111";

            if (copy_index < PK_RANGE ) then -- keep copying copying 
              copy_index      <= copy_index +4;
              bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
              state           <= cpy1;
            else
              bram0a.o.o_we <= "0000";
              bram0a.o.o_en <= '0';
              state         <= done;
            end if;

          ----------------------------------------------------------------------
          -- DEBUG
          ----------------------------------------------------------------------
          when fill_sk0 =>
            report "Writing Pk!";
            file_open(myFile, "PK.txt", write_mode);
            i               <= 0;
            bram0a.o.o_addr <= std_logic_vector(to_unsigned(PK_BASE_ADR,PORT_WIDTH));
            bram0a.o.o_we   <= "0000";
            bram0a.o.o_en   <= '1';
            state           <= fill_sk1;

          when fill_sk1 => --bram delay
            state <= fill_sk2;

          when fill_sk2 =>
            hwrite(v_myLine, bram0a.i.i_dout); -- hex write 
            writeline(myFile, v_myLine);
            bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
            if (i <= PK_BYTES -1) then
              i     <= i+4;
              state <= fill_sk1;
            else
              state <= fill_sk3;
            end if;

          when fill_sk3 =>
            bram0a.o.o_en <= '0';
            file_close(myFile);
            state <= done;

          when done =>
            --file_close(file_sk);
            o_done <= '1';
            state  <= wait_clear;

          when wait_clear =>
            if (i_irq = '1' or s_debug = '1') then
              state <= idle;
            end if;

          when others =>
            null;
        end case;

      END IF;
    end if;

  END PROCESS KEYGEN;

  o_busy <= busy;
  o_err  <= err;

  o_hash_memsel <= s_hash_mem_sel;

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
