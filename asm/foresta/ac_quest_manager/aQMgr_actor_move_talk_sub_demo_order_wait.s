lbl_80486770:
/* 80486770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80486774  7C 08 02 A6 */	mflr r0
/* 80486778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048677C  39 61 00 20 */	addi r11, r1, 0x20
/* 80486780  4B C1 47 55 */	bl func_8009AED4
/* 80486784  7C 7D 1B 78 */	mr r29, r3
/* 80486788  3B E0 00 00 */	li r31, 0
/* 8048678C  3B C0 00 00 */	li r30, 0
lbl_80486790:
/* 80486790  7F C4 F3 78 */	mr r4, r30
/* 80486794  38 60 00 09 */	li r3, 9
/* 80486798  4B F1 1C E5 */	bl mDemo_Get_OrderValue
/* 8048679C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804867A0  41 82 00 24 */	beq lbl_804867C4
/* 804867A4  B3 DD 01 B4 */	sth r30, 0x1b4(r29)
/* 804867A8  7F C4 F3 78 */	mr r4, r30
/* 804867AC  38 A0 00 00 */	li r5, 0
/* 804867B0  B0 7D 01 B6 */	sth r3, 0x1b6(r29)
/* 804867B4  38 60 00 09 */	li r3, 9
/* 804867B8  4B F1 1C 81 */	bl mDemo_Set_OrderValue
/* 804867BC  3B E0 00 01 */	li r31, 1
/* 804867C0  48 00 00 10 */	b lbl_804867D0
lbl_804867C4:
/* 804867C4  3B DE 00 01 */	addi r30, r30, 1
/* 804867C8  2C 1E 00 0A */	cmpwi r30, 0xa
/* 804867CC  41 80 FF C4 */	blt lbl_80486790
lbl_804867D0:
/* 804867D0  7F E3 FB 78 */	mr r3, r31
/* 804867D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804867D8  4B C1 47 49 */	bl func_8009AF20
/* 804867DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804867E0  7C 08 03 A6 */	mtlr r0
/* 804867E4  38 21 00 20 */	addi r1, r1, 0x20
/* 804867E8  4E 80 00 20 */	blr 
