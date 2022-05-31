lbl_80549F04:
/* 80549F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549F08  7C 08 02 A6 */	mflr r0
/* 80549F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80549F14  4B B5 0F B9 */	bl func_8009AECC
/* 80549F18  7C 7B 1B 78 */	mr r27, r3
/* 80549F1C  7C 9C 23 78 */	mr r28, r4
/* 80549F20  4B E7 57 89 */	bl func_803BF6A8
/* 80549F24  7C 60 1B 78 */	mr r0, r3
/* 80549F28  38 60 01 39 */	li r3, 0x139
/* 80549F2C  7C 1D 03 78 */	mr r29, r0
/* 80549F30  4B FF CD B5 */	bl aNSC_get_msg_no
/* 80549F34  7C 7E 1B 78 */	mr r30, r3
/* 80549F38  38 60 01 44 */	li r3, 0x144
/* 80549F3C  4B FF CD A9 */	bl aNSC_get_msg_no
/* 80549F40  7C 7F 1B 78 */	mr r31, r3
/* 80549F44  7F A3 EB 78 */	mr r3, r29
/* 80549F48  4B E7 60 85 */	bl mMsg_Get_msg_num
/* 80549F4C  7C 03 F0 00 */	cmpw r3, r30
/* 80549F50  41 82 00 0C */	beq lbl_80549F5C
/* 80549F54  7C 03 F8 00 */	cmpw r3, r31
/* 80549F58  40 82 00 88 */	bne lbl_80549FE0
lbl_80549F5C:
/* 80549F5C  7F A3 EB 78 */	mr r3, r29
/* 80549F60  4B E7 6D 39 */	bl mMsg_Check_MainNormalContinue
/* 80549F64  2C 03 00 00 */	cmpwi r3, 0
/* 80549F68  41 82 00 78 */	beq lbl_80549FE0
/* 80549F6C  3B C0 FF FF */	li r30, -1
/* 80549F70  4B E3 95 D1 */	bl func_80383540
/* 80549F74  4B E3 9B F9 */	bl mChoice_Get_ChoseNum
/* 80549F78  2C 03 00 01 */	cmpwi r3, 1
/* 80549F7C  41 82 00 1C */	beq lbl_80549F98
/* 80549F80  40 80 00 34 */	bge lbl_80549FB4
/* 80549F84  2C 03 00 00 */	cmpwi r3, 0
/* 80549F88  40 80 00 08 */	bge lbl_80549F90
/* 80549F8C  48 00 00 28 */	b lbl_80549FB4
lbl_80549F90:
/* 80549F90  3B C0 00 00 */	li r30, 0
/* 80549F94  48 00 00 20 */	b lbl_80549FB4
lbl_80549F98:
/* 80549F98  3B C0 00 01 */	li r30, 1
/* 80549F9C  38 60 01 3A */	li r3, 0x13a
/* 80549FA0  4B FF CD 45 */	bl aNSC_get_msg_no
/* 80549FA4  7C 65 1B 78 */	mr r5, r3
/* 80549FA8  7F A3 EB 78 */	mr r3, r29
/* 80549FAC  7F 64 DB 78 */	mr r4, r27
/* 80549FB0  4B FF CD BD */	bl aNSC_ChangeMsgData
lbl_80549FB4:
/* 80549FB4  2C 1E FF FF */	cmpwi r30, -1
/* 80549FB8  41 82 00 28 */	beq lbl_80549FE0
/* 80549FBC  7F A3 EB 78 */	mr r3, r29
/* 80549FC0  4B E7 6D 69 */	bl mMsg_Set_ForceNext
/* 80549FC4  3C 60 80 6A */	lis r3, next_act_idx_1863@ha /* 0x806A4C68@ha */
/* 80549FC8  57 C0 10 3A */	slwi r0, r30, 2
/* 80549FCC  38 83 4C 68 */	addi r4, r3, next_act_idx_1863@l /* 0x806A4C68@l */
/* 80549FD0  7F 63 DB 78 */	mr r3, r27
/* 80549FD4  7C A4 00 2E */	lwzx r5, r4, r0
/* 80549FD8  7F 84 E3 78 */	mr r4, r28
/* 80549FDC  48 00 0F 41 */	bl aNSC_setupAction
lbl_80549FE0:
/* 80549FE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80549FE4  4B B5 0F 35 */	bl func_8009AF18
/* 80549FE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80549FEC  7C 08 03 A6 */	mtlr r0
/* 80549FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80549FF4  4E 80 00 20 */	blr 
