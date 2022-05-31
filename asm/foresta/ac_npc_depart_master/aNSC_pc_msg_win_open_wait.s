lbl_80551788:
/* 80551788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055178C  7C 08 02 A6 */	mflr r0
/* 80551790  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551794  39 61 00 20 */	addi r11, r1, 0x20
/* 80551798  4B B4 97 39 */	bl func_8009AED0
/* 8055179C  7C 7C 1B 78 */	mr r28, r3
/* 805517A0  7C 9D 23 78 */	mr r29, r4
/* 805517A4  4B E6 DF 05 */	bl func_803BF6A8
/* 805517A8  7C 7E 1B 78 */	mr r30, r3
/* 805517AC  4B E6 DF B9 */	bl mMsg_Check_not_series_main_wait
/* 805517B0  2C 03 00 01 */	cmpwi r3, 1
/* 805517B4  40 82 00 50 */	bne lbl_80551804
/* 805517B8  7F 83 E3 78 */	mr r3, r28
/* 805517BC  4B FF C4 F1 */	bl aNSC_pc_check_password
/* 805517C0  3C 80 80 6A */	lis r4, msg_no_1866@ha /* 0x806A5E2C@ha */
/* 805517C4  54 7F 10 3A */	slwi r31, r3, 2
/* 805517C8  38 64 5E 2C */	addi r3, r4, msg_no_1866@l /* 0x806A5E2C@l */
/* 805517CC  7C 63 F8 2E */	lwzx r3, r3, r31
/* 805517D0  4B FF CE 2D */	bl aNSC_get_msg_no
/* 805517D4  7C 65 1B 78 */	mr r5, r3
/* 805517D8  7F C3 F3 78 */	mr r3, r30
/* 805517DC  7F 84 E3 78 */	mr r4, r28
/* 805517E0  4B FF CE A5 */	bl aNSC_ChangeMsgData
/* 805517E4  7F C3 F3 78 */	mr r3, r30
/* 805517E8  4B E6 F5 41 */	bl mMsg_Set_ForceNext
/* 805517EC  3C 80 80 6A */	lis r4, next_act_idx_1867@ha /* 0x806A5E54@ha */
/* 805517F0  7F 83 E3 78 */	mr r3, r28
/* 805517F4  38 A4 5E 54 */	addi r5, r4, next_act_idx_1867@l /* 0x806A5E54@l */
/* 805517F8  7F A4 EB 78 */	mr r4, r29
/* 805517FC  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80551800  48 00 10 35 */	bl aNSC_setupAction
lbl_80551804:
/* 80551804  39 61 00 20 */	addi r11, r1, 0x20
/* 80551808  4B B4 97 15 */	bl func_8009AF1C
/* 8055180C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551810  7C 08 03 A6 */	mtlr r0
/* 80551814  38 21 00 20 */	addi r1, r1, 0x20
/* 80551818  4E 80 00 20 */	blr 
