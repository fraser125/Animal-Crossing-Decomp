lbl_804A8B08:
/* 804A8B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8B0C  7C 08 02 A6 */	mflr r0
/* 804A8B10  38 80 00 04 */	li r4, 4
/* 804A8B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8B18  48 00 00 35 */	bl aTHT1_setupAction
/* 804A8B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8B20  7C 08 03 A6 */	mtlr r0
/* 804A8B24  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8B28  4E 80 00 20 */	blr 
