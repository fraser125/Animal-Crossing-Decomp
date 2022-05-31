lbl_8054469C:
/* 8054469C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805446A0  7C 08 02 A6 */	mflr r0
/* 805446A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805446A8  4B FF 6C 6D */	bl aNPC_rebuild_cloth_data
/* 805446AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805446B0  7C 08 03 A6 */	mtlr r0
/* 805446B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805446B8  4E 80 00 20 */	blr 
