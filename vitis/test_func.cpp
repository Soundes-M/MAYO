#include "test_func.h"
extern "C"{
void test_func(din_t* A, din_t* B, din_t* C, int len){
	SUM_LOOP: for(int i=0;i<len;i++){
		*(C+i) = *(A+i) + *(B+i);
	}
}
}
