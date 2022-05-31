lbl_80584DD4:
/* 80584DD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584DD8  7C 08 02 A6 */	mflr r0
/* 80584DDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584DE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80584DE4  4B B1 60 ED */	bl func_8009AED0
/* 80584DE8  7C 7C 1B 78 */	mr r28, r3
/* 80584DEC  7C 9D 23 78 */	mr r29, r4
/* 80584DF0  4B E3 A8 B9 */	bl func_803BF6A8
/* 80584DF4  7C 60 1B 78 */	mr r0, r3
/* 80584DF8  38 60 01 31 */	li r3, 0x131
/* 80584DFC  7C 1E 03 78 */	mr r30, r0
/* 80584E00  4B FF CF 89 */	bl aNSC_get_msg_no
/* 80584E04  7C 7F 1B 78 */	mr r31, r3
/* 80584E08  7F C3 F3 78 */	mr r3, r30
/* 80584E0C  4B E3 B1 C1 */	bl mMsg_Get_msg_num
/* 80584E10  7C 03 F8 00 */	cmpw r3, r31
/* 80584E14  40 82 00 70 */	bne lbl_80584E84
/* 80584E18  7F C3 F3 78 */	mr r3, r30
/* 80584E1C  4B E3 BE 7D */	bl mMsg_Check_MainNormalContinue
/* 80584E20  2C 03 00 00 */	cmpwi r3, 0
/* 80584E24  41 82 00 60 */	beq lbl_80584E84
/* 80584E28  3B E0 FF FF */	li r31, -1
/* 80584E2C  4B DF E7 15 */	bl func_80383540
/* 80584E30  4B DF ED 3D */	bl mChoice_Get_ChoseNum
/* 80584E34  2C 03 00 01 */	cmpwi r3, 1
/* 80584E38  41 82 00 1C */	beq lbl_80584E54
/* 80584E3C  40 80 00 1C */	bge lbl_80584E58
/* 80584E40  2C 03 00 00 */	cmpwi r3, 0
/* 80584E44  40 80 00 08 */	bge lbl_80584E4C
/* 80584E48  48 00 00 10 */	b lbl_80584E58
lbl_80584E4C:
/* 80584E4C  3B E0 00 00 */	li r31, 0
/* 80584E50  48 00 00 08 */	b lbl_80584E58
lbl_80584E54:
/* 80584E54  3B E0 00 01 */	li r31, 1
lbl_80584E58:
/* 80584E58  2C 1F FF FF */	cmpwi r31, -1
/* 80584E5C  41 82 00 28 */	beq lbl_80584E84
/* 80584E60  7F C3 F3 78 */	mr r3, r30
/* 80584E64  4B E3 BE C5 */	bl mMsg_Set_ForceNext
/* 80584E68  3C 60 80 6C */	lis r3, next_act_idx_1860@ha /* 0x806C192C@ha */
/* 80584E6C  57 E0 10 3A */	slwi r0, r31, 2
/* 80584E70  38 83 19 2C */	addi r4, r3, next_act_idx_1860@l /* 0x806C192C@l */
/* 80584E74  7F 83 E3 78 */	mr r3, r28
/* 80584E78  7C A4 00 2E */	lwzx r5, r4, r0
/* 80584E7C  7F A4 EB 78 */	mr r4, r29
/* 80584E80  48 00 11 41 */	bl aNSC_setupAction
lbl_80584E84:
/* 80584E84  39 61 00 20 */	addi r11, r1, 0x20
/* 80584E88  4B B1 60 95 */	bl func_8009AF1C
/* 80584E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584E90  7C 08 03 A6 */	mtlr r0
/* 80584E94  38 21 00 20 */	addi r1, r1, 0x20
/* 80584E98  4E 80 00 20 */	blr 
