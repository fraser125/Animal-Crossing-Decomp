lbl_803E4AA0:
/* 803E4AA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E4AA4  7C 08 02 A6 */	mflr r0
/* 803E4AA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E4AAC  39 61 00 30 */	addi r11, r1, 0x30
/* 803E4AB0  4B CB 64 21 */	bl func_8009AED0
/* 803E4AB4  7C 7C 1B 78 */	mr r28, r3
/* 803E4AB8  7C 9D 23 78 */	mr r29, r4
/* 803E4ABC  7C A3 2B 78 */	mr r3, r5
/* 803E4AC0  7C C4 33 78 */	mr r4, r6
/* 803E4AC4  4B FC 1D 85 */	bl mFI_GetSoundSourcePBlockNum
/* 803E4AC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 803E4ACC  41 82 00 5C */	beq lbl_803E4B28
/* 803E4AD0  3B C0 00 00 */	li r30, 0
lbl_803E4AD4:
/* 803E4AD4  A8 1F 00 00 */	lha r0, 0(r31)
/* 803E4AD8  2C 00 00 03 */	cmpwi r0, 3
/* 803E4ADC  40 82 00 3C */	bne lbl_803E4B18
/* 803E4AE0  80 DF 00 04 */	lwz r6, 4(r31)
/* 803E4AE4  7F 83 E3 78 */	mr r3, r28
/* 803E4AE8  80 1F 00 08 */	lwz r0, 8(r31)
/* 803E4AEC  7F A4 EB 78 */	mr r4, r29
/* 803E4AF0  38 A1 00 08 */	addi r5, r1, 8
/* 803E4AF4  90 C1 00 08 */	stw r6, 8(r1)
/* 803E4AF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803E4AFC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803E4B00  90 01 00 10 */	stw r0, 0x10(r1)
/* 803E4B04  4B FC 08 65 */	bl mFI_Wpos2UtNum
/* 803E4B08  2C 03 00 00 */	cmpwi r3, 0
/* 803E4B0C  41 82 00 0C */	beq lbl_803E4B18
/* 803E4B10  38 60 00 01 */	li r3, 1
/* 803E4B14  48 00 00 18 */	b lbl_803E4B2C
lbl_803E4B18:
/* 803E4B18  3B DE 00 01 */	addi r30, r30, 1
/* 803E4B1C  3B FF 00 10 */	addi r31, r31, 0x10
/* 803E4B20  2C 1E 00 06 */	cmpwi r30, 6
/* 803E4B24  41 80 FF B0 */	blt lbl_803E4AD4
lbl_803E4B28:
/* 803E4B28  38 60 00 00 */	li r3, 0
lbl_803E4B2C:
/* 803E4B2C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E4B30  4B CB 63 ED */	bl func_8009AF1C
/* 803E4B34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E4B38  7C 08 03 A6 */	mtlr r0
/* 803E4B3C  38 21 00 30 */	addi r1, r1, 0x30
/* 803E4B40  4E 80 00 20 */	blr 
