lbl_803AE1CC:
/* 803AE1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AE1D0  7C 08 02 A6 */	mflr r0
/* 803AE1D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AE1D8  38 80 00 19 */	li r4, 0x19
/* 803AE1DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AE1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AE1E4  3C 63 00 02 */	addis r3, r3, 2
/* 803AE1E8  38 63 13 A8 */	addi r3, r3, 0x13a8
/* 803AE1EC  4B FF FF 65 */	bl sSC_CheckMuseumBitData
/* 803AE1F0  2C 03 00 00 */	cmpwi r3, 0
/* 803AE1F4  40 82 00 28 */	bne lbl_803AE21C
/* 803AE1F8  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE1FC  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE200  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE204  38 80 01 2C */	li r4, 0x12c
/* 803AE208  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE20C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE210  4B FF E5 B9 */	bl mFRm_set_errInfo
/* 803AE214  38 60 00 10 */	li r3, 0x10
/* 803AE218  48 00 00 D4 */	b lbl_803AE2EC
lbl_803AE21C:
/* 803AE21C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AE220  38 80 00 0F */	li r4, 0xf
/* 803AE224  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AE228  3C 63 00 02 */	addis r3, r3, 2
/* 803AE22C  38 63 13 B5 */	addi r3, r3, 0x13b5
/* 803AE230  4B FF FF 21 */	bl sSC_CheckMuseumBitData
/* 803AE234  2C 03 00 00 */	cmpwi r3, 0
/* 803AE238  40 82 00 28 */	bne lbl_803AE260
/* 803AE23C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE240  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE244  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE248  38 80 01 31 */	li r4, 0x131
/* 803AE24C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE250  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE254  4B FF E5 75 */	bl mFRm_set_errInfo
/* 803AE258  38 60 00 10 */	li r3, 0x10
/* 803AE25C  48 00 00 90 */	b lbl_803AE2EC
lbl_803AE260:
/* 803AE260  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AE264  38 80 00 28 */	li r4, 0x28
/* 803AE268  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AE26C  3C 63 00 02 */	addis r3, r3, 2
/* 803AE270  38 63 13 BD */	addi r3, r3, 0x13bd
/* 803AE274  4B FF FE DD */	bl sSC_CheckMuseumBitData
/* 803AE278  2C 03 00 00 */	cmpwi r3, 0
/* 803AE27C  40 82 00 28 */	bne lbl_803AE2A4
/* 803AE280  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE284  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE288  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE28C  38 80 01 36 */	li r4, 0x136
/* 803AE290  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE294  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE298  4B FF E5 31 */	bl mFRm_set_errInfo
/* 803AE29C  38 60 00 10 */	li r3, 0x10
/* 803AE2A0  48 00 00 4C */	b lbl_803AE2EC
lbl_803AE2A4:
/* 803AE2A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AE2A8  38 80 00 28 */	li r4, 0x28
/* 803AE2AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AE2B0  3C 63 00 02 */	addis r3, r3, 2
/* 803AE2B4  38 63 13 D2 */	addi r3, r3, 0x13d2
/* 803AE2B8  4B FF FE 99 */	bl sSC_CheckMuseumBitData
/* 803AE2BC  2C 03 00 00 */	cmpwi r3, 0
/* 803AE2C0  40 82 00 28 */	bne lbl_803AE2E8
/* 803AE2C4  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE2C8  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE2CC  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE2D0  38 80 01 3B */	li r4, 0x13b
/* 803AE2D4  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE2D8  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE2DC  4B FF E4 ED */	bl mFRm_set_errInfo
/* 803AE2E0  38 60 00 10 */	li r3, 0x10
/* 803AE2E4  48 00 00 08 */	b lbl_803AE2EC
lbl_803AE2E8:
/* 803AE2E8  38 60 00 00 */	li r3, 0
lbl_803AE2EC:
/* 803AE2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AE2F0  7C 08 03 A6 */	mtlr r0
/* 803AE2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803AE2F8  4E 80 00 20 */	blr 
