lbl_803CCFB8:
/* 803CCFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CCFBC  7C 08 02 A6 */	mflr r0
/* 803CCFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CCFC4  4B FF FF A9 */	bl mNpc_CheckNormalMail_nes
/* 803CCFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CCFCC  7C 08 03 A6 */	mtlr r0
/* 803CCFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CCFD4  4E 80 00 20 */	blr 
