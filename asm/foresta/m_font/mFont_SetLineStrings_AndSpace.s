lbl_803B0070:
/* 803B0070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B0074  7C 08 02 A6 */	mflr r0
/* 803B0078  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B007C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 803B0080  81 61 00 2C */	lwz r11, 0x2c(r1)
/* 803B0084  90 01 00 08 */	stw r0, 8(r1)
/* 803B0088  80 01 00 30 */	lwz r0, 0x30(r1)
/* 803B008C  91 61 00 0C */	stw r11, 0xc(r1)
/* 803B0090  90 01 00 10 */	stw r0, 0x10(r1)
/* 803B0094  4B FF FE 99 */	bl mFont_SetLineStrings_AndSpace_new
/* 803B0098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B009C  7C 08 03 A6 */	mtlr r0
/* 803B00A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803B00A4  4E 80 00 20 */	blr 
