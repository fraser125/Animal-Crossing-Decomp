lbl_8056D194:
/* 8056D194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056D198  7C 08 02 A6 */	mflr r0
/* 8056D19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056D1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056D1A4  4B B2 DD 31 */	bl func_8009AED4
/* 8056D1A8  7C 7D 1B 78 */	mr r29, r3
/* 8056D1AC  7C 9E 23 78 */	mr r30, r4
/* 8056D1B0  4B E5 24 F9 */	bl func_803BF6A8
/* 8056D1B4  4B E5 3A E5 */	bl mMsg_Check_MainNormalContinue
/* 8056D1B8  2C 03 00 01 */	cmpwi r3, 1
/* 8056D1BC  40 82 00 54 */	bne lbl_8056D210
/* 8056D1C0  3B E0 FF FF */	li r31, -1
/* 8056D1C4  4B E1 63 7D */	bl func_80383540
/* 8056D1C8  4B E1 69 A5 */	bl mChoice_Get_ChoseNum
/* 8056D1CC  2C 03 00 01 */	cmpwi r3, 1
/* 8056D1D0  41 82 00 1C */	beq lbl_8056D1EC
/* 8056D1D4  40 80 00 1C */	bge lbl_8056D1F0
/* 8056D1D8  2C 03 00 00 */	cmpwi r3, 0
/* 8056D1DC  40 80 00 08 */	bge lbl_8056D1E4
/* 8056D1E0  48 00 00 10 */	b lbl_8056D1F0
lbl_8056D1E4:
/* 8056D1E4  3B E0 00 15 */	li r31, 0x15
/* 8056D1E8  48 00 00 08 */	b lbl_8056D1F0
lbl_8056D1EC:
/* 8056D1EC  3B E0 00 01 */	li r31, 1
lbl_8056D1F0:
/* 8056D1F0  2C 1F FF FF */	cmpwi r31, -1
/* 8056D1F4  41 82 00 1C */	beq lbl_8056D210
/* 8056D1F8  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8056D1FC  7F A3 EB 78 */	mr r3, r29
/* 8056D200  7F C4 F3 78 */	mr r4, r30
/* 8056D204  7F E5 FB 78 */	mr r5, r31
/* 8056D208  7D 89 03 A6 */	mtctr r12
/* 8056D20C  4E 80 04 21 */	bctrl 
lbl_8056D210:
/* 8056D210  39 61 00 20 */	addi r11, r1, 0x20
/* 8056D214  4B B2 DD 0D */	bl func_8009AF20
/* 8056D218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056D21C  7C 08 03 A6 */	mtlr r0
/* 8056D220  38 21 00 20 */	addi r1, r1, 0x20
/* 8056D224  4E 80 00 20 */	blr 
