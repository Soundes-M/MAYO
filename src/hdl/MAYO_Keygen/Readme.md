# Cores used in Keygen
# Core to BRAM Access
Below is a table of which core access which BRAM

| Core               | BRAM0A | BRAM0B | BRAM1A |
|--------------------|--------|--------|--------|
| Linear_combination | Y      | Y      | Y      |
| Reduce*            | Y      | N      | Y      |
| Add_vector*        | Y      | Y      | Y      |
|Sampleoilspace(TRNG)| Y      | N      | N      |
| Hash*              | Y      | N      | Y      |	     


# Core Ports to BRAM Mapping
Most of the cores are connected with an arbiter/bus manager that passes signals to the correct BRAM depending on the controls signal

## Linear Combination
Vecs -> BRAM1A

Coeffs ->  BRAM0A

Out -> BRAM0B

## Reduce 
**Requires Configuration*

0 : Only BRAM0A

1 : Only BRAM1A

## Add vector

**Requires Configuration*

00 : v1 : BRAM1A, v2 : BRAM0A, out : BRAM1A _(Can be accelerated)_

01 : v1 : BRAM1A, v2 : BRAM1A, out : BRAM1A

10 : v1 : BRAM0A, v2 : BRAM0A, out : BRAM0A _(Can be accelerated)_

New Config 

00 : v1 : BRAM1A, v2 : BRAM0A, out : BRAM1A _(v1 and v2 parallel read)_

01 : v1 : BRAM1A, v2 : BRAM1A, out : BRAM1A (Slowest, all is seperate)

10 : v1 : BRAM0A, v2 : BRAM0B, out : BRAM0A 

11 : RESERVED


