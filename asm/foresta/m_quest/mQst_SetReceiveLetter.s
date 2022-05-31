lbl_803E3AB8:
/* 803E3AB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3ABC  7C 08 02 A6 */	mflr r0
/* 803E3AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3AC4  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3AC8  4B CB 74 09 */	bl func_8009AED0
/* 803E3ACC  7C 7C 1B 78 */	mr r28, r3
/* 803E3AD0  7C 9D 23 78 */	mr r29, r4
/* 803E3AD4  88 63 00 00 */	lbz r3, 0(r3)
/* 803E3AD8  7C BE 2B 78 */	mr r30, r5
/* 803E3ADC  7C DF 33 78 */	mr r31, r6
/* 803E3AE0  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 803E3AE4  28 00 00 02 */	cmplwi r0, 2
/* 803E3AE8  40 82 00 68 */	bne lbl_803E3B50
/* 803E3AEC  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 803E3AF0  28 00 00 06 */	cmplwi r0, 6
/* 803E3AF4  40 82 00 5C */	bne lbl_803E3B50
/* 803E3AF8  38 7C 00 0E */	addi r3, r28, 0xe
/* 803E3AFC  4B FF C5 49 */	bl mPr_NullCheckPersonalID
/* 803E3B00  2C 03 00 01 */	cmpwi r3, 1
/* 803E3B04  40 82 00 4C */	bne lbl_803E3B50
/* 803E3B08  88 1C 00 01 */	lbz r0, 1(r28)
/* 803E3B0C  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 803E3B10  28 00 00 02 */	cmplwi r0, 2
/* 803E3B14  40 82 00 3C */	bne lbl_803E3B50
/* 803E3B18  7F A4 EB 78 */	mr r4, r29
/* 803E3B1C  38 7C 00 0E */	addi r3, r28, 0xe
/* 803E3B20  4B FF C6 01 */	bl mPr_CopyPersonalID
/* 803E3B24  88 1C 00 01 */	lbz r0, 1(r28)
/* 803E3B28  38 60 00 01 */	li r3, 1
/* 803E3B2C  50 60 1E 78 */	rlwimi r0, r3, 3, 0x19, 0x1c
/* 803E3B30  7F C3 F3 78 */	mr r3, r30
/* 803E3B34  98 1C 00 01 */	stb r0, 1(r28)
/* 803E3B38  7F E4 FB 78 */	mr r4, r31
/* 803E3B3C  4B FF FE ED */	bl mQst_GetMailRank
/* 803E3B40  98 7C 00 24 */	stb r3, 0x24(r28)
/* 803E3B44  88 7C 00 24 */	lbz r3, 0x24(r28)
/* 803E3B48  4B FF FB C5 */	bl mQst_GetPresent
/* 803E3B4C  B0 7C 00 26 */	sth r3, 0x26(r28)
lbl_803E3B50:
/* 803E3B50  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3B54  4B CB 73 C9 */	bl func_8009AF1C
/* 803E3B58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E3B5C  7C 08 03 A6 */	mtlr r0
/* 803E3B60  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3B64  4E 80 00 20 */	blr 
