lbl_80427D38:
/* 80427D38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80427D3C  7C 08 02 A6 */	mflr r0
/* 80427D40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80427D44  39 61 00 20 */	addi r11, r1, 0x20
/* 80427D48  4B C7 31 8D */	bl func_8009AED4
/* 80427D4C  3C A0 80 64 */	lis r5, lit_587@ha /* 0x80643FDC@ha */
/* 80427D50  7C 7D 1B 78 */	mr r29, r3
/* 80427D54  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 80427D58  7C 9E 23 78 */	mr r30, r4
/* 80427D5C  C0 05 3F DC */	lfs f0, lit_587@l(r5)  /* 0x80643FDC@l */
/* 80427D60  7F BF EB 78 */	mr r31, r29
/* 80427D64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80427D68  40 81 00 10 */	ble lbl_80427D78
/* 80427D6C  38 A0 00 00 */	li r5, 0
/* 80427D70  48 00 0C E5 */	bl aHNW_setupAction
/* 80427D74  48 00 00 7C */	b lbl_80427DF0
lbl_80427D78:
/* 80427D78  7F E4 FB 78 */	mr r4, r31
/* 80427D7C  38 60 00 07 */	li r3, 7
/* 80427D80  4B F7 24 E5 */	bl mDemo_Check
/* 80427D84  2C 03 00 01 */	cmpwi r3, 1
/* 80427D88  40 82 00 40 */	bne lbl_80427DC8
/* 80427D8C  4B F7 26 85 */	bl mDemo_Check_ListenAble
/* 80427D90  2C 03 00 00 */	cmpwi r3, 0
/* 80427D94  40 82 00 34 */	bne lbl_80427DC8
/* 80427D98  7F A3 EB 78 */	mr r3, r29
/* 80427D9C  4B FF FD F5 */	bl aHNW_decide_msg_idx_dance
/* 80427DA0  7C 7F 1B 78 */	mr r31, r3
/* 80427DA4  4B F7 26 11 */	bl mDemo_Set_ListenAble
/* 80427DA8  3C 60 80 68 */	lis r3, next_act_idx_576@ha /* 0x80683C5C@ha */
/* 80427DAC  57 E0 10 3A */	slwi r0, r31, 2
/* 80427DB0  38 83 3C 5C */	addi r4, r3, next_act_idx_576@l /* 0x80683C5C@l */
/* 80427DB4  7F A3 EB 78 */	mr r3, r29
/* 80427DB8  7C A4 00 2E */	lwzx r5, r4, r0
/* 80427DBC  7F C4 F3 78 */	mr r4, r30
/* 80427DC0  48 00 0C 95 */	bl aHNW_setupAction
/* 80427DC4  48 00 00 2C */	b lbl_80427DF0
lbl_80427DC8:
/* 80427DC8  7F E3 FB 78 */	mr r3, r31
/* 80427DCC  7F C4 F3 78 */	mr r4, r30
/* 80427DD0  4B FF FC 89 */	bl aHNW_check_house_door
/* 80427DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80427DD8  40 82 00 18 */	bne lbl_80427DF0
/* 80427DDC  3C 60 80 42 */	lis r3, aHNW_set_talk_info_dance@ha /* 0x80427C90@ha */
/* 80427DE0  7F E4 FB 78 */	mr r4, r31
/* 80427DE4  38 A3 7C 90 */	addi r5, r3, aHNW_set_talk_info_dance@l /* 0x80427C90@l */
/* 80427DE8  38 60 00 07 */	li r3, 7
/* 80427DEC  4B F7 23 71 */	bl mDemo_Request
lbl_80427DF0:
/* 80427DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80427DF4  4B C7 31 2D */	bl func_8009AF20
/* 80427DF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80427DFC  7C 08 03 A6 */	mtlr r0
/* 80427E00  38 21 00 20 */	addi r1, r1, 0x20
/* 80427E04  4E 80 00 20 */	blr 
