lbl_803B00A8:
/* 803B00A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B00AC  7C 08 02 A6 */	mflr r0
/* 803B00B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B00B4  38 00 00 00 */	li r0, 0
/* 803B00B8  81 81 00 28 */	lwz r12, 0x28(r1)
/* 803B00BC  81 61 00 2C */	lwz r11, 0x2c(r1)
/* 803B00C0  91 81 00 08 */	stw r12, 8(r1)
/* 803B00C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B00C8  91 61 00 10 */	stw r11, 0x10(r1)
/* 803B00CC  4B FF FF A5 */	bl mFont_SetLineStrings_AndSpace
/* 803B00D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B00D4  7C 08 03 A6 */	mtlr r0
/* 803B00D8  38 21 00 20 */	addi r1, r1, 0x20
/* 803B00DC  4E 80 00 20 */	blr 
