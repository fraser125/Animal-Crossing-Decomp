lbl_80549D30:
/* 80549D30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549D34  7C 08 02 A6 */	mflr r0
/* 80549D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549D3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80549D40  4B B5 11 91 */	bl func_8009AED0
/* 80549D44  7C 7C 1B 78 */	mr r28, r3
/* 80549D48  7C 9D 23 78 */	mr r29, r4
/* 80549D4C  4B E7 59 5D */	bl func_803BF6A8
/* 80549D50  7C 60 1B 78 */	mr r0, r3
/* 80549D54  38 60 01 31 */	li r3, 0x131
/* 80549D58  7C 1E 03 78 */	mr r30, r0
/* 80549D5C  4B FF CF 89 */	bl aNSC_get_msg_no
/* 80549D60  7C 7F 1B 78 */	mr r31, r3
/* 80549D64  7F C3 F3 78 */	mr r3, r30
/* 80549D68  4B E7 62 65 */	bl mMsg_Get_msg_num
/* 80549D6C  7C 03 F8 00 */	cmpw r3, r31
/* 80549D70  40 82 00 70 */	bne lbl_80549DE0
/* 80549D74  7F C3 F3 78 */	mr r3, r30
/* 80549D78  4B E7 6F 21 */	bl mMsg_Check_MainNormalContinue
/* 80549D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80549D80  41 82 00 60 */	beq lbl_80549DE0
/* 80549D84  3B E0 FF FF */	li r31, -1
/* 80549D88  4B E3 97 B9 */	bl func_80383540
/* 80549D8C  4B E3 9D E1 */	bl mChoice_Get_ChoseNum
/* 80549D90  2C 03 00 01 */	cmpwi r3, 1
/* 80549D94  41 82 00 1C */	beq lbl_80549DB0
/* 80549D98  40 80 00 1C */	bge lbl_80549DB4
/* 80549D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80549DA0  40 80 00 08 */	bge lbl_80549DA8
/* 80549DA4  48 00 00 10 */	b lbl_80549DB4
lbl_80549DA8:
/* 80549DA8  3B E0 00 00 */	li r31, 0
/* 80549DAC  48 00 00 08 */	b lbl_80549DB4
lbl_80549DB0:
/* 80549DB0  3B E0 00 01 */	li r31, 1
lbl_80549DB4:
/* 80549DB4  2C 1F FF FF */	cmpwi r31, -1
/* 80549DB8  41 82 00 28 */	beq lbl_80549DE0
/* 80549DBC  7F C3 F3 78 */	mr r3, r30
/* 80549DC0  4B E7 6F 69 */	bl mMsg_Set_ForceNext
/* 80549DC4  3C 60 80 6A */	lis r3, next_act_idx_1833@ha /* 0x806A4C10@ha */
/* 80549DC8  57 E0 10 3A */	slwi r0, r31, 2
/* 80549DCC  38 83 4C 10 */	addi r4, r3, next_act_idx_1833@l /* 0x806A4C10@l */
/* 80549DD0  7F 83 E3 78 */	mr r3, r28
/* 80549DD4  7C A4 00 2E */	lwzx r5, r4, r0
/* 80549DD8  7F A4 EB 78 */	mr r4, r29
/* 80549DDC  48 00 11 41 */	bl aNSC_setupAction
lbl_80549DE0:
/* 80549DE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80549DE4  4B B5 11 39 */	bl func_8009AF1C
/* 80549DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80549DEC  7C 08 03 A6 */	mtlr r0
/* 80549DF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80549DF4  4E 80 00 20 */	blr 
