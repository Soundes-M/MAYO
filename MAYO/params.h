#ifndef PARAMS_H
#define PARAMS_H 

#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <stdlib.h>

static inline
uint64_t rdtsc(){
    unsigned int lo,hi;
    __asm__ __volatile__ ("rdtscp" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}

#define TIC printf("\n"); uint64_t cl = rdtsc();
#define TOC(A) printf("%s cycles = %lu \n",#A ,rdtsc() - cl); cl = rdtsc();

// We use the finite field Fq with q = 31
#define PRIME 31
#define PRIME_BITS 5
// Number of equations in the public key map P
#define M 60  
// Number of variables in each quadratic equation of P
#define N 62   
// Dimension of the secret linear subspace, the oil-space. P vanishes on this secret subspace.
#define O 6   
// Parameter that is used to construct a larger map P* that vanishes on a space of dimension KO
// P* has as input K vectors in Fq^n 
#define K 10  

// Number of sums of 2 of these input vectors to P* 
// (xi + xj) for i,j in 1 <= i <= j <= K
#define KC2 (K*(K+1)/2)
// Number of coefficients that are needed to characterize a quadratic polynomial with N variables
#define MONOMIALS (N*(N+1)/2)
// (N-O)*(N-O+1)/2 coefficients belong to the monoms xi*xj where 1 <= i <= j <= N-O (upper left part of matrix P)
// (N-O)*O coefficients belong to the monoms xi*xj where 1 <= i <= N-O and N-O+1 <= j <= N (upper right part of matrix P)
#define P1MONOMIALS ((N-O)*(N-O+1)/2 + (N-O)*O)
// (O*(O+1)/2 coefficients belong to the monoms xi*xj where N-O+1 <= i <= j <= N (lower right part of matrix P)
#define P2MONOMIALS (O*(O+1)/2)

#define SEED_BYTES 16
#define HASH_BYTES 32

// Number of coefficients in all m quadratic polynomials belonging to P1
#define P1_BYTES (M*P1MONOMIALS)
// Number of coefficients in all m quadratic polynomials belonging to P2
#define P2_BYTES (M*P2MONOMIALS)
// Number of field elements that define the secret oil space. O basis vectors, with N-O non-zero entries are needed
#define OIL_SPACE_BYTES (O*(N-O)) 


#define PK_SEED(pk) (pk)
#define PK_P2(pk) (pk + SEED_BYTES)
// small pk only consists of seed + coefficients of P2
#define PK_BYTES (PK_P2(0) + M*O*(O+1)/2)
// expanded pk also consists of coefficients of P1
#define PK_EXP_BYTES P1_BYTES

#define SK_EXP_P1(sk_exp) (sk_exp)
#define SK_EXP_OIL(sk_exp) (sk_exp + P1_BYTES)
#define SK_EXP_BILINEAR(sk_exp) (SK_EXP_OIL(sk_exp) + OIL_SPACE_BYTES)
#define SK_EXP_BYTES (SK_EXP_BILINEAR(0) + (M*(N-O)*O))

#define SK_PUBLIC_SEED(sk) (sk)
#define SK_PRIVATE_SEED(sk) (sk + SEED_BYTES)
// small sk only consists of two seeds public_seed and private_seed
#define SK_BYTES (2*SEED_BYTES)

#define SIG_SALT(sig) (sig)
#define SIG_INPUTS(sig) (sig + SEED_BYTES)
// signature consists of salt and the K solution vectors in Fq^n
#define SIG_BYTES (SEED_BYTES + (K*N)) 


#include "libkeccak.a.headers/SimpleFIPS202.h"
#define HASH(data,len,out) SHAKE128(out, HASH_BYTES, data, len);
#define EXPAND(data,len,out,outlen) SHAKE128(out, outlen, data, len);

#endif
