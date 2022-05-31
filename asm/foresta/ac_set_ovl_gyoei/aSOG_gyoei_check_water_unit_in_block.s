lbl_80499E70:
/* 80499E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80499E74  7C 08 02 A6 */	mflr r0
/* 80499E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80499E7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80499E80  4B C0 10 55 */	bl func_8009AED4
/* 80499E84  7C 64 1B 78 */	mr r4, r3
/* 80499E88  80 63 41 80 */	lwz r3, 0x4180(r3)
/* 80499E8C  80 84 41 84 */	lwz r4, 0x4184(r4)
/* 80499E90  4B F0 C6 DD */	bl mFI_GetBkNum2ColTop
/* 80499E94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80499E98  41 82 00 44 */	beq lbl_80499EDC
/* 80499E9C  3B A0 00 00 */	li r29, 0
lbl_80499EA0:
/* 80499EA0  3B C0 00 00 */	li r30, 0
lbl_80499EA4:
/* 80499EA4  88 1F 00 03 */	lbz r0, 3(r31)
/* 80499EA8  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 80499EAC  4B EF A4 51 */	bl mCoBG_CheckWaterAttribute_OutOfSea
/* 80499EB0  2C 03 00 01 */	cmpwi r3, 1
/* 80499EB4  40 82 00 0C */	bne lbl_80499EC0
/* 80499EB8  38 60 00 01 */	li r3, 1
/* 80499EBC  48 00 00 24 */	b lbl_80499EE0
lbl_80499EC0:
/* 80499EC0  3B DE 00 01 */	addi r30, r30, 1
/* 80499EC4  3B FF 00 04 */	addi r31, r31, 4
/* 80499EC8  2C 1E 00 28 */	cmpwi r30, 0x28
/* 80499ECC  41 80 FF D8 */	blt lbl_80499EA4
/* 80499ED0  3B BD 00 01 */	addi r29, r29, 1
/* 80499ED4  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80499ED8  41 80 FF C8 */	blt lbl_80499EA0
lbl_80499EDC:
/* 80499EDC  38 60 00 00 */	li r3, 0
lbl_80499EE0:
/* 80499EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80499EE4  4B C0 10 3D */	bl func_8009AF20
/* 80499EE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80499EEC  7C 08 03 A6 */	mtlr r0
/* 80499EF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80499EF4  4E 80 00 20 */	blr 
