lbl_8037C4B0:
/* 8037C4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C4B4  7C 08 02 A6 */	mflr r0
/* 8037C4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C4BC  4B FF FF B9 */	bl _mBGMPsComp_delete_ps_quietField
/* 8037C4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C4C4  7C 08 03 A6 */	mtlr r0
/* 8037C4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C4CC  4E 80 00 20 */	blr 
