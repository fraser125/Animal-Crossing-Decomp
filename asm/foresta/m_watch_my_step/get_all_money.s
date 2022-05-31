lbl_803F63F8:
/* 803F63F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F63FC  7C 08 02 A6 */	mflr r0
/* 803F6400  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F6404  39 61 00 30 */	addi r11, r1, 0x30
/* 803F6408  4B CA 4A BD */	bl func_8009AEC4
/* 803F640C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F6410  3C 80 80 66 */	lis r4, fg_name@ha /* 0x8065E358@ha */
/* 803F6414  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803F6418  3C 60 80 66 */	lis r3, amount@ha /* 0x8065E360@ha */
/* 803F641C  3F 65 00 02 */	addis r27, r5, 2
/* 803F6420  3B 84 E3 58 */	addi r28, r4, fg_name@l /* 0x8065E358@l */
/* 803F6424  80 9B 61 3C */	lwz r4, 0x613c(r27)
/* 803F6428  3B A3 E3 60 */	addi r29, r3, amount@l /* 0x8065E360@l */
/* 803F642C  3B 20 00 00 */	li r25, 0
/* 803F6430  3B E0 00 00 */	li r31, 0
/* 803F6434  83 44 00 8C */	lwz r26, 0x8c(r4)
/* 803F6438  3B C0 00 00 */	li r30, 0
lbl_803F643C:
/* 803F643C  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 803F6440  38 A0 00 00 */	li r5, 0
/* 803F6444  7C 9C F2 2E */	lhzx r4, r28, r30
/* 803F6448  4B FE A5 85 */	bl mPr_GetPossessionItemSumWithCond
/* 803F644C  7C 1D F8 2E */	lwzx r0, r29, r31
/* 803F6450  3B 39 00 01 */	addi r25, r25, 1
/* 803F6454  2C 19 00 04 */	cmpwi r25, 4
/* 803F6458  3B FF 00 04 */	addi r31, r31, 4
/* 803F645C  7C 03 01 D6 */	mullw r0, r3, r0
/* 803F6460  3B DE 00 02 */	addi r30, r30, 2
/* 803F6464  7F 5A 02 14 */	add r26, r26, r0
/* 803F6468  41 80 FF D4 */	blt lbl_803F643C
/* 803F646C  7F 43 D3 78 */	mr r3, r26
/* 803F6470  39 61 00 30 */	addi r11, r1, 0x30
/* 803F6474  4B CA 4A 9D */	bl func_8009AF10
/* 803F6478  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F647C  7C 08 03 A6 */	mtlr r0
/* 803F6480  38 21 00 30 */	addi r1, r1, 0x30
/* 803F6484  4E 80 00 20 */	blr 
