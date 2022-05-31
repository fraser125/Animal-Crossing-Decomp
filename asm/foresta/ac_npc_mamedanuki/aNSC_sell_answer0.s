lbl_8055D310:
/* 8055D310  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D314  7C 08 02 A6 */	mflr r0
/* 8055D318  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D31C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D320  4B B3 DB A9 */	bl func_8009AEC8
/* 8055D324  7C 7C 1B 78 */	mr r28, r3
/* 8055D328  7C 9D 23 78 */	mr r29, r4
/* 8055D32C  38 60 00 04 */	li r3, 4
/* 8055D330  38 80 00 09 */	li r4, 9
/* 8055D334  4B E3 B1 49 */	bl mDemo_Get_OrderValue
/* 8055D338  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055D33C  41 82 01 F0 */	beq lbl_8055D52C
/* 8055D340  4B E6 23 69 */	bl func_803BF6A8
/* 8055D344  7C 7F 1B 78 */	mr r31, r3
/* 8055D348  4B E6 39 91 */	bl mMsg_Check_MainNormal
/* 8055D34C  2C 03 00 01 */	cmpwi r3, 1
/* 8055D350  40 82 01 DC */	bne lbl_8055D52C
/* 8055D354  80 7C 09 AC */	lwz r3, 0x9ac(r28)
/* 8055D358  3B 40 00 00 */	li r26, 0
/* 8055D35C  4B FF DD 15 */	bl aNSC_money_check
/* 8055D360  2C 03 00 00 */	cmpwi r3, 0
/* 8055D364  40 82 00 0C */	bne lbl_8055D370
/* 8055D368  3B 40 00 03 */	li r26, 3
/* 8055D36C  48 00 01 74 */	b lbl_8055D4E0
lbl_8055D370:
/* 8055D370  A3 DC 09 B4 */	lhz r30, 0x9b4(r28)
/* 8055D374  28 1E 22 2D */	cmplwi r30, 0x222d
/* 8055D378  41 80 00 88 */	blt lbl_8055D400
/* 8055D37C  28 1E 22 38 */	cmplwi r30, 0x2238
/* 8055D380  41 81 00 80 */	bgt lbl_8055D400
/* 8055D384  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055D388  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055D38C  3C 63 00 02 */	addis r3, r3, 2
/* 8055D390  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8055D394  4B E5 62 25 */	bl mHS_get_arrange_idx
/* 8055D398  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8055D39C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055D3A0  28 1E 22 2D */	cmplwi r30, 0x222d
/* 8055D3A4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8055D3A8  7C 60 22 14 */	add r3, r0, r4
/* 8055D3AC  38 00 00 00 */	li r0, 0
/* 8055D3B0  3C A3 00 01 */	addis r5, r3, 1
/* 8055D3B4  38 A5 9C E8 */	addi r5, r5, -25368
/* 8055D3B8  41 80 00 10 */	blt lbl_8055D3C8
/* 8055D3BC  28 1E 22 38 */	cmplwi r30, 0x2238
/* 8055D3C0  41 81 00 08 */	bgt lbl_8055D3C8
/* 8055D3C4  38 00 00 01 */	li r0, 1
lbl_8055D3C8:
/* 8055D3C8  20 00 00 00 */	subfic r0, r0, 0
/* 8055D3CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055D3D0  7C 80 01 10 */	subfe r4, r0, r0
/* 8055D3D4  3B 40 00 09 */	li r26, 9
/* 8055D3D8  38 1E DD D3 */	addi r0, r30, -8749
/* 8055D3DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055D3E0  7C 00 20 38 */	and r0, r0, r4
/* 8055D3E4  98 05 00 2E */	stb r0, 0x2e(r5)
/* 8055D3E8  3C 63 00 02 */	addis r3, r3, 2
/* 8055D3EC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055D3F0  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 8055D3F4  60 00 02 00 */	ori r0, r0, 0x200
/* 8055D3F8  90 03 23 48 */	stw r0, 0x2348(r3)
/* 8055D3FC  48 00 00 E4 */	b lbl_8055D4E0
lbl_8055D400:
/* 8055D400  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055D404  38 80 00 00 */	li r4, 0
/* 8055D408  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055D40C  3F 63 00 02 */	addis r27, r3, 2
/* 8055D410  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8055D414  4B E8 33 15 */	bl mPr_GetPossessionItemIdx
/* 8055D418  7C 64 1B 78 */	mr r4, r3
/* 8055D41C  2C 04 FF FF */	cmpwi r4, -1
/* 8055D420  40 82 00 0C */	bne lbl_8055D42C
/* 8055D424  3B 40 00 04 */	li r26, 4
/* 8055D428  48 00 00 B8 */	b lbl_8055D4E0
lbl_8055D42C:
/* 8055D42C  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8055D430  7F C5 F3 78 */	mr r5, r30
/* 8055D434  38 C0 00 00 */	li r6, 0
/* 8055D438  4B E8 39 F1 */	bl mPr_SetPossessionItem
/* 8055D43C  7F C3 F3 78 */	mr r3, r30
/* 8055D440  4B FF E0 71 */	bl aNSC_check_item_with_ticket
/* 8055D444  2C 03 00 01 */	cmpwi r3, 1
/* 8055D448  40 82 00 44 */	bne lbl_8055D48C
/* 8055D44C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055D450  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055D454  3C 63 00 02 */	addis r3, r3, 2
/* 8055D458  88 63 61 25 */	lbz r3, 0x6125(r3)
/* 8055D45C  38 03 FF FF */	addi r0, r3, -1
/* 8055D460  54 03 18 38 */	slwi r3, r0, 3
/* 8055D464  38 03 2C 00 */	addi r0, r3, 0x2c00
/* 8055D468  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8055D46C  4B FF E1 0D */	bl aNSC_check_same_month_ticket
/* 8055D470  2C 03 00 01 */	cmpwi r3, 1
/* 8055D474  40 82 00 0C */	bne lbl_8055D480
/* 8055D478  3B 40 00 01 */	li r26, 1
/* 8055D47C  48 00 00 64 */	b lbl_8055D4E0
lbl_8055D480:
/* 8055D480  4B FF E0 B1 */	bl aNSC_setup_ticket_remain
/* 8055D484  3B 40 00 02 */	li r26, 2
/* 8055D488  48 00 00 58 */	b lbl_8055D4E0
lbl_8055D48C:
/* 8055D48C  28 1E 25 1E */	cmplwi r30, 0x251e
/* 8055D490  40 82 00 0C */	bne lbl_8055D49C
/* 8055D494  3B 40 00 0A */	li r26, 0xa
/* 8055D498  48 00 00 48 */	b lbl_8055D4E0
lbl_8055D49C:
/* 8055D49C  2C 1E 22 02 */	cmpwi r30, 0x2202
/* 8055D4A0  41 82 00 34 */	beq lbl_8055D4D4
/* 8055D4A4  40 80 00 14 */	bge lbl_8055D4B8
/* 8055D4A8  2C 1E 22 00 */	cmpwi r30, 0x2200
/* 8055D4AC  41 82 00 18 */	beq lbl_8055D4C4
/* 8055D4B0  40 80 00 1C */	bge lbl_8055D4CC
/* 8055D4B4  48 00 00 2C */	b lbl_8055D4E0
lbl_8055D4B8:
/* 8055D4B8  2C 1E 22 04 */	cmpwi r30, 0x2204
/* 8055D4BC  40 80 00 24 */	bge lbl_8055D4E0
/* 8055D4C0  48 00 00 1C */	b lbl_8055D4DC
lbl_8055D4C4:
/* 8055D4C4  3B 40 00 05 */	li r26, 5
/* 8055D4C8  48 00 00 18 */	b lbl_8055D4E0
lbl_8055D4CC:
/* 8055D4CC  3B 40 00 06 */	li r26, 6
/* 8055D4D0  48 00 00 10 */	b lbl_8055D4E0
lbl_8055D4D4:
/* 8055D4D4  3B 40 00 07 */	li r26, 7
/* 8055D4D8  48 00 00 08 */	b lbl_8055D4E0
lbl_8055D4DC:
/* 8055D4DC  3B 40 00 08 */	li r26, 8
lbl_8055D4E0:
/* 8055D4E0  3C 60 80 6B */	lis r3, msg_no_1559@ha /* 0x806A9F50@ha */
/* 8055D4E4  57 5B 10 3A */	slwi r27, r26, 2
/* 8055D4E8  38 63 9F 50 */	addi r3, r3, msg_no_1559@l /* 0x806A9F50@l */
/* 8055D4EC  7C 63 D8 2E */	lwzx r3, r3, r27
/* 8055D4F0  4B FF E0 ED */	bl aNSC_get_msg_no
/* 8055D4F4  7C 65 1B 78 */	mr r5, r3
/* 8055D4F8  7F E3 FB 78 */	mr r3, r31
/* 8055D4FC  7F 84 E3 78 */	mr r4, r28
/* 8055D500  4B FF E1 15 */	bl aNSC_Set_continue_msg_num
/* 8055D504  38 60 00 04 */	li r3, 4
/* 8055D508  38 80 00 09 */	li r4, 9
/* 8055D50C  38 A0 00 00 */	li r5, 0
/* 8055D510  4B E3 AF 29 */	bl mDemo_Set_OrderValue
/* 8055D514  3C 80 80 6B */	lis r4, next_act_idx_1558@ha /* 0x806A9F24@ha */
/* 8055D518  7F 83 E3 78 */	mr r3, r28
/* 8055D51C  38 A4 9F 24 */	addi r5, r4, next_act_idx_1558@l /* 0x806A9F24@l */
/* 8055D520  7F A4 EB 78 */	mr r4, r29
/* 8055D524  7C A5 D8 2E */	lwzx r5, r5, r27
/* 8055D528  48 00 18 A9 */	bl aNSC_setupAction
lbl_8055D52C:
/* 8055D52C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D530  4B B3 D9 E5 */	bl func_8009AF14
/* 8055D534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D538  7C 08 03 A6 */	mtlr r0
/* 8055D53C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D540  4E 80 00 20 */	blr 
