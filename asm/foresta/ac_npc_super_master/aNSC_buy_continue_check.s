lbl_80583F30:
/* 80583F30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80583F34  7C 08 02 A6 */	mflr r0
/* 80583F38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583F3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80583F40  4B B1 6F 8D */	bl func_8009AECC
/* 80583F44  7C 7B 1B 78 */	mr r27, r3
/* 80583F48  7C 9C 23 78 */	mr r28, r4
/* 80583F4C  4B E3 B7 5D */	bl func_803BF6A8
/* 80583F50  7C 60 1B 78 */	mr r0, r3
/* 80583F54  38 60 00 1C */	li r3, 0x1c
/* 80583F58  7C 1D 03 78 */	mr r29, r0
/* 80583F5C  4B FF DE 2D */	bl aNSC_get_msg_no
/* 80583F60  7C 7E 1B 78 */	mr r30, r3
/* 80583F64  38 60 00 1D */	li r3, 0x1d
/* 80583F68  4B FF DE 21 */	bl aNSC_get_msg_no
/* 80583F6C  7C 7F 1B 78 */	mr r31, r3
/* 80583F70  7F A3 EB 78 */	mr r3, r29
/* 80583F74  4B E3 C0 59 */	bl mMsg_Get_msg_num
/* 80583F78  7C 03 F0 00 */	cmpw r3, r30
/* 80583F7C  41 82 00 0C */	beq lbl_80583F88
/* 80583F80  7C 03 F8 00 */	cmpw r3, r31
/* 80583F84  40 82 00 80 */	bne lbl_80584004
lbl_80583F88:
/* 80583F88  7F A3 EB 78 */	mr r3, r29
/* 80583F8C  4B E3 CD 0D */	bl mMsg_Check_MainNormalContinue
/* 80583F90  2C 03 00 00 */	cmpwi r3, 0
/* 80583F94  41 82 00 70 */	beq lbl_80584004
/* 80583F98  3B C0 FF FF */	li r30, -1
/* 80583F9C  4B DF F5 A5 */	bl func_80383540
/* 80583FA0  4B DF FB CD */	bl mChoice_Get_ChoseNum
/* 80583FA4  2C 03 00 01 */	cmpwi r3, 1
/* 80583FA8  41 82 00 1C */	beq lbl_80583FC4
/* 80583FAC  40 80 00 34 */	bge lbl_80583FE0
/* 80583FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80583FB4  40 80 00 08 */	bge lbl_80583FBC
/* 80583FB8  48 00 00 28 */	b lbl_80583FE0
lbl_80583FBC:
/* 80583FBC  3B C0 00 00 */	li r30, 0
/* 80583FC0  48 00 00 20 */	b lbl_80583FE0
lbl_80583FC4:
/* 80583FC4  38 60 00 15 */	li r3, 0x15
/* 80583FC8  4B FF DD C1 */	bl aNSC_get_msg_no
/* 80583FCC  7C 65 1B 78 */	mr r5, r3
/* 80583FD0  7F A3 EB 78 */	mr r3, r29
/* 80583FD4  7F 64 DB 78 */	mr r4, r27
/* 80583FD8  4B FF DD F9 */	bl aNSC_Set_continue_msg_num
/* 80583FDC  3B C0 00 01 */	li r30, 1
lbl_80583FE0:
/* 80583FE0  2C 1E FF FF */	cmpwi r30, -1
/* 80583FE4  41 82 00 20 */	beq lbl_80584004
/* 80583FE8  3C 60 80 6C */	lis r3, next_act_idx_1623@ha /* 0x806C187C@ha */
/* 80583FEC  57 C0 10 3A */	slwi r0, r30, 2
/* 80583FF0  38 83 18 7C */	addi r4, r3, next_act_idx_1623@l /* 0x806C187C@l */
/* 80583FF4  7F 63 DB 78 */	mr r3, r27
/* 80583FF8  7C A4 00 2E */	lwzx r5, r4, r0
/* 80583FFC  7F 84 E3 78 */	mr r4, r28
/* 80584000  48 00 1F C1 */	bl aNSC_setupAction
lbl_80584004:
/* 80584004  39 61 00 20 */	addi r11, r1, 0x20
/* 80584008  4B B1 6F 11 */	bl func_8009AF18
/* 8058400C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584010  7C 08 03 A6 */	mtlr r0
/* 80584014  38 21 00 20 */	addi r1, r1, 0x20
/* 80584018  4E 80 00 20 */	blr 
