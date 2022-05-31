lbl_804A9C90:
/* 804A9C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9C94  7C 08 02 A6 */	mflr r0
/* 804A9C98  38 80 00 01 */	li r4, 1
/* 804A9C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9CA0  4B FF FF 61 */	bl aTTB_calc_scale
/* 804A9CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9CA8  7C 08 03 A6 */	mtlr r0
/* 804A9CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9CB0  4E 80 00 20 */	blr 
