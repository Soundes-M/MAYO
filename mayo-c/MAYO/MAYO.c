#include "MAYO.h"
#include "params.h"
#include <string.h>
#include <stdio.h>

/* notes:
Oil space is O-by-(N-O) matrix stored in row-major order
Temp is is (N-O)-by-O matrix stored in row-major order
*/

// compute the lower right O-by-O matrix for each public polynomial according to page 10 of the MAYO paper
// It only depends on the oil space and the first N-O rows of P
//THis function coresponds to line 6 in keygen page 11
void computeP2(const unsigned char* oil_space, const unsigned char* P1, unsigned char* P2){
	// P2 = - O*P1*O^t - O*P1'

	// first compute Temp = P1*O^t + P1'
	unsigned char temp[M*(N-O)*O] = {0};

	int	p1_counter = 0;
	for (int i = 0; i < N-O; ++i)
	{
		// P1*O^t part
		for (int j = 0; j < O; ++j)
		{
			unsigned char vec[M];
			// i-th row of P1 times j-th row of O for all m polynomials at once
			char filename[50];
			// sprintf(filename,"golden/la/vecs/%d_%d.dat",i,j);
			// write_to_file(filename,P1 + p1_counter*M,(N-O-i)*M);
			// sprintf(filename,"golden/la/coefs/%d_%d.dat",i,j);
			// write_to_file(filename,oil_space + (j*(N-O) + i),M);
			linear_combination(P1 + p1_counter*M, oil_space + (j*(N-O) + i), N-O-i, vec);
			// sprintf(filename,"golden/la/out/%d_%d.dat",i,j);
			// write_to_file(filename,vec,M);
			
			add_vectors(temp + (i*O + j)*M, vec,temp + (i*O + j)*M);
		}
		p1_counter += (N-O-i);
	}

	for (int i = 0; i < N-O; ++i)
	{
		// P1' part
		for (int j = 0; j < O; j++)
		{
			// add P1' part, again for all m polynomials at once
			add_vectors(temp + (i*O + j)*M, P1 + p1_counter*M, temp + (i*O + j)*M);
			p1_counter ++;
		}
	}
	// Temp stores (N-O)-by-O matrix P1*O^t + P1' in column major form
	// Transpose it to ease computation of O*temp
	// permute Temp
	unsigned char tempt[M*(N-O)*O] = {0};

	for (int i = 0; i < O; ++i)
	{
		for(int j=0; j< N-O; j++){
			memcpy(tempt + ((i*(N-O) + j)*M), temp + ((j*O+i)*M), M);
		}
	}

	// compute P2; P2 stored in column major form?
	int counter = 0;
	// compute O*Temp = O*(P1*O^t + P1');
	for (int i = 0; i < O; ++i)
	{
		for (int j = i; j < O; ++j)
		{
			linear_combination(tempt + (j*(N-O))*M, oil_space + i*(N-O), N-O, P2 + counter*M);

			if(j!= i){
				unsigned char vec[M] = {0};
				linear_combination(tempt + (i*(N-O))*M, oil_space + j*(N-O), N-O, vec);
				add_vectors(P2 + counter*M, vec, P2 + counter*M);
			}
			counter ++;
		}
	}

	// P2 = -P2
	negate(P2,P2_BYTES);
}

// generate secret oil space (O-by-(N-O) matrix)
void sample_oil_space(const unsigned char *seed, unsigned char *oil_space){
	unsigned char randomness[OIL_SPACE_BYTES*2];
	// expand secret seed 
	EXPAND(seed, SEED_BYTES, randomness, OIL_SPACE_BYTES*2);

	int ctr = 0;
	for (int i = 0; i < OIL_SPACE_BYTES; ++i)
	{
		while(randomness[ctr]% (1<<PRIME_BITS) >= PRIME){
			ctr++;
		}
		// assign randomness to oil space
		oil_space[i] = randomness[ctr];
		ctr++;
	}

	assert(ctr < OIL_SPACE_BYTES*2);
}

// key generation: compare to KeyGen() in the pseudo code (Figure 2)
int keygen(unsigned char* pk, unsigned char* sk){
	// generate random secret seed
	RAND_bytes(SK_PRIVATE_SEED(sk),SEED_BYTES);
	// generate random public seed
	RAND_bytes(SK_PUBLIC_SEED(sk),SEED_BYTES);
	memcpy(PK_SEED(pk),SK_PUBLIC_SEED(sk),SEED_BYTES);

	// public seed is used to generate the coefficients of P1 (line 4 and 5 in the pseudocode)
	unsigned char P1[P1_BYTES];
	expand_pk(pk, P1);
	
	// secret seed is used to generate the secret oil space (line 1 in the pseudo code)
	unsigned char oil_space[OIL_SPACE_BYTES];
	sample_oil_space(SK_PRIVATE_SEED(sk),oil_space);

	// together P1 and oil_space can be used to compute the rest of the public key P2 (line 6 in the pseudocode)
	// P2 is part of the public key. P1 is only implicitely part of the public key, since the public seed is stored there
	//write_to_file("P1_in.dat",oil_space,OIL_SPACE_BYTES);
	computeP2(oil_space, P1, PK_P2(pk));
	//write_to_file("P1_golden.dat",oil_space,OIL_SPACE_BYTES);
	//write_to_file("P2_golden.dat",PK_P2(pk),P2_BYTES);
	//write_to_file("oil_space_golden.dat",oil_space,OIL_SPACE_BYTES);


	return 0;
}

void expand_pk(const unsigned char *pk, unsigned char *pk_exp){
	//xorshift_expand(PK_SEED(pk), pk_exp, P1_BYTES);
	EXPAND(PK_SEED(pk), SEED_BYTES, pk_exp, P1_BYTES)
	reduce(pk_exp, P1_BYTES);
}

void sample_vinegar(unsigned char *inputs){
	unsigned char randomness[N*K];
	RAND_bytes(randomness,N*K);

	int c = 0;
	for (int i = 0; i < K; ++i)
	{
		for (int j = 0; j < N-O; ++j)
		{
			while(randomness[c]%(1<<PRIME_BITS) >= PRIME){
				c++;
			}
			inputs[i*N + j] = randomness[c];
			c++;
		}
		assert(c < N*K);
	}
}

void reduce_extension(int *input, unsigned char *output){
	#if (M == 60 && PRIME == 31)
		// reduce mod x^60 + x^2 + 3x+ 27
		for (int i = 118; i >59; --i)
		{
			input[i - 60] -= input[i]*27;
			input[i - 59] -= input[i]*3;
			input[i - 58] -= input[i];
		}
	#elif (M == 63 && PRIME == 31)
		// reduce mod x^63 + x^2 + 2
		for (int i = 124; i > 62; --i)
		{
			input[i - 63] -= input[i]*2;
			input[i - 61] -= input[i];
		}
	#else
		Parameters not supported
	#endif

	
	for (int i = 0; i < M; ++i)
	{
		output[i] = ((input[i]%PRIME) + PRIME + output[i]) % PRIME;
	}
}

void multiply_extension_field(unsigned char *A, unsigned char *B, unsigned char *output){
	int Temp[2*M-1] = {0};

	for (int i = 0; i < M; ++i)
	{
		for (int j = 0; j < M; ++j)
		{
			Temp[i+j] += ((int) A[i])*((int) B[j]);
		}
	}

	reduce_extension(Temp, output);
}

void merge_outputs(unsigned char* outputs, unsigned char *merged){

	#if KC2 > M
		ERROR: KC2 > M not supported
	#endif

	int Temp[2*M-1] = {0};
	for (int k = 0; k < KC2; ++k)
	{
		for (int i = 0; i < M; ++i)
		{
			Temp[i+k] += outputs[k*M + i];
		}
	}

	reduce_extension(Temp, merged);
}

// computes (P11 + P11^t) O^T + P12 
// In this code P1 = P11||P12
// P11 corresponds to P1 in the pseudocode
// P12 corresponds to P2 in the pseudo 
void compute_bilinear_part(const unsigned char *P1, const unsigned char *oil_space, unsigned char *bilinear){

	unsigned char bilinear_temp[M*(N-O)*O];

	// compute P1 + P1^T
	unsigned char P1P1T[M*(N-O)*(N-O)];
	int counter = 0;
	for (int i = 0; i < N-O; ++i)
	{
		for (int j = i; j < N-O; ++j)
		{
			memcpy(P1P1T + M*(i*(N-O)+j), P1 + (M*counter), M);
			if(j == i){ 
				// mutiply by 2
				add_vectors(P1P1T + M*(i*(N-O)+j),P1P1T + M*(i*(N-O)+j),P1P1T + M*(i*(N-O)+j));
			}
			else {
				memcpy(P1P1T + M*(j*(N-O)+i), P1 + (M*counter), M);
			}

			counter++;
		}
	}

	// P1P1T*O^t part
	for (int i = 0; i < N-O; ++i)
	{
		for (int j = 0; j < O; ++j)
		{
			linear_combination(P1P1T + (M*i*(N-O)), oil_space + (j*(N-O)), N-O, bilinear_temp + (i*O + j)*M);
		}
	}

	for (int i = 0; i < N-O; ++i)
	{
		// P1' part
		for (int j = 0; j < O; j++)
		{
			add_vectors(bilinear_temp + (i*O + j)*M, P1 + M*(counter + i*O + j), bilinear_temp + (i*O + j)*M);
		}
	}

	// transpose bilinear_temp
	for (int i = 0; i < (N-O); ++i)
	{
		for (int j = 0; j < O; ++j)
		{
			memcpy(bilinear + M*(j*(N-O) + i), bilinear_temp + (i*O + j)*M, M);
		}
	}
}

void add_oil(unsigned char *inputs, const unsigned char *oil, const unsigned char *oil_space){
	for (int k = 0; k < K; ++k)
	{
		// copy oil to signature
		memcpy(inputs + k*N + N-O, oil + k*O, O);

		// update vinegar part
		for (int i = 0; i < N-O; ++i)
		{
			uint32_t t = inputs[k*N + i];
			for (int j = 0; j < O; ++j)
			{
				t += ((uint32_t) inputs[k*N + N-O + j]) * oil_space[j*(N-O) + i];
			}
			inputs[k*N + i] = (t % PRIME);
		}
	}
}

#define DIGEST_BYTES (M)

void message_digest(unsigned char *sig, const unsigned char *m, long long m_len, unsigned char *digest){
	// TODO rejection sampling
	unsigned char buffer[SEED_BYTES + HASH_BYTES];
	memcpy(buffer, SIG_SALT(sig), SEED_BYTES);
	HASH(m,m_len,buffer + SEED_BYTES);

	EXPAND(buffer, SEED_BYTES+HASH_BYTES, digest, DIGEST_BYTES);

	reduce(digest, DIGEST_BYTES);
}

void expand_sk(const unsigned char *sk, unsigned char *sk_exp){
	// expand public seed to P1
	expand_pk(SK_PUBLIC_SEED(sk), SK_EXP_P1(sk_exp));
	// generate secret oil space (O-by-(N-O) matrix)
	sample_oil_space(SK_PRIVATE_SEED(sk),SK_EXP_OIL(sk_exp));
	// computes (P1 + P1^t) O^T + P2
	compute_bilinear_part(SK_EXP_P1(sk_exp), SK_EXP_OIL(sk_exp), SK_EXP_BILINEAR(sk_exp));
}

int sign(const unsigned char* m , long long m_len, const unsigned char* sk, unsigned char* sig){
	unsigned char sk_exp[SK_EXP_BYTES];
	// first expand the secret key i.e., hash using SHAKE128 and two seeds sk_publickseed and sk_privateseed
	expand_sk(sk,sk_exp);
	// feed expanded sk to sign fast
	return sign_fast(m, m_len, sk, sk_exp, sig);
}

int sign_fast(const unsigned char* m , long long m_len, const unsigned char* sk, const unsigned char* sk_exp, unsigned char* sig){
	// compute randomized message digest
	RAND_bytes(SIG_SALT(sig),SEED_BYTES);
	unsigned char digest[DIGEST_BYTES];
	message_digest(sig, m, m_len, digest);

	const unsigned char *P1 = SK_EXP_P1(sk_exp);
	const unsigned char *oil_space = SK_EXP_OIL(sk_exp);
	const unsigned char *bilinear = SK_EXP_BILINEAR(sk_exp);

	unsigned char *inputs = SIG_INPUTS(sig);
	unsigned char oil_solution[K*O];

	while(1){
		// sample vinegar and compute RHS
		// inputs contains K concetenated vinegar variables
		sample_vinegar(inputs);

		// KC2 vectors in Fq^m 
		unsigned char vinegar_evals[KC2*M];
		// 
		unsigned char linear[M*K*O] = {0};
		int ctr = 0;
		for (int i = 0; i < K; ++i)
		{
			for (int j = i; j < K; ++j)
			{
				unsigned char vinegar[N] = {0};
				// build pairwise sums of the generated K vinegar variables (will be KC2 = K*(K+1)/2 many)
				for (int k = 0; k < N; ++k)
				{
					// vi + vj in the paper
					vinegar[k] = (inputs[i*N + k] + inputs[j*N + k])%PRIME;
				}

				// compute for RHS
				// only the added vinegar pairs are fed to the public key map 
				// results are stored in vinegar_evals which are KC2 many vectors in Fq^m 
				// P(vi+vj)
				evaluateP_vinegar(vinegar, P1, vinegar_evals + ctr*M);


				unsigned char multiplier[M] = {0};
				multiplier[ctr] = 1;

				// compute linear part
				for (int c = 0; c < O; ++c)
				{
					unsigned char vec[M];
					linear_combination(bilinear + c*(N-O)*M, vinegar, N-O, vec);

					unsigned char multiplied[M] = {0};
					multiply_extension_field(multiplier, vec, multiplied);

					add_vectors(multiplied, linear + M*(i*O + c), linear + M*(i*O + c));
					add_vectors(multiplied, linear + M*(j*O + c), linear + M*(j*O + c));
				}

				ctr ++;
			}
		}

		unsigned char RHS[M] = {0};
		merge_outputs(vinegar_evals, RHS);
		negate(RHS,M);
		add_vectors(RHS, digest, RHS);

		if( sample_oil(RHS,linear,oil_solution) == 0){
			break;
		}
	}
	add_oil(inputs, oil_solution, oil_space); 
	return 0;
}

int verify(const unsigned char* m, long long m_len, const unsigned char* pk, unsigned char* sig){
	unsigned char pk_exp[PK_EXP_BYTES];
	expand_pk(pk, pk_exp);

	return verify_fast(m, m_len, pk, pk_exp, sig);
}

int verify_fast(const unsigned char* m, long long m_len, const unsigned char* pk, const unsigned char* pk_exp, unsigned char* sig){
	// compute message digest
	unsigned char digest[DIGEST_BYTES];
	message_digest(sig, m, m_len, digest);

	const unsigned char *P1 = pk_exp;

	// evaluate P
	unsigned char outputs[M*KC2];
	int ctr = 0;
	for (int i = 0; i < K; ++i)
	{
		for (int j = i; j < K; ++j)
		{
			unsigned char input[N] = {0};
			for (int k = 0; k < N; ++k)
			{
				input[k] = (SIG_INPUTS(sig)[i*N + k] + SIG_INPUTS(sig)[j*N + k])%PRIME;
			}

			evaluateP(input, P1, PK_P2(pk), outputs + M*ctr);			

			ctr ++;
		}
	}

	unsigned char output[M] = {0};
	merge_outputs(outputs, output);

	if(memcmp(digest,output, M) != 0){
		//print_vec(digest);
		//print_vec(output);
		return -1;
	}

	return 0;
}
