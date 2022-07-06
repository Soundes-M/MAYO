#include "test_func.h"
#include <iostream>

int main(){
	int ret;

	din_t a[N];
	din_t b[N];
	din_t c[N];
	din_t c_golden[N];

	for (int i=0;i<N;i++){
		a[i] = 5;
		b[i] = 3;
		c_golden[i] = 8;
	}

	// Special case
	a[3] = 1;
	b[3] = 2;
	c_golden[3] = 3;

	test_func(a,b,c,N);

	for (int i = 0;  i <N ; i++){
		if (c[i] != c_golden[i]){
			std::cout << "FAIL." << std::endl;
			ret = 1;
			return ret;
		}

	}
	ret = 0;
	std::cout << "PASS." << std::endl;
	return ret;

}
