lbl_80550C18:
/* 80550C18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550C1C  7C 08 02 A6 */	mflr r0
/* 80550C20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80550C24  39 61 00 20 */	addi r11, r1, 0x20
/* 80550C28  4B B4 A2 A1 */	bl func_8009AEC8
/* 80550C2C  7C 7C 1B 78 */	mr r28, r3
/* 80550C30  7C 9D 23 78 */	mr r29, r4
/* 80550C34  38 60 00 04 */	li r3, 4
/* 80550C38  38 80 00 09 */	li r4, 9
/* 80550C3C  4B E4 78 41 */	bl mDemo_Get_OrderValue
/* 80550C40  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80550C44  41 82 01 F0 */	beq lbl_80550E34
/* 80550C48  4B E6 EA 61 */	bl func_803BF6A8
/* 80550C4C  7C 7F 1B 78 */	mr r31, r3
/* 80550C50  4B E7 00 89 */	bl mMsg_Check_MainNormal
/* 80550C54  2C 03 00 01 */	cmpwi r3, 1
/* 80550C58  40 82 01 DC */	bne lbl_80550E34
/* 80550C5C  80 7C 09 AC */	lwz r3, 0x9ac(r28)
/* 80550C60  3B 40 00 00 */	li r26, 0
/* 80550C64  4B FF D4 2D */	bl aNSC_money_check
/* 80550C68  2C 03 00 00 */	cmpwi r3, 0
/* 80550C6C  40 82 00 0C */	bne lbl_80550C78
/* 80550C70  3B 40 00 03 */	li r26, 3
/* 80550C74  48 00 01 74 */	b lbl_80550DE8
lbl_80550C78:
/* 80550C78  A3 DC 09 B4 */	lhz r30, 0x9b4(r28)
/* 80550C7C  28 1E 22 2D */	cmplwi r30, 0x222d
/* 80550C80  41 80 00 88 */	blt lbl_80550D08
/* 80550C84  28 1E 22 38 */	cmplwi r30, 0x2238
/* 80550C88  41 81 00 80 */	bgt lbl_80550D08
/* 80550C8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80550C90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80550C94  3C 63 00 02 */	addis r3, r3, 2
/* 80550C98  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80550C9C  4B E6 29 1D */	bl mHS_get_arrange_idx
/* 80550CA0  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80550CA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80550CA8  28 1E 22 2D */	cmplwi r30, 0x222d
/* 80550CAC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80550CB0  7C 60 22 14 */	add r3, r0, r4
/* 80550CB4  38 00 00 00 */	li r0, 0
/* 80550CB8  3C A3 00 01 */	addis r5, r3, 1
/* 80550CBC  38 A5 9C E8 */	addi r5, r5, -25368
/* 80550CC0  41 80 00 10 */	blt lbl_80550CD0
/* 80550CC4  28 1E 22 38 */	cmplwi r30, 0x2238
/* 80550CC8  41 81 00 08 */	bgt lbl_80550CD0
/* 80550CCC  38 00 00 01 */	li r0, 1
lbl_80550CD0:
/* 80550CD0  20 00 00 00 */	subfic r0, r0, 0
/* 80550CD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80550CD8  7C 80 01 10 */	subfe r4, r0, r0
/* 80550CDC  3B 40 00 09 */	li r26, 9
/* 80550CE0  38 1E DD D3 */	addi r0, r30, -8749
/* 80550CE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80550CE8  7C 00 20 38 */	and r0, r0, r4
/* 80550CEC  98 05 00 2E */	stb r0, 0x2e(r5)
/* 80550CF0  3C 63 00 02 */	addis r3, r3, 2
/* 80550CF4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80550CF8  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 80550CFC  60 00 02 00 */	ori r0, r0, 0x200
/* 80550D00  90 03 23 48 */	stw r0, 0x2348(r3)
/* 80550D04  48 00 00 E4 */	b lbl_80550DE8
lbl_80550D08:
/* 80550D08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80550D0C  38 80 00 00 */	li r4, 0
/* 80550D10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80550D14  3F 63 00 02 */	addis r27, r3, 2
/* 80550D18  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 80550D1C  4B E8 FA 0D */	bl mPr_GetPossessionItemIdx
/* 80550D20  7C 64 1B 78 */	mr r4, r3
/* 80550D24  2C 04 FF FF */	cmpwi r4, -1
/* 80550D28  40 82 00 0C */	bne lbl_80550D34
/* 80550D2C  3B 40 00 04 */	li r26, 4
/* 80550D30  48 00 00 B8 */	b lbl_80550DE8
lbl_80550D34:
/* 80550D34  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 80550D38  7F C5 F3 78 */	mr r5, r30
/* 80550D3C  38 C0 00 00 */	li r6, 0
/* 80550D40  4B E9 00 E9 */	bl mPr_SetPossessionItem
/* 80550D44  7F C3 F3 78 */	mr r3, r30
/* 80550D48  4B FF D7 89 */	bl aNSC_check_item_with_ticket
/* 80550D4C  2C 03 00 01 */	cmpwi r3, 1
/* 80550D50  40 82 00 44 */	bne lbl_80550D94
/* 80550D54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80550D58  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80550D5C  3C 63 00 02 */	addis r3, r3, 2
/* 80550D60  88 63 61 25 */	lbz r3, 0x6125(r3)
/* 80550D64  38 03 FF FF */	addi r0, r3, -1
/* 80550D68  54 03 18 38 */	slwi r3, r0, 3
/* 80550D6C  38 03 2C 00 */	addi r0, r3, 0x2c00
/* 80550D70  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80550D74  4B FF D8 25 */	bl aNSC_check_same_month_ticket
/* 80550D78  2C 03 00 01 */	cmpwi r3, 1
/* 80550D7C  40 82 00 0C */	bne lbl_80550D88
/* 80550D80  3B 40 00 01 */	li r26, 1
/* 80550D84  48 00 00 64 */	b lbl_80550DE8
lbl_80550D88:
/* 80550D88  4B FF D7 C9 */	bl aNSC_setup_ticket_remain
/* 80550D8C  3B 40 00 02 */	li r26, 2
/* 80550D90  48 00 00 58 */	b lbl_80550DE8
lbl_80550D94:
/* 80550D94  28 1E 25 1E */	cmplwi r30, 0x251e
/* 80550D98  40 82 00 0C */	bne lbl_80550DA4
/* 80550D9C  3B 40 00 0A */	li r26, 0xa
/* 80550DA0  48 00 00 48 */	b lbl_80550DE8
lbl_80550DA4:
/* 80550DA4  2C 1E 22 02 */	cmpwi r30, 0x2202
/* 80550DA8  41 82 00 34 */	beq lbl_80550DDC
/* 80550DAC  40 80 00 14 */	bge lbl_80550DC0
/* 80550DB0  2C 1E 22 00 */	cmpwi r30, 0x2200
/* 80550DB4  41 82 00 18 */	beq lbl_80550DCC
/* 80550DB8  40 80 00 1C */	bge lbl_80550DD4
/* 80550DBC  48 00 00 2C */	b lbl_80550DE8
lbl_80550DC0:
/* 80550DC0  2C 1E 22 04 */	cmpwi r30, 0x2204
/* 80550DC4  40 80 00 24 */	bge lbl_80550DE8
/* 80550DC8  48 00 00 1C */	b lbl_80550DE4
lbl_80550DCC:
/* 80550DCC  3B 40 00 05 */	li r26, 5
/* 80550DD0  48 00 00 18 */	b lbl_80550DE8
lbl_80550DD4:
/* 80550DD4  3B 40 00 06 */	li r26, 6
/* 80550DD8  48 00 00 10 */	b lbl_80550DE8
lbl_80550DDC:
/* 80550DDC  3B 40 00 07 */	li r26, 7
/* 80550DE0  48 00 00 08 */	b lbl_80550DE8
lbl_80550DE4:
/* 80550DE4  3B 40 00 08 */	li r26, 8
lbl_80550DE8:
/* 80550DE8  3C 60 80 6A */	lis r3, msg_no_1687@ha /* 0x806A5DC0@ha */
/* 80550DEC  57 5B 10 3A */	slwi r27, r26, 2
/* 80550DF0  38 63 5D C0 */	addi r3, r3, msg_no_1687@l /* 0x806A5DC0@l */
/* 80550DF4  7C 63 D8 2E */	lwzx r3, r3, r27
/* 80550DF8  4B FF D8 05 */	bl aNSC_get_msg_no
/* 80550DFC  7C 65 1B 78 */	mr r5, r3
/* 80550E00  7F E3 FB 78 */	mr r3, r31
/* 80550E04  7F 84 E3 78 */	mr r4, r28
/* 80550E08  4B FF D8 3D */	bl aNSC_Set_continue_msg_num
/* 80550E0C  38 60 00 04 */	li r3, 4
/* 80550E10  38 80 00 09 */	li r4, 9
/* 80550E14  38 A0 00 00 */	li r5, 0
/* 80550E18  4B E4 76 21 */	bl mDemo_Set_OrderValue
/* 80550E1C  3C 80 80 6A */	lis r4, next_act_idx_1686@ha /* 0x806A5D94@ha */
/* 80550E20  7F 83 E3 78 */	mr r3, r28
/* 80550E24  38 A4 5D 94 */	addi r5, r4, next_act_idx_1686@l /* 0x806A5D94@l */
/* 80550E28  7F A4 EB 78 */	mr r4, r29
/* 80550E2C  7C A5 D8 2E */	lwzx r5, r5, r27
/* 80550E30  48 00 1A 05 */	bl aNSC_setupAction
lbl_80550E34:
/* 80550E34  39 61 00 20 */	addi r11, r1, 0x20
/* 80550E38  4B B4 A0 DD */	bl func_8009AF14
/* 80550E3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80550E40  7C 08 03 A6 */	mtlr r0
/* 80550E44  38 21 00 20 */	addi r1, r1, 0x20
/* 80550E48  4E 80 00 20 */	blr 
