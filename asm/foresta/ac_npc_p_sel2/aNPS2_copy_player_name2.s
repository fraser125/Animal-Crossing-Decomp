lbl_80567BBC:
/* 80567BBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80567BC0  7C 08 02 A6 */	mflr r0
/* 80567BC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80567BC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80567BCC  4B B3 32 F9 */	bl func_8009AEC4
/* 80567BD0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80567BD4  7C 79 1B 78 */	mr r25, r3
/* 80567BD8  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 80567BDC  7C 9A 23 78 */	mr r26, r4
/* 80567BE0  7C BB 2B 78 */	mr r27, r5
/* 80567BE4  3B E0 00 00 */	li r31, 0
/* 80567BE8  3B 83 48 A0 */	addi r28, r3, 0x48a0
/* 80567BEC  3B C0 00 00 */	li r30, 0
/* 80567BF0  48 00 00 3C */	b lbl_80567C2C
lbl_80567BF4:
/* 80567BF4  7F 83 E3 78 */	mr r3, r28
/* 80567BF8  4B E7 84 4D */	bl mPr_NullCheckPersonalID
/* 80567BFC  2C 03 00 00 */	cmpwi r3, 0
/* 80567C00  40 82 00 28 */	bne lbl_80567C28
/* 80567C04  7F B9 F2 14 */	add r29, r25, r30
/* 80567C08  7F 84 E3 78 */	mr r4, r28
/* 80567C0C  7F A3 EB 78 */	mr r3, r29
/* 80567C10  38 A0 00 08 */	li r5, 8
/* 80567C14  4B E5 2E 11 */	bl func_803BAA24
/* 80567C18  7F BA F9 2E */	stwx r29, r26, r31
/* 80567C1C  3B FF 00 04 */	addi r31, r31, 4
/* 80567C20  3B DE 00 10 */	addi r30, r30, 0x10
/* 80567C24  3B 7B FF FF */	addi r27, r27, -1
lbl_80567C28:
/* 80567C28  3B 9C 24 40 */	addi r28, r28, 0x2440
lbl_80567C2C:
/* 80567C2C  2C 1B 00 00 */	cmpwi r27, 0
/* 80567C30  40 82 FF C4 */	bne lbl_80567BF4
/* 80567C34  39 61 00 30 */	addi r11, r1, 0x30
/* 80567C38  4B B3 32 D9 */	bl func_8009AF10
/* 80567C3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80567C40  7C 08 03 A6 */	mtlr r0
/* 80567C44  38 21 00 30 */	addi r1, r1, 0x30
/* 80567C48  4E 80 00 20 */	blr 
