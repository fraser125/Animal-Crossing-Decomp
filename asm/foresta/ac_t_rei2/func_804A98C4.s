lbl_804A98C4:
/* 804A98C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A98C8  7C 08 02 A6 */	mflr r0
/* 804A98CC  38 80 00 04 */	li r4, 4
/* 804A98D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A98D4  48 00 00 35 */	bl aTRI2_setupAction
/* 804A98D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A98DC  7C 08 03 A6 */	mtlr r0
/* 804A98E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A98E4  4E 80 00 20 */	blr 
