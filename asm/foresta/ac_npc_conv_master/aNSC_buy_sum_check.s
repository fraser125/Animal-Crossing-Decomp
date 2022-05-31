lbl_80548A94:
/* 80548A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80548A98  7C 08 02 A6 */	mflr r0
/* 80548A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80548AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80548AA4  4B B5 24 31 */	bl func_8009AED4
/* 80548AA8  7C 7D 1B 78 */	mr r29, r3
/* 80548AAC  7C 9E 23 78 */	mr r30, r4
/* 80548AB0  38 60 00 04 */	li r3, 4
/* 80548AB4  38 80 00 09 */	li r4, 9
/* 80548AB8  4B E4 F9 C5 */	bl mDemo_Get_OrderValue
/* 80548ABC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80548AC0  41 82 00 B8 */	beq lbl_80548B78
/* 80548AC4  3B E0 FF FF */	li r31, -1
/* 80548AC8  4B E3 AA 79 */	bl func_80383540
/* 80548ACC  4B E3 B0 A1 */	bl mChoice_Get_ChoseNum
/* 80548AD0  2C 03 00 01 */	cmpwi r3, 1
/* 80548AD4  41 82 00 1C */	beq lbl_80548AF0
/* 80548AD8  40 80 00 24 */	bge lbl_80548AFC
/* 80548ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80548AE0  40 80 00 08 */	bge lbl_80548AE8
/* 80548AE4  48 00 00 18 */	b lbl_80548AFC
lbl_80548AE8:
/* 80548AE8  3B E0 00 00 */	li r31, 0
/* 80548AEC  48 00 00 10 */	b lbl_80548AFC
lbl_80548AF0:
/* 80548AF0  38 00 00 01 */	li r0, 1
/* 80548AF4  3B E0 00 01 */	li r31, 1
/* 80548AF8  90 1D 09 B0 */	stw r0, 0x9b0(r29)
lbl_80548AFC:
/* 80548AFC  2C 1F FF FF */	cmpwi r31, -1
/* 80548B00  41 82 00 78 */	beq lbl_80548B78
/* 80548B04  80 9E 1F 60 */	lwz r4, 0x1f60(r30)
/* 80548B08  A0 64 00 00 */	lhz r3, 0(r4)
/* 80548B0C  28 03 20 00 */	cmplwi r3, 0x2000
/* 80548B10  41 80 00 2C */	blt lbl_80548B3C
/* 80548B14  28 03 20 FF */	cmplwi r3, 0x20ff
/* 80548B18  41 81 00 24 */	bgt lbl_80548B3C
/* 80548B1C  38 63 E0 00 */	addi r3, r3, -8192
/* 80548B20  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 80548B24  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80548B28  7C 03 00 50 */	subf r0, r3, r0
/* 80548B2C  54 00 30 3E */	rotlwi r0, r0, 6
/* 80548B30  7C 60 1A 14 */	add r3, r0, r3
/* 80548B34  38 03 20 00 */	addi r0, r3, 0x2000
/* 80548B38  B0 04 00 00 */	sth r0, 0(r4)
lbl_80548B3C:
/* 80548B3C  38 60 00 04 */	li r3, 4
/* 80548B40  38 80 00 09 */	li r4, 9
/* 80548B44  38 A0 00 00 */	li r5, 0
/* 80548B48  4B E4 F8 F1 */	bl mDemo_Set_OrderValue
/* 80548B4C  38 60 00 1B */	li r3, 0x1b
/* 80548B50  4B FF E1 95 */	bl aNSC_get_msg_no
/* 80548B54  7C 7F 1B 78 */	mr r31, r3
/* 80548B58  4B E7 6B 51 */	bl func_803BF6A8
/* 80548B5C  7F A4 EB 78 */	mr r4, r29
/* 80548B60  7F E5 FB 78 */	mr r5, r31
/* 80548B64  4B FF E1 C9 */	bl aNSC_Set_continue_msg_num
/* 80548B68  7F A3 EB 78 */	mr r3, r29
/* 80548B6C  7F C4 F3 78 */	mr r4, r30
/* 80548B70  38 A0 00 15 */	li r5, 0x15
/* 80548B74  48 00 23 A9 */	bl aNSC_setupAction
lbl_80548B78:
/* 80548B78  39 61 00 20 */	addi r11, r1, 0x20
/* 80548B7C  4B B5 23 A5 */	bl func_8009AF20
/* 80548B80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80548B84  7C 08 03 A6 */	mtlr r0
/* 80548B88  38 21 00 20 */	addi r1, r1, 0x20
/* 80548B8C  4E 80 00 20 */	blr 
