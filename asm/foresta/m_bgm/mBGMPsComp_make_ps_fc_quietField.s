lbl_8037BFB0:
/* 8037BFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BFB4  7C 08 02 A6 */	mflr r0
/* 8037BFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BFBC  4B FF FF 9D */	bl _mBGMPsComp_make_ps_fc_quietField
/* 8037BFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BFC4  7C 08 03 A6 */	mtlr r0
/* 8037BFC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BFCC  4E 80 00 20 */	blr 
