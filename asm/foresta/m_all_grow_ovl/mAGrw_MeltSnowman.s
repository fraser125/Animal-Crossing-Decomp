lbl_80510AA8:
/* 80510AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80510AAC  7C 08 02 A6 */	mflr r0
/* 80510AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80510AB4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80510AB8  4B EE 11 05 */	bl mSN_MeltSnowman
/* 80510ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80510AC0  7C 08 03 A6 */	mtlr r0
/* 80510AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80510AC8  4E 80 00 20 */	blr 
