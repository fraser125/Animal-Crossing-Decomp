lbl_803AE514:
/* 803AE514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AE518  7C 08 02 A6 */	mflr r0
/* 803AE51C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AE520  39 61 00 20 */	addi r11, r1, 0x20
/* 803AE524  4B CE C9 B1 */	bl func_8009AED4
/* 803AE528  3C 60 80 65 */	lis r3, sSC_map_perfect_table@ha /* 0x80654110@ha */
/* 803AE52C  3B A0 00 00 */	li r29, 0
/* 803AE530  3B C3 41 10 */	addi r30, r3, sSC_map_perfect_table@l /* 0x80654110@l */
/* 803AE534  3B E0 00 00 */	li r31, 0
lbl_803AE538:
/* 803AE538  7C 7E F8 2E */	lwzx r3, r30, r31
/* 803AE53C  4B FF FF 11 */	bl sSC_BlockInfo2Count
/* 803AE540  2C 03 00 00 */	cmpwi r3, 0
/* 803AE544  41 81 00 28 */	bgt lbl_803AE56C
/* 803AE548  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE54C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE550  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE554  38 80 01 B2 */	li r4, 0x1b2
/* 803AE558  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE55C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE560  4B FF E2 69 */	bl mFRm_set_errInfo
/* 803AE564  38 60 00 80 */	li r3, 0x80
/* 803AE568  48 00 00 18 */	b lbl_803AE580
lbl_803AE56C:
/* 803AE56C  3B BD 00 01 */	addi r29, r29, 1
/* 803AE570  3B FF 00 04 */	addi r31, r31, 4
/* 803AE574  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803AE578  41 80 FF C0 */	blt lbl_803AE538
/* 803AE57C  38 60 00 00 */	li r3, 0
lbl_803AE580:
/* 803AE580  39 61 00 20 */	addi r11, r1, 0x20
/* 803AE584  4B CE C9 9D */	bl func_8009AF20
/* 803AE588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AE58C  7C 08 03 A6 */	mtlr r0
/* 803AE590  38 21 00 20 */	addi r1, r1, 0x20
/* 803AE594  4E 80 00 20 */	blr 
