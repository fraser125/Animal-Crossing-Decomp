lbl_803A6474:
/* 803A6474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A6478  7C 08 02 A6 */	mflr r0
/* 803A647C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A6480  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6484  4B CF 4A 4D */	bl func_8009AED0
/* 803A6488  7C 7C 1B 78 */	mr r28, r3
/* 803A648C  7C 9D 23 78 */	mr r29, r4
/* 803A6490  7C BE 2B 78 */	mr r30, r5
/* 803A6494  3B E0 00 00 */	li r31, 0
/* 803A6498  48 00 00 20 */	b lbl_803A64B8
lbl_803A649C:
/* 803A649C  80 BD 00 00 */	lwz r5, 0(r29)
/* 803A64A0  7F 83 E3 78 */	mr r3, r28
/* 803A64A4  38 9C 00 04 */	addi r4, r28, 4
/* 803A64A8  4B FF FF 59 */	bl mFI_BlockKind2BkNum
/* 803A64AC  3B BD 00 04 */	addi r29, r29, 4
/* 803A64B0  3B 9C 00 08 */	addi r28, r28, 8
/* 803A64B4  3B FF 00 01 */	addi r31, r31, 1
lbl_803A64B8:
/* 803A64B8  7C 1F F0 00 */	cmpw r31, r30
/* 803A64BC  41 80 FF E0 */	blt lbl_803A649C
/* 803A64C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A64C4  4B CF 4A 59 */	bl func_8009AF1C
/* 803A64C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A64CC  7C 08 03 A6 */	mtlr r0
/* 803A64D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A64D4  4E 80 00 20 */	blr 
