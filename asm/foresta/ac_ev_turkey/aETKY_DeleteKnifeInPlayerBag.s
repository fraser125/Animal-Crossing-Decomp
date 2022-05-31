lbl_80593984:
/* 80593984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593988  7C 08 02 A6 */	mflr r0
/* 8059398C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80593990  38 80 25 30 */	li r4, 0x2530
/* 80593994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593998  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8059399C  38 A0 00 00 */	li r5, 0
/* 805939A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805939A4  3F E3 00 02 */	addis r31, r3, 2
/* 805939A8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805939AC  4B E4 CD C5 */	bl mPr_GetPossessionItemIdxWithCond
/* 805939B0  7C 64 1B 78 */	mr r4, r3
/* 805939B4  2C 04 FF FF */	cmpwi r4, -1
/* 805939B8  41 82 00 14 */	beq lbl_805939CC
/* 805939BC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805939C0  38 A0 00 00 */	li r5, 0
/* 805939C4  38 C0 00 00 */	li r6, 0
/* 805939C8  4B E4 D4 61 */	bl mPr_SetPossessionItem
lbl_805939CC:
/* 805939CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805939D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805939D4  7C 08 03 A6 */	mtlr r0
/* 805939D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805939DC  4E 80 00 20 */	blr 
