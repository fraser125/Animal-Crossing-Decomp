lbl_80395AC0:
/* 80395AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80395AC4  7C 08 02 A6 */	mflr r0
/* 80395AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80395ACC  4B FF FF 71 */	bl func_80395A3C
/* 80395AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80395AD4  7C 08 03 A6 */	mtlr r0
/* 80395AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80395ADC  4E 80 00 20 */	blr 
