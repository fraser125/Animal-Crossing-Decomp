lbl_803ACAC4:
/* 803ACAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACAC8  7C 08 02 A6 */	mflr r0
/* 803ACACC  28 03 00 10 */	cmplwi r3, 0x10
/* 803ACAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACAD4  38 00 00 00 */	li r0, 0
/* 803ACAD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ACADC  7C 9F 23 78 */	mr r31, r4
/* 803ACAE0  41 80 00 2C */	blt lbl_803ACB0C
/* 803ACAE4  28 03 00 FF */	cmplwi r3, 0xff
/* 803ACAE8  41 82 00 24 */	beq lbl_803ACB0C
/* 803ACAEC  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACAF0  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACAF4  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACAF8  38 80 00 8C */	li r4, 0x8c
/* 803ACAFC  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACB00  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACB04  4B FF FC C5 */	bl mFRm_set_errInfo
/* 803ACB08  38 00 00 01 */	li r0, 1
lbl_803ACB0C:
/* 803ACB0C  28 1F 00 10 */	cmplwi r31, 0x10
/* 803ACB10  41 80 00 2C */	blt lbl_803ACB3C
/* 803ACB14  28 1F 00 FF */	cmplwi r31, 0xff
/* 803ACB18  41 82 00 24 */	beq lbl_803ACB3C
/* 803ACB1C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACB20  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACB24  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACB28  38 80 00 97 */	li r4, 0x97
/* 803ACB2C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACB30  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACB34  4B FF FC 95 */	bl mFRm_set_errInfo
/* 803ACB38  38 00 00 01 */	li r0, 1
lbl_803ACB3C:
/* 803ACB3C  7C 03 03 78 */	mr r3, r0
/* 803ACB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACB44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ACB48  7C 08 03 A6 */	mtlr r0
/* 803ACB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACB50  4E 80 00 20 */	blr 
