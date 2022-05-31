lbl_804A8198:
/* 804A8198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A819C  7C 08 02 A6 */	mflr r0
/* 804A81A0  38 80 00 00 */	li r4, 0
/* 804A81A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A81A8  4B FF FF 85 */	bl aTCR_calc_scale
/* 804A81AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A81B0  7C 08 03 A6 */	mtlr r0
/* 804A81B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A81B8  4E 80 00 20 */	blr 
