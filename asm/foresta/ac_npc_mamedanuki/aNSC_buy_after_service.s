lbl_8055CE20:
/* 8055CE20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055CE24  7C 08 02 A6 */	mflr r0
/* 8055CE28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055CE2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CE30  4B B3 E0 A5 */	bl func_8009AED4
/* 8055CE34  7C 7D 1B 78 */	mr r29, r3
/* 8055CE38  7C 9E 23 78 */	mr r30, r4
/* 8055CE3C  38 60 00 04 */	li r3, 4
/* 8055CE40  38 80 00 09 */	li r4, 9
/* 8055CE44  4B E3 B6 39 */	bl mDemo_Get_OrderValue
/* 8055CE48  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8055CE4C  4B E6 28 5D */	bl func_803BF6A8
/* 8055CE50  2C 1F 00 00 */	cmpwi r31, 0
/* 8055CE54  41 82 00 30 */	beq lbl_8055CE84
/* 8055CE58  4B E6 3E 41 */	bl mMsg_Check_MainNormalContinue
/* 8055CE5C  2C 03 00 01 */	cmpwi r3, 1
/* 8055CE60  40 82 00 24 */	bne lbl_8055CE84
/* 8055CE64  38 60 00 04 */	li r3, 4
/* 8055CE68  38 80 00 09 */	li r4, 9
/* 8055CE6C  38 A0 00 00 */	li r5, 0
/* 8055CE70  4B E3 B5 C9 */	bl mDemo_Set_OrderValue
/* 8055CE74  7F A3 EB 78 */	mr r3, r29
/* 8055CE78  7F C4 F3 78 */	mr r4, r30
/* 8055CE7C  38 A0 00 17 */	li r5, 0x17
/* 8055CE80  48 00 1F 51 */	bl aNSC_setupAction
lbl_8055CE84:
/* 8055CE84  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CE88  4B B3 E0 99 */	bl func_8009AF20
/* 8055CE8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055CE90  7C 08 03 A6 */	mtlr r0
/* 8055CE94  38 21 00 20 */	addi r1, r1, 0x20
/* 8055CE98  4E 80 00 20 */	blr 
