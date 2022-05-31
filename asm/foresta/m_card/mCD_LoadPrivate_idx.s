lbl_803FF168:
/* 803FF168  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FF16C  7C 08 02 A6 */	mflr r0
/* 803FF170  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FF174  39 61 00 30 */	addi r11, r1, 0x30
/* 803FF178  4B C9 BD 4D */	bl func_8009AEC4
/* 803FF17C  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 803FF180  7C 99 23 78 */	mr r25, r4
/* 803FF184  7C BA 2B 78 */	mr r26, r5
/* 803FF188  3B 80 00 00 */	li r28, 0
/* 803FF18C  28 1E 00 00 */	cmplwi r30, 0
/* 803FF190  41 82 00 E0 */	beq lbl_803FF270
/* 803FF194  2C 06 00 00 */	cmpwi r6, 0
/* 803FF198  41 80 00 D8 */	blt lbl_803FF270
/* 803FF19C  28 06 00 13 */	cmplwi r6, 0x13
/* 803FF1A0  40 80 00 D0 */	bge lbl_803FF270
/* 803FF1A4  1C 86 00 34 */	mulli r4, r6, 0x34
/* 803FF1A8  3C 60 81 1A */	lis r3, l_mcd_card_private_table@ha /* 0x81198814@ha */
/* 803FF1AC  38 03 88 14 */	addi r0, r3, l_mcd_card_private_table@l /* 0x81198814@l */
/* 803FF1B0  7F A0 22 14 */	add r29, r0, r4
/* 803FF1B4  7F A3 EB 78 */	mr r3, r29
/* 803FF1B8  4B FE 0E 8D */	bl mPr_NullCheckPersonalID
/* 803FF1BC  2C 03 00 00 */	cmpwi r3, 0
/* 803FF1C0  40 82 00 B0 */	bne lbl_803FF270
/* 803FF1C4  3B 60 00 00 */	li r27, 0
/* 803FF1C8  3B FE 30 40 */	addi r31, r30, 0x3040
lbl_803FF1CC:
/* 803FF1CC  7F C3 F3 78 */	mr r3, r30
/* 803FF1D0  38 80 60 00 */	li r4, 0x6000
/* 803FF1D4  4B C5 DE 95 */	bl bzero
/* 803FF1D8  7F C3 F3 78 */	mr r3, r30
/* 803FF1DC  7F 67 DB 78 */	mr r7, r27
/* 803FF1E0  38 9D 00 14 */	addi r4, r29, 0x14
/* 803FF1E4  39 01 00 08 */	addi r8, r1, 8
/* 803FF1E8  38 A0 60 00 */	li r5, 0x6000
/* 803FF1EC  38 C0 00 00 */	li r6, 0
/* 803FF1F0  4B FF 99 29 */	bl mCD_read_fg
/* 803FF1F4  2C 03 00 01 */	cmpwi r3, 1
/* 803FF1F8  40 82 00 6C */	bne lbl_803FF264
/* 803FF1FC  7F E3 FB 78 */	mr r3, r31
/* 803FF200  38 80 2E 20 */	li r4, 0x2e20
/* 803FF204  4B FA D2 F9 */	bl mFRm_ReturnCheckSum
/* 803FF208  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FF20C  40 82 00 58 */	bne lbl_803FF264
/* 803FF210  7F A4 EB 78 */	mr r4, r29
/* 803FF214  38 7F 00 20 */	addi r3, r31, 0x20
/* 803FF218  4B FE 0F 2D */	bl mPr_CheckCmpPersonalID
/* 803FF21C  2C 03 00 01 */	cmpwi r3, 1
/* 803FF220  40 82 00 44 */	bne lbl_803FF264
/* 803FF224  7F 23 CB 78 */	mr r3, r25
/* 803FF228  38 9F 00 20 */	addi r4, r31, 0x20
/* 803FF22C  4B FE 13 F5 */	bl mPr_CopyPrivateInfo
/* 803FF230  28 1A 00 00 */	cmplwi r26, 0
/* 803FF234  41 82 00 14 */	beq lbl_803FF248
/* 803FF238  7F 44 D3 78 */	mr r4, r26
/* 803FF23C  38 7F 24 60 */	addi r3, r31, 0x2460
/* 803FF240  38 A0 09 88 */	li r5, 0x988
/* 803FF244  4B C5 DD D9 */	bl func_8005D01C
lbl_803FF248:
/* 803FF248  3C 80 81 1A */	lis r4, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 803FF24C  7F E3 FB 78 */	mr r3, r31
/* 803FF250  38 84 8C 38 */	addi r4, r4, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 803FF254  38 A0 40 00 */	li r5, 0x4000
/* 803FF258  4B C5 DD C5 */	bl func_8005D01C
/* 803FF25C  3B 80 00 01 */	li r28, 1
/* 803FF260  48 00 00 10 */	b lbl_803FF270
lbl_803FF264:
/* 803FF264  3B 7B 00 01 */	addi r27, r27, 1
/* 803FF268  2C 1B 00 02 */	cmpwi r27, 2
/* 803FF26C  41 80 FF 60 */	blt lbl_803FF1CC
lbl_803FF270:
/* 803FF270  7F 83 E3 78 */	mr r3, r28
/* 803FF274  39 61 00 30 */	addi r11, r1, 0x30
/* 803FF278  4B C9 BC 99 */	bl func_8009AF10
/* 803FF27C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FF280  7C 08 03 A6 */	mtlr r0
/* 803FF284  38 21 00 30 */	addi r1, r1, 0x30
/* 803FF288  4E 80 00 20 */	blr 
