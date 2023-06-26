#ifndef __MAYO_H_
#define __MAYO_H_
#include "xil_hal.h"
/**
 * Mayo func return status struct defn
 */

#define MAYO_KEYGEN_DONE_BIT 0
#define MAYO_SIGN_DONE_BIT 1
#define MAYO_VERIFY_DONE_BIT 2

typedef enum {
	MAYO_OK = 0x00U, MAYO_BUSY = 0x01U, MAYO_ERROR = 0x02U, MAYO_TIMEOUT = 0x03U

} MAYO_StatusTypeDef;

typedef struct {
	u8 KeygenError :2;
	u8 SignError :2;
	u8 VerifyError :2;
} MAYO_ERRORCodeTypeDef;

/**
 *  AXI MAYO LITE REGISTER MAPPING
 */

/**
 * Status Register (REG0)
 */
typedef union {
	struct {
		unsigned int KeygenDone :1;
		unsigned int SignDone :1;
		unsigned int VerifyDone :1;
		unsigned int KeygenBusy :1;
		unsigned int SignBusy :1;
		unsigned int VerifyBusy :1;
		unsigned int :2;  // RESERVED
		unsigned int MayoError :8;
	} bf;
	u32 data;
} MAYO_StatusRegiter;

/**
 * Control Register (REG1)
 *
 */
typedef union {
	struct {
		unsigned int KeygenEnable :1;
		unsigned int SignEnable :1;
		unsigned int VerifyEnable :1;
		unsigned int :26;  // RESERVED
		unsigned int IRQEnable :1;
		unsigned int ExposeEnable :1;
		unsigned int DebugEnable :1;
	} bf;
	u32 data;
} MAYO_ControlRegiter;

/**
 * Unused
 */
typedef struct {
	unsigned int __RESERVED;
} MAYO_2Reg;

/**
 * Unused
 */
typedef struct {
	unsigned int __RESERVED;
} MAYO_3Reg;

/**
 * MAYO Context
 */

typedef struct {
	MAYO_StatusRegiter SR;
	MAYO_ControlRegiter CR;
	MAYO_2Reg R2;
	MAYO_3Reg R3;

} MAYO_ContextTypeDef;

/**
 * Function Definitions
 */
MAYO_StatusTypeDef MayoStartKeygen(MAYO_ContextTypeDef* ctx, int, int, int);
MAYO_StatusTypeDef MayoKeygenIsFinished(MAYO_ContextTypeDef* ctx);

//MAYO_StatusTypeDef MayoStartSign(MAYO_ContextTypeDef* ctx);
//MAYO_StatusTypeDef MayoSignIsFinished(MAYO_ContextTypeDef* ctx, int, int, int);

#endif