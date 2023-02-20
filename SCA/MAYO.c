/*
    This file is part of the ChipWhisperer Example Targets
    Copyright (C) 2012-2017 NewAE Technology Inc.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "hal.h"
#include "simpleserial.h"
#include "MAYO.h"
//#include "arithmetic.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define gf256v_add _gf256v_add_u32
#define gf256v_madd _gf256v_madd_u32

extern unsigned char P1[15660];
extern unsigned char oilspace[87];

extern uint32_t trigger;


void putString(const unsigned char *string, const unsigned int length)
{
    for(int i=0; i<length; i++)
         putch(string[i]);
}

void add_vectors(const unsigned char *v1, const unsigned char *v2, unsigned char *out){
	for (int i = 0; i < M; ++i)
	{
		out[i] = (((uint16_t) v1[i]) + ((uint16_t) v2[i])) % PRIME;
	}
}

void negate(unsigned char* v, int len){
	for (int i = 0; i < len; ++i)
	{
		v[i] = (PRIME - v[i]) % PRIME;
	}
}

void _linear_combination(const unsigned char* vecs, const unsigned char* coeffs, int len, unsigned char *out){
	uint32_t accumulators[M] = {0};

    // i runs through the entries of coeffs
    for (int i = 0; i < len; ++i)
	{ 
        // j runs through the  of vecs which contains the coefficients of the different equations
        // each entry in coeefs gets multiplied with m entries in vecs, the intermediate result is stored in accumulators

		if(trigger == 1 && i==0)
		{
			char c = 'A';
				// stall until ready to trace 
			while ((c != 'g'))
			{
				c = getch();
			}
			trigger_high();
		}
		for(int j=0; j< M; j++){
			accumulators[j] += ((uint32_t) vecs[i*M + j]) * ((uint32_t) coeffs[i]);
		} 
		if(trigger == 1 && i==0)
		{			
			trigger_low();
			putch('r');
		}
	}

	for (int i = 0; i < M; ++i)
	{
		out[i] = (unsigned char) (accumulators[i] % PRIME);
	}
}

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
			if(j==0 && i==0) trigger=1;
			unsigned char vec[M];
			_linear_combination(P1 + p1_counter*M, oil_space + (j*(N-O) + i), N-O-i, vec);
			add_vectors(temp + (i*O + j)*M, vec,temp + (i*O + j)*M);
			trigger = 0;
		}
		p1_counter += (N-O-i);
	}

	for (int i = 0; i < N-O; ++i)
	{
		// P1' part
		for (int j = 0; j < O; j++)
		{
			add_vectors(temp + (i*O + j)*M, P1 + p1_counter*M, temp + (i*O + j)*M);
			p1_counter ++;
		}
	}

	// permute Temp
	unsigned char tempt[M*(N-O)*O] = {0};

	for (int i = 0; i < O; ++i)
	{
		for(int j=0; j< N-O; j++){
			memcpy(tempt + ((i*(N-O) + j)*M), temp + ((j*O+i)*M), M);
		}
	}

	int counter = 0;
	// compute O*Temp;
	for (int i = 0; i < O; ++i)
	{
		for (int j = i; j < O; ++j)
		{
			_linear_combination(tempt + (j*(N-O))*M, oil_space + i*(N-O), N-O, P2 + counter*M);

			if(j!= i){
				unsigned char vec[M] = {0};
				_linear_combination(tempt + (i*(N-O))*M, oil_space + j*(N-O), N-O, vec);
				add_vectors(P2 + counter*M, vec, P2 + counter*M);
			}
			counter ++;
		}
	}

	// P2 = -P2
	negate(P2,P2_BYTES);
}

// computes (P1 + P1^t) O^T + P2 
void compute_bilinear_part(const unsigned char *P1, const unsigned char *oil_space, unsigned char *bilinear){

	trigger = 0;
    char c;
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
	
	for (int i = 0; i < N-O; ++i)
	{
		// P1PiT*O^t part
		for (int j = 0; j < O; ++j)
		{
			if(j==0) trigger=1;

			_linear_combination(P1P1T + (M*i*(N-O)), oil_space + (j*(N-O)), N-O, bilinear_temp + (i*O + j)*M);

			trigger = 0;
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




// uint8_t uov_trace(uint8_t *in)
// {

// uint8_t uov_trace(uint8_t* pw, uint8_t len)
uint8_t mayo_trace()
{
    // C = 10;
    unsigned char out[M] = {0};
	unsigned char bilinear[M*(N-O)*O] = {0};
	unsigned char P2[M*O*O] = {0};


    // define P1 in .h file, hardcoded
    //const unsigned char *ptr_P1;
    //ptr_P1 = P1;


    //onst unsigned char *ptr_oilspace;
    //ptr_oilspace = oilspace;


    //for (_ in range(10))
    //{
    //_linear_combination(P1, oilspace, N-O, out);
    //compute_bilinear_part(ptr_P1, oilspace, bilinear);
	for (int i = 0; i < 200; ++i)
	{
		computeP2(oilspace, P1, P2);
	}
		
    //}
    
    
    // send 'e' for end of trace
    putch('e');
    
    //putString(y, _O1_BYTE);

    return 1;
}

int main(void)
{
    platform_init();
    init_uart();
    trigger_setup();

    unsigned char Hello[] = "Hello from the other side!";
    putString(Hello, 26);

    simpleserial_init();

    //for n in range(256)
    mayo_trace();


    while (1)
         simpleserial_get();
}
