lbl_8037BD90:
/* 8037BD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BD94  7C 08 02 A6 */	mflr r0
/* 8037BD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BD9C  4B FF FF 8D */	bl _mBGMPsComp_make_ps_happening
/* 8037BDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BDA4  7C 08 03 A6 */	mtlr r0
/* 8037BDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BDAC  4E 80 00 20 */	blr 
