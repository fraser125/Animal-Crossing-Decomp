lbl_804A81BC:
/* 804A81BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A81C0  7C 08 02 A6 */	mflr r0
/* 804A81C4  38 80 00 01 */	li r4, 1
/* 804A81C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A81CC  4B FF FF 61 */	bl aTCR_calc_scale
/* 804A81D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A81D4  7C 08 03 A6 */	mtlr r0
/* 804A81D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804A81DC  4E 80 00 20 */	blr 
