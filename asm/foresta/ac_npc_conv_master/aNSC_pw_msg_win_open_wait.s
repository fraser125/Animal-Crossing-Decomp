lbl_80549954:
/* 80549954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549958  7C 08 02 A6 */	mflr r0
/* 8054995C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549960  39 61 00 20 */	addi r11, r1, 0x20
/* 80549964  4B B5 15 6D */	bl func_8009AED0
/* 80549968  7C 7C 1B 78 */	mr r28, r3
/* 8054996C  7C 9D 23 78 */	mr r29, r4
/* 80549970  4B E7 5D 39 */	bl func_803BF6A8
/* 80549974  7C 7E 1B 78 */	mr r30, r3
/* 80549978  4B E7 5D ED */	bl mMsg_Check_not_series_main_wait
/* 8054997C  2C 03 00 01 */	cmpwi r3, 1
/* 80549980  40 82 00 68 */	bne lbl_805499E8
/* 80549984  3B E0 00 00 */	li r31, 0
/* 80549988  4B E6 A1 15 */	bl mLd_GetLandName
/* 8054998C  7C 64 1B 78 */	mr r4, r3
/* 80549990  38 7C 09 C8 */	addi r3, r28, 0x9c8
/* 80549994  4B E6 9E 79 */	bl mLd_CheckCmpLandName
/* 80549998  2C 03 00 00 */	cmpwi r3, 0
/* 8054999C  40 82 00 08 */	bne lbl_805499A4
/* 805499A0  3B E0 00 01 */	li r31, 1
lbl_805499A4:
/* 805499A4  3C 60 80 6A */	lis r3, msg_no_1774@ha /* 0x806A4BD8@ha */
/* 805499A8  57 FF 10 3A */	slwi r31, r31, 2
/* 805499AC  38 63 4B D8 */	addi r3, r3, msg_no_1774@l /* 0x806A4BD8@l */
/* 805499B0  7C 63 F8 2E */	lwzx r3, r3, r31
/* 805499B4  4B FF D3 31 */	bl aNSC_get_msg_no
/* 805499B8  7C 65 1B 78 */	mr r5, r3
/* 805499BC  7F C3 F3 78 */	mr r3, r30
/* 805499C0  7F 84 E3 78 */	mr r4, r28
/* 805499C4  4B FF D3 A9 */	bl aNSC_ChangeMsgData
/* 805499C8  7F C3 F3 78 */	mr r3, r30
/* 805499CC  4B E7 73 5D */	bl mMsg_Set_ForceNext
/* 805499D0  3C 80 80 6A */	lis r4, next_act_idx_1775@ha /* 0x806A4BE0@ha */
/* 805499D4  7F 83 E3 78 */	mr r3, r28
/* 805499D8  38 A4 4B E0 */	addi r5, r4, next_act_idx_1775@l /* 0x806A4BE0@l */
/* 805499DC  7F A4 EB 78 */	mr r4, r29
/* 805499E0  7C A5 F8 2E */	lwzx r5, r5, r31
/* 805499E4  48 00 15 39 */	bl aNSC_setupAction
lbl_805499E8:
/* 805499E8  39 61 00 20 */	addi r11, r1, 0x20
/* 805499EC  4B B5 15 31 */	bl func_8009AF1C
/* 805499F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805499F4  7C 08 03 A6 */	mtlr r0
/* 805499F8  38 21 00 20 */	addi r1, r1, 0x20
/* 805499FC  4E 80 00 20 */	blr 
