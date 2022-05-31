lbl_80583EB4:
/* 80583EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80583EB8  7C 08 02 A6 */	mflr r0
/* 80583EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80583EC4  4B B1 70 11 */	bl func_8009AED4
/* 80583EC8  7C 7D 1B 78 */	mr r29, r3
/* 80583ECC  7C 9E 23 78 */	mr r30, r4
/* 80583ED0  38 60 00 04 */	li r3, 4
/* 80583ED4  38 80 00 09 */	li r4, 9
/* 80583ED8  4B E1 45 A5 */	bl mDemo_Get_OrderValue
/* 80583EDC  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80583EE0  4B E3 B7 C9 */	bl func_803BF6A8
/* 80583EE4  2C 1F 00 00 */	cmpwi r31, 0
/* 80583EE8  41 82 00 30 */	beq lbl_80583F18
/* 80583EEC  4B E3 CD AD */	bl mMsg_Check_MainNormalContinue
/* 80583EF0  2C 03 00 01 */	cmpwi r3, 1
/* 80583EF4  40 82 00 24 */	bne lbl_80583F18
/* 80583EF8  38 60 00 04 */	li r3, 4
/* 80583EFC  38 80 00 09 */	li r4, 9
/* 80583F00  38 A0 00 00 */	li r5, 0
/* 80583F04  4B E1 45 35 */	bl mDemo_Set_OrderValue
/* 80583F08  7F A3 EB 78 */	mr r3, r29
/* 80583F0C  7F C4 F3 78 */	mr r4, r30
/* 80583F10  38 A0 00 17 */	li r5, 0x17
/* 80583F14  48 00 20 AD */	bl aNSC_setupAction
lbl_80583F18:
/* 80583F18  39 61 00 20 */	addi r11, r1, 0x20
/* 80583F1C  4B B1 70 05 */	bl func_8009AF20
/* 80583F20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80583F24  7C 08 03 A6 */	mtlr r0
/* 80583F28  38 21 00 20 */	addi r1, r1, 0x20
/* 80583F2C  4E 80 00 20 */	blr 
