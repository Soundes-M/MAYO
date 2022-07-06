#ifndef _HLS_LINEAR_COMBINATION_H_
#define _HLS_LINEAR_COMBINATION_H_

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <hls_stream.h>
#include <ap_int.h>

#define OIL_SPACE_BYTES 336
#define P1_BYTES 115920
#define P2_BYTES 1260
#define N 62
#define M 60
#define O 6
#define K 10


typedef unsigned char din_t; // TODO: not sure if this or arrays are needed


// axis data struct
struct axis_data{
	din_t data;
	ap_uint<1> last;
};

// TODO: It could actually look like this
// void computeP2(din_t oil_space[OIL_SPACE_BYTES], din_t P1[P1_BYTES], din_t P2[P2_BYTES]);
//void hls_linear_combination(din_t vecs[M*K*O], din_t coeffs[M], int len, din_t out[K*O]);

//void hls_linear_combination(volatile din_t* vecs, volatile din_t* coeffs, int len, volatile din_t* out);
void hls_linear_combination(hls::stream<axis_data> &vecs, hls::stream<axis_data> &coeffs, int len , hls::stream<axis_data> &out);
#endif
