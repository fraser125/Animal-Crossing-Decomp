lbl_803CB98C:
/* 803CB98C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CB990  7C 08 02 A6 */	mflr r0
/* 803CB994  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CB998  39 61 00 20 */	addi r11, r1, 0x20
/* 803CB99C  4B CC F5 35 */	bl func_8009AED0
/* 803CB9A0  7C 7C 1B 78 */	mr r28, r3
/* 803CB9A4  7C 9D 23 78 */	mr r29, r4
/* 803CB9A8  3B E0 FF FF */	li r31, -1
/* 803CB9AC  3B C0 00 00 */	li r30, 0
/* 803CB9B0  48 00 00 24 */	b lbl_803CB9D4
lbl_803CB9B4:
/* 803CB9B4  7F 83 E3 78 */	mr r3, r28
/* 803CB9B8  4B FF FE B9 */	bl mNpc_CheckFreeAnimalMemory
/* 803CB9BC  2C 03 00 01 */	cmpwi r3, 1
/* 803CB9C0  40 82 00 0C */	bne lbl_803CB9CC
/* 803CB9C4  7F DF F3 78 */	mr r31, r30
/* 803CB9C8  48 00 00 14 */	b lbl_803CB9DC
lbl_803CB9CC:
/* 803CB9CC  3B 9C 01 38 */	addi r28, r28, 0x138
/* 803CB9D0  3B DE 00 01 */	addi r30, r30, 1
lbl_803CB9D4:
/* 803CB9D4  7C 1E E8 00 */	cmpw r30, r29
/* 803CB9D8  41 80 FF DC */	blt lbl_803CB9B4
lbl_803CB9DC:
/* 803CB9DC  7F E3 FB 78 */	mr r3, r31
/* 803CB9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803CB9E4  4B CC F5 39 */	bl func_8009AF1C
/* 803CB9E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CB9EC  7C 08 03 A6 */	mtlr r0
/* 803CB9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803CB9F4  4E 80 00 20 */	blr 
