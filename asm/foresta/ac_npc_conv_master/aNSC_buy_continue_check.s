lbl_80548E8C:
/* 80548E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80548E90  7C 08 02 A6 */	mflr r0
/* 80548E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80548E98  39 61 00 20 */	addi r11, r1, 0x20
/* 80548E9C  4B B5 20 31 */	bl func_8009AECC
/* 80548EA0  7C 7B 1B 78 */	mr r27, r3
/* 80548EA4  7C 9C 23 78 */	mr r28, r4
/* 80548EA8  4B E7 68 01 */	bl func_803BF6A8
/* 80548EAC  7C 60 1B 78 */	mr r0, r3
/* 80548EB0  38 60 00 1C */	li r3, 0x1c
/* 80548EB4  7C 1D 03 78 */	mr r29, r0
/* 80548EB8  4B FF DE 2D */	bl aNSC_get_msg_no
/* 80548EBC  7C 7E 1B 78 */	mr r30, r3
/* 80548EC0  38 60 00 1D */	li r3, 0x1d
/* 80548EC4  4B FF DE 21 */	bl aNSC_get_msg_no
/* 80548EC8  7C 7F 1B 78 */	mr r31, r3
/* 80548ECC  7F A3 EB 78 */	mr r3, r29
/* 80548ED0  4B E7 70 FD */	bl mMsg_Get_msg_num
/* 80548ED4  7C 03 F0 00 */	cmpw r3, r30
/* 80548ED8  41 82 00 0C */	beq lbl_80548EE4
/* 80548EDC  7C 03 F8 00 */	cmpw r3, r31
/* 80548EE0  40 82 00 80 */	bne lbl_80548F60
lbl_80548EE4:
/* 80548EE4  7F A3 EB 78 */	mr r3, r29
/* 80548EE8  4B E7 7D B1 */	bl mMsg_Check_MainNormalContinue
/* 80548EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80548EF0  41 82 00 70 */	beq lbl_80548F60
/* 80548EF4  3B C0 FF FF */	li r30, -1
/* 80548EF8  4B E3 A6 49 */	bl func_80383540
/* 80548EFC  4B E3 AC 71 */	bl mChoice_Get_ChoseNum
/* 80548F00  2C 03 00 01 */	cmpwi r3, 1
/* 80548F04  41 82 00 1C */	beq lbl_80548F20
/* 80548F08  40 80 00 34 */	bge lbl_80548F3C
/* 80548F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80548F10  40 80 00 08 */	bge lbl_80548F18
/* 80548F14  48 00 00 28 */	b lbl_80548F3C
lbl_80548F18:
/* 80548F18  3B C0 00 00 */	li r30, 0
/* 80548F1C  48 00 00 20 */	b lbl_80548F3C
lbl_80548F20:
/* 80548F20  38 60 00 15 */	li r3, 0x15
/* 80548F24  4B FF DD C1 */	bl aNSC_get_msg_no
/* 80548F28  7C 65 1B 78 */	mr r5, r3
/* 80548F2C  7F A3 EB 78 */	mr r3, r29
/* 80548F30  7F 64 DB 78 */	mr r4, r27
/* 80548F34  4B FF DD F9 */	bl aNSC_Set_continue_msg_num
/* 80548F38  3B C0 00 01 */	li r30, 1
lbl_80548F3C:
/* 80548F3C  2C 1E FF FF */	cmpwi r30, -1
/* 80548F40  41 82 00 20 */	beq lbl_80548F60
/* 80548F44  3C 60 80 6A */	lis r3, next_act_idx_1596@ha /* 0x806A4B60@ha */
/* 80548F48  57 C0 10 3A */	slwi r0, r30, 2
/* 80548F4C  38 83 4B 60 */	addi r4, r3, next_act_idx_1596@l /* 0x806A4B60@l */
/* 80548F50  7F 63 DB 78 */	mr r3, r27
/* 80548F54  7C A4 00 2E */	lwzx r5, r4, r0
/* 80548F58  7F 84 E3 78 */	mr r4, r28
/* 80548F5C  48 00 1F C1 */	bl aNSC_setupAction
lbl_80548F60:
/* 80548F60  39 61 00 20 */	addi r11, r1, 0x20
/* 80548F64  4B B5 1F B5 */	bl func_8009AF18
/* 80548F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80548F6C  7C 08 03 A6 */	mtlr r0
/* 80548F70  38 21 00 20 */	addi r1, r1, 0x20
/* 80548F74  4E 80 00 20 */	blr 
