lbl_804A95C0:
/* 804A95C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A95C4  7C 08 02 A6 */	mflr r0
/* 804A95C8  38 80 00 01 */	li r4, 1
/* 804A95CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A95D0  4B FF FF 61 */	bl aTPT_calc_scale
/* 804A95D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A95D8  7C 08 03 A6 */	mtlr r0
/* 804A95DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A95E0  4E 80 00 20 */	blr 
