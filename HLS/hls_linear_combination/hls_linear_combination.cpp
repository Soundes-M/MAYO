#include "hls_linear_combination.h"
#include <iostream>

void hls_linear_combination(hls::stream<axis_data> &vecs, hls::stream<axis_data> &coeffs, int len , hls::stream<axis_data> &out){
	static uint32_t accumulators[M];

	// local storage
	din_t vec_l[K*O][M]; // == 336 --> OIL_SPACE_BYTES / M --> WC Byte size
	din_t coeffs_l[M];
	din_t out_l[M];
	axis_data stream_l;


	// Read input
	READ_LOOP_VEC1 : for(int row= 0; row < len;row++){
		READ_LOOP_VEC2: for (int m = 0; m < M; m++){
			stream_l = vecs.read();
			vec_l[row][m]= stream_l.data;
		}
	}

	READ_LOOP_COEFS: for (int i = 0; i< M ; i++)
	{
		stream_l = coeffs.read();
		coeffs_l[i] = stream_l.data;
	}


	// Execute
	EX_LOOP_LC1: for (int i = 0; i < len; ++i){
		EX_LOOP_LC12: for(int j=0; j< M; j++){
				accumulators[j] += (uint32_t) vec_l[i][j] * (uint32_t) coeffs_l[i]; // Cast to uint32_t
			}
		}

	EX_LOOP_LC2: for (int i = 0; i < M; ++i)
			{
				// Original variant
				//out[i]  = accumulators[i] % (uint32_t)31;
				// Div variant
				out_l[i] = accumulators[i] - (uint32_t)31 * (accumulators[i] /  (uint32_t)31 );
				std::cout << (unsigned int) out_l[i] << ",";

			}

	// Write output
	WRITE_LOOP_OUT: for (int i = 0; i< M ; i++)
		{
			stream_l.data = out_l[i];
			if (i == M-1)
				stream_l.last = 1;
			else
				stream_l.last = 0;
			out.write(stream_l);
		}

}


// scalar multiply each coefficient to the corresponding vector in Fq^m and add the results up; number of summands is len
//void hls_linear_combination(volatile din_t* vecs, vvolatile din_t* out){
//
//	// use static if no BRAM to init to zero
//	// C init takes a big chunk of time
//	static uint32_t accumulators[M];  // HLS supports uin32_t
//
//	LOOP_LC1: for (int i = 0; i < len; ++i)
//	{
//		LOOP_LC12: for(int j=0; j< M; j++){
//			// std::cout << (uint32_t)  coeffs[i] << "|";
//			//std::cout << (uint32_t) vecs[i*M + j] << ",";
//			accumulators[j] += (uint32_t) vecs[i*M + j] * (uint32_t) coeffs[i]; // Cast to uint32_t
//		}
//	}
//
//	LOOP_LC2: for (int i = 0; i < M; ++i)
//	{
//		// Modulo replaced
//		// hls::remainder shows slower effect?
//		//std::cout << hls::remainder((ap_uint<32>) accumulators[i],(ap_uint<32>) 31) << std::endl;
//		//std::cout << accumulators[i] % (uint32_t)31 << std::endl;
//		// Original variant
//		//out[i]  = accumulators[i] % (uint32_t)31;
//		// Div variant
//		out[i] = accumulators[i] - (uint32_t)31 * (accumulators[i] /  (uint32_t)31 );
//		// std::cout << (unsigned int) accumulators[i] << "|";
//		std::cout << (unsigned int) out[i] << ",";
//
//
//		//out[i] = (din_t) hls::remainder(accumulators[i],(uint32_t)31);
//		//out[i]  = accumulators[i] % (uint32_t)31;
//	}
//}
