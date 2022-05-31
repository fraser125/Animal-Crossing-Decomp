lbl_803ADF88:
/* 803ADF88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803ADF8C  7C 08 02 A6 */	mflr r0
/* 803ADF90  90 01 00 24 */	stw r0, 0x24(r1)
/* 803ADF94  39 61 00 20 */	addi r11, r1, 0x20
/* 803ADF98  4B CE CF 39 */	bl func_8009AED0
/* 803ADF9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ADFA0  3B 80 00 00 */	li r28, 0
/* 803ADFA4  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803ADFA8  3B E0 00 00 */	li r31, 0
lbl_803ADFAC:
/* 803ADFAC  7C 7E FA 14 */	add r3, r30, r31
/* 803ADFB0  3F A3 00 01 */	addis r29, r3, 1
/* 803ADFB4  3B BD 9C E8 */	addi r29, r29, -25368
/* 803ADFB8  7F A3 EB 78 */	mr r3, r29
/* 803ADFBC  4B FF FF 1D */	bl sSC_CheckHouseSize
/* 803ADFC0  2C 03 00 00 */	cmpwi r3, 0
/* 803ADFC4  40 82 00 28 */	bne lbl_803ADFEC
/* 803ADFC8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803ADFCC  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803ADFD0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803ADFD4  38 80 00 DC */	li r4, 0xdc
/* 803ADFD8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803ADFDC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803ADFE0  4B FF E7 E9 */	bl mFRm_set_errInfo
/* 803ADFE4  38 60 00 04 */	li r3, 4
/* 803ADFE8  48 00 00 B4 */	b lbl_803AE09C
lbl_803ADFEC:
/* 803ADFEC  7F A3 EB 78 */	mr r3, r29
/* 803ADFF0  4B FF FE FD */	bl sSC_CheckHappyRoom
/* 803ADFF4  2C 03 00 00 */	cmpwi r3, 0
/* 803ADFF8  40 82 00 28 */	bne lbl_803AE020
/* 803ADFFC  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE000  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE004  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE008  38 80 00 E3 */	li r4, 0xe3
/* 803AE00C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE010  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE014  4B FF E7 B5 */	bl mFRm_set_errInfo
/* 803AE018  38 60 00 04 */	li r3, 4
/* 803AE01C  48 00 00 80 */	b lbl_803AE09C
lbl_803AE020:
/* 803AE020  7F A3 EB 78 */	mr r3, r29
/* 803AE024  4B FF FE D1 */	bl sSC_CheckDoorOriginal
/* 803AE028  2C 03 00 00 */	cmpwi r3, 0
/* 803AE02C  40 82 00 28 */	bne lbl_803AE054
/* 803AE030  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE034  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE038  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE03C  38 80 00 EA */	li r4, 0xea
/* 803AE040  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE044  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE048  4B FF E7 81 */	bl mFRm_set_errInfo
/* 803AE04C  38 60 00 04 */	li r3, 4
/* 803AE050  48 00 00 4C */	b lbl_803AE09C
lbl_803AE054:
/* 803AE054  7F A3 EB 78 */	mr r3, r29
/* 803AE058  4B FF FE C9 */	bl sSC_CheckHouseInterior
/* 803AE05C  2C 03 00 00 */	cmpwi r3, 0
/* 803AE060  40 82 00 28 */	bne lbl_803AE088
/* 803AE064  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE068  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE06C  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE070  38 80 00 F1 */	li r4, 0xf1
/* 803AE074  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE078  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE07C  4B FF E7 4D */	bl mFRm_set_errInfo
/* 803AE080  38 60 00 04 */	li r3, 4
/* 803AE084  48 00 00 18 */	b lbl_803AE09C
lbl_803AE088:
/* 803AE088  3B 9C 00 01 */	addi r28, r28, 1
/* 803AE08C  3B FF 26 B0 */	addi r31, r31, 0x26b0
/* 803AE090  2C 1C 00 04 */	cmpwi r28, 4
/* 803AE094  41 80 FF 18 */	blt lbl_803ADFAC
/* 803AE098  38 60 00 00 */	li r3, 0
lbl_803AE09C:
/* 803AE09C  39 61 00 20 */	addi r11, r1, 0x20
/* 803AE0A0  4B CE CE 7D */	bl func_8009AF1C
/* 803AE0A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AE0A8  7C 08 03 A6 */	mtlr r0
/* 803AE0AC  38 21 00 20 */	addi r1, r1, 0x20
/* 803AE0B0  4E 80 00 20 */	blr 
