lbl_80568D18:
/* 80568D18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80568D1C  7C 08 02 A6 */	mflr r0
/* 80568D20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568D24  39 61 00 20 */	addi r11, r1, 0x20
/* 80568D28  4B B3 21 A9 */	bl func_8009AED0
/* 80568D2C  7C 7C 1B 78 */	mr r28, r3
/* 80568D30  7C 9D 23 78 */	mr r29, r4
/* 80568D34  38 60 00 04 */	li r3, 4
/* 80568D38  38 80 00 09 */	li r4, 9
/* 80568D3C  4B E2 F7 41 */	bl mDemo_Get_OrderValue
/* 80568D40  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80568D44  2C 00 00 04 */	cmpwi r0, 4
/* 80568D48  40 82 00 A0 */	bne lbl_80568DE8
/* 80568D4C  4B E5 69 5D */	bl func_803BF6A8
/* 80568D50  4B E5 7F 49 */	bl mMsg_Check_MainNormalContinue
/* 80568D54  2C 03 00 01 */	cmpwi r3, 1
/* 80568D58  40 82 00 90 */	bne lbl_80568DE8
/* 80568D5C  38 60 00 04 */	li r3, 4
/* 80568D60  38 80 00 09 */	li r4, 9
/* 80568D64  38 A0 00 00 */	li r5, 0
/* 80568D68  4B E2 F6 D1 */	bl mDemo_Set_OrderValue
/* 80568D6C  83 DC 09 A0 */	lwz r30, 0x9a0(r28)
/* 80568D70  4B E1 A7 D1 */	bl func_80383540
/* 80568D74  4B E1 AD F9 */	bl mChoice_Get_ChoseNum
/* 80568D78  2C 1E 00 04 */	cmpwi r30, 4
/* 80568D7C  7C 64 1B 78 */	mr r4, r3
/* 80568D80  40 82 00 10 */	bne lbl_80568D90
/* 80568D84  7F 83 E3 78 */	mr r3, r28
/* 80568D88  4B FF E9 A1 */	bl aNPS2_player_no_set
/* 80568D8C  48 00 00 1C */	b lbl_80568DA8
lbl_80568D90:
/* 80568D90  7C 04 F0 00 */	cmpw r4, r30
/* 80568D94  40 80 00 10 */	bge lbl_80568DA4
/* 80568D98  7F 83 E3 78 */	mr r3, r28
/* 80568D9C  4B FF E9 8D */	bl aNPS2_player_no_set
/* 80568DA0  48 00 00 08 */	b lbl_80568DA8
lbl_80568DA4:
/* 80568DA4  38 60 00 02 */	li r3, 2
lbl_80568DA8:
/* 80568DA8  3C 80 80 6C */	lis r4, msg_no_1002@ha /* 0x806BE534@ha */
/* 80568DAC  54 7E 10 3A */	slwi r30, r3, 2
/* 80568DB0  38 84 E5 34 */	addi r4, r4, msg_no_1002@l /* 0x806BE534@l */
/* 80568DB4  7F 83 E3 78 */	mr r3, r28
/* 80568DB8  7C 84 F0 2E */	lwzx r4, r4, r30
/* 80568DBC  4B FF E7 8D */	bl aNPS2_make_msg
/* 80568DC0  7C 7F 1B 78 */	mr r31, r3
/* 80568DC4  4B E5 68 E5 */	bl func_803BF6A8
/* 80568DC8  7F E4 FB 78 */	mr r4, r31
/* 80568DCC  4B E5 71 F9 */	bl mMsg_Set_continue_msg_num
/* 80568DD0  3C 80 80 6C */	lis r4, next_talk_idx_1001@ha /* 0x806BE528@ha */
/* 80568DD4  7F 83 E3 78 */	mr r3, r28
/* 80568DD8  38 A4 E5 28 */	addi r5, r4, next_talk_idx_1001@l /* 0x806BE528@l */
/* 80568DDC  7F A4 EB 78 */	mr r4, r29
/* 80568DE0  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80568DE4  48 00 0F E5 */	bl aNPS2_change_talk_proc
lbl_80568DE8:
/* 80568DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80568DEC  4B B3 21 31 */	bl func_8009AF1C
/* 80568DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568DF4  7C 08 03 A6 */	mtlr r0
/* 80568DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80568DFC  4E 80 00 20 */	blr 
