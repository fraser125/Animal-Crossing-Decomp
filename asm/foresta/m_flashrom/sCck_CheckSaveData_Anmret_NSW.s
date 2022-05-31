lbl_803AEB90:
/* 803AEB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AEB94  7C 08 02 A6 */	mflr r0
/* 803AEB98  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AEB9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AEBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AEBA4  3C 83 00 02 */	addis r4, r3, 2
/* 803AEBA8  A0 04 41 60 */	lhz r0, 0x4160(r4)
/* 803AEBAC  28 00 00 00 */	cmplwi r0, 0
/* 803AEBB0  41 82 00 34 */	beq lbl_803AEBE4
/* 803AEBB4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 803AEBB8  2C 00 00 0E */	cmpwi r0, 0xe
/* 803AEBBC  41 82 00 28 */	beq lbl_803AEBE4
/* 803AEBC0  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEBC4  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEBC8  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEBCC  38 80 01 53 */	li r4, 0x153
/* 803AEBD0  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEBD4  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEBD8  4B FF DB F1 */	bl mFRm_set_errInfo
/* 803AEBDC  38 60 00 01 */	li r3, 1
/* 803AEBE0  48 00 00 48 */	b lbl_803AEC28
lbl_803AEBE4:
/* 803AEBE4  38 61 00 08 */	addi r3, r1, 8
/* 803AEBE8  38 84 41 64 */	addi r4, r4, 0x4164
/* 803AEBEC  48 04 48 75 */	bl mTM_set_renew_time
/* 803AEBF0  38 61 00 08 */	addi r3, r1, 8
/* 803AEBF4  4B FF FA 05 */	bl func_803AE5F8
/* 803AEBF8  2C 03 00 01 */	cmpwi r3, 1
/* 803AEBFC  40 82 00 28 */	bne lbl_803AEC24
/* 803AEC00  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEC04  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEC08  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEC0C  38 80 01 5D */	li r4, 0x15d
/* 803AEC10  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEC14  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEC18  4B FF DB B1 */	bl mFRm_set_errInfo
/* 803AEC1C  38 60 00 01 */	li r3, 1
/* 803AEC20  48 00 00 08 */	b lbl_803AEC28
lbl_803AEC24:
/* 803AEC24  38 60 00 00 */	li r3, 0
lbl_803AEC28:
/* 803AEC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AEC2C  7C 08 03 A6 */	mtlr r0
/* 803AEC30  38 21 00 10 */	addi r1, r1, 0x10
/* 803AEC34  4E 80 00 20 */	blr 
