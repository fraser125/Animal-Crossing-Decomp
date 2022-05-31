lbl_803ACDB8:
/* 803ACDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ACDBC  7C 08 02 A6 */	mflr r0
/* 803ACDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ACDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ACDC8  3B E0 00 00 */	li r31, 0
/* 803ACDCC  A0 83 00 00 */	lhz r4, 0(r3)
/* 803ACDD0  28 04 07 D0 */	cmplwi r4, 0x7d0
/* 803ACDD4  41 80 00 0C */	blt lbl_803ACDE0
/* 803ACDD8  28 04 07 F0 */	cmplwi r4, 0x7f0
/* 803ACDDC  40 81 00 08 */	ble lbl_803ACDE4
lbl_803ACDE0:
/* 803ACDE0  3B E0 00 01 */	li r31, 1
lbl_803ACDE4:
/* 803ACDE4  88 A3 00 02 */	lbz r5, 2(r3)
/* 803ACDE8  28 05 00 00 */	cmplwi r5, 0
/* 803ACDEC  41 82 00 0C */	beq lbl_803ACDF8
/* 803ACDF0  28 05 00 0C */	cmplwi r5, 0xc
/* 803ACDF4  40 81 00 08 */	ble lbl_803ACDFC
lbl_803ACDF8:
/* 803ACDF8  3B E0 00 01 */	li r31, 1
lbl_803ACDFC:
/* 803ACDFC  88 C3 00 03 */	lbz r6, 3(r3)
/* 803ACE00  28 06 00 00 */	cmplwi r6, 0
/* 803ACE04  41 82 00 0C */	beq lbl_803ACE10
/* 803ACE08  28 06 00 1F */	cmplwi r6, 0x1f
/* 803ACE0C  40 81 00 08 */	ble lbl_803ACE14
lbl_803ACE10:
/* 803ACE10  3B E0 00 01 */	li r31, 1
lbl_803ACE14:
/* 803ACE14  2C 1F 00 01 */	cmpwi r31, 1
/* 803ACE18  40 82 00 70 */	bne lbl_803ACE88
/* 803ACE1C  28 04 00 00 */	cmplwi r4, 0
/* 803ACE20  40 82 00 1C */	bne lbl_803ACE3C
/* 803ACE24  28 05 00 00 */	cmplwi r5, 0
/* 803ACE28  40 82 00 14 */	bne lbl_803ACE3C
/* 803ACE2C  28 06 00 00 */	cmplwi r6, 0
/* 803ACE30  40 82 00 0C */	bne lbl_803ACE3C
/* 803ACE34  3B E0 00 00 */	li r31, 0
/* 803ACE38  48 00 00 50 */	b lbl_803ACE88
lbl_803ACE3C:
/* 803ACE3C  3C 60 80 64 */	lis r3, mTM_rtcTime_ymd_clear_code@ha /* 0x806432CC@ha */
/* 803ACE40  A4 03 32 CC */	lhzu r0, mTM_rtcTime_ymd_clear_code@l(r3)  /* 0x806432CC@l */
/* 803ACE44  7C 04 00 40 */	cmplw r4, r0
/* 803ACE48  40 82 00 24 */	bne lbl_803ACE6C
/* 803ACE4C  88 03 00 02 */	lbz r0, 2(r3)
/* 803ACE50  7C 05 00 40 */	cmplw r5, r0
/* 803ACE54  40 82 00 18 */	bne lbl_803ACE6C
/* 803ACE58  88 03 00 03 */	lbz r0, 3(r3)
/* 803ACE5C  7C 06 00 40 */	cmplw r6, r0
/* 803ACE60  40 82 00 0C */	bne lbl_803ACE6C
/* 803ACE64  3B E0 00 00 */	li r31, 0
/* 803ACE68  48 00 00 20 */	b lbl_803ACE88
lbl_803ACE6C:
/* 803ACE6C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ACE70  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ACE74  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ACE78  38 80 01 D0 */	li r4, 0x1d0
/* 803ACE7C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ACE80  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ACE84  4B FF F9 45 */	bl mFRm_set_errInfo
lbl_803ACE88:
/* 803ACE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ACE8C  7F E3 FB 78 */	mr r3, r31
/* 803ACE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ACE94  7C 08 03 A6 */	mtlr r0
/* 803ACE98  38 21 00 10 */	addi r1, r1, 0x10
/* 803ACE9C  4E 80 00 20 */	blr 
