lbl_803AE920:
/* 803AE920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE924  7C 08 02 A6 */	mflr r0
/* 803AE928  38 63 23 40 */	addi r3, r3, 0x2340
/* 803AE92C  38 C0 00 00 */	li r6, 0
/* 803AE930  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE934  38 00 00 08 */	li r0, 8
/* 803AE938  38 E0 00 00 */	li r7, 0
/* 803AE93C  38 80 00 01 */	li r4, 1
/* 803AE940  7C 09 03 A6 */	mtctr r0
lbl_803AE944:
/* 803AE944  88 A3 00 00 */	lbz r5, 0(r3)
/* 803AE948  28 05 00 08 */	cmplwi r5, 8
/* 803AE94C  41 80 00 0C */	blt lbl_803AE958
/* 803AE950  38 60 00 01 */	li r3, 1
/* 803AE954  48 00 00 58 */	b lbl_803AE9AC
lbl_803AE958:
/* 803AE958  7C 80 28 30 */	slw r0, r4, r5
/* 803AE95C  7C E7 2A 14 */	add r7, r7, r5
/* 803AE960  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803AE964  38 63 00 01 */	addi r3, r3, 1
/* 803AE968  7C C6 03 78 */	or r6, r6, r0
/* 803AE96C  42 00 FF D8 */	bdnz lbl_803AE944
/* 803AE970  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 803AE974  28 00 00 FF */	cmplwi r0, 0xff
/* 803AE978  41 82 00 30 */	beq lbl_803AE9A8
/* 803AE97C  2C 07 00 00 */	cmpwi r7, 0
/* 803AE980  41 82 00 28 */	beq lbl_803AE9A8
/* 803AE984  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE988  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE98C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE990  38 80 00 EF */	li r4, 0xef
/* 803AE994  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE998  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE99C  4B FF DE 2D */	bl mFRm_set_errInfo
/* 803AE9A0  38 60 00 01 */	li r3, 1
/* 803AE9A4  48 00 00 08 */	b lbl_803AE9AC
lbl_803AE9A8:
/* 803AE9A8  38 60 00 00 */	li r3, 0
lbl_803AE9AC:
/* 803AE9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE9B0  7C 08 03 A6 */	mtlr r0
/* 803AE9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE9B8  4E 80 00 20 */	blr 
