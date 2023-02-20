/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <stdbool.h>
#include <unistd.h>

#include "mayo.h"
#include "platform.h"
#include "xparameters.h"
#include "ps7_init.h"

#define HANDLE_OUTPUT(status)\
  if (status == MAYO_ERROR){ \
    print("Failed!\n\r"); return 1; \
  }else if (status == MAYO_TIMEOUT) { \
    print("Timeout!\n\r"); \
  } else if(status == MAYO_OK){ \
	print("OK!\n\r"); \
  } else {\
	print("Busy...\n\r"); \
	}

/**
 * BRAM BIG 1 Self Check
 */
bool MAYO_BIG_BRAM_SelfCheck() {
	const int BRAM_SIZE = (XPAR_BRAM_BIG1_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR
			- XPAR_BRAM_BIG1_AXI_BRAM_CTRL_0_S_AXI_BASEADDR) / 4;
	for (int i = 0; i < BRAM_SIZE; i++) //3FFFF is size of BRAM in bytes!
			{
		Xil_Out32(XPAR_BRAM_BIG1_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4 * i, i);
	}

	u32 read_value;
	for (int i = 0; i < BRAM_SIZE; i++) {
		read_value = Xil_In32(
		XPAR_BRAM_BIG1_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4 * i);
		if (read_value != i) {
			return false;
		}
	}
	return true;
}

void MAYO_BIG_BRAM_Flush() {
	const int BRAM_SIZE = (XPAR_BRAM_BIG1_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR
			- XPAR_BRAM_BIG1_AXI_BRAM_CTRL_0_S_AXI_BASEADDR) / 4;
	for (int i = 0; i < BRAM_SIZE; i++) {
		Xil_Out32(XPAR_BRAM_BIG1_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4 * i, 0x0);
	}
}

int main() {
	init_platform();
	ps7_post_config();

//usleep (3000000); // delay for 3 seconds

	print("Hello Mayo\n\r");

	/**
	 * BIG BRAM 1 Self Check
	 */
	if (MAYO_BIG_BRAM_SelfCheck()) {
		print("BRAM BIG 0 Check CHUNK[256k] : OK. \n\r");
	} else {
		print("BRAM BIG 0 Check CHUNK[256k] : FAIL. \n\r");
	}

	MAYO_BIG_BRAM_Flush();

//TODO: Add checks for BIG BRAM 2 !

//////BEGIN MAIN

	MAYO_ContextTypeDef ctx;

	MAYO_StatusTypeDef status;

	status = MayoStartKeygen(&ctx, 0, 0, 0);
	HANDLE_OUTPUT(status)
//Busy waiting
	int t =0;
	while (1) {
		status = MayoKeygenIsFinished(&ctx);
		if (status == MAYO_OK) {
			print("KEYGEN DONE.\n \r");
			break;
		}
		HANDLE_OUTPUT(status)
		usleep(2000); // delay for 0.0001 seconds
		t +=2000;

	}
	printf("Time: %d us \n\r",t);
	print("Successfully ran Mayo application!\n\r");

	cleanup_platform();
	return 0;
}