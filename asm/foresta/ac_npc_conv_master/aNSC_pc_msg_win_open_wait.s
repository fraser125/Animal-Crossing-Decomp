lbl_80549E70:
/* 80549E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549E74  7C 08 02 A6 */	mflr r0
/* 80549E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549E7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80549E80  4B B5 10 51 */	bl func_8009AED0
/* 80549E84  7C 7C 1B 78 */	mr r28, r3
/* 80549E88  7C 9D 23 78 */	mr r29, r4
/* 80549E8C  4B E7 58 1D */	bl func_803BF6A8
/* 80549E90  7C 7E 1B 78 */	mr r30, r3
/* 80549E94  4B E7 58 D1 */	bl mMsg_Check_not_series_main_wait
/* 80549E98  2C 03 00 01 */	cmpwi r3, 1
/* 80549E9C  40 82 00 50 */	bne lbl_80549EEC
/* 80549EA0  7F 83 E3 78 */	mr r3, r28
/* 80549EA4  4B FF C4 F1 */	bl aNSC_pc_check_password
/* 80549EA8  3C 80 80 6A */	lis r4, msg_no_1854@ha /* 0x806A4C18@ha */
/* 80549EAC  54 7F 10 3A */	slwi r31, r3, 2
/* 80549EB0  38 64 4C 18 */	addi r3, r4, msg_no_1854@l /* 0x806A4C18@l */
/* 80549EB4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80549EB8  4B FF CE 2D */	bl aNSC_get_msg_no
/* 80549EBC  7C 65 1B 78 */	mr r5, r3
/* 80549EC0  7F C3 F3 78 */	mr r3, r30
/* 80549EC4  7F 84 E3 78 */	mr r4, r28
/* 80549EC8  4B FF CE A5 */	bl aNSC_ChangeMsgData
/* 80549ECC  7F C3 F3 78 */	mr r3, r30
/* 80549ED0  4B E7 6E 59 */	bl mMsg_Set_ForceNext
/* 80549ED4  3C 80 80 6A */	lis r4, next_act_idx_1855@ha /* 0x806A4C40@ha */
/* 80549ED8  7F 83 E3 78 */	mr r3, r28
/* 80549EDC  38 A4 4C 40 */	addi r5, r4, next_act_idx_1855@l /* 0x806A4C40@l */
/* 80549EE0  7F A4 EB 78 */	mr r4, r29
/* 80549EE4  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80549EE8  48 00 10 35 */	bl aNSC_setupAction
lbl_80549EEC:
/* 80549EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80549EF0  4B B5 10 2D */	bl func_8009AF1C
/* 80549EF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80549EF8  7C 08 03 A6 */	mtlr r0
/* 80549EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80549F00  4E 80 00 20 */	blr 
