/*
 * Generated from the MAYO c-code
 */

#include "computeP2.h"

void computeP2(din_t oil_space[OIL_SPACE_BYTES], din_t P1[P1_BYTES], din_t P2[P2_BYTES]){
#pragma HLS pipeline off
	static din_t temp[M*(N-O)*O];
 // TODO: Might be too big needs partition 20160

	int p1_counter = 0;

	LOOP_P1: for (int i = 0; i < N-O; ++i)
	{
#pragma HLS pipeline off
#pragma HLS loop_flatten off
		LOOP_P12: for (int j = 0; j < O; ++j)
		{
#pragma HLS pipeline off
			din_t vec[M];

			linear_combination(P1 + p1_counter*M, oil_space + (j*(N-O) + i), N-O-i, vec);
			add_vectors(temp + (i*O + j)*M, vec,temp + (i*O + j)*M);
		}
		p1_counter += (N-O-i);
	}

	LOOP_P2: for (int i = 0; i < N-O; ++i)
		{
#pragma HLS pipeline off
#pragma HLS loop_flatten off
			LOOP_P21: for (int j = 0; j < O; j++)
			{
#pragma HLS pipeline off
				add_vectors(temp + (i*O + j)*M, P1 + p1_counter*M, temp + (i*O + j)*M);
				p1_counter ++;
			}
		}

	static din_t tempt[M*(N-O)*O];

	LOOP_P3:for (int i = 0; i < O; ++i)
	{
#pragma HLS pipeline off
#pragma HLS loop_flatten off
		LOOP_P31: for(int j=0; j< N-O; j++){
#pragma HLS pipeline off

			memcpy(tempt + ((i*(N-O) + j)*M), temp + ((j*O+i)*M), M); // TODO: Figure this out, maybe not working.
		}
	}

	int counter = 0;
	LOOP_P4: for (int i = 0; i < O; ++i)
	{
#pragma HLS pipeline off
#pragma HLS loop_flatten off
		LOOP_P4_1: for (int j = i; j < O; ++j)
		{
#pragma HLS pipeline off
			linear_combination(tempt + (j*(N-O))*M, oil_space + i*(N-O), N-O, P2 + counter*M);

			if(j!= i){
				din_t vec[M] = {0};
				linear_combination(tempt + (i*(N-O))*M, oil_space + j*(N-O), N-O, vec);
				add_vectors(P2 + counter*M, vec, P2 + counter*M);
			}
			counter ++;
		}
	}

	negate(P2,P2_BYTES);

}

void negate(din_t* v, int len){
	// TODO Partition is needed
	uint32_t tmp;
	LOOP_N: for (int i = 0; i < len; ++i)
		{
#pragma HLS UNROLL factor=2
#pragma HLS pipeline off
		// Increase memory read latency
		v[i] = tmp;
		// Modulo replaced
		v[i] = (31 - tmp) % 31;

	}
}


void linear_combination(din_t* vecs, din_t* coeffs, int len, din_t* out){
	// TODO Partition and unroll
	uint32_t accumulators[M] = {0};  // HLS supports uin32_t

	LOOP_LC1: for (int i = 0; i < len; ++i)
	{
#pragma HLS pipeline off
#pragma HLS loop_flatten off
		LOOP_LC12: for(int j=0; j< M; j++){
#pragma HLS pipeline off
			accumulators[j] += ((uint32_t) vecs[i*M + j]) * ((uint32_t) coeffs[i]); // Cast to uin32_t
		}
	}

	LOOP_LC2: for (int i = 0; i < M; ++i)
	{
#pragma HLS pipeline off
		// Modulo replaced
		out[i] = accumulators[i] % 31 ;
	}
}

void add_vectors (din_t *v1, din_t *v2, din_t *out){
	// TODO Unroll
	add_vectors_label1:for (int i = 0; i < M; ++i)
	{
		uint32_t tmp = (uint16_t) v1[i] + (uint16_t) v2[i] ;
		// Modulo replaced
		out[i] = tmp % 31;
	}
}
