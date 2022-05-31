lbl_804A8C5C:
/* 804A8C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8C60  7C 08 02 A6 */	mflr r0
/* 804A8C64  38 80 00 04 */	li r4, 4
/* 804A8C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8C6C  48 00 00 35 */	bl aTHT2_setupAction
/* 804A8C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8C74  7C 08 03 A6 */	mtlr r0
/* 804A8C78  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8C7C  4E 80 00 20 */	blr 
