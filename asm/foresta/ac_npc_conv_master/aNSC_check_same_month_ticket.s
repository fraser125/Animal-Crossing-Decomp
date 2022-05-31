lbl_80546C80:
/* 80546C80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80546C84  7C 08 02 A6 */	mflr r0
/* 80546C88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80546C8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80546C90  3B E0 00 00 */	li r31, 0
/* 80546C94  B0 61 00 08 */	sth r3, 8(r1)
/* 80546C98  38 61 00 08 */	addi r3, r1, 8
/* 80546C9C  4B E9 4E B1 */	bl mPlib_Get_space_putin_item_forTICKET
/* 80546CA0  2C 03 FF FF */	cmpwi r3, -1
/* 80546CA4  41 82 00 28 */	beq lbl_80546CCC
/* 80546CA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80546CAC  A0 A1 00 08 */	lhz r5, 8(r1)
/* 80546CB0  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 80546CB4  7C 64 1B 78 */	mr r4, r3
/* 80546CB8  3C 66 00 02 */	addis r3, r6, 2
/* 80546CBC  38 C0 00 00 */	li r6, 0
/* 80546CC0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80546CC4  4B E9 A1 65 */	bl mPr_SetPossessionItem
/* 80546CC8  3B E0 00 01 */	li r31, 1
lbl_80546CCC:
/* 80546CCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80546CD0  7F E3 FB 78 */	mr r3, r31
/* 80546CD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80546CD8  7C 08 03 A6 */	mtlr r0
/* 80546CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80546CE0  4E 80 00 20 */	blr 
