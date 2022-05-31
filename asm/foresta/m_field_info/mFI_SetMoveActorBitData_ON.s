lbl_803A85D8:
/* 803A85D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A85DC  7C 08 02 A6 */	mflr r0
/* 803A85E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A85E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803A85E8  4B CF 28 ED */	bl func_8009AED4
/* 803A85EC  7C 9E 23 78 */	mr r30, r4
/* 803A85F0  7C BF 2B 78 */	mr r31, r5
/* 803A85F4  7C 7D 1B 78 */	mr r29, r3
/* 803A85F8  7F C3 F3 78 */	mr r3, r30
/* 803A85FC  7F E4 FB 78 */	mr r4, r31
/* 803A8600  4B FF CC 09 */	bl mFI_BlockCheck
/* 803A8604  2C 03 00 00 */	cmpwi r3, 0
/* 803A8608  41 82 00 54 */	beq lbl_803A865C
/* 803A860C  7F A0 07 35 */	extsh. r0, r29
/* 803A8610  41 80 00 4C */	blt lbl_803A865C
/* 803A8614  7F A0 07 34 */	extsh r0, r29
/* 803A8618  2C 00 00 10 */	cmpwi r0, 0x10
/* 803A861C  40 80 00 40 */	bge lbl_803A865C
/* 803A8620  7F C3 F3 78 */	mr r3, r30
/* 803A8624  7F E4 FB 78 */	mr r4, r31
/* 803A8628  4B FF CB 91 */	bl mFI_GetBlockNum
/* 803A862C  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A8630  7F A0 07 34 */	extsh r0, r29
/* 803A8634  38 A4 7A 58 */	addi r5, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A8638  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A863C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803A8640  38 80 00 01 */	li r4, 1
/* 803A8644  7C 80 00 30 */	slw r0, r4, r0
/* 803A8648  80 85 00 74 */	lwz r4, 0x74(r5)
/* 803A864C  38 A3 06 0C */	addi r5, r3, 0x60c
/* 803A8650  7C 64 2A 2E */	lhzx r3, r4, r5
/* 803A8654  7C 60 03 78 */	or r0, r3, r0
/* 803A8658  7C 04 2B 2E */	sthx r0, r4, r5
lbl_803A865C:
/* 803A865C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8660  4B CF 28 C1 */	bl func_8009AF20
/* 803A8664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A8668  7C 08 03 A6 */	mtlr r0
/* 803A866C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A8670  4E 80 00 20 */	blr 
