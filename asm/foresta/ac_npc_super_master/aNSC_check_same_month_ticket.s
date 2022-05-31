lbl_80581D24:
/* 80581D24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80581D28  7C 08 02 A6 */	mflr r0
/* 80581D2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80581D30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80581D34  3B E0 00 00 */	li r31, 0
/* 80581D38  B0 61 00 08 */	sth r3, 8(r1)
/* 80581D3C  38 61 00 08 */	addi r3, r1, 8
/* 80581D40  4B E5 9E 0D */	bl mPlib_Get_space_putin_item_forTICKET
/* 80581D44  2C 03 FF FF */	cmpwi r3, -1
/* 80581D48  41 82 00 28 */	beq lbl_80581D70
/* 80581D4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80581D50  A0 A1 00 08 */	lhz r5, 8(r1)
/* 80581D54  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 80581D58  7C 64 1B 78 */	mr r4, r3
/* 80581D5C  3C 66 00 02 */	addis r3, r6, 2
/* 80581D60  38 C0 00 00 */	li r6, 0
/* 80581D64  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80581D68  4B E5 F0 C1 */	bl mPr_SetPossessionItem
/* 80581D6C  3B E0 00 01 */	li r31, 1
lbl_80581D70:
/* 80581D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80581D74  7F E3 FB 78 */	mr r3, r31
/* 80581D78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80581D7C  7C 08 03 A6 */	mtlr r0
/* 80581D80  38 21 00 20 */	addi r1, r1, 0x20
/* 80581D84  4E 80 00 20 */	blr 
