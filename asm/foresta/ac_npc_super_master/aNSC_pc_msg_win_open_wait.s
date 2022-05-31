lbl_80584F14:
/* 80584F14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584F18  7C 08 02 A6 */	mflr r0
/* 80584F1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584F20  39 61 00 20 */	addi r11, r1, 0x20
/* 80584F24  4B B1 5F AD */	bl func_8009AED0
/* 80584F28  7C 7C 1B 78 */	mr r28, r3
/* 80584F2C  7C 9D 23 78 */	mr r29, r4
/* 80584F30  4B E3 A7 79 */	bl func_803BF6A8
/* 80584F34  7C 7E 1B 78 */	mr r30, r3
/* 80584F38  4B E3 A8 2D */	bl mMsg_Check_not_series_main_wait
/* 80584F3C  2C 03 00 01 */	cmpwi r3, 1
/* 80584F40  40 82 00 50 */	bne lbl_80584F90
/* 80584F44  7F 83 E3 78 */	mr r3, r28
/* 80584F48  4B FF C4 F1 */	bl aNSC_pc_check_password
/* 80584F4C  3C 80 80 6C */	lis r4, msg_no_1881@ha /* 0x806C1934@ha */
/* 80584F50  54 7F 10 3A */	slwi r31, r3, 2
/* 80584F54  38 64 19 34 */	addi r3, r4, msg_no_1881@l /* 0x806C1934@l */
/* 80584F58  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80584F5C  4B FF CE 2D */	bl aNSC_get_msg_no
/* 80584F60  7C 65 1B 78 */	mr r5, r3
/* 80584F64  7F C3 F3 78 */	mr r3, r30
/* 80584F68  7F 84 E3 78 */	mr r4, r28
/* 80584F6C  4B FF CE A5 */	bl aNSC_ChangeMsgData
/* 80584F70  7F C3 F3 78 */	mr r3, r30
/* 80584F74  4B E3 BD B5 */	bl mMsg_Set_ForceNext
/* 80584F78  3C 80 80 6C */	lis r4, next_act_idx_1882@ha /* 0x806C195C@ha */
/* 80584F7C  7F 83 E3 78 */	mr r3, r28
/* 80584F80  38 A4 19 5C */	addi r5, r4, next_act_idx_1882@l /* 0x806C195C@l */
/* 80584F84  7F A4 EB 78 */	mr r4, r29
/* 80584F88  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80584F8C  48 00 10 35 */	bl aNSC_setupAction
lbl_80584F90:
/* 80584F90  39 61 00 20 */	addi r11, r1, 0x20
/* 80584F94  4B B1 5F 89 */	bl func_8009AF1C
/* 80584F98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584F9C  7C 08 03 A6 */	mtlr r0
/* 80584FA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80584FA4  4E 80 00 20 */	blr 
