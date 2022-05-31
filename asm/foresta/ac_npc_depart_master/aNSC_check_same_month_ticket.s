lbl_8054E598:
/* 8054E598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054E59C  7C 08 02 A6 */	mflr r0
/* 8054E5A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054E5A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054E5A8  3B E0 00 00 */	li r31, 0
/* 8054E5AC  B0 61 00 08 */	sth r3, 8(r1)
/* 8054E5B0  38 61 00 08 */	addi r3, r1, 8
/* 8054E5B4  4B E8 D5 99 */	bl mPlib_Get_space_putin_item_forTICKET
/* 8054E5B8  2C 03 FF FF */	cmpwi r3, -1
/* 8054E5BC  41 82 00 28 */	beq lbl_8054E5E4
/* 8054E5C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054E5C4  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8054E5C8  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8054E5CC  7C 64 1B 78 */	mr r4, r3
/* 8054E5D0  3C 66 00 02 */	addis r3, r6, 2
/* 8054E5D4  38 C0 00 00 */	li r6, 0
/* 8054E5D8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8054E5DC  4B E9 28 4D */	bl mPr_SetPossessionItem
/* 8054E5E0  3B E0 00 01 */	li r31, 1
lbl_8054E5E4:
/* 8054E5E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054E5E8  7F E3 FB 78 */	mr r3, r31
/* 8054E5EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054E5F0  7C 08 03 A6 */	mtlr r0
/* 8054E5F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8054E5F8  4E 80 00 20 */	blr 
