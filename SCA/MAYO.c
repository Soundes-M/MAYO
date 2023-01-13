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
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define gf256v_add _gf256v_add_u32
#define gf256v_madd _gf256v_madd_u32

extern unsigned char P1[3720];
extern unsigned char oilspace[56];

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

void _linear_combination(const unsigned char* vecs, const unsigned char* coeffs, int len, unsigned char *out){
	uint32_t accumulators[M] = {0};


    
    for (int i = 0; i < len; ++i)
	{ 
        char c = 'A';
        // stall until ready to trace 
        while ((c != 'g'))
        {
            c = getch();
        }
        trigger_high();

		for(int j=0; j< M; j++){
			accumulators[j] += ((uint32_t) vecs[i*M + j]) * ((uint32_t) coeffs[i]);
		} 

        
        trigger_low();
        putch('r');
        
	}



	for (int i = 0; i < M; ++i)
	{
		out[i] = (unsigned char) (accumulators[i] % PRIME);
	}


}

// uint8_t uov_trace(uint8_t *in)
// {

// uint8_t uov_trace(uint8_t* pw, uint8_t len)
uint8_t mayo_trace()
{
    // C = 10;
    unsigned char out[M] = {0};


    // define P1 in .h file, hardcoded
    const unsigned char *ptr_P1;
    ptr_P1 = P1;


    const unsigned char *ptr_oilspace;
    ptr_oilspace = oilspace;


    //for (_ in range(10))
    //{
    _linear_combination(P1, oilspace, N-O, out);
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

    // simpleserial_init();

    //for n in range(256)
    mayo_trace();


    // while (1)
    //     simpleserial_get();
}
