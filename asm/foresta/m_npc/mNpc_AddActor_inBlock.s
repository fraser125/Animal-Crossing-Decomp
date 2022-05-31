lbl_803D16BC:
/* 803D16BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D16C0  7C 08 02 A6 */	mflr r0
/* 803D16C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D16C8  4B FF E8 7D */	bl mNpc_AddNpc_inBlock
/* 803D16CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D16D0  7C 08 03 A6 */	mtlr r0
/* 803D16D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D16D8  4E 80 00 20 */	blr 
