lbl_803ADAA0:
/* 803ADAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ADAA4  7C 08 02 A6 */	mflr r0
/* 803ADAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ADAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ADAB0  7C 7F 1B 78 */	mr r31, r3
/* 803ADAB4  93 C1 00 08 */	stw r30, 8(r1)
/* 803ADAB8  3B C0 00 00 */	li r30, 0
/* 803ADABC  88 03 02 20 */	lbz r0, 0x220(r3)
/* 803ADAC0  28 00 00 10 */	cmplwi r0, 0x10
/* 803ADAC4  41 80 00 24 */	blt lbl_803ADAE8
/* 803ADAC8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADACC  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADAD0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADAD4  38 80 07 8F */	li r4, 0x78f
/* 803ADAD8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADADC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADAE0  4B FF EC E9 */	bl mFRm_set_errInfo
/* 803ADAE4  3B C0 00 01 */	li r30, 1
lbl_803ADAE8:
/* 803ADAE8  88 7F 02 21 */	lbz r3, 0x221(r31)
/* 803ADAEC  38 80 00 00 */	li r4, 0
/* 803ADAF0  38 03 24 00 */	addi r0, r3, 0x2400
/* 803ADAF4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803ADAF8  28 00 24 00 */	cmplwi r0, 0x2400
/* 803ADAFC  41 80 00 10 */	blt lbl_803ADB0C
/* 803ADB00  28 00 24 FF */	cmplwi r0, 0x24ff
/* 803ADB04  40 80 00 08 */	bge lbl_803ADB0C
/* 803ADB08  38 80 00 01 */	li r4, 1
lbl_803ADB0C:
/* 803ADB0C  2C 04 00 00 */	cmpwi r4, 0
/* 803ADB10  40 82 00 24 */	bne lbl_803ADB34
/* 803ADB14  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADB18  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADB1C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADB20  38 80 07 9D */	li r4, 0x79d
/* 803ADB24  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADB28  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADB2C  4B FF EC 9D */	bl mFRm_set_errInfo
/* 803ADB30  3B C0 00 01 */	li r30, 1
lbl_803ADB34:
/* 803ADB34  88 1F 02 22 */	lbz r0, 0x222(r31)
/* 803ADB38  28 00 00 0A */	cmplwi r0, 0xa
/* 803ADB3C  40 81 00 24 */	ble lbl_803ADB60
/* 803ADB40  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADB44  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADB48  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADB4C  38 80 07 AB */	li r4, 0x7ab
/* 803ADB50  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADB54  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADB58  4B FF EC 71 */	bl mFRm_set_errInfo
/* 803ADB5C  3B C0 00 01 */	li r30, 1
lbl_803ADB60:
/* 803ADB60  38 7F 02 24 */	addi r3, r31, 0x224
/* 803ADB64  4B FF F1 1D */	bl sChk_OSRTCTime_sub
/* 803ADB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ADB6C  7F DE 1B 78 */	or r30, r30, r3
/* 803ADB70  7F C3 F3 78 */	mr r3, r30
/* 803ADB74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ADB78  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ADB7C  7C 08 03 A6 */	mtlr r0
/* 803ADB80  38 21 00 10 */	addi r1, r1, 0x10
/* 803ADB84  4E 80 00 20 */	blr 
