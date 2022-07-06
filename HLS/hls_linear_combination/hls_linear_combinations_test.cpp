#include "hls_linear_combination.h"
#include <iostream>
#include <fstream>
#include <string>

#define K 10

int main(){
	// Testbench from MAYO/arith_test/test_sample_solution()
	din_t linear[K*O][M]; // vecs
	din_t rhs[M]; // out
	din_t solution[M]; // coeffs

	int i,j, retval=0;
	std::string str;

	std::ifstream i_FILE;
	std::ofstream o_FILE;
	printf("Starting..\n");

	// Import data
	i_FILE.open("test_sample_la/linear/5.dat");
	i = 0 ;
	j = 0 ;
	while (std::getline(i_FILE,str)){
		linear[i][j] = (din_t) stoi(str);
		j = j+ 1 ;
		if (j == 60){
			j = 0;
			i = i + 1 ;
		}
	}
	i_FILE.close();
	////////////////
	i_FILE.open("test_sample_la/solution/5.dat");
	i = 0 ;
	while (std::getline(i_FILE,str)){
		solution[i] = (din_t) stoi(str);
		i = i+ 1 ;
	}
	i_FILE.close();
	////////////////
	i_FILE.open("test_sample_la/rhs/5.golden.dat"); // GOLDEN OUTPUT
	i = 0 ;
	while (std::getline(i_FILE,str)){
		rhs[i] = (din_t) stoi(str);
		i = i+ 1 ;
	}
	i_FILE.close();
	////////////////

	// Create Stream Interface
	axis_data local_stream;
	hls::stream<axis_data> vecs,coeffs,out;

	// VECS
	LOOP_VEC1 : for(int row= 0; row < K*O;row++){
		LOOP_VEC2: for (int m = 0; m < M; m++){
			local_stream.data = linear[row][m];
			if ((row == K*O -1) && (m == M -1 )){
				local_stream.last = 1;
			}else {
				local_stream.last = 0;
			}
			vecs.write(local_stream);
		}
	}
	// COEFFS
	LOOP_COEFFS: for (int i = 0; i< M ; i++)
		{
		local_stream.data = solution[i];
			if (i == M-1)
				local_stream.last = 1;
			else
				local_stream.last = 0;
			coeffs.write(local_stream);
		}

	// Execute
	din_t rhs2[M];
	hls_linear_combination(vecs,coeffs,K*O,out);
	////////////////

	// Get DATA
	LOOP_OUT: for (int i = 0; i< M ; i++)
	{
		local_stream = out.read();
		rhs2[i] = local_stream.data;
	}


	// Save
	o_FILE.open("result.dat");
	for (int j = 0; j<M; j++){
		o_FILE << (unsigned int) rhs2[j] << std::endl;
	}
	o_FILE.close();

	// Compare
	for (int j = 0; j<M; j++){
		if (rhs[j] != rhs2[j]){
			retval = 1;
			std::cout << "\nFAIL" << std::endl;
			for (int j = 0; j<M; j++){
				std::cout << (unsigned int) rhs[j] << " | ";
				std::cout << (unsigned int) rhs2[j] << std::endl;
			}
			break;
		}
	}


	// Compare the results file with the golden results
	// retval = system("diff --brief -w result.dat test_sample_la/rhs/5.golden.dat");
	//  if (retval != 0) {
	//    printf("Test failed  !!!\n");
	//    retval=1;
	//  } else {
	//    printf("Test passed !\n");
	//  }
	if (retval == 0) std::cout << "\nPASS" << std::endl;
	return retval;
}
