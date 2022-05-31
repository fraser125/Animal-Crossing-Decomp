lbl_804A9C6C:
/* 804A9C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9C70  7C 08 02 A6 */	mflr r0
/* 804A9C74  38 80 00 00 */	li r4, 0
/* 804A9C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9C7C  4B FF FF 85 */	bl aTTB_calc_scale
/* 804A9C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9C84  7C 08 03 A6 */	mtlr r0
/* 804A9C88  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9C8C  4E 80 00 20 */	blr 
