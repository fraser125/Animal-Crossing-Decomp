lbl_804AA470:
/* 804AA470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA474  7C 08 02 A6 */	mflr r0
/* 804AA478  38 80 00 00 */	li r4, 0
/* 804AA47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA480  4B FF FF 85 */	bl aTUT_calc_scale
/* 804AA484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA488  7C 08 03 A6 */	mtlr r0
/* 804AA48C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA490  4E 80 00 20 */	blr 
