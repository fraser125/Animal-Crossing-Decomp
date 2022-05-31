lbl_8047E074:
/* 8047E074  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8047E078  7C 08 02 A6 */	mflr r0
/* 8047E07C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8047E080  39 61 00 50 */	addi r11, r1, 0x50
/* 8047E084  4B C1 CE 51 */	bl func_8009AED4
/* 8047E088  2C 03 00 00 */	cmpwi r3, 0
/* 8047E08C  41 80 00 F8 */	blt lbl_8047E184
/* 8047E090  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047E094  38 84 DF E8 */	addi r4, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047E098  80 04 00 08 */	lwz r0, 8(r4)
/* 8047E09C  7C 03 00 00 */	cmpw r3, r0
/* 8047E0A0  40 80 00 E4 */	bge lbl_8047E184
/* 8047E0A4  80 A4 00 00 */	lwz r5, 0(r4)
/* 8047E0A8  28 05 00 00 */	cmplwi r5, 0
/* 8047E0AC  41 82 00 D8 */	beq lbl_8047E184
/* 8047E0B0  80 84 00 04 */	lwz r4, 4(r4)
/* 8047E0B4  28 04 00 00 */	cmplwi r4, 0
/* 8047E0B8  41 82 00 CC */	beq lbl_8047E184
/* 8047E0BC  7C 04 18 AE */	lbzx r0, r4, r3
/* 8047E0C0  1C 63 08 58 */	mulli r3, r3, 0x858
/* 8047E0C4  28 00 00 01 */	cmplwi r0, 1
/* 8047E0C8  7F E5 1A 14 */	add r31, r5, r3
/* 8047E0CC  40 82 00 B8 */	bne lbl_8047E184
/* 8047E0D0  8B DF 00 3E */	lbz r30, 0x3e(r31)
/* 8047E0D4  38 61 00 0C */	addi r3, r1, 0xc
/* 8047E0D8  80 FF 00 08 */	lwz r7, 8(r31)
/* 8047E0DC  38 81 00 08 */	addi r4, r1, 8
/* 8047E0E0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8047E0E4  7F C6 F3 78 */	mr r6, r30
/* 8047E0E8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8047E0EC  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8047E0F0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8047E0F4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8047E0F8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8047E0FC  4B FF 2F 55 */	bl aMR_Wpos2PlaceNumber
/* 8047E100  2C 03 00 00 */	cmpwi r3, 0
/* 8047E104  41 82 00 80 */	beq lbl_8047E184
/* 8047E108  80 DF 00 08 */	lwz r6, 8(r31)
/* 8047E10C  7F E3 FB 78 */	mr r3, r31
/* 8047E110  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8047E114  38 81 00 1C */	addi r4, r1, 0x1c
/* 8047E118  80 E1 00 08 */	lwz r7, 8(r1)
/* 8047E11C  38 A0 00 00 */	li r5, 0
/* 8047E120  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8047E124  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8047E128  54 E6 20 36 */	slwi r6, r7, 4
/* 8047E12C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8047E130  7F A8 32 14 */	add r29, r8, r6
/* 8047E134  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8047E138  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047E13C  4B FF DB B9 */	bl aMR_SetFurniture2FG
/* 8047E140  38 00 00 0E */	li r0, 0xe
/* 8047E144  38 61 00 10 */	addi r3, r1, 0x10
/* 8047E148  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 8047E14C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8047E150  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8047E154  90 81 00 10 */	stw r4, 0x10(r1)
/* 8047E158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047E15C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8047E160  90 01 00 18 */	stw r0, 0x18(r1)
/* 8047E164  4B FF A1 41 */	bl aMR_SetCleanUpFtrSE
/* 8047E168  A8 DF 08 3C */	lha r6, 0x83c(r31)
/* 8047E16C  7F C3 F3 78 */	mr r3, r30
/* 8047E170  7F A4 EB 78 */	mr r4, r29
/* 8047E174  38 A0 00 C8 */	li r5, 0xc8
/* 8047E178  4B FF 31 0D */	bl aMR_SetInfoFurnitureTable
/* 8047E17C  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 8047E180  4B F0 ED 75 */	bl mCoBG_CrossOffMoveBg
lbl_8047E184:
/* 8047E184  39 61 00 50 */	addi r11, r1, 0x50
/* 8047E188  4B C1 CD 99 */	bl func_8009AF20
/* 8047E18C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8047E190  7C 08 03 A6 */	mtlr r0
/* 8047E194  38 21 00 50 */	addi r1, r1, 0x50
/* 8047E198  4E 80 00 20 */	blr 
