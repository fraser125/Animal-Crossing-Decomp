lbl_80592600:
/* 80592600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80592604  7C 08 02 A6 */	mflr r0
/* 80592608  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059260C  39 61 00 20 */	addi r11, r1, 0x20
/* 80592610  4B B0 88 C5 */	bl func_8009AED4
/* 80592614  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592618  7C 7D 1B 78 */	mr r29, r3
/* 8059261C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592620  7C 9E 23 78 */	mr r30, r4
/* 80592624  3F E5 00 02 */	addis r31, r5, 2
/* 80592628  38 A0 FF FF */	li r5, -1
/* 8059262C  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80592630  38 C0 00 01 */	li r6, 1
/* 80592634  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80592638  7D 89 03 A6 */	mtctr r12
/* 8059263C  4E 80 04 21 */	bctrl 
/* 80592640  2C 03 00 00 */	cmpwi r3, 0
/* 80592644  40 82 00 24 */	bne lbl_80592668
/* 80592648  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8059264C  7F A3 EB 78 */	mr r3, r29
/* 80592650  7F C4 F3 78 */	mr r4, r30
/* 80592654  38 A0 FF FF */	li r5, -1
/* 80592658  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8059265C  38 C0 00 02 */	li r6, 2
/* 80592660  7D 89 03 A6 */	mtctr r12
/* 80592664  4E 80 04 21 */	bctrl 
lbl_80592668:
/* 80592668  39 61 00 20 */	addi r11, r1, 0x20
/* 8059266C  4B B0 88 B5 */	bl func_8009AF20
/* 80592670  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80592674  7C 08 03 A6 */	mtlr r0
/* 80592678  38 21 00 20 */	addi r1, r1, 0x20
/* 8059267C  4E 80 00 20 */	blr 
