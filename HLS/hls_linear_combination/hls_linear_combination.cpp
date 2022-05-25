#include "hls_linear_combination.h"

// scalar multiply each coefficient to the corresponding vector in Fq^m and add the results up; number of summands is len
void hls_linear_combination(din_t* vecs, din_t* coeffs, int len, din_t* out){

	// use static if no BRAM to init to zero
	// C init takes a big chunk of time
	uint32_t accumulators[M] = {0};  // HLS supports uin32_t

	LOOP_LC1: for (int i = 0; i < len; ++i)
	{
		LOOP_LC12: for(int j=0; j< M; j++){
			accumulators[j] +=((uint32_t) vecs[i*M + j]) * ((uint32_t) coeffs[i]); // Cast to uint32_t
		}
	}

	LOOP_LC2: for (int i = 0; i < M; ++i)
	{
		// Modulo replaced
		// hls::remainder shows slower effect?
		//std::cout << hls::remainder((ap_uint<32>) accumulators[i],(ap_uint<32>) 31) << std::endl;
		//std::cout << accumulators[i] % (uint32_t)31 << std::endl;
		out[i]  = accumulators[i] % (uint32_t)31;
		//out[i] = (din_t) hls::remainder(accumulators[i],(uint32_t)31);
		//out[i]  = accumulators[i] % (uint32_t)31;
	}
}
