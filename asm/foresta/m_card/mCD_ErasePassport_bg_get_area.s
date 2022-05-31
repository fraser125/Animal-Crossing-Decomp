lbl_803FEA08:
/* 803FEA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FEA0C  7C 08 02 A6 */	mflr r0
/* 803FEA10  38 A0 00 07 */	li r5, 7
/* 803FEA14  38 C0 00 01 */	li r6, 1
/* 803FEA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FEA1C  4B FF D0 0D */	bl mCD_bg_get_area_common
/* 803FEA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FEA24  7C 08 03 A6 */	mtlr r0
/* 803FEA28  38 21 00 10 */	addi r1, r1, 0x10
/* 803FEA2C  4E 80 00 20 */	blr 
