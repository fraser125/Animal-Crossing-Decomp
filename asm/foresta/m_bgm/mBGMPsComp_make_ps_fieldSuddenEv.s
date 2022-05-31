lbl_8037C03C:
/* 8037C03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C040  7C 08 02 A6 */	mflr r0
/* 8037C044  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C048  4B FF FF 89 */	bl _mBGMPsComp_make_ps_fieldSuddenEv
/* 8037C04C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C050  7C 08 03 A6 */	mtlr r0
/* 8037C054  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C058  4E 80 00 20 */	blr 
