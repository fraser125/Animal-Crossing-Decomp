lbl_803BCC78:
/* 803BCC78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BCC7C  7C 08 02 A6 */	mflr r0
/* 803BCC80  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BCC84  39 61 00 30 */	addi r11, r1, 0x30
/* 803BCC88  4B CD E2 39 */	bl func_8009AEC0
/* 803BCC8C  7C 7F 1B 78 */	mr r31, r3
/* 803BCC90  7C 98 23 78 */	mr r24, r4
/* 803BCC94  7C B9 2B 78 */	mr r25, r5
/* 803BCC98  7C DA 33 78 */	mr r26, r6
/* 803BCC9C  7C FB 3B 78 */	mr r27, r7
/* 803BCCA0  7D 1C 43 78 */	mr r28, r8
/* 803BCCA4  7D 5E 53 78 */	mr r30, r10
/* 803BCCA8  55 3D 07 FE */	clrlwi r29, r9, 0x1f
/* 803BCCAC  4B FF FA 55 */	bl mMl_clear_mail
/* 803BCCB0  3C 60 80 65 */	lis r3, data_80656570@ha /* 0x80656570@ha */
/* 803BCCB4  57 A0 10 3A */	slwi r0, r29, 2
/* 803BCCB8  38 83 65 70 */	addi r4, r3, data_80656570@l /* 0x80656570@l */
/* 803BCCBC  7F E3 FB 78 */	mr r3, r31
/* 803BCCC0  7D 84 00 2E */	lwzx r12, r4, r0
/* 803BCCC4  7F 84 E3 78 */	mr r4, r28
/* 803BCCC8  7D 89 03 A6 */	mtctr r12
/* 803BCCCC  4E 80 04 21 */	bctrl 
/* 803BCCD0  38 00 00 00 */	li r0, 0
/* 803BCCD4  7F E3 FB 78 */	mr r3, r31
/* 803BCCD8  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 803BCCDC  7F 04 C3 78 */	mr r4, r24
/* 803BCCE0  9B DF 00 30 */	stb r30, 0x30(r31)
/* 803BCCE4  48 02 34 3D */	bl mPr_CopyPersonalID
/* 803BCCE8  38 00 00 00 */	li r0, 0
/* 803BCCEC  38 7F 00 16 */	addi r3, r31, 0x16
/* 803BCCF0  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803BCCF4  48 02 33 99 */	bl mPr_ClearPersonalID
/* 803BCCF8  7F 64 DB 78 */	mr r4, r27
/* 803BCCFC  38 7F 00 16 */	addi r3, r31, 0x16
/* 803BCD00  48 02 31 BD */	bl mPr_CopyPlayerName
/* 803BCD04  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 803BCD08  38 00 00 02 */	li r0, 2
/* 803BCD0C  38 63 E0 00 */	addi r3, r3, -8192
/* 803BCD10  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 803BCD14  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 803BCD18  39 61 00 30 */	addi r11, r1, 0x30
/* 803BCD1C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803BCD20  B3 3F 00 2C */	sth r25, 0x2c(r31)
/* 803BCD24  7C 03 00 50 */	subf r0, r3, r0
/* 803BCD28  54 00 30 3E */	rotlwi r0, r0, 6
/* 803BCD2C  7C 00 1A 14 */	add r0, r0, r3
/* 803BCD30  98 1F 00 31 */	stb r0, 0x31(r31)
/* 803BCD34  4B CD E1 D9 */	bl func_8009AF0C
/* 803BCD38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BCD3C  7C 08 03 A6 */	mtlr r0
/* 803BCD40  38 21 00 30 */	addi r1, r1, 0x30
/* 803BCD44  4E 80 00 20 */	blr 
