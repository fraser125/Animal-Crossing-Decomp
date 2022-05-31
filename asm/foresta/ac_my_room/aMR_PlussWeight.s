lbl_80470C9C:
/* 80470C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470CA0  7C 08 02 A6 */	mflr r0
/* 80470CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80470CAC  7C 7F 1B 78 */	mr r31, r3
/* 80470CB0  88 64 00 3E */	lbz r3, 0x3e(r4)
/* 80470CB4  4B FF FF E1 */	bl aMR_GetWeight
/* 80470CB8  80 1F 04 C8 */	lwz r0, 0x4c8(r31)
/* 80470CBC  7C 00 1A 14 */	add r0, r0, r3
/* 80470CC0  90 1F 04 C8 */	stw r0, 0x4c8(r31)
/* 80470CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470CCC  7C 08 03 A6 */	mtlr r0
/* 80470CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80470CD4  4E 80 00 20 */	blr 
