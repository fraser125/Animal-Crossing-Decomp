lbl_803AE5F8:
/* 803AE5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE5FC  7C 08 02 A6 */	mflr r0
/* 803AE600  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AE608  3B E0 00 00 */	li r31, 0
/* 803AE60C  A0 83 00 00 */	lhz r4, 0(r3)
/* 803AE610  28 04 07 D1 */	cmplwi r4, 0x7d1
/* 803AE614  41 80 00 0C */	blt lbl_803AE620
/* 803AE618  28 04 07 EF */	cmplwi r4, 0x7ef
/* 803AE61C  40 81 00 08 */	ble lbl_803AE624
lbl_803AE620:
/* 803AE620  3B E0 00 01 */	li r31, 1
lbl_803AE624:
/* 803AE624  88 A3 00 02 */	lbz r5, 2(r3)
/* 803AE628  28 05 00 00 */	cmplwi r5, 0
/* 803AE62C  41 82 00 0C */	beq lbl_803AE638
/* 803AE630  28 05 00 0C */	cmplwi r5, 0xc
/* 803AE634  40 81 00 08 */	ble lbl_803AE63C
lbl_803AE638:
/* 803AE638  3B E0 00 01 */	li r31, 1
lbl_803AE63C:
/* 803AE63C  88 C3 00 03 */	lbz r6, 3(r3)
/* 803AE640  28 06 00 00 */	cmplwi r6, 0
/* 803AE644  41 82 00 0C */	beq lbl_803AE650
/* 803AE648  28 06 00 1F */	cmplwi r6, 0x1f
/* 803AE64C  40 81 00 08 */	ble lbl_803AE654
lbl_803AE650:
/* 803AE650  3B E0 00 01 */	li r31, 1
lbl_803AE654:
/* 803AE654  2C 1F 00 01 */	cmpwi r31, 1
/* 803AE658  40 82 00 74 */	bne lbl_803AE6CC
/* 803AE65C  28 04 00 00 */	cmplwi r4, 0
/* 803AE660  40 82 00 1C */	bne lbl_803AE67C
/* 803AE664  28 05 00 00 */	cmplwi r5, 0
/* 803AE668  40 82 00 14 */	bne lbl_803AE67C
/* 803AE66C  28 06 00 00 */	cmplwi r6, 0
/* 803AE670  40 82 00 0C */	bne lbl_803AE67C
/* 803AE674  3B E0 00 00 */	li r31, 0
/* 803AE678  48 00 00 30 */	b lbl_803AE6A8
lbl_803AE67C:
/* 803AE67C  3C 60 80 64 */	lis r3, mTM_rtcTime_ymd_clear_code@ha /* 0x806432CC@ha */
/* 803AE680  A4 03 32 CC */	lhzu r0, mTM_rtcTime_ymd_clear_code@l(r3)  /* 0x806432CC@l */
/* 803AE684  7C 04 00 40 */	cmplw r4, r0
/* 803AE688  40 82 00 20 */	bne lbl_803AE6A8
/* 803AE68C  88 03 00 02 */	lbz r0, 2(r3)
/* 803AE690  7C 05 00 40 */	cmplw r5, r0
/* 803AE694  40 82 00 14 */	bne lbl_803AE6A8
/* 803AE698  88 03 00 03 */	lbz r0, 3(r3)
/* 803AE69C  7C 06 00 40 */	cmplw r6, r0
/* 803AE6A0  40 82 00 08 */	bne lbl_803AE6A8
/* 803AE6A4  3B E0 00 00 */	li r31, 0
lbl_803AE6A8:
/* 803AE6A8  2C 1F 00 01 */	cmpwi r31, 1
/* 803AE6AC  40 82 00 20 */	bne lbl_803AE6CC
/* 803AE6B0  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE6B4  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE6B8  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE6BC  38 80 00 5B */	li r4, 0x5b
/* 803AE6C0  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE6C4  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE6C8  4B FF E1 01 */	bl mFRm_set_errInfo
lbl_803AE6CC:
/* 803AE6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE6D0  7F E3 FB 78 */	mr r3, r31
/* 803AE6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AE6D8  7C 08 03 A6 */	mtlr r0
/* 803AE6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE6E0  4E 80 00 20 */	blr 
