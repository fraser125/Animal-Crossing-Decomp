lbl_8057B408:
/* 8057B408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057B40C  7C 08 02 A6 */	mflr r0
/* 8057B410  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057B414  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B418  4B B1 FA B9 */	bl func_8009AED0
/* 8057B41C  7C 7C 1B 78 */	mr r28, r3
/* 8057B420  7C 9D 23 78 */	mr r29, r4
/* 8057B424  4B E4 42 85 */	bl func_803BF6A8
/* 8057B428  7C 7E 1B 78 */	mr r30, r3
/* 8057B42C  4B E4 43 39 */	bl mMsg_Check_not_series_main_wait
/* 8057B430  2C 03 00 01 */	cmpwi r3, 1
/* 8057B434  40 82 00 50 */	bne lbl_8057B484
/* 8057B438  7F 83 E3 78 */	mr r3, r28
/* 8057B43C  4B FF C4 F1 */	bl aNSC_pc_check_password
/* 8057B440  3C 80 80 6C */	lis r4, msg_no_1841@ha /* 0x806C03F0@ha */
/* 8057B444  54 7F 10 3A */	slwi r31, r3, 2
/* 8057B448  38 64 03 F0 */	addi r3, r4, msg_no_1841@l /* 0x806C03F0@l */
/* 8057B44C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8057B450  4B FF CE 2D */	bl aNSC_get_msg_no
/* 8057B454  7C 65 1B 78 */	mr r5, r3
/* 8057B458  7F C3 F3 78 */	mr r3, r30
/* 8057B45C  7F 84 E3 78 */	mr r4, r28
/* 8057B460  4B FF CE A5 */	bl aNSC_ChangeMsgData
/* 8057B464  7F C3 F3 78 */	mr r3, r30
/* 8057B468  4B E4 58 C1 */	bl mMsg_Set_ForceNext
/* 8057B46C  3C 80 80 6C */	lis r4, next_act_idx_1842@ha /* 0x806C0418@ha */
/* 8057B470  7F 83 E3 78 */	mr r3, r28
/* 8057B474  38 A4 04 18 */	addi r5, r4, next_act_idx_1842@l /* 0x806C0418@l */
/* 8057B478  7F A4 EB 78 */	mr r4, r29
/* 8057B47C  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8057B480  48 00 10 35 */	bl aNSC_setupAction
lbl_8057B484:
/* 8057B484  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B488  4B B1 FA 95 */	bl func_8009AF1C
/* 8057B48C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057B490  7C 08 03 A6 */	mtlr r0
/* 8057B494  38 21 00 20 */	addi r1, r1, 0x20
/* 8057B498  4E 80 00 20 */	blr 
