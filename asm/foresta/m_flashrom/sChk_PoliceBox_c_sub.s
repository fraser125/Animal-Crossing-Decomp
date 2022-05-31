lbl_803AD8B0:
/* 803AD8B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AD8B4  7C 08 02 A6 */	mflr r0
/* 803AD8B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AD8BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD8C0  4B CE D6 11 */	bl func_8009AED0
/* 803AD8C4  7C 7C 1B 78 */	mr r28, r3
/* 803AD8C8  3B A0 00 00 */	li r29, 0
/* 803AD8CC  3B C0 00 00 */	li r30, 0
/* 803AD8D0  3B E0 00 00 */	li r31, 0
lbl_803AD8D4:
/* 803AD8D4  7C 7C FA 2E */	lhzx r3, r28, r31
/* 803AD8D8  4B FF F2 7D */	bl sChk_ItemFG_sub
/* 803AD8DC  3B DE 00 01 */	addi r30, r30, 1
/* 803AD8E0  7F BD 1B 78 */	or r29, r29, r3
/* 803AD8E4  2C 1E 00 14 */	cmpwi r30, 0x14
/* 803AD8E8  3B FF 00 02 */	addi r31, r31, 2
/* 803AD8EC  41 80 FF E8 */	blt lbl_803AD8D4
/* 803AD8F0  7F A3 EB 78 */	mr r3, r29
/* 803AD8F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD8F8  4B CE D6 25 */	bl func_8009AF1C
/* 803AD8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AD900  7C 08 03 A6 */	mtlr r0
/* 803AD904  38 21 00 20 */	addi r1, r1, 0x20
/* 803AD908  4E 80 00 20 */	blr 
