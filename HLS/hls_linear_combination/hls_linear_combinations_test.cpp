#include "hls_linear_combination.h"
#include <iostream>
#include <fstream>
#include <string>

int main(){
	din_t vecs[100];
	din_t coefs[100] = {0};
	din_t out[100];

	int i,j, retval=0;
	std::string str;

	std::ifstream i_FILE;
	std::ofstream o_FILE;
	printf("Starting..\n");

	// Import data
	i_FILE.open("la/coefs/0_0.dat");
	i = 0 ;
	while (std::getline(i_FILE,str)){
		coefs[i] = (din_t) stoi(str);
		i = i+ 1 ;
	}

	i_FILE.close();

	i_FILE.open("la/vecs/0_0.dat");
	i = 0 ;
	while (std::getline(i_FILE,str)){
		vecs[i] = (din_t) stoi(str);
		i = i+ 1 ;
	}

	// Execute
	hls_linear_combination(vecs,coefs,N-O,out);

	// Save
	o_FILE.open("result.dat");
	for (int j = 0; j<=100; j++){
		o_FILE << out[j] << std::endl;
	}
	o_FILE.close();

	// Compare the results file with the golden results
	 retval = system("diff --brief -w result.dat la/out/0_0.dat");
	  if (retval != 0) {
	    printf("Test failed  !!!\n");
	    retval=1;
	  } else {
	    printf("Test passed !\n");
	  }
	return retval;
}
