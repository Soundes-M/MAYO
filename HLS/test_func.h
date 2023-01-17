#ifndef _TEST_FUNC_H_
#define _TEST_FUNC_H_


#define N 50
typedef unsigned int din_t;
extern "C"{
// Sum two arrays A and B into C
void test_func(din_t* A, din_t* B, din_t* C, int len);
//void test_func(din_t A[N], din_t B[N], din_t C[N], int len);
}

#endif
