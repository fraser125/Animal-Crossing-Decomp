lbl_803EAF90:
/* 803EAF90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EAF94  7C 08 02 A6 */	mflr r0
/* 803EAF98  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EAF9C  39 61 00 30 */	addi r11, r1, 0x30
/* 803EAFA0  4B CA FF 1D */	bl func_8009AEBC
/* 803EAFA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EAFA8  7C 77 1B 78 */	mr r23, r3
/* 803EAFAC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803EAFB0  3B 20 00 00 */	li r25, 0
/* 803EAFB4  3F 63 00 02 */	addis r27, r3, 2
/* 803EAFB8  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 803EAFBC  83 43 00 8C */	lwz r26, 0x8c(r3)
/* 803EAFC0  7C 1A B8 40 */	cmplw r26, r23
/* 803EAFC4  40 80 00 64 */	bge lbl_803EB028
/* 803EAFC8  3C 80 80 66 */	lis r4, mSP_itemNo@ha /* 0x8065D92C@ha */
/* 803EAFCC  3C 60 80 66 */	lis r3, mSP_sack_amount@ha /* 0x8065D91C@ha */
/* 803EAFD0  3B 84 D9 2C */	addi r28, r4, mSP_itemNo@l /* 0x8065D92C@l */
/* 803EAFD4  3B 00 00 00 */	li r24, 0
/* 803EAFD8  3B A3 D9 1C */	addi r29, r3, mSP_sack_amount@l /* 0x8065D91C@l */
/* 803EAFDC  3B E0 00 00 */	li r31, 0
/* 803EAFE0  3B C0 00 00 */	li r30, 0
lbl_803EAFE4:
/* 803EAFE4  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 803EAFE8  38 A0 00 00 */	li r5, 0
/* 803EAFEC  7C 9C F2 2E */	lhzx r4, r28, r30
/* 803EAFF0  4B FF 59 DD */	bl mPr_GetPossessionItemSumWithCond
/* 803EAFF4  7C 1D F8 2E */	lwzx r0, r29, r31
/* 803EAFF8  7C 03 01 D6 */	mullw r0, r3, r0
/* 803EAFFC  7F 5A 02 14 */	add r26, r26, r0
/* 803EB000  7C 1A B8 40 */	cmplw r26, r23
/* 803EB004  41 80 00 0C */	blt lbl_803EB010
/* 803EB008  3B 20 00 01 */	li r25, 1
/* 803EB00C  48 00 00 20 */	b lbl_803EB02C
lbl_803EB010:
/* 803EB010  3B 18 00 01 */	addi r24, r24, 1
/* 803EB014  3B DE 00 02 */	addi r30, r30, 2
/* 803EB018  2C 18 00 04 */	cmpwi r24, 4
/* 803EB01C  3B FF 00 04 */	addi r31, r31, 4
/* 803EB020  41 80 FF C4 */	blt lbl_803EAFE4
/* 803EB024  48 00 00 08 */	b lbl_803EB02C
lbl_803EB028:
/* 803EB028  3B 20 00 01 */	li r25, 1
lbl_803EB02C:
/* 803EB02C  7F 23 CB 78 */	mr r3, r25
/* 803EB030  39 61 00 30 */	addi r11, r1, 0x30
/* 803EB034  4B CA FE D5 */	bl func_8009AF08
/* 803EB038  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EB03C  7C 08 03 A6 */	mtlr r0
/* 803EB040  38 21 00 30 */	addi r1, r1, 0x30
/* 803EB044  4E 80 00 20 */	blr 
