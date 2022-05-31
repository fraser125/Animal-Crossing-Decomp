lbl_8051F5B0:
/* 8051F5B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051F5B4  7C 08 02 A6 */	mflr r0
/* 8051F5B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051F5BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F5C0  4B B7 B9 15 */	bl func_8009AED4
/* 8051F5C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051F5C8  3B E0 00 00 */	li r31, 0
/* 8051F5CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051F5D0  3B C0 00 00 */	li r30, 0
/* 8051F5D4  3C 63 00 02 */	addis r3, r3, 2
/* 8051F5D8  83 A3 61 3C */	lwz r29, 0x613c(r3)
lbl_8051F5DC:
/* 8051F5DC  38 1F 2D 28 */	addi r0, r31, 0x2d28
/* 8051F5E0  7F A3 EB 78 */	mr r3, r29
/* 8051F5E4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8051F5E8  38 A0 00 00 */	li r5, 0
/* 8051F5EC  4B EC 13 E1 */	bl mPr_GetPossessionItemSumWithCond
/* 8051F5F0  38 1F 00 01 */	addi r0, r31, 1
/* 8051F5F4  3B FF 00 01 */	addi r31, r31, 1
/* 8051F5F8  7C 03 01 D6 */	mullw r0, r3, r0
/* 8051F5FC  2C 1F 00 05 */	cmpwi r31, 5
/* 8051F600  7F DE 02 14 */	add r30, r30, r0
/* 8051F604  41 80 FF D8 */	blt lbl_8051F5DC
/* 8051F608  7F C3 F3 78 */	mr r3, r30
/* 8051F60C  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F610  4B B7 B9 11 */	bl func_8009AF20
/* 8051F614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051F618  7C 08 03 A6 */	mtlr r0
/* 8051F61C  38 21 00 20 */	addi r1, r1, 0x20
/* 8051F620  4E 80 00 20 */	blr 
