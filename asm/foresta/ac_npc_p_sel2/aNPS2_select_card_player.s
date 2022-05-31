lbl_805695A8:
/* 805695A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805695AC  7C 08 02 A6 */	mflr r0
/* 805695B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805695B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805695B8  4B B3 19 19 */	bl func_8009AED0
/* 805695BC  7C 7C 1B 78 */	mr r28, r3
/* 805695C0  7C 9D 23 78 */	mr r29, r4
/* 805695C4  38 60 00 04 */	li r3, 4
/* 805695C8  38 80 00 09 */	li r4, 9
/* 805695CC  4B E2 EE B1 */	bl mDemo_Get_OrderValue
/* 805695D0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805695D4  2C 00 00 06 */	cmpwi r0, 6
/* 805695D8  40 82 00 D0 */	bne lbl_805696A8
/* 805695DC  4B E5 60 CD */	bl func_803BF6A8
/* 805695E0  4B E5 76 B9 */	bl mMsg_Check_MainNormalContinue
/* 805695E4  2C 03 00 01 */	cmpwi r3, 1
/* 805695E8  40 82 00 C0 */	bne lbl_805696A8
/* 805695EC  38 60 00 04 */	li r3, 4
/* 805695F0  38 80 00 09 */	li r4, 9
/* 805695F4  38 A0 00 00 */	li r5, 0
/* 805695F8  4B E2 EE 41 */	bl mDemo_Set_OrderValue
/* 805695FC  4B E1 9F 45 */	bl func_80383540
/* 80569600  4B E1 A5 6D */	bl mChoice_Get_ChoseNum
/* 80569604  80 1C 09 BC */	lwz r0, 0x9bc(r28)
/* 80569608  7C 03 00 00 */	cmpw r3, r0
/* 8056960C  40 82 00 30 */	bne lbl_8056963C
/* 80569610  80 7C 09 B8 */	lwz r3, 0x9b8(r28)
/* 80569614  38 03 00 03 */	addi r0, r3, 3
/* 80569618  90 1C 09 B8 */	stw r0, 0x9b8(r28)
/* 8056961C  80 7C 09 B8 */	lwz r3, 0x9b8(r28)
/* 80569620  80 1C 09 B4 */	lwz r0, 0x9b4(r28)
/* 80569624  7C 03 00 00 */	cmpw r3, r0
/* 80569628  41 80 00 0C */	blt lbl_80569634
/* 8056962C  38 00 00 00 */	li r0, 0
/* 80569630  90 1C 09 B8 */	stw r0, 0x9b8(r28)
lbl_80569634:
/* 80569634  38 60 00 04 */	li r3, 4
/* 80569638  48 00 00 18 */	b lbl_80569650
lbl_8056963C:
/* 8056963C  80 1C 09 B8 */	lwz r0, 0x9b8(r28)
/* 80569640  7C 00 1A 14 */	add r0, r0, r3
/* 80569644  7F 83 E3 78 */	mr r3, r28
/* 80569648  90 1C 09 A8 */	stw r0, 0x9a8(r28)
/* 8056964C  4B FF DE 55 */	bl aNPS2_card_player_idx
lbl_80569650:
/* 80569650  2C 03 FF FF */	cmpwi r3, -1
/* 80569654  41 82 00 54 */	beq lbl_805696A8
/* 80569658  3C 80 80 6C */	lis r4, msg_no_1123@ha /* 0x806BE5E4@ha */
/* 8056965C  54 7E 10 3A */	slwi r30, r3, 2
/* 80569660  38 84 E5 E4 */	addi r4, r4, msg_no_1123@l /* 0x806BE5E4@l */
/* 80569664  7F 83 E3 78 */	mr r3, r28
/* 80569668  7C 84 F0 2E */	lwzx r4, r4, r30
/* 8056966C  4B FF DE DD */	bl aNPS2_make_msg
/* 80569670  7C 7F 1B 78 */	mr r31, r3
/* 80569674  4B E5 60 35 */	bl func_803BF6A8
/* 80569678  7F E4 FB 78 */	mr r4, r31
/* 8056967C  4B E5 69 49 */	bl mMsg_Set_continue_msg_num
/* 80569680  3C 80 80 6C */	lis r4, next_talk_idx_1122@ha /* 0x806BE5D0@ha */
/* 80569684  7F 83 E3 78 */	mr r3, r28
/* 80569688  38 A4 E5 D0 */	addi r5, r4, next_talk_idx_1122@l /* 0x806BE5D0@l */
/* 8056968C  7F A4 EB 78 */	mr r4, r29
/* 80569690  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80569694  48 00 07 35 */	bl aNPS2_change_talk_proc
/* 80569698  38 60 00 04 */	li r3, 4
/* 8056969C  38 80 00 09 */	li r4, 9
/* 805696A0  38 A0 00 00 */	li r5, 0
/* 805696A4  4B E2 ED 95 */	bl mDemo_Set_OrderValue
lbl_805696A8:
/* 805696A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805696AC  4B B3 18 71 */	bl func_8009AF1C
/* 805696B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805696B4  7C 08 03 A6 */	mtlr r0
/* 805696B8  38 21 00 20 */	addi r1, r1, 0x20
/* 805696BC  4E 80 00 20 */	blr 
