lbl_805489CC:
/* 805489CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805489D0  7C 08 02 A6 */	mflr r0
/* 805489D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805489D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805489DC  4B B5 24 F5 */	bl func_8009AED0
/* 805489E0  7C 7C 1B 78 */	mr r28, r3
/* 805489E4  7C 9D 23 78 */	mr r29, r4
/* 805489E8  4B E7 6C C1 */	bl func_803BF6A8
/* 805489EC  7C 7E 1B 78 */	mr r30, r3
/* 805489F0  4B E7 6D 75 */	bl mMsg_Check_not_series_main_wait
/* 805489F4  2C 03 00 01 */	cmpwi r3, 1
/* 805489F8  40 82 00 84 */	bne lbl_80548A7C
/* 805489FC  38 9D 1D EC */	addi r4, r29, 0x1dec
/* 80548A00  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 80548A04  A0 03 00 00 */	lhz r0, 0(r3)
/* 80548A08  28 00 00 00 */	cmplwi r0, 0
/* 80548A0C  40 82 00 0C */	bne lbl_80548A18
/* 80548A10  3B E0 00 01 */	li r31, 1
/* 80548A14  48 00 00 10 */	b lbl_80548A24
lbl_80548A18:
/* 80548A18  7F 83 E3 78 */	mr r3, r28
/* 80548A1C  4B FF E1 69 */	bl aNSC_check_buy_item
/* 80548A20  7C 7F 1B 78 */	mr r31, r3
lbl_80548A24:
/* 80548A24  2C 1F 00 05 */	cmpwi r31, 5
/* 80548A28  40 82 00 0C */	bne lbl_80548A34
/* 80548A2C  38 A0 10 8A */	li r5, 0x108a
/* 80548A30  48 00 00 1C */	b lbl_80548A4C
lbl_80548A34:
/* 80548A34  3C 60 80 6A */	lis r3, msg_no_table@ha /* 0x806A4B00@ha */
/* 80548A38  57 E0 10 3A */	slwi r0, r31, 2
/* 80548A3C  38 63 4B 00 */	addi r3, r3, msg_no_table@l /* 0x806A4B00@l */
/* 80548A40  7C 63 00 2E */	lwzx r3, r3, r0
/* 80548A44  4B FF E2 A1 */	bl aNSC_get_msg_no
/* 80548A48  7C 65 1B 78 */	mr r5, r3
lbl_80548A4C:
/* 80548A4C  7F C3 F3 78 */	mr r3, r30
/* 80548A50  7F 84 E3 78 */	mr r4, r28
/* 80548A54  4B FF E2 D9 */	bl aNSC_Set_continue_msg_num
/* 80548A58  7F C3 F3 78 */	mr r3, r30
/* 80548A5C  4B E7 82 CD */	bl mMsg_Set_ForceNext
/* 80548A60  3C 60 80 6A */	lis r3, next_act_idx_1516@ha /* 0x806A4B20@ha */
/* 80548A64  57 E0 10 3A */	slwi r0, r31, 2
/* 80548A68  38 83 4B 20 */	addi r4, r3, next_act_idx_1516@l /* 0x806A4B20@l */
/* 80548A6C  7F 83 E3 78 */	mr r3, r28
/* 80548A70  7C A4 00 2E */	lwzx r5, r4, r0
/* 80548A74  7F A4 EB 78 */	mr r4, r29
/* 80548A78  48 00 24 A5 */	bl aNSC_setupAction
lbl_80548A7C:
/* 80548A7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80548A80  4B B5 24 9D */	bl func_8009AF1C
/* 80548A84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80548A88  7C 08 03 A6 */	mtlr r0
/* 80548A8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80548A90  4E 80 00 20 */	blr 
