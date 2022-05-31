lbl_80402AC4:
/* 80402AC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80402AC8  7C 08 02 A6 */	mflr r0
/* 80402ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80402AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80402AD4  4B C9 84 01 */	bl func_8009AED4
/* 80402AD8  7C 7E 1B 78 */	mr r30, r3
/* 80402ADC  7C 9F 23 78 */	mr r31, r4
/* 80402AE0  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 80402AE4  28 1D 00 00 */	cmplwi r29, 0
/* 80402AE8  41 82 00 F4 */	beq lbl_80402BDC
/* 80402AEC  38 00 00 07 */	li r0, 7
/* 80402AF0  90 1E 00 04 */	stw r0, 4(r30)
/* 80402AF4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80402AF8  4B FF 79 61 */	bl mCD_get_size
/* 80402AFC  90 7E 00 08 */	stw r3, 8(r30)
/* 80402B00  7F A3 EB 78 */	mr r3, r29
/* 80402B04  80 9E 00 08 */	lwz r4, 8(r30)
/* 80402B08  4B C5 A5 61 */	bl bzero
/* 80402B0C  3C 60 80 66 */	lis r3, l_comment_player_0_str@ha /* 0x8065E5E8@ha */
/* 80402B10  7F A4 EB 78 */	mr r4, r29
/* 80402B14  38 63 E5 E8 */	addi r3, r3, l_comment_player_0_str@l /* 0x8065E5E8@l */
/* 80402B18  38 A0 00 20 */	li r5, 0x20
/* 80402B1C  4B C5 A5 01 */	bl func_8005D01C
/* 80402B20  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80402B24  38 7D 00 20 */	addi r3, r29, 0x20
/* 80402B28  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80402B2C  3F C4 00 02 */	addis r30, r4, 2
/* 80402B30  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 80402B34  4B FF 8A 05 */	bl mCD_get_passport_comment1
/* 80402B38  38 7D 00 40 */	addi r3, r29, 0x40
/* 80402B3C  38 80 00 27 */	li r4, 0x27
/* 80402B40  38 A0 0C 00 */	li r5, 0xc00
/* 80402B44  38 C0 00 01 */	li r6, 1
/* 80402B48  38 E0 02 00 */	li r7, 0x200
/* 80402B4C  48 00 0A D1 */	bl mCD_set_bti_data
/* 80402B50  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80402B54  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80402B58  88 A3 00 15 */	lbz r5, 0x15(r3)
/* 80402B5C  7C 00 07 75 */	extsb. r0, r0
/* 80402B60  7C A5 07 74 */	extsb r5, r5
/* 80402B64  41 82 00 10 */	beq lbl_80402B74
/* 80402B68  2C 00 00 01 */	cmpwi r0, 1
/* 80402B6C  41 82 00 08 */	beq lbl_80402B74
/* 80402B70  38 00 00 00 */	li r0, 0
lbl_80402B74:
/* 80402B74  2C 05 00 00 */	cmpwi r5, 0
/* 80402B78  41 80 00 0C */	blt lbl_80402B84
/* 80402B7C  2C 05 00 08 */	cmpwi r5, 8
/* 80402B80  41 80 00 08 */	blt lbl_80402B88
lbl_80402B84:
/* 80402B84  38 A0 00 00 */	li r5, 0
lbl_80402B88:
/* 80402B88  3C 60 80 66 */	lis r3, icon_fileNo_4664@ha /* 0x8065EB1C@ha */
/* 80402B8C  54 04 28 34 */	slwi r4, r0, 5
/* 80402B90  38 63 EB 1C */	addi r3, r3, icon_fileNo_4664@l /* 0x8065EB1C@l */
/* 80402B94  54 A0 10 3A */	slwi r0, r5, 2
/* 80402B98  7C 83 22 14 */	add r4, r3, r4
/* 80402B9C  38 7D 0E 40 */	addi r3, r29, 0xe40
/* 80402BA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80402BA4  38 A0 04 00 */	li r5, 0x400
/* 80402BA8  38 C0 00 08 */	li r6, 8
/* 80402BAC  38 E0 02 00 */	li r7, 0x200
/* 80402BB0  48 00 0A 6D */	bl mCD_set_bti_data
/* 80402BB4  3C 60 81 1A */	lis r3, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 80402BB8  38 9D 30 40 */	addi r4, r29, 0x3040
/* 80402BBC  38 63 8C 38 */	addi r3, r3, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 80402BC0  38 A0 2E 20 */	li r5, 0x2e20
/* 80402BC4  4B C5 A4 59 */	bl func_8005D01C
/* 80402BC8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80402BCC  38 60 00 01 */	li r3, 1
/* 80402BD0  38 04 00 01 */	addi r0, r4, 1
/* 80402BD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80402BD8  48 00 00 10 */	b lbl_80402BE8
lbl_80402BDC:
/* 80402BDC  38 00 00 02 */	li r0, 2
/* 80402BE0  38 60 FF FF */	li r3, -1
/* 80402BE4  90 1F 00 04 */	stw r0, 4(r31)
lbl_80402BE8:
/* 80402BE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80402BEC  4B C9 83 35 */	bl func_8009AF20
/* 80402BF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80402BF4  7C 08 03 A6 */	mtlr r0
/* 80402BF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80402BFC  4E 80 00 20 */	blr 
