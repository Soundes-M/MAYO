--------------------------------------------------------------------------------
-- Title       : Common Package
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Common.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Platform    : Designed for Zynq 7000 Series
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
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- PACKAGE
PACKAGE MAYO_COMMON IS

  -- USEFUL FUNCTIONS

  FUNCTION P2KC2_MONO (K : NATURAL) RETURN real;

  FUNCTION P1MONOMIALS_F (N : NATURAL; O : NATURAL) RETURN real;

  -- MOD Alternative
  FUNCTION BARRETT_REDUCTION(A  : NATURAL) return natural;
  FUNCTION MERSENNE_REDUCTION(A : NATURAL) return natural;


  -- Parameters ---
  -- MAYO
  CONSTANT PRIME      : positive := 31; -- q =31
  CONSTANT PRIME_BITS : positive := 5;
  CONSTANT M          : positive := 60; -- #Equations in public key map P
  CONSTANT N          : positive := 62; -- #Variables in each QE of P
  CONSTANT O          : positive := 6;  -- Dimension of the secret linear subspace
  CONSTANT K          : positive := 10; -- Used to construct a larger map P*

  CONSTANT SEED_BYTES : positive := 16;
  CONSTANT SK_BYTES   : positive := SEED_BYTES *2;
  CONSTANT PK_BYTES   : positive := SEED_BYTES + M*O*(O+1)/2; -- (PK_P2(0) + M*O*(O+1)/2) = (((0) + SEED_BYTES) + M*O*(O+1)/2)


  -- Number of coefficients that are needed to characterize a quadratic polynomial with N variables
  CONSTANT MONOMIALS : positive := (N*(N+1)/2);

  --(N-O)*(N-O+1)/2 coefficients belong to the monoms xi*xj where 1 <= i <= j <= N-O (upper left part of matrix P)
  --(N-O)*O coefficients belong to the monoms xi*xj where 1 <= i <= N-O and N-O+1 <= j <= N (upper right part of matrix P)
  CONSTANT P1MONOMIALS : positive := (N-O)*(N-O+1)/2 + (N-O)*O;
  -- (O*(O+1)/2 coefficients belong to the monoms xi*xj where N-O+1 <= i <= j <= N (lower right part of matrix P)
  CONSTANT P2MONOMIALS : positive := O*(O+1)/2;

  CONSTANT P1_BYTES : positive := M*P1MONOMIALS; -- Number of coefficients in all m quadratic polynomials belonging to P1
  CONSTANT P2_BYTES : positive := M*P2MONOMIALS; --  Number of coefficients in all m quadratic polynomials belonging to P2

  CONSTANT HASH_BYTES : positive := 32;

  CONSTANT OIL_SPACE_BYTES : positive := (O*(N-O));

  CONSTANT SIG_BYTES     : positive := SEED_BYTES + (K*N);
  CONSTANT MESSAGE_BYTES : positive := 100; -- Can be changed
  CONSTANT DIGEST_BYTES  : positive := M;   -- Can be changed


  CONSTANT SK_EXP_P1       : natural  := 0; -- Can be changed
  CONSTANT SK_EXP_OIL      : positive := SK_EXP_P1 + P1_BYTES;
  CONSTANT SK_EXP_BILINEAR : positive := SK_EXP_OIL + OIL_SPACE_BYTES;
  CONSTANT SK_EXP_BYTES    : positive := P1_BYTES + OIL_SPACE_BYTES + (M*(N-O)*O);

  ------------------------------------------------------------------------------
  -- ADDRESSE MAPPING EXPLAINED: (32 Bits Address space)
  -- 
  -- 0x0 --> BASE ADR
  -- 0x4 --> ...
  -- 0x8 --> ...
  -- 0xC --> 0xffff ffff --> High ADR -> RANGE (SIZE) = 16 Bytes (0+16 -4 )
  -- **********
  -- 0x10 --> Next Data 
  -- 
  ------------------------------------------------------------------------------
  -- Address Mapping (In BRAM I) (SMALL DATA)
  ------------------------------------------------------------------------------
  CONSTANT BRAM_I_PORT_WIDTH : natural := 31;
  CONSTANT BRAM_I_SIZE       : natural := 8_192; -- Bytes

  -- SECRET KEY (SK)
  CONSTANT SK_BASE_ADR : natural  := 0;
  CONSTANT SK_RANGE    : positive := SK_BYTES ;
  CONSTANT SK_HIGH_ADR : positive := SK_BASE_ADR + SK_RANGE -4;

  -- SK Components
  CONSTANT Sk_PRIVATE_SEED_ADR : positive := SK_BASE_ADR + SEED_BYTES;
  CONSTANT SK_PUBLIC_SEED_ADR  : natural  := SK_BASE_ADR;

  -- Sample_oil_space
  CONSTANT RANDOMNESS_BASE_ADR : positive := SK_HIGH_ADR + 4;
  CONSTANT RANDOMNESS_RANGE    : positive := OIL_SPACE_BYTES*2 ;
  CONSTANT RANDOMNESS_HIGH_ADR : positive := RANDOMNESS_BASE_ADR + RANDOMNESS_RANGE - 4;

  CONSTANT OIL_SPACE_BASE_ADR : positive := RANDOMNESS_HIGH_ADR + 4;
  CONSTANT OIL_SPACE_RANGE    : positive := OIL_SPACE_BYTES ;
  CONSTANT OIL_SPACE_HIGH_ADR : positive := OIL_SPACE_BASE_ADR + OIL_SPACE_RANGE - 4;

  -- PUBLIC KEY (PK)
  CONSTANT PK_BASE_ADR : positive := OIL_SPACE_HIGH_ADR + 4 ;
  CONSTANT PK_RANGE    : positive := PK_BYTES ;
  CONSTANT PK_HIGH_ADR : positive := PK_BASE_ADR + PK_RANGE - 4;

  -- COMPUTEP2 VEC
  CONSTANT P2VEC_BASE_ADR : positive := PK_HIGH_ADR + 4;
  CONSTANT P2VEC_RANGE    : positive := M;
  CONSTANT P2VEC_HIGH_ADR : positive := P2VEC_BASE_ADR + P2VEC_RANGE -4 ;

  -- Signature (LOCAL)
  CONSTANT SIG_BASE_ADR : positive := P2VEC_HIGH_ADR + 4;
  CONSTANT SIG_RANGE    : positive := SIG_BYTES;
  CONSTANT SIG_HIGH_ADR : positive := SIG_BASE_ADR + SIG_RANGE -4;

  -- Digest
  CONSTANT DIG_BASE_ADR : positive := SIG_HIGH_ADR + 4;
  CONSTANT DIG_RANGE    : positive := DIGEST_BYTES;
  CONSTANT DIG_HIGH_ADR : positive := DIG_BASE_ADR + DIG_RANGE -4;

  -- Message (LOCAL)
  CONSTANT MSG_BASE_ADR : positive := DIG_HIGH_ADR +4;
  CONSTANT MSG_RANGE    : positive := MESSAGE_BYTES;
  CONSTANT MSG_HIGH_ADR : positive := MSG_BASE_ADR + MSG_RANGE -4;

  ------------------------------------------------------------------------------
  -- Address Mapping (In BRAM II) (BIG DATA1)
  ------------------------------------------------------------------------------
  CONSTANT BRAM_II_PORT_WIDTH : natural := 31;
  CONSTANT BRAM_II_SIZE       : natural := 262_144; -- Bytes

  -----------------KEYGEN MEMORY SPACE-----------------------------
  CONSTANT P1_BASE_ADR : natural  := 16#0#;
  CONSTANT P1_RANGE    : positive := P1_BYTES ;
  CONSTANT P1_HIGH_ADR : positive := P1_BASE_ADR + P1_RANGE - 4;

  -- P1Temp = P1*O^t + P1'
  CONSTANT TEMP_BASE_ADR : positive := P1_HIGH_ADR + 4;
  CONSTANT TEMP_RANGE    : positive := M*(N-O)*O;
  CONSTANT TEMP_HIGH_ADR : positive := TEMP_BASE_ADR + TEMP_RANGE - 4;

  CONSTANT TEMPT_BASE_ADR : positive := TEMP_HIGH_ADR + 4 ;
  CONSTANT TEMPT_RANGE    : positive := M*(N-O)*O;
  CONSTANT TEMPT_HIGH_ADR : positive := TEMPT_BASE_ADR + TEMPT_RANGE - 4;

  -----------------SIGNING MEMORY SPACE-----------------------------
  CONSTANT SK_EXP_BASE_ADR : natural  := 16#0#;
  CONSTANT SK_EXP_RANGE    : positive := SK_EXP_BYTES;
  CONSTANT SK_EXP_HIGH_ADR : positive := SK_EXP_BASE_ADR + SK_EXP_RANGE -4;
  -- For P1, oilspace etc.. use offsets

  -- ADDRESS ZYNQ MEMORY SPACE [CPU SPACE]
  -----------------------> COPY WHEN EXPOSE = 1! 
  -- Read from, if CPU provides data
  -- RESERVED 8K :)
  -- CONSTANT OFFSET PADDING
  CONSTANT OFFSET : positive := 8_192;

  -- PK [LAST WORD]
  CONSTANT CPU_SPACE_PK_HIGH_ADR  : positive := BRAM_II_SIZE - OFFSET;
  CONSTANT CPU_SPACE_PK_RANGE_ADR : positive := SK_BYTES;
  CONSTANT CPU_SPACE_PK_BASE_ADR  : positive := CPU_SPACE_PK_HIGH_ADR - CPU_SPACE_PK_RANGE_ADR +4;

  -- SK
  CONSTANT CPU_SPACE_SK_HIGH_ADR  : positive := CPU_SPACE_PK_BASE_ADR -4;
  CONSTANT CPU_SPACE_SK_RANGE_ADR : positive := PK_BYTES;
  CONSTANT CPU_SPACE_SK_BASE_ADR  : positive := CPU_SPACE_SK_HIGH_ADR - CPU_SPACE_SK_RANGE_ADR +4;

  -- Message 
  CONSTANT CPU_SPACE_MESSAGE_HIGH_ADR : positive := CPU_SPACE_PK_BASE_ADR -4;
  CONSTANT CPU_SPACE_MESSAGE_RANGE    : positive := MESSAGE_BYTES;
  CONSTANT CPU_SPACE_MESSAGE_BASE_ADR : positive := CPU_SPACE_MESSAGE_HIGH_ADR - CPU_SPACE_MESSAGE_RANGE +4;

  -- Signature 
  CONSTANT CPU_SPACE_SIG_HIGH_ADR : positive := CPU_SPACE_MESSAGE_BASE_ADR -4;
  CONSTANT CPU_SPACE_SIG_RANGE    : positive := SIG_BYTES;
  CONSTANT CPU_SPACE_SIG_BASE_ADR : positive := CPU_SPACE_SIG_HIGH_ADR - CPU_SPACE_SIG_RANGE+4;

  ------------------------------------------------------------------------------
  -- Address Mapping (In BRAM III) (BIG DATA2)
  ------------------------------------------------------------------------------
  CONSTANT BRAM_III_PORT_WIDTH : natural := 31;
  CONSTANT BRAM_III_SIZE       : natural := 262_144; -- Bytes

  -----------------SIGNING MEMORY SPACE-----------------------------
  CONSTANT P1P1T_BASE_ADR : natural  := 16#0#;
  CONSTANT P1P1T_RANGE    : positive := M * (N - O) * (N - O);
  CONSTANT P1P1T_HIGH_ADR : positive := P1P1T_BASE_ADR + P1P1T_RANGE -4;

  CONSTANT BILINEAR_TEMP_BASE_ADR : positive := P1P1T_HIGH_ADR + 4 ;
  CONSTANT BILINEAR_TEMP_RANGE    : positive := M * (N - O) * O;
  CONSTANT BILINEAR_TEMP_HIGH_ADR : positive := BILINEAR_TEMP_BASE_ADR + BILINEAR_TEMP_RANGE -4;

  ------------------------------------------------------------------------------
  -- Address Mapping DDR MAPPING  [DISCARDED]
  ------------------------------------------------------------------------------
  -- Address Mapping 
  CONSTANT DDR_BASE_ADR : natural  := 16#0#;       -- TODO CHANGE THIS
  CONSTANT DDR_RANGE    : positive := 536_870_912; -- Zedboard --> 512MB DRAM TODO: Chnage this!
  CONSTANT DDR_HIGH_ADR : positive := DDR_BASE_ADR + DDR_RANGE - 4;

END PACKAGE MAYO_COMMON;

-- PACKAGE BODY

PACKAGE BODY MAYO_COMMON IS

  FUNCTION P2KC2_MONO (K : NATURAL) RETURN real IS
  BEGIN
    RETURN real((K * (K + 1)) / 2);
  END FUNCTION;

  FUNCTION P1MONOMIALS_F (N : natural; O : natural) RETURN real IS
  BEGIN
    return real((N - O) * (N - O + 1) / 2 + (N - O) * O);
  END FUNCTION;

  function BARRETT_REDUCTION(A : NATURAL) return natural is
    -- https://en.wikipedia.org/wiki/Barrett_reduction
    -- k = 9
    -- m = [512/31] = 16
    -- e = 1/31 - 16/512 = 16/15872
    --> A < 992 (Tested on 1022)
    variable q   : integer ;
    variable res : natural;
  begin
    q   := A * 16;
    q   := to_integer(to_unsigned(q,16) srl 9);
    res := A - (q * PRIME);
    if (PRIME <= res) then
      res := res - PRIME;
    end if;
    return res;
  end function BARRETT_REDUCTION;

  function MERSENNE_REDUCTION (A : NATURAL) return natural is
    -- 31 = 2^5 -1  --> S = 5
    -- No MULT Op
    variable i : integer;
  begin
    -- i := to_integer(to_unsigned(A,16) and to_unsigned(PRIME,16));
    i := to_integer(to_unsigned(A,16) and to_unsigned(PRIME,16) + (to_unsigned(A,16) srl 5));
    if (PRIME <= i) then
      i := i - PRIME;
    end if;
    return i;
  end function MERSENNE_REDUCTION;

END PACKAGE BODY MAYO_COMMON;
