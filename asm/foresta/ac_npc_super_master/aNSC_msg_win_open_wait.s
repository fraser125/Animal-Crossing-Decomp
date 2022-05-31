lbl_80583A70:
/* 80583A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80583A74  7C 08 02 A6 */	mflr r0
/* 80583A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583A7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80583A80  4B B1 74 51 */	bl func_8009AED0
/* 80583A84  7C 7C 1B 78 */	mr r28, r3
/* 80583A88  7C 9D 23 78 */	mr r29, r4
/* 80583A8C  4B E3 BC 1D */	bl func_803BF6A8
/* 80583A90  7C 7E 1B 78 */	mr r30, r3
/* 80583A94  4B E3 BC D1 */	bl mMsg_Check_not_series_main_wait
/* 80583A98  2C 03 00 01 */	cmpwi r3, 1
/* 80583A9C  40 82 00 84 */	bne lbl_80583B20
/* 80583AA0  38 9D 1D EC */	addi r4, r29, 0x1dec
/* 80583AA4  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 80583AA8  A0 03 00 00 */	lhz r0, 0(r3)
/* 80583AAC  28 00 00 00 */	cmplwi r0, 0
/* 80583AB0  40 82 00 0C */	bne lbl_80583ABC
/* 80583AB4  3B E0 00 01 */	li r31, 1
/* 80583AB8  48 00 00 10 */	b lbl_80583AC8
lbl_80583ABC:
/* 80583ABC  7F 83 E3 78 */	mr r3, r28
/* 80583AC0  4B FF E1 69 */	bl aNSC_check_buy_item
/* 80583AC4  7C 7F 1B 78 */	mr r31, r3
lbl_80583AC8:
/* 80583AC8  2C 1F 00 05 */	cmpwi r31, 5
/* 80583ACC  40 82 00 0C */	bne lbl_80583AD8
/* 80583AD0  38 A0 10 8A */	li r5, 0x108a
/* 80583AD4  48 00 00 1C */	b lbl_80583AF0
lbl_80583AD8:
/* 80583AD8  3C 60 80 6C */	lis r3, msg_no_table@ha /* 0x806C181C@ha */
/* 80583ADC  57 E0 10 3A */	slwi r0, r31, 2
/* 80583AE0  38 63 18 1C */	addi r3, r3, msg_no_table@l /* 0x806C181C@l */
/* 80583AE4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80583AE8  4B FF E2 A1 */	bl aNSC_get_msg_no
/* 80583AEC  7C 65 1B 78 */	mr r5, r3
lbl_80583AF0:
/* 80583AF0  7F C3 F3 78 */	mr r3, r30
/* 80583AF4  7F 84 E3 78 */	mr r4, r28
/* 80583AF8  4B FF E2 D9 */	bl aNSC_Set_continue_msg_num
/* 80583AFC  7F C3 F3 78 */	mr r3, r30
/* 80583B00  4B E3 D2 29 */	bl mMsg_Set_ForceNext
/* 80583B04  3C 60 80 6C */	lis r3, next_act_idx_1543@ha /* 0x806C183C@ha */
/* 80583B08  57 E0 10 3A */	slwi r0, r31, 2
/* 80583B0C  38 83 18 3C */	addi r4, r3, next_act_idx_1543@l /* 0x806C183C@l */
/* 80583B10  7F 83 E3 78 */	mr r3, r28
/* 80583B14  7C A4 00 2E */	lwzx r5, r4, r0
/* 80583B18  7F A4 EB 78 */	mr r4, r29
/* 80583B1C  48 00 24 A5 */	bl aNSC_setupAction
lbl_80583B20:
/* 80583B20  39 61 00 20 */	addi r11, r1, 0x20
/* 80583B24  4B B1 73 F9 */	bl func_8009AF1C
/* 80583B28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80583B2C  7C 08 03 A6 */	mtlr r0
/* 80583B30  38 21 00 20 */	addi r1, r1, 0x20
/* 80583B34  4E 80 00 20 */	blr 
