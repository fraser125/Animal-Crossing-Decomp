lbl_8055B578:
/* 8055B578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055B57C  7C 08 02 A6 */	mflr r0
/* 8055B580  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055B584  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055B588  3B E0 00 00 */	li r31, 0
/* 8055B58C  B0 61 00 08 */	sth r3, 8(r1)
/* 8055B590  38 61 00 08 */	addi r3, r1, 8
/* 8055B594  4B E8 05 B9 */	bl mPlib_Get_space_putin_item_forTICKET
/* 8055B598  2C 03 FF FF */	cmpwi r3, -1
/* 8055B59C  41 82 00 28 */	beq lbl_8055B5C4
/* 8055B5A0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055B5A4  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8055B5A8  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8055B5AC  7C 64 1B 78 */	mr r4, r3
/* 8055B5B0  3C 66 00 02 */	addis r3, r6, 2
/* 8055B5B4  38 C0 00 00 */	li r6, 0
/* 8055B5B8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055B5BC  4B E8 58 6D */	bl mPr_SetPossessionItem
/* 8055B5C0  3B E0 00 01 */	li r31, 1
lbl_8055B5C4:
/* 8055B5C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055B5C8  7F E3 FB 78 */	mr r3, r31
/* 8055B5CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055B5D0  7C 08 03 A6 */	mtlr r0
/* 8055B5D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055B5D8  4E 80 00 20 */	blr 
