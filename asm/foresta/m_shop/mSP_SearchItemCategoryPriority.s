lbl_803E88C0:
/* 803E88C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E88C4  7C 08 02 A6 */	mflr r0
/* 803E88C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E88CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803E88D0  4B CB 26 05 */	bl func_8009AED4
/* 803E88D4  3C C0 80 66 */	lis r6, mSP_goods_seg_inf@ha /* 0x8065D614@ha */
/* 803E88D8  7C 7D 1B 78 */	mr r29, r3
/* 803E88DC  54 80 10 3A */	slwi r0, r4, 2
/* 803E88E0  7C BE 2B 78 */	mr r30, r5
/* 803E88E4  38 A6 D6 14 */	addi r5, r6, mSP_goods_seg_inf@l /* 0x8065D614@l */
/* 803E88E8  38 61 00 08 */	addi r3, r1, 8
/* 803E88EC  7F E5 00 2E */	lwzx r31, r5, r0
/* 803E88F0  48 00 16 29 */	bl mSP_GetGoodsPriority
/* 803E88F4  7F E3 FB 78 */	mr r3, r31
/* 803E88F8  7F C5 F3 78 */	mr r5, r30
/* 803E88FC  38 81 00 08 */	addi r4, r1, 8
/* 803E8900  4B FF F2 DD */	bl mSP_GetItemList
/* 803E8904  7C 7F 1B 78 */	mr r31, r3
/* 803E8908  4B FF F5 4D */	bl mSP_CountElementInCommonList
/* 803E890C  28 1F 00 00 */	cmplwi r31, 0
/* 803E8910  41 82 00 34 */	beq lbl_803E8944
/* 803E8914  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 803E8918  38 80 00 00 */	li r4, 0
/* 803E891C  7C 69 03 A6 */	mtctr r3
/* 803E8920  2C 03 00 00 */	cmpwi r3, 0
/* 803E8924  40 81 00 20 */	ble lbl_803E8944
lbl_803E8928:
/* 803E8928  7C 1F 22 2E */	lhzx r0, r31, r4
/* 803E892C  7C 05 00 40 */	cmplw r5, r0
/* 803E8930  40 82 00 0C */	bne lbl_803E893C
/* 803E8934  38 60 00 01 */	li r3, 1
/* 803E8938  48 00 00 10 */	b lbl_803E8948
lbl_803E893C:
/* 803E893C  38 84 00 02 */	addi r4, r4, 2
/* 803E8940  42 00 FF E8 */	bdnz lbl_803E8928
lbl_803E8944:
/* 803E8944  38 60 00 00 */	li r3, 0
lbl_803E8948:
/* 803E8948  39 61 00 20 */	addi r11, r1, 0x20
/* 803E894C  4B CB 25 D5 */	bl func_8009AF20
/* 803E8950  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E8954  7C 08 03 A6 */	mtlr r0
/* 803E8958  38 21 00 20 */	addi r1, r1, 0x20
/* 803E895C  4E 80 00 20 */	blr 
