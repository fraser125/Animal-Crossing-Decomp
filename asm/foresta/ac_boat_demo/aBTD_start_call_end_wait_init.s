lbl_804156FC:
/* 804156FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415700  7C 08 02 A6 */	mflr r0
/* 80415704  38 60 01 68 */	li r3, 0x168
/* 80415708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041570C  4B F6 68 2D */	bl mBGMPsComp_make_ps_quietField
/* 80415710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415714  7C 08 03 A6 */	mtlr r0
/* 80415718  38 21 00 10 */	addi r1, r1, 0x10
/* 8041571C  4E 80 00 20 */	blr 