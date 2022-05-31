lbl_803C0070:
/* 803C0070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C0074  7C 08 02 A6 */	mflr r0
/* 803C0078  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C007C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C0080  4B CD AE 4D */	bl func_8009AECC
/* 803C0084  7C 7B 1B 78 */	mr r27, r3
/* 803C0088  7C BC 2B 78 */	mr r28, r5
/* 803C008C  54 DF 06 3E */	clrlwi r31, r6, 0x18
/* 803C0090  7C 9D 23 78 */	mr r29, r4
/* 803C0094  3B C0 00 00 */	li r30, 0
/* 803C0098  48 00 00 30 */	b lbl_803C00C8
lbl_803C009C:
/* 803C009C  7C 7B EA 14 */	add r3, r27, r29
/* 803C00A0  88 03 00 00 */	lbz r0, 0(r3)
/* 803C00A4  28 00 00 7F */	cmplwi r0, 0x7f
/* 803C00A8  40 82 00 10 */	bne lbl_803C00B8
/* 803C00AC  4B FE F7 05 */	bl mFont_CodeSize_get
/* 803C00B0  7F BD 1A 14 */	add r29, r29, r3
/* 803C00B4  48 00 00 14 */	b lbl_803C00C8
lbl_803C00B8:
/* 803C00B8  7C 00 F8 40 */	cmplw r0, r31
/* 803C00BC  40 82 00 14 */	bne lbl_803C00D0
/* 803C00C0  3B DE 00 01 */	addi r30, r30, 1
/* 803C00C4  3B BD 00 01 */	addi r29, r29, 1
lbl_803C00C8:
/* 803C00C8  7C 1D E0 00 */	cmpw r29, r28
/* 803C00CC  41 80 FF D0 */	blt lbl_803C009C
lbl_803C00D0:
/* 803C00D0  7F C3 F3 78 */	mr r3, r30
/* 803C00D4  39 61 00 20 */	addi r11, r1, 0x20
/* 803C00D8  4B CD AE 41 */	bl func_8009AF18
/* 803C00DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C00E0  7C 08 03 A6 */	mtlr r0
/* 803C00E4  38 21 00 20 */	addi r1, r1, 0x20
/* 803C00E8  4E 80 00 20 */	blr 
