lbl_8037DC94:
/* 8037DC94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037DC98  7C 08 02 A6 */	mflr r0
/* 8037DC9C  38 A3 1B 88 */	addi r5, r3, 0x1b88
/* 8037DCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037DCA4  38 85 00 0C */	addi r4, r5, 0xc
/* 8037DCA8  4B FF FF 9D */	bl Camera2_SetEyePos_fromCenterPosCalc
/* 8037DCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037DCB0  7C 08 03 A6 */	mtlr r0
/* 8037DCB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8037DCB8  4E 80 00 20 */	blr 
