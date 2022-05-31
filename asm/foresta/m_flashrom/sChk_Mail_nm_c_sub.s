lbl_803ACEA0:
/* 803ACEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACEA4  7C 08 02 A6 */	mflr r0
/* 803ACEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACEAC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 803ACEB0  38 60 00 00 */	li r3, 0
/* 803ACEB4  28 00 00 03 */	cmplwi r0, 3
/* 803ACEB8  41 80 00 2C */	blt lbl_803ACEE4
/* 803ACEBC  28 00 00 FF */	cmplwi r0, 0xff
/* 803ACEC0  41 82 00 24 */	beq lbl_803ACEE4
/* 803ACEC4  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACEC8  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACECC  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACED0  38 80 02 07 */	li r4, 0x207
/* 803ACED4  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACED8  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACEDC  4B FF F8 ED */	bl mFRm_set_errInfo
/* 803ACEE0  38 60 00 01 */	li r3, 1
lbl_803ACEE4:
/* 803ACEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACEE8  7C 08 03 A6 */	mtlr r0
/* 803ACEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACEF0  4E 80 00 20 */	blr 
