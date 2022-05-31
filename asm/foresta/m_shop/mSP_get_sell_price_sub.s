lbl_803EB048:
/* 803EB048  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EB04C  7C 08 02 A6 */	mflr r0
/* 803EB050  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EB054  39 61 00 30 */	addi r11, r1, 0x30
/* 803EB058  4B CA FE 65 */	bl func_8009AEBC
/* 803EB05C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EB060  3C C0 80 66 */	lis r6, mSP_itemNo@ha /* 0x8065D92C@ha */
/* 803EB064  38 E5 85 38 */	addi r7, r5, common_data@l /* 0x81138538@l */
/* 803EB068  3C A0 80 66 */	lis r5, mSP_sack_amount@ha /* 0x8065D91C@ha */
/* 803EB06C  7C 77 1B 78 */	mr r23, r3
/* 803EB070  7C 98 23 78 */	mr r24, r4
/* 803EB074  3F 67 00 02 */	addis r27, r7, 2
/* 803EB078  3B 86 D9 2C */	addi r28, r6, mSP_itemNo@l /* 0x8065D92C@l */
/* 803EB07C  3B A5 D9 1C */	addi r29, r5, mSP_sack_amount@l /* 0x8065D91C@l */
/* 803EB080  3B 20 00 00 */	li r25, 0
/* 803EB084  3B E0 00 00 */	li r31, 0
/* 803EB088  3B C0 00 00 */	li r30, 0
lbl_803EB08C:
/* 803EB08C  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 803EB090  38 A0 00 00 */	li r5, 0
/* 803EB094  7C 9C F2 2E */	lhzx r4, r28, r30
/* 803EB098  4B FF 59 35 */	bl mPr_GetPossessionItemSumWithCond
/* 803EB09C  7C 7A 1B 78 */	mr r26, r3
/* 803EB0A0  48 00 00 48 */	b lbl_803EB0E8
lbl_803EB0A4:
/* 803EB0A4  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 803EB0A8  38 A0 00 00 */	li r5, 0
/* 803EB0AC  7C 9C F2 2E */	lhzx r4, r28, r30
/* 803EB0B0  4B FF 56 C1 */	bl mPr_GetPossessionItemIdxWithCond
/* 803EB0B4  7C 60 1B 78 */	mr r0, r3
/* 803EB0B8  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 803EB0BC  7C 04 03 78 */	mr r4, r0
/* 803EB0C0  38 A0 00 00 */	li r5, 0
/* 803EB0C4  38 C0 00 00 */	li r6, 0
/* 803EB0C8  4B FF 5D 61 */	bl mPr_SetPossessionItem
/* 803EB0CC  7C 1D F8 2E */	lwzx r0, r29, r31
/* 803EB0D0  7E F7 02 14 */	add r23, r23, r0
/* 803EB0D4  7C 17 C0 40 */	cmplw r23, r24
/* 803EB0D8  41 80 00 0C */	blt lbl_803EB0E4
/* 803EB0DC  7C 78 B8 50 */	subf r3, r24, r23
/* 803EB0E0  48 00 00 28 */	b lbl_803EB108
lbl_803EB0E4:
/* 803EB0E4  3B 5A FF FF */	addi r26, r26, -1
lbl_803EB0E8:
/* 803EB0E8  28 1A 00 00 */	cmplwi r26, 0
/* 803EB0EC  40 82 FF B8 */	bne lbl_803EB0A4
/* 803EB0F0  3B 39 00 01 */	addi r25, r25, 1
/* 803EB0F4  3B DE 00 02 */	addi r30, r30, 2
/* 803EB0F8  2C 19 00 04 */	cmpwi r25, 4
/* 803EB0FC  3B FF 00 04 */	addi r31, r31, 4
/* 803EB100  41 80 FF 8C */	blt lbl_803EB08C
/* 803EB104  38 60 00 00 */	li r3, 0
lbl_803EB108:
/* 803EB108  39 61 00 30 */	addi r11, r1, 0x30
/* 803EB10C  4B CA FD FD */	bl func_8009AF08
/* 803EB110  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EB114  7C 08 03 A6 */	mtlr r0
/* 803EB118  38 21 00 30 */	addi r1, r1, 0x30
/* 803EB11C  4E 80 00 20 */	blr 
