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
}
