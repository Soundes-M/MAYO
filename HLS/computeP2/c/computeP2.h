#ifndef _COMPUTE_P2_H_
#define _COMPUTE_P2_H_

#include "ap_int.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <hls_math.h>

#define OIL_SPACE_BYTES 336
#define P1_BYTES 115920
#define P2_BYTES 1260
#define N 62
#define M 60
#define O 6


typedef unsigned char din_t; // TODO: not sure if this or arrays are needed

// TODO: It could actually look like this
// void computeP2(din_t oil_space[OIL_SPACE_BYTES], din_t P1[P1_BYTES], din_t P2[P2_BYTES]);

void computeP2(din_t * oil_space, din_t* P1, din_t* P2);
void linear_combination(din_t* vecs, din_t* coeffs, int len, din_t* out);
void add_vectors (din_t *v1, din_t *v2, din_t*out);
void negate(din_t* v, int len);

#endif
