lbl_804A7E60:
/* 804A7E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7E64  7C 08 02 A6 */	mflr r0
/* 804A7E68  38 80 00 04 */	li r4, 4
/* 804A7E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7E70  48 00 00 35 */	bl aTB4_setupAction
/* 804A7E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7E78  7C 08 03 A6 */	mtlr r0
/* 804A7E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7E80  4E 80 00 20 */	blr 
