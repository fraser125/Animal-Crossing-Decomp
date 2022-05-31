lbl_8049CAB4:
/* 8049CAB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049CAB8  7C 08 02 A6 */	mflr r0
/* 8049CABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049CAC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8049CAC4  4B BF E4 0D */	bl func_8009AED0
/* 8049CAC8  7C 7C 1B 78 */	mr r28, r3
/* 8049CACC  7C 9D 23 78 */	mr r29, r4
/* 8049CAD0  3B C0 00 00 */	li r30, 0
/* 8049CAD4  3B E0 00 00 */	li r31, 0
/* 8049CAD8  48 00 00 30 */	b lbl_8049CB08
lbl_8049CADC:
/* 8049CADC  7C 7C FA 2E */	lhzx r3, r28, r31
/* 8049CAE0  28 03 00 00 */	cmplwi r3, 0
/* 8049CAE4  41 82 00 1C */	beq lbl_8049CB00
/* 8049CAE8  4B FF FB 79 */	bl func_8049C660
/* 8049CAEC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8049CAF0  7C 64 1B 78 */	mr r4, r3
/* 8049CAF4  41 82 00 0C */	beq lbl_8049CB00
/* 8049CAF8  7C 7C FA 2E */	lhzx r3, r28, r31
/* 8049CAFC  4B F4 E2 E9 */	bl mSP_SetGoods2ReservedPoint
lbl_8049CB00:
/* 8049CB00  3B DE 00 01 */	addi r30, r30, 1
/* 8049CB04  3B FF 00 02 */	addi r31, r31, 2
lbl_8049CB08:
/* 8049CB08  7C 1E E8 00 */	cmpw r30, r29
/* 8049CB0C  41 80 FF D0 */	blt lbl_8049CADC
/* 8049CB10  39 61 00 20 */	addi r11, r1, 0x20
/* 8049CB14  4B BF E4 09 */	bl func_8009AF1C
/* 8049CB18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049CB1C  7C 08 03 A6 */	mtlr r0
/* 8049CB20  38 21 00 20 */	addi r1, r1, 0x20
/* 8049CB24  4E 80 00 20 */	blr 
