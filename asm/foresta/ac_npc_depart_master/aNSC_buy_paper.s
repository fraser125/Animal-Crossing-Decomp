lbl_8054EE64:
/* 8054EE64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054EE68  7C 08 02 A6 */	mflr r0
/* 8054EE6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054EE70  39 61 00 30 */	addi r11, r1, 0x30
/* 8054EE74  4B B4 C0 4D */	bl func_8009AEC0
/* 8054EE78  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8054EE7C  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8054EE80  38 C4 E0 00 */	addi r6, r4, -8192
/* 8054EE84  3C 80 00 02 */	lis r4, 0x0002 /* 0x0001869F@ha */
/* 8054EE88  54 C0 D0 0A */	slwi r0, r6, 0x1a
/* 8054EE8C  39 27 85 38 */	addi r9, r7, common_data@l /* 0x81138538@l */
/* 8054EE90  54 C8 0F FE */	srwi r8, r6, 0x1f
/* 8054EE94  80 C3 00 00 */	lwz r6, 0(r3)
/* 8054EE98  7C E8 00 50 */	subf r7, r8, r0
/* 8054EE9C  38 04 86 9F */	addi r0, r4, 0x869F /* 0x0001869F@l */
/* 8054EEA0  54 E4 30 3E */	rotlwi r4, r7, 6
/* 8054EEA4  3F C9 00 02 */	addis r30, r9, 2
/* 8054EEA8  7F 84 42 14 */	add r28, r4, r8
/* 8054EEAC  7C 06 00 40 */	cmplw r6, r0
/* 8054EEB0  38 1C 1F C0 */	addi r0, r28, 0x1fc0
/* 8054EEB4  83 BE 61 3C */	lwz r29, 0x613c(r30)
/* 8054EEB8  7C BF 2B 78 */	mr r31, r5
/* 8054EEBC  3B 60 00 00 */	li r27, 0
/* 8054EEC0  54 18 04 3E */	clrlwi r24, r0, 0x10
/* 8054EEC4  3B 20 00 01 */	li r25, 1
/* 8054EEC8  41 80 00 18 */	blt lbl_8054EEE0
/* 8054EECC  38 06 8A D0 */	addi r0, r6, -30000
/* 8054EED0  3B 40 00 00 */	li r26, 0
/* 8054EED4  90 03 00 00 */	stw r0, 0(r3)
/* 8054EED8  3B 20 00 00 */	li r25, 0
/* 8054EEDC  48 00 00 74 */	b lbl_8054EF50
lbl_8054EEE0:
/* 8054EEE0  3B 40 00 01 */	li r26, 1
/* 8054EEE4  48 00 00 6C */	b lbl_8054EF50
lbl_8054EEE8:
/* 8054EEE8  7F A3 EB 78 */	mr r3, r29
/* 8054EEEC  7F 04 C3 78 */	mr r4, r24
/* 8054EEF0  38 A0 00 00 */	li r5, 0
/* 8054EEF4  4B E9 18 7D */	bl mPr_GetPossessionItemIdxWithCond
/* 8054EEF8  7C 64 1B 78 */	mr r4, r3
/* 8054EEFC  3C 04 00 01 */	addis r0, r4, 1
/* 8054EF00  28 00 FF FF */	cmplwi r0, 0xffff
/* 8054EF04  41 82 00 2C */	beq lbl_8054EF30
/* 8054EF08  3C 60 80 6A */	lis r3, aNSC_exchange_itemNo@ha /* 0x806A5C80@ha */
/* 8054EF0C  57 40 08 3C */	slwi r0, r26, 1
/* 8054EF10  38 A3 5C 80 */	addi r5, r3, aNSC_exchange_itemNo@l /* 0x806A5C80@l */
/* 8054EF14  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8054EF18  7C A5 02 2E */	lhzx r5, r5, r0
/* 8054EF1C  38 C0 00 00 */	li r6, 0
/* 8054EF20  4B E9 1F 09 */	bl mPr_SetPossessionItem
/* 8054EF24  7F FB F8 50 */	subf r31, r27, r31
/* 8054EF28  3B 40 00 01 */	li r26, 1
/* 8054EF2C  48 00 00 24 */	b lbl_8054EF50
lbl_8054EF30:
/* 8054EF30  3B 7B 00 01 */	addi r27, r27, 1
/* 8054EF34  2C 1B 00 04 */	cmpwi r27, 4
/* 8054EF38  41 81 00 20 */	bgt lbl_8054EF58
/* 8054EF3C  38 1B FF FF */	addi r0, r27, -1
/* 8054EF40  54 00 30 32 */	slwi r0, r0, 6
/* 8054EF44  7C 7C 02 14 */	add r3, r28, r0
/* 8054EF48  38 03 20 00 */	addi r0, r3, 0x2000
/* 8054EF4C  54 18 04 3E */	clrlwi r24, r0, 0x10
lbl_8054EF50:
/* 8054EF50  2C 1F 00 00 */	cmpwi r31, 0
/* 8054EF54  40 82 FF 94 */	bne lbl_8054EEE8
lbl_8054EF58:
/* 8054EF58  7F 23 CB 78 */	mr r3, r25
/* 8054EF5C  39 61 00 30 */	addi r11, r1, 0x30
/* 8054EF60  4B B4 BF AD */	bl func_8009AF0C
/* 8054EF64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054EF68  7C 08 03 A6 */	mtlr r0
/* 8054EF6C  38 21 00 30 */	addi r1, r1, 0x30
/* 8054EF70  4E 80 00 20 */	blr 
