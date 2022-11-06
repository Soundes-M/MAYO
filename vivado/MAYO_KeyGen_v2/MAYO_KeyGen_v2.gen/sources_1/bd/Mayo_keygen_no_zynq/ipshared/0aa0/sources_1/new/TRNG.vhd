--------------------------------------------------------------------------------
-- Title       : <Title Block>
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : TRNG.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de
-- Company     : TU Berlin
-- Created     : Thu Jun  9 16:56:13 2022
-- Last update : Mon Sep  5 23:11:37 2022
-- Platform    : Default Part Number
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: 
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TRNG IS
    GENERIC (
        IS_SIM : boolean
    );
    PORT (
        CLK_I        : IN  std_logic;
        RST          : IN  std_logic;
        R_I          : IN  std_logic;
        W_I          : IN  std_logic;
        TRNG_DATA_I  : IN  std_logic_vector(31 DOWNTO 0); -- SIZE in bytes
        TRNG_DATA_O  : OUT std_logic_vector(31 DOWNTO 0);
        TRNG_VALID_O : OUT std_logic;
        TRNG_DONE_O  : OUT std_logic
    );
END ENTITY TRNG;

ARCHITECTURE BEHAVIORAL OF TRNG IS

    -- control reg
    CONSTANT CTRL_DATA_SIZE_LSB_C : natural := 0;
    CONSTANT CTRL_DATA_SIZE_MSB_C : natural := 31;
    -- reserved (CAN BE EXTENDED)

    COMPONENT NEOTRNG IS
        GENERIC (
            NUM_CELLS     : natural;
            NUM_INV_START : natural;
            NUM_INV_INC   : natural;
            NUM_INV_DELAY : natural;
            POST_PROC_EN  : boolean;
            IS_SIM        : boolean
        );
        PORT (
            CLK_I    : IN  std_ulogic;
            ENABLE_I : IN  std_ulogic;
            DATA_O   : OUT std_ulogic_vector(7 DOWNTO 0);
            VALID_O  : OUT std_ulogic
        );
    END COMPONENT;

    COMPONENT fifo_generator_0
        PORT (
            clk          : IN  STD_LOGIC;
            srst         : IN  STD_LOGIC;
            din          : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            wr_en        : IN  STD_LOGIC;
            rd_en        : IN  STD_LOGIC;
            dout         : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            full         : OUT STD_LOGIC;
            almost_full  : OUT STD_LOGIC;
            empty        : OUT STD_LOGIC;
            almost_empty : OUT STD_LOGIC;
            valid        : OUT STD_LOGIC
        );
    END COMPONENT;

    -- data FIFO --
    TYPE FIFO_T IS RECORD
        wr_en        : std_logic ;                   -- write enable
        rd_en        : std_logic ;                   -- read enable
        din          : std_logic_vector(7 DOWNTO 0); -- write data
        dout         : std_logic_vector(7 DOWNTO 0); -- read data
        full         : std_logic;
        almost_full  : std_logic;
        empty        : std_logic;
        almost_empty : std_logic;
        valid        : std_logic;
    END RECORD;
    SIGNAL FIFO : FIFO_T := (
            wr_en        => '0',
            rd_en        => '0',
            din          => (others => '0'),
            dout         => (others => '0'),
            full         => '0',
            almost_full  => '0',
            empty        => '1',
            almost_empty => '0',
            valid        => '0'
    );

    SIGNAL random : std_ulogic_vector(7 DOWNTO 0) := (others => '0');

    -- control
    signal enable           : std_logic := '0';
    signal out_byte_counter : integer   := 0;
    signal done             : std_logic := '0';
    type read_state_t is (idle_s, start_s, reading_s, done_s);
    signal read_state : read_state_t := idle_s;
    type rng_state_t is (reset_s, empty_s , write_s, full_s);
    signal rng_state : rng_state_t := reset_s;

    -- arbiter
    signal OUT_SIZE : integer := 0;
BEGIN

    assert (IS_SIM = true) report "Simulation mode ON!" severity warning;

    -- FIFO   
    fifo_inst : fifo_generator_0
        PORT MAP (
            clk          => clk_i,
            srst         => RST,
            din          => fifo.din,
            wr_en        => fifo.wr_en,
            rd_en        => fifo.rd_en,
            dout         => fifo.dout,
            full         => fifo.full,
            almost_full  => fifo.almost_full,
            empty        => fifo.empty,
            almost_empty => fifo.almost_empty,
            valid        => fifo.valid
        );

    -- RANDOM NUMBER GENERATOR
    NEOTRNG_INST : NEOTRNG
        GENERIC MAP(
            -- Standard simple configuration
            NUM_CELLS     => 3,
            NUM_INV_START => 5,
            NUM_INV_INC   => 2,
            NUM_INV_DELAY => 2,
            POST_PROC_EN  => false,
            IS_SIM        => IS_SIM
        )
        PORT MAP(
            CLK_I    => CLK_I,
            ENABLE_I => enable,
            DATA_O   => random,
            VALID_O  => fifo.wr_en
        );
    TRNG_DONE_O <= done;
    -- done <= '1' when (OUT_SIZE = out_byte_counter) else '0';

    RW_ACCESS  : PROCESS (CLK_I) IS
        VARIABLE i : natural := 0;
    BEGIN
        IF (CLK_I'event AND CLK_I = '1') THEN
            if (RST = '1') then -- HW reset 
                OUT_SIZE         <= 0 ;
                out_byte_counter <= 0;
                i                := 0;
                TRNG_VALID_O     <= '0';
                read_state       <= idle_s;
            else
                if (w_i = '1') then -- write params
                    OUT_SIZE         <= to_integer(unsigned(TRNG_DATA_I(CTRL_DATA_SIZE_MSB_C DOWNTO CTRL_DATA_SIZE_LSB_C)));
                    out_byte_counter <= 0;
                    i                := 0;
                    TRNG_VALID_O     <= '0';
                    read_state       <= start_s;
                end if;

                if (r_i = '1') then -- read random bytes      
                    case read_state is
                        when start_s =>
                            fifo.rd_en   <= '1';
                            i            := 0;
                            TRNG_data_o  <= (others => '0');
                            TRNG_VALID_O <= '0';
                            read_state   <= reading_s;
                        when reading_s =>
                            if (i = 0 ) then
                                TRNG_data_o  <= (others => '0');
                                TRNG_VALID_O <= '0';
                            end if;
                            if (fifo.valid = '1') then
                                TRNG_data_o(7 + 8 * i DOWNTO i * 8) <= fifo.dout;
                                out_byte_counter                    <= out_byte_counter +1;
                                if (i < 3) then
                                    i := i + 1;
                                else
                                    TRNG_VALID_O <= '1'; -- wrote 4 bytes! 
                                    i            := 0 ;
                                end if;
                                --report "TRNG: dout=0x" & to_hstring(fifo.dout);
                            end if;
                            if (out_byte_counter = OUT_SIZE -1) then
                                fifo.rd_en <= '0';
                                read_state <= done_s;
                                done       <= '1';
                            end if;

                        when done_s =>
                            done         <= '0';
                            TRNG_VALID_O <= '0';
                            read_state   <= idle_s;
                            report "TRNG: Done." severity note;
                        when idle_s =>
                            done         <= '0';
                            TRNG_data_o  <= (others => '0');
                            TRNG_VALID_O <= '0';

                        when others =>
                            null;
                    end case;
                end if;
            end if;
        END IF;

    END PROCESS RW_ACCESS;

    --RNG Store FSM 
    RNG_STORE_FSM : PROCESS(clk_i) is
    begin
        if rising_edge(clk_i) then
            if RST ='1' then
                rng_state <= reset_s;
            else
                case rng_state is
                    when reset_s =>
                        if (fifo.empty = '1' and fifo.full = '0') then -- FIFO start empty 
                            rng_state <= empty_s;
                        end if;
                    when empty_s =>    -- can also be seen as NOT FULL
                        enable <= '1'; -- enables neoTRNG
                        if fifo.almost_full = '1' then
                            enable    <= '0';
                            rng_state <= full_s; -- NO overflow is allowed
                        end if;
                    when full_s =>
                        if (fifo.almost_full = '0') then -- ADD more random data to FIFO
                            rng_state <= empty_s;
                        end if;
                    when others =>
                        report "TRNG OTHERS" severity warning;
                        rng_state <= reset_s;
                end case;
            end if;
        end if;
    end process RNG_STORE_FSM;

    -- convert unsigned to signed. 
    OUT_CONVERT : PROCESS (fifo.wr_en) IS
    BEGIN
        fifo.din <= std_logic_vector(random);
    end process OUT_CONVERT;

END ARCHITECTURE BEHAVIORAL;