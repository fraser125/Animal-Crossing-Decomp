lbl_804A9BDC:
/* 804A9BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9BE0  7C 08 02 A6 */	mflr r0
/* 804A9BE4  38 80 00 01 */	li r4, 1
/* 804A9BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9BEC  48 00 00 E9 */	bl aTTB_setupAction
/* 804A9BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9BF4  7C 08 03 A6 */	mtlr r0
/* 804A9BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9BFC  4E 80 00 20 */	blr 
