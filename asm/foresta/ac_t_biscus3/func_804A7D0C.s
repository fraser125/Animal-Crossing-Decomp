lbl_804A7D0C:
/* 804A7D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7D10  7C 08 02 A6 */	mflr r0
/* 804A7D14  38 80 00 04 */	li r4, 4
/* 804A7D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7D1C  48 00 00 35 */	bl aTB3_setupAction
/* 804A7D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7D24  7C 08 03 A6 */	mtlr r0
/* 804A7D28  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7D2C  4E 80 00 20 */	blr 
