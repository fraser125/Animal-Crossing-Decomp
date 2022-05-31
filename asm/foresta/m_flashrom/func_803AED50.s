lbl_803AED50:
/* 803AED50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AED54  7C 08 02 A6 */	mflr r0
/* 803AED58  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AED5C  39 61 00 20 */	addi r11, r1, 0x20
/* 803AED60  4B CE C1 6D */	bl func_8009AECC
/* 803AED64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AED68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AED6C  3F C3 00 01 */	addis r30, r3, 1
/* 803AED70  3B DE 91 2C */	addi r30, r30, -28372
/* 803AED74  48 01 B4 49 */	bl mNtc_notice_write_num
/* 803AED78  7C 7F 1B 78 */	mr r31, r3
/* 803AED7C  3B A0 00 00 */	li r29, 0
/* 803AED80  48 00 00 8C */	b lbl_803AEE0C
lbl_803AED84:
/* 803AED84  7F DB F3 78 */	mr r27, r30
/* 803AED88  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 803AED8C  48 05 85 A1 */	bl lbRTC_time_c_save_data_check
/* 803AED90  2C 03 00 00 */	cmpwi r3, 0
/* 803AED94  41 82 00 28 */	beq lbl_803AEDBC
/* 803AED98  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AED9C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEDA0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEDA4  38 80 00 41 */	li r4, 0x41
/* 803AEDA8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEDAC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEDB0  4B FF DA 19 */	bl mFRm_set_errInfo
/* 803AEDB4  38 60 00 01 */	li r3, 1
/* 803AEDB8  48 00 00 60 */	b lbl_803AEE18
lbl_803AEDBC:
/* 803AEDBC  3B 80 00 00 */	li r28, 0
lbl_803AEDC0:
/* 803AEDC0  88 7B 00 00 */	lbz r3, 0(r27)
/* 803AEDC4  48 00 08 61 */	bl mFont_char_save_data_check
/* 803AEDC8  2C 03 00 00 */	cmpwi r3, 0
/* 803AEDCC  41 82 00 28 */	beq lbl_803AEDF4
/* 803AEDD0  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEDD4  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEDD8  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEDDC  38 80 00 49 */	li r4, 0x49
/* 803AEDE0  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEDE4  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEDE8  4B FF D9 E1 */	bl mFRm_set_errInfo
/* 803AEDEC  38 60 00 01 */	li r3, 1
/* 803AEDF0  48 00 00 28 */	b lbl_803AEE18
lbl_803AEDF4:
/* 803AEDF4  3B 9C 00 01 */	addi r28, r28, 1
/* 803AEDF8  3B 7B 00 01 */	addi r27, r27, 1
/* 803AEDFC  2C 1C 00 C0 */	cmpwi r28, 0xc0
/* 803AEE00  41 80 FF C0 */	blt lbl_803AEDC0
/* 803AEE04  3B DE 00 C8 */	addi r30, r30, 0xc8
/* 803AEE08  3B BD 00 01 */	addi r29, r29, 1
lbl_803AEE0C:
/* 803AEE0C  7C 1D F8 00 */	cmpw r29, r31
/* 803AEE10  41 80 FF 74 */	blt lbl_803AED84
/* 803AEE14  38 60 00 00 */	li r3, 0
lbl_803AEE18:
/* 803AEE18  39 61 00 20 */	addi r11, r1, 0x20
/* 803AEE1C  4B CE C0 FD */	bl func_8009AF18
/* 803AEE20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AEE24  7C 08 03 A6 */	mtlr r0
/* 803AEE28  38 21 00 20 */	addi r1, r1, 0x20
/* 803AEE2C  4E 80 00 20 */	blr 
