#include "hls_linear_combination.h"
#include <hls_math.h>

// scalar multiply each coefficient to the corresponding vector in Fq^m and add the results up; number of summands is len
void hls_linear_combination(din_t* vecs, din_t* coeffs, int len, din_t* out){
	// TODO Partition and unroll

	uint32_t accumulators[M] = {0};  // HLS supports uin32_t
	uint32_t tmp;

	LOOP_LC1: for (int i = 0; i < len; ++i)
	{
		LOOP_LC12: for(int j=0; j< M; j++){
			tmp = accumulators[j];
			accumulators[j] = tmp + ((uint32_t) vecs[i*M + j]) * ((uint32_t) coeffs[i]); // Cast to uin32_t
		}
	}

	LOOP_LC2: for (int i = 0; i < M; ++i)
	{
		// Modulo replaced
		out[i] = (din_t) hls::remainder(accumulators[i],(uint32_t)31);
	}
}
