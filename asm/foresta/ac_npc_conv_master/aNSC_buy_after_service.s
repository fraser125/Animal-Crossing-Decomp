lbl_80548E10:
/* 80548E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80548E14  7C 08 02 A6 */	mflr r0
/* 80548E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80548E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80548E20  4B B5 20 B5 */	bl func_8009AED4
/* 80548E24  7C 7D 1B 78 */	mr r29, r3
/* 80548E28  7C 9E 23 78 */	mr r30, r4
/* 80548E2C  38 60 00 04 */	li r3, 4
/* 80548E30  38 80 00 09 */	li r4, 9
/* 80548E34  4B E4 F6 49 */	bl mDemo_Get_OrderValue
/* 80548E38  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80548E3C  4B E7 68 6D */	bl func_803BF6A8
/* 80548E40  2C 1F 00 00 */	cmpwi r31, 0
/* 80548E44  41 82 00 30 */	beq lbl_80548E74
/* 80548E48  4B E7 7E 51 */	bl mMsg_Check_MainNormalContinue
/* 80548E4C  2C 03 00 01 */	cmpwi r3, 1
/* 80548E50  40 82 00 24 */	bne lbl_80548E74
/* 80548E54  38 60 00 04 */	li r3, 4
/* 80548E58  38 80 00 09 */	li r4, 9
/* 80548E5C  38 A0 00 00 */	li r5, 0
/* 80548E60  4B E4 F5 D9 */	bl mDemo_Set_OrderValue
/* 80548E64  7F A3 EB 78 */	mr r3, r29
/* 80548E68  7F C4 F3 78 */	mr r4, r30
/* 80548E6C  38 A0 00 17 */	li r5, 0x17
/* 80548E70  48 00 20 AD */	bl aNSC_setupAction
lbl_80548E74:
/* 80548E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80548E78  4B B5 20 A9 */	bl func_8009AF20
/* 80548E7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80548E80  7C 08 03 A6 */	mtlr r0
/* 80548E84  38 21 00 20 */	addi r1, r1, 0x20
/* 80548E88  4E 80 00 20 */	blr 
