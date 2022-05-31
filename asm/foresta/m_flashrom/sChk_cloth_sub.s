lbl_803ACBB4:
/* 803ACBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACBB8  7C 08 02 A6 */	mflr r0
/* 803ACBBC  38 A0 00 00 */	li r5, 0
/* 803ACBC0  38 80 00 00 */	li r4, 0
/* 803ACBC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACBC8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803ACBCC  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 803ACBD0  41 82 00 14 */	beq lbl_803ACBE4
/* 803ACBD4  28 00 24 00 */	cmplwi r0, 0x2400
/* 803ACBD8  41 80 00 10 */	blt lbl_803ACBE8
/* 803ACBDC  28 00 24 FF */	cmplwi r0, 0x24ff
/* 803ACBE0  40 80 00 08 */	bge lbl_803ACBE8
lbl_803ACBE4:
/* 803ACBE4  38 80 00 01 */	li r4, 1
lbl_803ACBE8:
/* 803ACBE8  2C 04 00 00 */	cmpwi r4, 0
/* 803ACBEC  40 82 00 2C */	bne lbl_803ACC18
/* 803ACBF0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803ACBF4  41 82 00 24 */	beq lbl_803ACC18
/* 803ACBF8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACBFC  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACC00  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACC04  38 80 00 F7 */	li r4, 0xf7
/* 803ACC08  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACC0C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACC10  4B FF FB B9 */	bl mFRm_set_errInfo
/* 803ACC14  38 A0 00 01 */	li r5, 1
lbl_803ACC18:
/* 803ACC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACC1C  7C A3 2B 78 */	mr r3, r5
/* 803ACC20  7C 08 03 A6 */	mtlr r0
/* 803ACC24  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACC28  4E 80 00 20 */	blr 
