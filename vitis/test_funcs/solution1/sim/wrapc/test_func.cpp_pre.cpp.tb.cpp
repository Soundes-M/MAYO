// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "/home/osm/Documents/SECT-MAYO/MAYO/vitis/test_func.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/osm/Documents/SECT-MAYO/MAYO/vitis/test_func.cpp"
# 1 "/home/osm/Documents/SECT-MAYO/MAYO/vitis/test_func.h" 1





typedef unsigned int din_t;
extern "C"{

void test_func(din_t* A, din_t* B, din_t* C, int len);

}
# 2 "/home/osm/Documents/SECT-MAYO/MAYO/vitis/test_func.cpp" 2
extern "C"{
void test_func(din_t* A, din_t* B, din_t* C, int len){
 SUM_LOOP: for(int i=0;i<len;i++){
  *(C+i) = *(A+i) + *(B+i);
 }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_test_func_ir(unsigned int *, unsigned int *, unsigned int *, int);
#ifdef __cplusplus
extern "C"
#endif
void test_func_hw_stub(unsigned int *A, unsigned int *B, unsigned int *C, int len){
test_func(A, B, C, len);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_test_func_sw(unsigned int *A, unsigned int *B, unsigned int *C, int len){
apatb_test_func_ir(A, B, C, len);
return ;
}
#endif
# 7 "/home/osm/Documents/SECT-MAYO/MAYO/vitis/test_func.cpp"

}
