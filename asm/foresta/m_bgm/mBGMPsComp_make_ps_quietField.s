lbl_8037BF38:
/* 8037BF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BF3C  7C 08 02 A6 */	mflr r0
/* 8037BF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BF44  4B FF FF 9D */	bl _mBGMPsComp_make_ps_quietField
/* 8037BF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BF4C  7C 08 03 A6 */	mtlr r0
/* 8037BF50  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BF54  4E 80 00 20 */	blr 
