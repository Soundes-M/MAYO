#include "mayo.h"
#include "xparameters.h"
#include "mayo_axi_litev3.h"

MAYO_StatusTypeDef MayoStartKeygen(MAYO_ContextTypeDef* ctx, int isDebug,
		int enIRQ, int isExpose) {
	MAYO_StatusTypeDef ret = MAYO_ERROR;

	ctx->CR.bf.KeygenEnable |= 1;
	ctx->CR.bf.SignEnable &= ~1;
	ctx->CR.bf.VerifyEnable &= ~1;

	if (isDebug)
		ctx->CR.bf.DebugEnable |= 1;
	else
		ctx->CR.bf.DebugEnable &= ~1;

	if (enIRQ)
		ctx->CR.bf.IRQEnable |= 1;
	else
		ctx->CR.bf.IRQEnable &= ~1;

	if (isExpose)
		ctx->CR.bf.ExposeEnable |= 1;
	else
		ctx->CR.bf.ExposeEnable &= ~1;

	MAYO_AXI_LITEV3_mWriteReg(XPAR_MAYO_AXI_LITEV3_0_S00_AXI_BASEADDR,
			MAYO_AXI_LITEV3_S00_AXI_SLV_REG1_OFFSET, ctx->CR.data);

	ret = MAYO_OK;
	return ret;
}

MAYO_StatusTypeDef MayoKeygenIsFinished(MAYO_ContextTypeDef* ctx) {
	u32 r = MAYO_AXI_LITEV3_mReadReg(XPAR_MAYO_AXI_LITEV3_0_S00_AXI_BASEADDR,
			MAYO_AXI_LITEV3_S00_AXI_SLV_REG0_OFFSET);

	if (r & (1U << MAYO_KEYGEN_DONE_BIT)) {
		return MAYO_OK;
	} else
		return MAYO_BUSY;
}