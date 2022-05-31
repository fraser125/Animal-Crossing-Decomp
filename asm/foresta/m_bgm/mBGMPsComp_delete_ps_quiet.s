lbl_8037C2C8:
/* 8037C2C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C2CC  7C 08 02 A6 */	mflr r0
/* 8037C2D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C2D4  4B FF FF B9 */	bl _mBGMPsComp_delete_ps_quiet
/* 8037C2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C2DC  7C 08 03 A6 */	mtlr r0
/* 8037C2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C2E4  4E 80 00 20 */	blr 
