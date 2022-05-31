lbl_80568EB4:
/* 80568EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80568EB8  7C 08 02 A6 */	mflr r0
/* 80568EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80568EC4  4B B3 20 0D */	bl func_8009AED0
/* 80568EC8  7C 7C 1B 78 */	mr r28, r3
/* 80568ECC  7C 9D 23 78 */	mr r29, r4
/* 80568ED0  38 60 00 04 */	li r3, 4
/* 80568ED4  38 80 00 09 */	li r4, 9
/* 80568ED8  4B E2 F5 A5 */	bl mDemo_Get_OrderValue
/* 80568EDC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80568EE0  2C 00 00 04 */	cmpwi r0, 4
/* 80568EE4  40 82 00 F0 */	bne lbl_80568FD4
/* 80568EE8  4B E5 67 C1 */	bl func_803BF6A8
/* 80568EEC  4B E5 7D AD */	bl mMsg_Check_MainNormalContinue
/* 80568EF0  2C 03 00 01 */	cmpwi r3, 1
/* 80568EF4  40 82 00 E0 */	bne lbl_80568FD4
/* 80568EF8  38 60 00 04 */	li r3, 4
/* 80568EFC  38 80 00 09 */	li r4, 9
/* 80568F00  38 A0 00 00 */	li r5, 0
/* 80568F04  4B E2 F5 35 */	bl mDemo_Set_OrderValue
/* 80568F08  3B C0 00 00 */	li r30, 0
/* 80568F0C  4B E1 A6 35 */	bl func_80383540
/* 80568F10  4B E1 AC 5D */	bl mChoice_Get_ChoseNum
/* 80568F14  7C 64 1B 78 */	mr r4, r3
/* 80568F18  2C 04 00 02 */	cmpwi r4, 2
/* 80568F1C  41 82 00 40 */	beq lbl_80568F5C
/* 80568F20  40 80 00 10 */	bge lbl_80568F30
/* 80568F24  2C 04 00 00 */	cmpwi r4, 0
/* 80568F28  40 80 00 14 */	bge lbl_80568F3C
/* 80568F2C  48 00 00 68 */	b lbl_80568F94
lbl_80568F30:
/* 80568F30  2C 04 00 04 */	cmpwi r4, 4
/* 80568F34  40 80 00 60 */	bge lbl_80568F94
/* 80568F38  48 00 00 58 */	b lbl_80568F90
lbl_80568F3C:
/* 80568F3C  80 1C 09 94 */	lwz r0, 0x994(r28)
/* 80568F40  2C 00 00 0C */	cmpwi r0, 0xc
/* 80568F44  40 82 00 08 */	bne lbl_80568F4C
/* 80568F48  38 84 00 02 */	addi r4, r4, 2
lbl_80568F4C:
/* 80568F4C  7F 83 E3 78 */	mr r3, r28
/* 80568F50  4B FF E7 D9 */	bl aNPS2_player_no_set
/* 80568F54  7C 7E 1B 78 */	mr r30, r3
/* 80568F58  48 00 00 3C */	b lbl_80568F94
lbl_80568F5C:
/* 80568F5C  80 1C 09 94 */	lwz r0, 0x994(r28)
/* 80568F60  2C 00 00 0B */	cmpwi r0, 0xb
/* 80568F64  40 82 00 18 */	bne lbl_80568F7C
/* 80568F68  7F 83 E3 78 */	mr r3, r28
/* 80568F6C  3B C0 00 04 */	li r30, 4
/* 80568F70  38 80 00 01 */	li r4, 1
/* 80568F74  4B FF EE 81 */	bl aNPS2_set_choice_str2
/* 80568F78  48 00 00 1C */	b lbl_80568F94
lbl_80568F7C:
/* 80568F7C  7F 83 E3 78 */	mr r3, r28
/* 80568F80  3B C0 00 03 */	li r30, 3
/* 80568F84  38 80 00 00 */	li r4, 0
/* 80568F88  4B FF EE 6D */	bl aNPS2_set_choice_str2
/* 80568F8C  48 00 00 08 */	b lbl_80568F94
lbl_80568F90:
/* 80568F90  3B C0 00 02 */	li r30, 2
lbl_80568F94:
/* 80568F94  3C 60 80 6C */	lis r3, msg_no_1031@ha /* 0x806BE554@ha */
/* 80568F98  57 DE 10 3A */	slwi r30, r30, 2
/* 80568F9C  38 83 E5 54 */	addi r4, r3, msg_no_1031@l /* 0x806BE554@l */
/* 80568FA0  7F 83 E3 78 */	mr r3, r28
/* 80568FA4  7C 84 F0 2E */	lwzx r4, r4, r30
/* 80568FA8  4B FF E5 A1 */	bl aNPS2_make_msg
/* 80568FAC  7C 7F 1B 78 */	mr r31, r3
/* 80568FB0  4B E5 66 F9 */	bl func_803BF6A8
/* 80568FB4  7F E4 FB 78 */	mr r4, r31
/* 80568FB8  4B E5 70 0D */	bl mMsg_Set_continue_msg_num
/* 80568FBC  3C 80 80 6C */	lis r4, next_talk_idx_1030@ha /* 0x806BE540@ha */
/* 80568FC0  7F 83 E3 78 */	mr r3, r28
/* 80568FC4  38 A4 E5 40 */	addi r5, r4, next_talk_idx_1030@l /* 0x806BE540@l */
/* 80568FC8  7F A4 EB 78 */	mr r4, r29
/* 80568FCC  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80568FD0  48 00 0D F9 */	bl aNPS2_change_talk_proc
lbl_80568FD4:
/* 80568FD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80568FD8  4B B3 1F 45 */	bl func_8009AF1C
/* 80568FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568FE0  7C 08 03 A6 */	mtlr r0
/* 80568FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80568FE8  4E 80 00 20 */	blr 
