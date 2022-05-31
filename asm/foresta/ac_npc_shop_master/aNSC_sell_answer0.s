lbl_8057A898:
/* 8057A898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A89C  7C 08 02 A6 */	mflr r0
/* 8057A8A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A8A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A8A8  4B B2 06 21 */	bl func_8009AEC8
/* 8057A8AC  7C 7C 1B 78 */	mr r28, r3
/* 8057A8B0  7C 9D 23 78 */	mr r29, r4
/* 8057A8B4  38 60 00 04 */	li r3, 4
/* 8057A8B8  38 80 00 09 */	li r4, 9
/* 8057A8BC  4B E1 DB C1 */	bl mDemo_Get_OrderValue
/* 8057A8C0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8057A8C4  41 82 01 F0 */	beq lbl_8057AAB4
/* 8057A8C8  4B E4 4D E1 */	bl func_803BF6A8
/* 8057A8CC  7C 7F 1B 78 */	mr r31, r3
/* 8057A8D0  4B E4 64 09 */	bl mMsg_Check_MainNormal
/* 8057A8D4  2C 03 00 01 */	cmpwi r3, 1
/* 8057A8D8  40 82 01 DC */	bne lbl_8057AAB4
/* 8057A8DC  80 7C 09 AC */	lwz r3, 0x9ac(r28)
/* 8057A8E0  3B 40 00 00 */	li r26, 0
/* 8057A8E4  4B FF D4 2D */	bl aNSC_money_check
/* 8057A8E8  2C 03 00 00 */	cmpwi r3, 0
/* 8057A8EC  40 82 00 0C */	bne lbl_8057A8F8
/* 8057A8F0  3B 40 00 03 */	li r26, 3
/* 8057A8F4  48 00 01 74 */	b lbl_8057AA68
lbl_8057A8F8:
/* 8057A8F8  A3 DC 09 B4 */	lhz r30, 0x9b4(r28)
/* 8057A8FC  28 1E 22 2D */	cmplwi r30, 0x222d
/* 8057A900  41 80 00 88 */	blt lbl_8057A988
/* 8057A904  28 1E 22 38 */	cmplwi r30, 0x2238
/* 8057A908  41 81 00 80 */	bgt lbl_8057A988
/* 8057A90C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057A910  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057A914  3C 63 00 02 */	addis r3, r3, 2
/* 8057A918  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8057A91C  4B E3 8C 9D */	bl mHS_get_arrange_idx
/* 8057A920  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8057A924  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057A928  28 1E 22 2D */	cmplwi r30, 0x222d
/* 8057A92C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8057A930  7C 60 22 14 */	add r3, r0, r4
/* 8057A934  38 00 00 00 */	li r0, 0
/* 8057A938  3C A3 00 01 */	addis r5, r3, 1
/* 8057A93C  38 A5 9C E8 */	addi r5, r5, -25368
/* 8057A940  41 80 00 10 */	blt lbl_8057A950
/* 8057A944  28 1E 22 38 */	cmplwi r30, 0x2238
/* 8057A948  41 81 00 08 */	bgt lbl_8057A950
/* 8057A94C  38 00 00 01 */	li r0, 1
lbl_8057A950:
/* 8057A950  20 00 00 00 */	subfic r0, r0, 0
/* 8057A954  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057A958  7C 80 01 10 */	subfe r4, r0, r0
/* 8057A95C  3B 40 00 09 */	li r26, 9
/* 8057A960  38 1E DD D3 */	addi r0, r30, -8749
/* 8057A964  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057A968  7C 00 20 38 */	and r0, r0, r4
/* 8057A96C  98 05 00 2E */	stb r0, 0x2e(r5)
/* 8057A970  3C 63 00 02 */	addis r3, r3, 2
/* 8057A974  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057A978  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 8057A97C  60 00 02 00 */	ori r0, r0, 0x200
/* 8057A980  90 03 23 48 */	stw r0, 0x2348(r3)
/* 8057A984  48 00 00 E4 */	b lbl_8057AA68
lbl_8057A988:
/* 8057A988  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057A98C  38 80 00 00 */	li r4, 0
/* 8057A990  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057A994  3F 63 00 02 */	addis r27, r3, 2
/* 8057A998  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8057A99C  4B E6 5D 8D */	bl mPr_GetPossessionItemIdx
/* 8057A9A0  7C 64 1B 78 */	mr r4, r3
/* 8057A9A4  2C 04 FF FF */	cmpwi r4, -1
/* 8057A9A8  40 82 00 0C */	bne lbl_8057A9B4
/* 8057A9AC  3B 40 00 04 */	li r26, 4
/* 8057A9B0  48 00 00 B8 */	b lbl_8057AA68
lbl_8057A9B4:
/* 8057A9B4  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8057A9B8  7F C5 F3 78 */	mr r5, r30
/* 8057A9BC  38 C0 00 00 */	li r6, 0
/* 8057A9C0  4B E6 64 69 */	bl mPr_SetPossessionItem
/* 8057A9C4  7F C3 F3 78 */	mr r3, r30
/* 8057A9C8  4B FF D7 89 */	bl aNSC_check_item_with_ticket
/* 8057A9CC  2C 03 00 01 */	cmpwi r3, 1
/* 8057A9D0  40 82 00 44 */	bne lbl_8057AA14
/* 8057A9D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057A9D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057A9DC  3C 63 00 02 */	addis r3, r3, 2
/* 8057A9E0  88 63 61 25 */	lbz r3, 0x6125(r3)
/* 8057A9E4  38 03 FF FF */	addi r0, r3, -1
/* 8057A9E8  54 03 18 38 */	slwi r3, r0, 3
/* 8057A9EC  38 03 2C 00 */	addi r0, r3, 0x2c00
/* 8057A9F0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8057A9F4  4B FF D8 25 */	bl aNSC_check_same_month_ticket
/* 8057A9F8  2C 03 00 01 */	cmpwi r3, 1
/* 8057A9FC  40 82 00 0C */	bne lbl_8057AA08
/* 8057AA00  3B 40 00 01 */	li r26, 1
/* 8057AA04  48 00 00 64 */	b lbl_8057AA68
lbl_8057AA08:
/* 8057AA08  4B FF D7 C9 */	bl aNSC_setup_ticket_remain
/* 8057AA0C  3B 40 00 02 */	li r26, 2
/* 8057AA10  48 00 00 58 */	b lbl_8057AA68
lbl_8057AA14:
/* 8057AA14  28 1E 25 1E */	cmplwi r30, 0x251e
/* 8057AA18  40 82 00 0C */	bne lbl_8057AA24
/* 8057AA1C  3B 40 00 0A */	li r26, 0xa
/* 8057AA20  48 00 00 48 */	b lbl_8057AA68
lbl_8057AA24:
/* 8057AA24  2C 1E 22 02 */	cmpwi r30, 0x2202
/* 8057AA28  41 82 00 34 */	beq lbl_8057AA5C
/* 8057AA2C  40 80 00 14 */	bge lbl_8057AA40
/* 8057AA30  2C 1E 22 00 */	cmpwi r30, 0x2200
/* 8057AA34  41 82 00 18 */	beq lbl_8057AA4C
/* 8057AA38  40 80 00 1C */	bge lbl_8057AA54
/* 8057AA3C  48 00 00 2C */	b lbl_8057AA68
lbl_8057AA40:
/* 8057AA40  2C 1E 22 04 */	cmpwi r30, 0x2204
/* 8057AA44  40 80 00 24 */	bge lbl_8057AA68
/* 8057AA48  48 00 00 1C */	b lbl_8057AA64
lbl_8057AA4C:
/* 8057AA4C  3B 40 00 05 */	li r26, 5
/* 8057AA50  48 00 00 18 */	b lbl_8057AA68
lbl_8057AA54:
/* 8057AA54  3B 40 00 06 */	li r26, 6
/* 8057AA58  48 00 00 10 */	b lbl_8057AA68
lbl_8057AA5C:
/* 8057AA5C  3B 40 00 07 */	li r26, 7
/* 8057AA60  48 00 00 08 */	b lbl_8057AA68
lbl_8057AA64:
/* 8057AA64  3B 40 00 08 */	li r26, 8
lbl_8057AA68:
/* 8057AA68  3C 60 80 6C */	lis r3, msg_no_1662@ha /* 0x806C0384@ha */
/* 8057AA6C  57 5B 10 3A */	slwi r27, r26, 2
/* 8057AA70  38 63 03 84 */	addi r3, r3, msg_no_1662@l /* 0x806C0384@l */
/* 8057AA74  7C 63 D8 2E */	lwzx r3, r3, r27
/* 8057AA78  4B FF D8 05 */	bl aNSC_get_msg_no
/* 8057AA7C  7C 65 1B 78 */	mr r5, r3
/* 8057AA80  7F E3 FB 78 */	mr r3, r31
/* 8057AA84  7F 84 E3 78 */	mr r4, r28
/* 8057AA88  4B FF D8 3D */	bl aNSC_Set_continue_msg_num
/* 8057AA8C  38 60 00 04 */	li r3, 4
/* 8057AA90  38 80 00 09 */	li r4, 9
/* 8057AA94  38 A0 00 00 */	li r5, 0
/* 8057AA98  4B E1 D9 A1 */	bl mDemo_Set_OrderValue
/* 8057AA9C  3C 80 80 6C */	lis r4, next_act_idx_1661@ha /* 0x806C0358@ha */
/* 8057AAA0  7F 83 E3 78 */	mr r3, r28
/* 8057AAA4  38 A4 03 58 */	addi r5, r4, next_act_idx_1661@l /* 0x806C0358@l */
/* 8057AAA8  7F A4 EB 78 */	mr r4, r29
/* 8057AAAC  7C A5 D8 2E */	lwzx r5, r5, r27
/* 8057AAB0  48 00 1A 05 */	bl aNSC_setupAction
lbl_8057AAB4:
/* 8057AAB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8057AAB8  4B B2 04 5D */	bl func_8009AF14
/* 8057AABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057AAC0  7C 08 03 A6 */	mtlr r0
/* 8057AAC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8057AAC8  4E 80 00 20 */	blr 
