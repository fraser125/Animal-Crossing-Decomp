lbl_803AE34C:
/* 803AE34C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AE350  7C 08 02 A6 */	mflr r0
/* 803AE354  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AE358  39 61 00 20 */	addi r11, r1, 0x20
/* 803AE35C  4B CE CB 6D */	bl func_8009AEC8
/* 803AE360  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AE364  3B 40 00 00 */	li r26, 0
/* 803AE368  3B A3 85 38 */	addi r29, r3, common_data@l /* 0x81138538@l */
/* 803AE36C  3B E0 00 00 */	li r31, 0
lbl_803AE370:
/* 803AE370  7F 9D FA 14 */	add r28, r29, r31
/* 803AE374  3B 60 00 00 */	li r27, 0
/* 803AE378  3B C0 00 00 */	li r30, 0
lbl_803AE37C:
/* 803AE37C  38 7E 12 60 */	addi r3, r30, 0x1260
/* 803AE380  7C 7C 1A 14 */	add r3, r28, r3
/* 803AE384  4B FF FF 79 */	bl sSC_CheckOneOriginalData
/* 803AE388  2C 03 00 00 */	cmpwi r3, 0
/* 803AE38C  40 82 00 28 */	bne lbl_803AE3B4
/* 803AE390  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE394  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE398  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE39C  38 80 01 5C */	li r4, 0x15c
/* 803AE3A0  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE3A4  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE3A8  4B FF E4 21 */	bl mFRm_set_errInfo
/* 803AE3AC  38 60 00 20 */	li r3, 0x20
/* 803AE3B0  48 00 00 84 */	b lbl_803AE434
lbl_803AE3B4:
/* 803AE3B4  3B 7B 00 01 */	addi r27, r27, 1
/* 803AE3B8  3B DE 02 20 */	addi r30, r30, 0x220
/* 803AE3BC  2C 1B 00 08 */	cmpwi r27, 8
/* 803AE3C0  41 80 FF BC */	blt lbl_803AE37C
/* 803AE3C4  3B 5A 00 01 */	addi r26, r26, 1
/* 803AE3C8  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803AE3CC  2C 1A 00 04 */	cmpwi r26, 4
/* 803AE3D0  41 80 FF A0 */	blt lbl_803AE370
/* 803AE3D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AE3D8  3B 80 00 00 */	li r28, 0
/* 803AE3DC  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803AE3E0  3B E0 00 00 */	li r31, 0
lbl_803AE3E4:
/* 803AE3E4  7C 7E FA 14 */	add r3, r30, r31
/* 803AE3E8  3C 63 00 02 */	addis r3, r3, 2
/* 803AE3EC  38 63 14 00 */	addi r3, r3, 0x1400
/* 803AE3F0  4B FF FF 0D */	bl sSC_CheckOneOriginalData
/* 803AE3F4  2C 03 00 00 */	cmpwi r3, 0
/* 803AE3F8  40 82 00 28 */	bne lbl_803AE420
/* 803AE3FC  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AE400  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AE404  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AE408  38 80 01 64 */	li r4, 0x164
/* 803AE40C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AE410  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AE414  4B FF E3 B5 */	bl mFRm_set_errInfo
/* 803AE418  38 60 00 20 */	li r3, 0x20
/* 803AE41C  48 00 00 18 */	b lbl_803AE434
lbl_803AE420:
/* 803AE420  3B 9C 00 01 */	addi r28, r28, 1
/* 803AE424  3B FF 02 20 */	addi r31, r31, 0x220
/* 803AE428  2C 1C 00 08 */	cmpwi r28, 8
/* 803AE42C  41 80 FF B8 */	blt lbl_803AE3E4
/* 803AE430  38 60 00 00 */	li r3, 0
lbl_803AE434:
/* 803AE434  39 61 00 20 */	addi r11, r1, 0x20
/* 803AE438  4B CE CA DD */	bl func_8009AF14
/* 803AE43C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AE440  7C 08 03 A6 */	mtlr r0
/* 803AE444  38 21 00 20 */	addi r1, r1, 0x20
/* 803AE448  4E 80 00 20 */	blr 
