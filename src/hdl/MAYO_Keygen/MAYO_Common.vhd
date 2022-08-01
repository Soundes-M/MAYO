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

  FUNCTION P1MONOMIALS (N : NATURAL; O : NATURAL) RETURN real;

  -- MOD Alternative
  FUNCTION BARRETT_REDUCTION(A  : NATURAL) return natural;
  FUNCTION MERSENNE_REDUCTION(A : NATURAL) return natural;


  -- Parameters ---
  -- MAYO
  CONSTANT PRIME           : positive := 31; -- q =31
  CONSTANT PRIME_BITS      : positive := 5;
  CONSTANT M               : positive := 60; -- #Equations in public key map P
  CONSTANT N               : positive := 62; -- #Variables in each QE of P
  CONSTANT O               : positive := 6;  -- Dimension of the secret linear subspace
  CONSTANT K               : positive := 10; -- Used to construct a larger map P*
  CONSTANT SEED_BYTES      : positive := 16;
  CONSTANT SK_BYTES        : positive := SEED_BYTES *2;
  CONSTANT HASH_BYTES      : positive := 32;
  CONSTANT OIL_SPACE_BYTES : positive := (O*(N-O)) ;

  ------------------------------------------------------------------------------
  -- Address Mapping (In BRAM) -32Bits ADR Length 
  -- SECRET KEY (SK)
  CONSTANT SK_BASE_ADR : positive := 16#0#;
  CONSTANT SK_RANGE    : positive := SK_BYTES / 4;
  CONSTANT SK_HIGH_ADR : positive := SK_BASE_ADR + SK_RANGE -1;
  -- Sample_oil_space
  CONSTANT RANDOMNESS_BASE_ADR : positive := SK_HIGH_ADR +1;
  CONSTANT RANDOMNESS_RANGE    : positive := OIL_SPACE_BYTES*2 / 4;
  CONSTANT RANDOMNESS_HIGH_ADR : positive := RANDOMNESS_BASE_ADR + RANDOMNESS_RANGE;

  CONSTANT OIL_SPACE_BASE_ADR : positive := RANDOMNESS_HIGH_ADR +1;
  CONSTANT OIL_SPACE_RANGE :  positive := OIL_SPACE_BYTES / 4 ;
  CONSTANT OIL_SPACE_HIGH_ADR : positive := OIL_SPACE_BASE_ADR +  OIL_SPACE_RANGE;



    END PACKAGE MAYO_COMMON;

  -- PACKAGE BODY

  PACKAGE BODY MAYO_COMMON IS

    FUNCTION P2KC2_MONO (K : NATURAL) RETURN real IS
    BEGIN
      RETURN real((K * (K + 1)) / 2);
    END FUNCTION;

    FUNCTION P1MONOMIALS (N : natural; O : natural) RETURN real IS
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
