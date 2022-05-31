lbl_80549A00:
/* 80549A00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549A04  7C 08 02 A6 */	mflr r0
/* 80549A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549A0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80549A10  4B B5 14 C1 */	bl func_8009AED0
/* 80549A14  7C 7C 1B 78 */	mr r28, r3
/* 80549A18  7C 9D 23 78 */	mr r29, r4
/* 80549A1C  4B E7 5C 8D */	bl func_803BF6A8
/* 80549A20  7C 60 1B 78 */	mr r0, r3
/* 80549A24  38 60 01 2F */	li r3, 0x12f
/* 80549A28  7C 1E 03 78 */	mr r30, r0
/* 80549A2C  4B FF D2 B9 */	bl aNSC_get_msg_no
/* 80549A30  7C 7F 1B 78 */	mr r31, r3
/* 80549A34  7F C3 F3 78 */	mr r3, r30
/* 80549A38  4B E7 65 95 */	bl mMsg_Get_msg_num
/* 80549A3C  7C 03 F8 00 */	cmpw r3, r31
/* 80549A40  40 82 00 84 */	bne lbl_80549AC4
/* 80549A44  7F C3 F3 78 */	mr r3, r30
/* 80549A48  4B E7 72 51 */	bl mMsg_Check_MainNormalContinue
/* 80549A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80549A50  41 82 00 74 */	beq lbl_80549AC4
/* 80549A54  3B E0 FF FF */	li r31, -1
/* 80549A58  4B E3 9A E9 */	bl func_80383540
/* 80549A5C  4B E3 A1 11 */	bl mChoice_Get_ChoseNum
/* 80549A60  2C 03 00 01 */	cmpwi r3, 1
/* 80549A64  41 82 00 28 */	beq lbl_80549A8C
/* 80549A68  40 80 00 10 */	bge lbl_80549A78
/* 80549A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80549A70  40 80 00 14 */	bge lbl_80549A84
/* 80549A74  48 00 00 24 */	b lbl_80549A98
lbl_80549A78:
/* 80549A78  2C 03 00 03 */	cmpwi r3, 3
/* 80549A7C  40 80 00 1C */	bge lbl_80549A98
/* 80549A80  48 00 00 14 */	b lbl_80549A94
lbl_80549A84:
/* 80549A84  3B E0 00 00 */	li r31, 0
/* 80549A88  48 00 00 10 */	b lbl_80549A98
lbl_80549A8C:
/* 80549A8C  3B E0 00 01 */	li r31, 1
/* 80549A90  48 00 00 08 */	b lbl_80549A98
lbl_80549A94:
/* 80549A94  3B E0 00 02 */	li r31, 2
lbl_80549A98:
/* 80549A98  2C 1F FF FF */	cmpwi r31, -1
/* 80549A9C  41 82 00 28 */	beq lbl_80549AC4
/* 80549AA0  7F C3 F3 78 */	mr r3, r30
/* 80549AA4  4B E7 72 85 */	bl mMsg_Set_ForceNext
/* 80549AA8  3C 60 80 6A */	lis r3, next_act_idx_1785@ha /* 0x806A4BE8@ha */
/* 80549AAC  57 E0 10 3A */	slwi r0, r31, 2
/* 80549AB0  38 83 4B E8 */	addi r4, r3, next_act_idx_1785@l /* 0x806A4BE8@l */
/* 80549AB4  7F 83 E3 78 */	mr r3, r28
/* 80549AB8  7C A4 00 2E */	lwzx r5, r4, r0
/* 80549ABC  7F A4 EB 78 */	mr r4, r29
/* 80549AC0  48 00 14 5D */	bl aNSC_setupAction
lbl_80549AC4:
/* 80549AC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80549AC8  4B B5 14 55 */	bl func_8009AF1C
/* 80549ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80549AD0  7C 08 03 A6 */	mtlr r0
/* 80549AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80549AD8  4E 80 00 20 */	blr 
