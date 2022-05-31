lbl_8055D964:
/* 8055D964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D968  7C 08 02 A6 */	mflr r0
/* 8055D96C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D970  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D974  4B B3 D5 5D */	bl func_8009AED0
/* 8055D978  7C 7C 1B 78 */	mr r28, r3
/* 8055D97C  7C 9D 23 78 */	mr r29, r4
/* 8055D980  4B E6 1D 29 */	bl func_803BF6A8
/* 8055D984  7C 7E 1B 78 */	mr r30, r3
/* 8055D988  4B E6 1D DD */	bl mMsg_Check_not_series_main_wait
/* 8055D98C  2C 03 00 01 */	cmpwi r3, 1
/* 8055D990  40 82 00 68 */	bne lbl_8055D9F8
/* 8055D994  3B E0 00 00 */	li r31, 0
/* 8055D998  4B E5 61 05 */	bl mLd_GetLandName
/* 8055D99C  7C 64 1B 78 */	mr r4, r3
/* 8055D9A0  38 7C 09 C8 */	addi r3, r28, 0x9c8
/* 8055D9A4  4B E5 5E 69 */	bl mLd_CheckCmpLandName
/* 8055D9A8  2C 03 00 00 */	cmpwi r3, 0
/* 8055D9AC  40 82 00 08 */	bne lbl_8055D9B4
/* 8055D9B0  3B E0 00 01 */	li r31, 1
lbl_8055D9B4:
/* 8055D9B4  3C 60 80 6B */	lis r3, msg_no_1658@ha /* 0x806A9F7C@ha */
/* 8055D9B8  57 FF 10 3A */	slwi r31, r31, 2
/* 8055D9BC  38 63 9F 7C */	addi r3, r3, msg_no_1658@l /* 0x806A9F7C@l */
/* 8055D9C0  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8055D9C4  4B FF DC 19 */	bl aNSC_get_msg_no
/* 8055D9C8  7C 65 1B 78 */	mr r5, r3
/* 8055D9CC  7F C3 F3 78 */	mr r3, r30
/* 8055D9D0  7F 84 E3 78 */	mr r4, r28
/* 8055D9D4  4B FF DC 81 */	bl aNSC_ChangeMsgData
/* 8055D9D8  7F C3 F3 78 */	mr r3, r30
/* 8055D9DC  4B E6 33 4D */	bl mMsg_Set_ForceNext
/* 8055D9E0  3C 80 80 6B */	lis r4, next_act_idx_1659@ha /* 0x806A9F84@ha */
/* 8055D9E4  7F 83 E3 78 */	mr r3, r28
/* 8055D9E8  38 A4 9F 84 */	addi r5, r4, next_act_idx_1659@l /* 0x806A9F84@l */
/* 8055D9EC  7F A4 EB 78 */	mr r4, r29
/* 8055D9F0  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8055D9F4  48 00 13 DD */	bl aNSC_setupAction
lbl_8055D9F8:
/* 8055D9F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D9FC  4B B3 D5 21 */	bl func_8009AF1C
/* 8055DA00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DA04  7C 08 03 A6 */	mtlr r0
/* 8055DA08  38 21 00 20 */	addi r1, r1, 0x20
/* 8055DA0C  4E 80 00 20 */	blr 
