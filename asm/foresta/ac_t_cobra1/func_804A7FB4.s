lbl_804A7FB4:
/* 804A7FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7FB8  7C 08 02 A6 */	mflr r0
/* 804A7FBC  38 80 00 04 */	li r4, 4
/* 804A7FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7FC4  48 00 00 35 */	bl aTCB1_setupAction
/* 804A7FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7FCC  7C 08 03 A6 */	mtlr r0
/* 804A7FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7FD4  4E 80 00 20 */	blr 
