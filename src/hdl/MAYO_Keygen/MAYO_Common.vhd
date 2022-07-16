LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- PACKAGE
PACKAGE MAYO_COMMON IS

  -- USEFUL FUNCTIONS

  FUNCTION P2KC2_MONO (K : positive) RETURN real;

  FUNCTION P1MONOMIALS (N : positive; O : POSITIVE) RETURN real;

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
  CONSTANT HAS_BYTES  : positive := 32;

END PACKAGE MAYO_COMMON;

-- PACKAGE BODY

PACKAGE BODY MAYO_COMMON IS

  FUNCTION P2KC2_MONO (K : positive) RETURN real IS
  BEGIN

    RETURN (K * (K + 1) / 2);

  END FUNCTION;

  FUNCTION P1MONOMIALS (N : positive; O : POSITIVE) RETURN real IS
  BEGIN

    return ((N - O) * (N - O + 1) / 2 + (N - O) * O);

  END FUNCTION;

  function BARRETT_REDUCTION(A : NATURAL) return natural is
    -- https://en.wikipedia.org/wiki/Barrett_reduction
    -- k = 9
    -- m = [512/31] = 16
    -- e = 1/31 - 16/512 = 16/15872
    --> A < 992 (Tested on 1022)
    variable q : integer ;
  begin
    q := A * 16;
    q := to_unsigned(q,16) srl 9;
    A := A - (q * PRIME);
    if (PRIME <= A) then
      A := A - PRIME;
    end if;
    return A;
  end function BARRETT_REDUCTION;

  function MERSENNE_REDUCTION (A : NATURAL) return natural is
    -- 31 = 2^5 -1  --> S = 5
    variable i : integer;
  begin
    i := unsigned(std_logic_vector(to_unsigned(A,16)) & PRIME) + unsigned(std_logic_vector(to_unsigned(A,16)) srl 5);
    if (PRIME <= A) then
      A := A - PRIME;
    end if;
  end function MERSENNE_REDUCTION;

END PACKAGE BODY MAYO_COMMON;
