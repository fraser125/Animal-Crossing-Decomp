lbl_80390890:
/* 80390890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80390894  7C 08 02 A6 */	mflr r0
/* 80390898  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039089C  80 A3 00 00 */	lwz r5, 0(r3)
/* 803908A0  80 83 00 04 */	lwz r4, 4(r3)
/* 803908A4  80 03 00 08 */	lwz r0, 8(r3)
/* 803908A8  38 61 00 08 */	addi r3, r1, 8
/* 803908AC  90 A1 00 08 */	stw r5, 8(r1)
/* 803908B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 803908B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 803908B8  48 01 5E 55 */	bl mFI_GetUnitCol
/* 803908BC  4B FF FF 89 */	bl mCoBG_CheckWave_ClData
/* 803908C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803908C4  7C 08 03 A6 */	mtlr r0
/* 803908C8  38 21 00 20 */	addi r1, r1, 0x20
/* 803908CC  4E 80 00 20 */	blr 
