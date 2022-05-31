lbl_80579F64:
/* 80579F64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80579F68  7C 08 02 A6 */	mflr r0
/* 80579F6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80579F70  39 61 00 20 */	addi r11, r1, 0x20
/* 80579F74  4B B2 0F 5D */	bl func_8009AED0
/* 80579F78  7C 7C 1B 78 */	mr r28, r3
/* 80579F7C  7C 9D 23 78 */	mr r29, r4
/* 80579F80  4B E4 57 29 */	bl func_803BF6A8
/* 80579F84  7C 7E 1B 78 */	mr r30, r3
/* 80579F88  4B E4 57 DD */	bl mMsg_Check_not_series_main_wait
/* 80579F8C  2C 03 00 01 */	cmpwi r3, 1
/* 80579F90  40 82 00 84 */	bne lbl_8057A014
/* 80579F94  38 9D 1D EC */	addi r4, r29, 0x1dec
/* 80579F98  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 80579F9C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80579FA0  28 00 00 00 */	cmplwi r0, 0
/* 80579FA4  40 82 00 0C */	bne lbl_80579FB0
/* 80579FA8  3B E0 00 01 */	li r31, 1
/* 80579FAC  48 00 00 10 */	b lbl_80579FBC
lbl_80579FB0:
/* 80579FB0  7F 83 E3 78 */	mr r3, r28
/* 80579FB4  4B FF E1 69 */	bl aNSC_check_buy_item
/* 80579FB8  7C 7F 1B 78 */	mr r31, r3
lbl_80579FBC:
/* 80579FBC  2C 1F 00 05 */	cmpwi r31, 5
/* 80579FC0  40 82 00 0C */	bne lbl_80579FCC
/* 80579FC4  38 A0 10 8A */	li r5, 0x108a
/* 80579FC8  48 00 00 1C */	b lbl_80579FE4
lbl_80579FCC:
/* 80579FCC  3C 60 80 6C */	lis r3, msg_no_table@ha /* 0x806C02D8@ha */
/* 80579FD0  57 E0 10 3A */	slwi r0, r31, 2
/* 80579FD4  38 63 02 D8 */	addi r3, r3, msg_no_table@l /* 0x806C02D8@l */
/* 80579FD8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80579FDC  4B FF E2 A1 */	bl aNSC_get_msg_no
/* 80579FE0  7C 65 1B 78 */	mr r5, r3
lbl_80579FE4:
/* 80579FE4  7F C3 F3 78 */	mr r3, r30
/* 80579FE8  7F 84 E3 78 */	mr r4, r28
/* 80579FEC  4B FF E2 D9 */	bl aNSC_Set_continue_msg_num
/* 80579FF0  7F C3 F3 78 */	mr r3, r30
/* 80579FF4  4B E4 6D 35 */	bl mMsg_Set_ForceNext
/* 80579FF8  3C 60 80 6C */	lis r3, next_act_idx_1503@ha /* 0x806C02F8@ha */
/* 80579FFC  57 E0 10 3A */	slwi r0, r31, 2
/* 8057A000  38 83 02 F8 */	addi r4, r3, next_act_idx_1503@l /* 0x806C02F8@l */
/* 8057A004  7F 83 E3 78 */	mr r3, r28
/* 8057A008  7C A4 00 2E */	lwzx r5, r4, r0
/* 8057A00C  7F A4 EB 78 */	mr r4, r29
/* 8057A010  48 00 24 A5 */	bl aNSC_setupAction
lbl_8057A014:
/* 8057A014  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A018  4B B2 0F 05 */	bl func_8009AF1C
/* 8057A01C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A020  7C 08 03 A6 */	mtlr r0
/* 8057A024  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A028  4E 80 00 20 */	blr 
