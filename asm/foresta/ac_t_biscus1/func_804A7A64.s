lbl_804A7A64:
/* 804A7A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7A68  7C 08 02 A6 */	mflr r0
/* 804A7A6C  38 80 00 04 */	li r4, 4
/* 804A7A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7A74  48 00 00 35 */	bl aTB1_setupAction
/* 804A7A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7A7C  7C 08 03 A6 */	mtlr r0
/* 804A7A80  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7A84  4E 80 00 20 */	blr 
