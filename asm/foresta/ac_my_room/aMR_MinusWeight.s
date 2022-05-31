lbl_80470CD8:
/* 80470CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470CDC  7C 08 02 A6 */	mflr r0
/* 80470CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80470CE8  7C 7F 1B 78 */	mr r31, r3
/* 80470CEC  88 64 00 3E */	lbz r3, 0x3e(r4)
/* 80470CF0  4B FF FF A5 */	bl aMR_GetWeight
/* 80470CF4  80 1F 04 C8 */	lwz r0, 0x4c8(r31)
/* 80470CF8  7C 03 00 50 */	subf r0, r3, r0
/* 80470CFC  90 1F 04 C8 */	stw r0, 0x4c8(r31)
/* 80470D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470D08  7C 08 03 A6 */	mtlr r0
/* 80470D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80470D10  4E 80 00 20 */	blr 
