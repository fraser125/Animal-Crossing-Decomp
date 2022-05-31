lbl_80578AE4:
/* 80578AE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80578AE8  7C 08 02 A6 */	mflr r0
/* 80578AEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80578AF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80578AF4  4B B2 23 CD */	bl func_8009AEC0
/* 80578AF8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80578AFC  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 80578B00  38 C4 E0 00 */	addi r6, r4, -8192
/* 80578B04  3C 80 00 02 */	lis r4, 0x0002 /* 0x0001869F@ha */
/* 80578B08  54 C0 D0 0A */	slwi r0, r6, 0x1a
/* 80578B0C  39 27 85 38 */	addi r9, r7, common_data@l /* 0x81138538@l */
/* 80578B10  54 C8 0F FE */	srwi r8, r6, 0x1f
/* 80578B14  80 C3 00 00 */	lwz r6, 0(r3)
/* 80578B18  7C E8 00 50 */	subf r7, r8, r0
/* 80578B1C  38 04 86 9F */	addi r0, r4, 0x869F /* 0x0001869F@l */
/* 80578B20  54 E4 30 3E */	rotlwi r4, r7, 6
/* 80578B24  3F C9 00 02 */	addis r30, r9, 2
/* 80578B28  7F 84 42 14 */	add r28, r4, r8
/* 80578B2C  7C 06 00 40 */	cmplw r6, r0
/* 80578B30  38 1C 1F C0 */	addi r0, r28, 0x1fc0
/* 80578B34  83 BE 61 3C */	lwz r29, 0x613c(r30)
/* 80578B38  7C BF 2B 78 */	mr r31, r5
/* 80578B3C  3B 60 00 00 */	li r27, 0
/* 80578B40  54 18 04 3E */	clrlwi r24, r0, 0x10
/* 80578B44  3B 20 00 01 */	li r25, 1
/* 80578B48  41 80 00 18 */	blt lbl_80578B60
/* 80578B4C  38 06 8A D0 */	addi r0, r6, -30000
/* 80578B50  3B 40 00 00 */	li r26, 0
/* 80578B54  90 03 00 00 */	stw r0, 0(r3)
/* 80578B58  3B 20 00 00 */	li r25, 0
/* 80578B5C  48 00 00 74 */	b lbl_80578BD0
lbl_80578B60:
/* 80578B60  3B 40 00 01 */	li r26, 1
/* 80578B64  48 00 00 6C */	b lbl_80578BD0
lbl_80578B68:
/* 80578B68  7F A3 EB 78 */	mr r3, r29
/* 80578B6C  7F 04 C3 78 */	mr r4, r24
/* 80578B70  38 A0 00 00 */	li r5, 0
/* 80578B74  4B E6 7B FD */	bl mPr_GetPossessionItemIdxWithCond
/* 80578B78  7C 64 1B 78 */	mr r4, r3
/* 80578B7C  3C 04 00 01 */	addis r0, r4, 1
/* 80578B80  28 00 FF FF */	cmplwi r0, 0xffff
/* 80578B84  41 82 00 2C */	beq lbl_80578BB0
/* 80578B88  3C 60 80 6C */	lis r3, aNSC_exchange_itemNo@ha /* 0x806C0244@ha */
/* 80578B8C  57 40 08 3C */	slwi r0, r26, 1
/* 80578B90  38 A3 02 44 */	addi r5, r3, aNSC_exchange_itemNo@l /* 0x806C0244@l */
/* 80578B94  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80578B98  7C A5 02 2E */	lhzx r5, r5, r0
/* 80578B9C  38 C0 00 00 */	li r6, 0
/* 80578BA0  4B E6 82 89 */	bl mPr_SetPossessionItem
/* 80578BA4  7F FB F8 50 */	subf r31, r27, r31
/* 80578BA8  3B 40 00 01 */	li r26, 1
/* 80578BAC  48 00 00 24 */	b lbl_80578BD0
lbl_80578BB0:
/* 80578BB0  3B 7B 00 01 */	addi r27, r27, 1
/* 80578BB4  2C 1B 00 04 */	cmpwi r27, 4
/* 80578BB8  41 81 00 20 */	bgt lbl_80578BD8
/* 80578BBC  38 1B FF FF */	addi r0, r27, -1
/* 80578BC0  54 00 30 32 */	slwi r0, r0, 6
/* 80578BC4  7C 7C 02 14 */	add r3, r28, r0
/* 80578BC8  38 03 20 00 */	addi r0, r3, 0x2000
/* 80578BCC  54 18 04 3E */	clrlwi r24, r0, 0x10
lbl_80578BD0:
/* 80578BD0  2C 1F 00 00 */	cmpwi r31, 0
/* 80578BD4  40 82 FF 94 */	bne lbl_80578B68
lbl_80578BD8:
/* 80578BD8  7F 23 CB 78 */	mr r3, r25
/* 80578BDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80578BE0  4B B2 23 2D */	bl func_8009AF0C
/* 80578BE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80578BE8  7C 08 03 A6 */	mtlr r0
/* 80578BEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80578BF0  4E 80 00 20 */	blr 
