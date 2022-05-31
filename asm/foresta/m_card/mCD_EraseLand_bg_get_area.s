lbl_803FDEF8:
/* 803FDEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FDEFC  7C 08 02 A6 */	mflr r0
/* 803FDF00  38 A0 00 01 */	li r5, 1
/* 803FDF04  38 C0 00 01 */	li r6, 1
/* 803FDF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FDF0C  4B FF DB 1D */	bl mCD_bg_get_area_common
/* 803FDF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FDF14  7C 08 03 A6 */	mtlr r0
/* 803FDF18  38 21 00 10 */	addi r1, r1, 0x10
/* 803FDF1C  4E 80 00 20 */	blr 
