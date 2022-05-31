lbl_803AEAC0:
/* 803AEAC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AEAC4  7C 08 02 A6 */	mflr r0
/* 803AEAC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AEACC  39 61 00 20 */	addi r11, r1, 0x20
/* 803AEAD0  4B CE C4 01 */	bl func_8009AED0
/* 803AEAD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AEAD8  3B 80 00 00 */	li r28, 0
/* 803AEADC  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803AEAE0  3B E0 00 00 */	li r31, 0
lbl_803AEAE4:
/* 803AEAE4  7C 9E FA 14 */	add r4, r30, r31
/* 803AEAE8  38 61 00 08 */	addi r3, r1, 8
/* 803AEAEC  3F A4 00 02 */	addis r29, r4, 2
/* 803AEAF0  38 9D 3E 7C */	addi r4, r29, 0x3e7c
/* 803AEAF4  3B BD 3E 68 */	addi r29, r29, 0x3e68
/* 803AEAF8  48 04 49 69 */	bl mTM_set_renew_time
/* 803AEAFC  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 803AEB00  2C 00 00 00 */	cmpwi r0, 0
/* 803AEB04  40 80 00 28 */	bge lbl_803AEB2C
/* 803AEB08  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEB0C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEB10  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEB14  38 80 01 33 */	li r4, 0x133
/* 803AEB18  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEB1C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEB20  4B FF DC A9 */	bl mFRm_set_errInfo
/* 803AEB24  38 60 00 01 */	li r3, 1
/* 803AEB28  48 00 00 50 */	b lbl_803AEB78
lbl_803AEB2C:
/* 803AEB2C  41 82 00 38 */	beq lbl_803AEB64
/* 803AEB30  38 61 00 08 */	addi r3, r1, 8
/* 803AEB34  4B FF FA C5 */	bl func_803AE5F8
/* 803AEB38  2C 03 00 01 */	cmpwi r3, 1
/* 803AEB3C  40 82 00 28 */	bne lbl_803AEB64
/* 803AEB40  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEB44  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEB48  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEB4C  38 80 01 3C */	li r4, 0x13c
/* 803AEB50  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEB54  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEB58  4B FF DC 71 */	bl mFRm_set_errInfo
/* 803AEB5C  38 60 00 01 */	li r3, 1
/* 803AEB60  48 00 00 18 */	b lbl_803AEB78
lbl_803AEB64:
/* 803AEB64  3B 9C 00 01 */	addi r28, r28, 1
/* 803AEB68  3B FF 00 20 */	addi r31, r31, 0x20
/* 803AEB6C  2C 1C 00 05 */	cmpwi r28, 5
/* 803AEB70  41 80 FF 74 */	blt lbl_803AEAE4
/* 803AEB74  38 60 00 00 */	li r3, 0
lbl_803AEB78:
/* 803AEB78  39 61 00 20 */	addi r11, r1, 0x20
/* 803AEB7C  4B CE C3 A1 */	bl func_8009AF1C
/* 803AEB80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AEB84  7C 08 03 A6 */	mtlr r0
/* 803AEB88  38 21 00 20 */	addi r1, r1, 0x20
/* 803AEB8C  4E 80 00 20 */	blr 
