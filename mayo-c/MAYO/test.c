#include <stdio.h>
#include <stdint.h>
#include "MAYO.h"
#include "params.h"
#include <time.h>
#include <stdlib.h>

#define TRIALS 10

#define MESSAGE_LENGTH 100


#define TEST(fn) \
printf("%30s: ", #fn); \
if(fn()){ \
	printf("Failed \n"); \
	fails ++; \
} else { \
	printf("Success \n"); \
} 

#include "eval_tests.c"
#include "key_gen_tests.c"
#include "arithmetic_tests.c"
#include "signing_tests.c"

// Added to test if the algo is constant-time
#define DUDECT_IMPLEMENTATION
#include "dudect.h"

unsigned char sk[SK_BYTES] ={21, 166, 31, 245, 76, 19, 162, 5, 53, 151, 54, 161, 60, 7, 220, 230, 133, 138, 34, 161, 229, 137, 220, 127, 96, 162, 189, 226, 231, 210, 70, 194 };


#define SECRET_LEN_BYTES (SK_BYTES)
 
/* target function to check for constant time */
int check_tag(uint8_t *x, uint8_t *y, size_t len) {
  return memcmp(x, y, len);
}


/* this will be called over and over */
uint8_t do_one_computation(uint8_t *data) {
  /* simulate totally bogus MAC check in non-constant time */
  
  
  //unsigned char message[MESSAGE_LENGTH];
  //message[0] = 42;
  unsigned char sig[SIG_BYTES];  
  sign(data, MESSAGE_LENGTH, sk, sig); 
  return check_tag(data, sk, SK_BYTES);
}

/* called once per number_measurements */
void prepare_inputs(dudect_config_t *c, uint8_t *input_data, uint8_t *classes) {
  randombytes(input_data, c->number_measurements * c->chunk_size);
  for (size_t i = 0; i < c->number_measurements; i++) {
    /* it is important to randomize the class sequence */
    classes[i] = randombit();
    if (classes[i] == 0) {
      memset(input_data + (size_t)i * c->chunk_size, 0x00, c->chunk_size);
    } else {
      // leave random
    }
  }
}

int run_test(void) {
  dudect_config_t config = {
      .chunk_size = SECRET_LEN_BYTES,
      #ifdef MEASUREMENTS_PER_CHUNK
      .number_measurements = MEASUREMENTS_PER_CHUNK,
      #else
      .number_measurements = 500,
      #endif
  };
  dudect_ctx_t ctx;

  dudect_init(&ctx, &config);

  /*
  Call dudect_main() until
   - returns something different than DUDECT_NO_LEAKAGE_EVIDENCE_YET, or
   - you spent too much time testing and give up
  Recommended that you wrap this program with timeout(2) if you don't
  have infinite time.
  For example this will run for 20 mins:
    $ timeout 1200 ./your-executable
  */
  dudect_state_t state = DUDECT_NO_LEAKAGE_EVIDENCE_YET;
  while (state == DUDECT_NO_LEAKAGE_EVIDENCE_YET) {
    state = dudect_main(&ctx);
  }
  dudect_free(&ctx);
  return (int)state;
}



int tests(){
	srand(time(NULL));

	int fails = 0;

	printf("Do unit tests:\n");
	TEST(test_unit_vector_eval);
	TEST(test_double_unit_vector_eval);
	TEST(test_double_eval);
	TEST(test_zero_oil_space);
	TEST(test_almost_zero_oil_space);
	TEST(test_eval_zero_oil_vector);
	TEST(test_eval_oil_vector);

	TEST(test_modular_inverse);
	TEST(test_sample_solution);

	TEST(test_bilinear_zero_oilspace);
	TEST(test_bilinear);
	TEST(test_bilinear2);

	TEST(test_linear_combination_avx);

	printf("\n");

	return fails;
}


int main(){

	 if( tests()){
		return -1;
	}

	printf("Benchmarking:\n");

	unsigned char pk[PK_BYTES] = {0};
 

	printf("pk bytes : %d\n", PK_BYTES );
	printf("sk bytes : %d\n", SK_BYTES );
	printf("sig bytes : %ld\n", (uint64_t) SIG_BYTES );

	printf("big pk bytes : %d\n", PK_EXP_BYTES );
	printf("big sk bytes : %d\n", SK_EXP_BYTES );

	unsigned char message[MESSAGE_LENGTH];
	message[0] = 42;
	unsigned char sig[SIG_BYTES];
	unsigned char pk_exp[PK_EXP_BYTES];
	unsigned char sk_exp[SK_EXP_BYTES];

	uint64_t keygenTime = 0;
	uint64_t signTime = 0;
	uint64_t verifyTime = 0;
	uint64_t signFastTime = 0;
	uint64_t verifyFastTime = 0;
	uint64_t t; 
      
	 
	
 
	for(int i=0 ; i<TRIALS; i++){
		t = rdtsc();
		keygen(pk,sk);
		keygenTime += rdtsc()-t;

		t = rdtsc();
		sign(message, MESSAGE_LENGTH, sk, sig);
		signTime += rdtsc()-t;

		t = rdtsc();
		int ver = verify(message, MESSAGE_LENGTH, pk, sig);;
		verifyTime += rdtsc()-t;

		if(ver < 0){
			printf("Signature invalid! \n");
		}

		// test fast functions
		expand_pk(pk, pk_exp);
		expand_sk(sk, sk_exp);

		t = rdtsc();
		sign_fast(message, MESSAGE_LENGTH, sk, sk_exp, sig);
		signFastTime += rdtsc()-t;

		t = rdtsc();
		ver = verify_fast(message, MESSAGE_LENGTH, pk, pk_exp, sig);
		verifyFastTime += rdtsc()-t;

		if(ver < 0){
			printf("Signature invalid! \n");
		}

	}

	printf("keygen cycles :            %lu \n", keygenTime/TRIALS );
	printf("signing cycles :           %lu \n", signTime/TRIALS );
	printf("verification cycles :      %lu \n", verifyTime/TRIALS );
	printf("fast signing cycles :      %lu \n", signFastTime/TRIALS );
	printf("fast verification cycles : %lu \n", verifyFastTime/TRIALS );


	for (int i = 0; i < 100000; ++i)
	{
		int ver = verify_fast(message, MESSAGE_LENGTH, pk, pk_exp, sig);
		if(ver < 0){
			printf("Signature invalid! \n");
		}
	}
 
	return 0;
}
