#include "hls_linear_combination.h"
#include <iostream>
#include <fstream>
#include <string>

#define K 10

int main(){
	// Testbench from MAYO/arith_test/test_sample_solution()
	din_t linear[M*K*O];
	din_t rhs[M];
	din_t solution[K*O];

	int i,j, retval=0;
	std::string str;

	std::ifstream i_FILE;
	std::ofstream o_FILE;
	printf("Starting..\n");

	// Import data
	i_FILE.open("test_sample_la/linear/5.dat");
	i = 0 ;
	while (std::getline(i_FILE,str)){
		linear[i] = (din_t) stoi(str);
		i = i+ 1 ;
	}
	i_FILE.close();

	i_FILE.open("test_sample_la/solution/5.dat");
	i = 0 ;
	while (std::getline(i_FILE,str)){
		solution[i] = (din_t) stoi(str);
		i = i+ 1 ;
	}
	i_FILE.close();

	i_FILE.open("test_sample_la/rhs/5.golden.dat");

	i = 0 ;
	while (std::getline(i_FILE,str)){
		rhs[i] = (din_t) stoi(str);
		i = i+ 1 ;
	}
	i_FILE.close();

	// Execute
	din_t rhs2[M];
	hls_linear_combination(linear,solution,K*O,rhs2);

	// Save
	o_FILE.open("result.dat");
	for (int j = 0; j<M; j++){
		o_FILE << (unsigned int) rhs2[j] << std::endl;
	}
	o_FILE.close();

	if(memcmp(rhs,rhs2,M) != 0){
		printf("Failed!\n");
		for (int j = 0; j<M; j++){
			std::cout << (unsigned int) rhs[j] << " | ";
			std::cout << (unsigned int) rhs2[j] << std::endl;
		}
				retval = 1;
			}
	else {
		printf("Passed!\n");
		retval = 0;
	}

	// Compare the results file with the golden results
	// retval = system("diff --brief -w result.dat test_sample_la/rhs/5.golden.dat");
	//  if (retval != 0) {
	//    printf("Test failed  !!!\n");
	//    retval=1;
	//  } else {
	//    printf("Test passed !\n");
	//  }
	return retval;
}
