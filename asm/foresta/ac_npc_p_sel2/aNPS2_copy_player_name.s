lbl_80567B2C:
/* 80567B2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80567B30  7C 08 02 A6 */	mflr r0
/* 80567B34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80567B38  39 61 00 30 */	addi r11, r1, 0x30
/* 80567B3C  4B B3 33 89 */	bl func_8009AEC4
/* 80567B40  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80567B44  7C 79 1B 78 */	mr r25, r3
/* 80567B48  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 80567B4C  7C 9A 23 78 */	mr r26, r4
/* 80567B50  7C BB 2B 78 */	mr r27, r5
/* 80567B54  3B E0 00 00 */	li r31, 0
/* 80567B58  3B 83 00 20 */	addi r28, r3, 0x20
/* 80567B5C  3B C0 00 00 */	li r30, 0
/* 80567B60  48 00 00 3C */	b lbl_80567B9C
lbl_80567B64:
/* 80567B64  7F 83 E3 78 */	mr r3, r28
/* 80567B68  4B E7 84 DD */	bl mPr_NullCheckPersonalID
/* 80567B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80567B70  40 82 00 28 */	bne lbl_80567B98
/* 80567B74  7F B9 F2 14 */	add r29, r25, r30
/* 80567B78  7F 84 E3 78 */	mr r4, r28
/* 80567B7C  7F A3 EB 78 */	mr r3, r29
/* 80567B80  38 A0 00 08 */	li r5, 8
/* 80567B84  4B E5 2E A1 */	bl func_803BAA24
/* 80567B88  7F BA F9 2E */	stwx r29, r26, r31
/* 80567B8C  3B FF 00 04 */	addi r31, r31, 4
/* 80567B90  3B DE 00 10 */	addi r30, r30, 0x10
/* 80567B94  3B 7B FF FF */	addi r27, r27, -1
lbl_80567B98:
/* 80567B98  3B 9C 24 40 */	addi r28, r28, 0x2440
lbl_80567B9C:
/* 80567B9C  2C 1B 00 00 */	cmpwi r27, 0
/* 80567BA0  40 82 FF C4 */	bne lbl_80567B64
/* 80567BA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80567BA8  4B B3 33 69 */	bl func_8009AF10
/* 80567BAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80567BB0  7C 08 03 A6 */	mtlr r0
/* 80567BB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80567BB8  4E 80 00 20 */	blr 
