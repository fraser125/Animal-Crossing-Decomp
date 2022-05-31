lbl_803AAAC4:
/* 803AAAC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AAAC8  7C 08 02 A6 */	mflr r0
/* 803AAACC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AAAD0  39 61 00 30 */	addi r11, r1, 0x30
/* 803AAAD4  4B CF 03 F1 */	bl func_8009AEC4
/* 803AAAD8  7C 79 1B 78 */	mr r25, r3
/* 803AAADC  7C 9A 23 78 */	mr r26, r4
/* 803AAAE0  3B 60 00 00 */	li r27, 0
lbl_803AAAE4:
/* 803AAAE4  88 19 00 00 */	lbz r0, 0(r25)
/* 803AAAE8  28 00 00 00 */	cmplwi r0, 0
/* 803AAAEC  41 82 00 60 */	beq lbl_803AAB4C
/* 803AAAF0  8B BA 00 00 */	lbz r29, 0(r26)
/* 803AAAF4  2C 1D 00 00 */	cmpwi r29, 0
/* 803AAAF8  40 81 00 54 */	ble lbl_803AAB4C
/* 803AAAFC  3C 80 80 65 */	lis r4, l_sandy_beach_bx@ha /* 0x80653FF8@ha */
/* 803AAB00  3C 60 80 65 */	lis r3, l_sandy_beach_bz@ha /* 0x80654000@ha */
/* 803AAB04  38 84 3F F8 */	addi r4, r4, l_sandy_beach_bx@l /* 0x80653FF8@l */
/* 803AAB08  38 63 40 00 */	addi r3, r3, l_sandy_beach_bz@l /* 0x80654000@l */
/* 803AAB0C  7F 84 D8 AE */	lbzx r28, r4, r27
/* 803AAB10  7F C3 D8 AE */	lbzx r30, r3, r27
/* 803AAB14  7F 83 E3 78 */	mr r3, r28
/* 803AAB18  7F C4 F3 78 */	mr r4, r30
/* 803AAB1C  4B FF BA 51 */	bl mFI_GetBkNum2ColTop
/* 803AAB20  7C 7F 1B 78 */	mr r31, r3
/* 803AAB24  7F 83 E3 78 */	mr r3, r28
/* 803AAB28  7F C4 F3 78 */	mr r4, r30
/* 803AAB2C  4B FF C6 29 */	bl mFI_BkNumtoUtFGTop
/* 803AAB30  20 1E 00 08 */	subfic r0, r30, 8
/* 803AAB34  7F E4 FB 78 */	mr r4, r31
/* 803AAB38  7C 00 00 34 */	cntlzw r0, r0
/* 803AAB3C  7F A5 EB 78 */	mr r5, r29
/* 803AAB40  7F 26 CB 78 */	mr r6, r25
/* 803AAB44  54 07 D9 7E */	srwi r7, r0, 5
/* 803AAB48  4B FF FE 59 */	bl mFI_SetShellBlock
lbl_803AAB4C:
/* 803AAB4C  3B 7B 00 01 */	addi r27, r27, 1
/* 803AAB50  3B 5A 00 01 */	addi r26, r26, 1
/* 803AAB54  2C 1B 00 07 */	cmpwi r27, 7
/* 803AAB58  3B 39 00 01 */	addi r25, r25, 1
/* 803AAB5C  41 80 FF 88 */	blt lbl_803AAAE4
/* 803AAB60  39 61 00 30 */	addi r11, r1, 0x30
/* 803AAB64  4B CF 03 AD */	bl func_8009AF10
/* 803AAB68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AAB6C  7C 08 03 A6 */	mtlr r0
/* 803AAB70  38 21 00 30 */	addi r1, r1, 0x30
/* 803AAB74  4E 80 00 20 */	blr 
