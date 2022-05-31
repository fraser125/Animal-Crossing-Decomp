lbl_803E1DB0:
/* 803E1DB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E1DB4  7C 08 02 A6 */	mflr r0
/* 803E1DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E1DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 803E1DC0  4B CB 91 15 */	bl func_8009AED4
/* 803E1DC4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E1DC8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E1DCC  3C 63 00 02 */	addis r3, r3, 2
/* 803E1DD0  8B A3 60 03 */	lbz r29, 0x6003(r3)
/* 803E1DD4  3B E3 61 20 */	addi r31, r3, 0x6120
/* 803E1DD8  83 C3 61 3C */	lwz r30, 0x613c(r3)
/* 803E1DDC  7F A3 EB 78 */	mr r3, r29
/* 803E1DE0  4B FD 1D 11 */	bl mLd_PlayerManKindCheckNo
/* 803E1DE4  2C 03 00 00 */	cmpwi r3, 0
/* 803E1DE8  40 82 00 A0 */	bne lbl_803E1E88
/* 803E1DEC  28 1E 00 00 */	cmplwi r30, 0
/* 803E1DF0  41 82 00 98 */	beq lbl_803E1E88
/* 803E1DF4  7F C3 F3 78 */	mr r3, r30
/* 803E1DF8  4B FF E2 4D */	bl mPr_NullCheckPersonalID
/* 803E1DFC  2C 03 00 00 */	cmpwi r3, 0
/* 803E1E00  40 82 00 88 */	bne lbl_803E1E88
/* 803E1E04  1C BD 00 0E */	mulli r5, r29, 0xe
/* 803E1E08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E1E0C  3C 60 80 64 */	lis r3, mTM_rtcTime_ymd_clear_code@ha /* 0x806432CC@ha */
/* 803E1E10  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803E1E14  7C A0 2A 14 */	add r5, r0, r5
/* 803E1E18  38 83 32 CC */	addi r4, r3, mTM_rtcTime_ymd_clear_code@l /* 0x806432CC@l */
/* 803E1E1C  3C 65 00 02 */	addis r3, r5, 2
/* 803E1E20  A0 04 00 00 */	lhz r0, 0(r4)
/* 803E1E24  A4 A3 12 E4 */	lhzu r5, 0x12e4(r3)
/* 803E1E28  7C 05 00 40 */	cmplw r5, r0
/* 803E1E2C  41 82 00 54 */	beq lbl_803E1E80
/* 803E1E30  88 C3 00 02 */	lbz r6, 2(r3)
/* 803E1E34  88 04 00 02 */	lbz r0, 2(r4)
/* 803E1E38  7C 06 00 40 */	cmplw r6, r0
/* 803E1E3C  41 82 00 44 */	beq lbl_803E1E80
/* 803E1E40  88 E3 00 03 */	lbz r7, 3(r3)
/* 803E1E44  88 04 00 03 */	lbz r0, 3(r4)
/* 803E1E48  7C 07 00 40 */	cmplw r7, r0
/* 803E1E4C  41 82 00 34 */	beq lbl_803E1E80
/* 803E1E50  A0 1F 00 06 */	lhz r0, 6(r31)
/* 803E1E54  7C 05 00 40 */	cmplw r5, r0
/* 803E1E58  40 82 00 1C */	bne lbl_803E1E74
/* 803E1E5C  88 1F 00 05 */	lbz r0, 5(r31)
/* 803E1E60  7C 06 00 40 */	cmplw r6, r0
/* 803E1E64  40 82 00 10 */	bne lbl_803E1E74
/* 803E1E68  88 1F 00 03 */	lbz r0, 3(r31)
/* 803E1E6C  7C 07 00 40 */	cmplw r7, r0
/* 803E1E70  41 82 00 18 */	beq lbl_803E1E88
lbl_803E1E74:
/* 803E1E74  7F E4 FB 78 */	mr r4, r31
/* 803E1E78  4B FF FE ED */	bl mPr_SendMotherMail
/* 803E1E7C  48 00 00 0C */	b lbl_803E1E88
lbl_803E1E80:
/* 803E1E80  7F E4 FB 78 */	mr r4, r31
/* 803E1E84  48 01 15 DD */	bl mTM_set_renew_time
lbl_803E1E88:
/* 803E1E88  39 61 00 20 */	addi r11, r1, 0x20
/* 803E1E8C  4B CB 90 95 */	bl func_8009AF20
/* 803E1E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E1E94  7C 08 03 A6 */	mtlr r0
/* 803E1E98  38 21 00 20 */	addi r1, r1, 0x20
/* 803E1E9C  4E 80 00 20 */	blr 
