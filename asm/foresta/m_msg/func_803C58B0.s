lbl_803C58B0:
/* 803C58B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C58B4  7C 08 02 A6 */	mflr r0
/* 803C58B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C58BC  4B FF 9A C1 */	bl func_803BF37C
/* 803C58C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C58C4  7C 08 03 A6 */	mtlr r0
/* 803C58C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C58CC  4E 80 00 20 */	blr 
