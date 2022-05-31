lbl_80375A5C:
/* 80375A5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80375A60  7C 08 02 A6 */	mflr r0
/* 80375A64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80375A68  39 61 00 30 */	addi r11, r1, 0x30
/* 80375A6C  4B D2 54 59 */	bl func_8009AEC4
/* 80375A70  7C 79 1B 78 */	mr r25, r3
/* 80375A74  3C 60 80 65 */	lis r3, restore_flag@ha /* 0x8064D504@ha */
/* 80375A78  3B 79 1D A8 */	addi r27, r25, 0x1da8
/* 80375A7C  3B 40 00 00 */	li r26, 0
/* 80375A80  3B A3 D5 04 */	addi r29, r3, restore_flag@l /* 0x8064D504@l */
/* 80375A84  3B E0 00 00 */	li r31, 0
/* 80375A88  3B C0 00 00 */	li r30, 0
lbl_80375A8C:
/* 80375A8C  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80375A90  2C 00 00 01 */	cmpwi r0, 1
/* 80375A94  40 82 00 2C */	bne lbl_80375AC0
/* 80375A98  38 1F 00 08 */	addi r0, r31, 8
/* 80375A9C  7F 9B 00 2E */	lwzx r28, r27, r0
/* 80375AA0  48 00 00 14 */	b lbl_80375AB4
lbl_80375AA4:
/* 80375AA4  7F 83 E3 78 */	mr r3, r28
/* 80375AA8  7F 24 CB 78 */	mr r4, r25
/* 80375AAC  4B FF FE 8D */	bl restore_fgdata
/* 80375AB0  83 9C 01 58 */	lwz r28, 0x158(r28)
lbl_80375AB4:
/* 80375AB4  28 1C 00 00 */	cmplwi r28, 0
/* 80375AB8  40 82 FF EC */	bne lbl_80375AA4
/* 80375ABC  48 00 00 34 */	b lbl_80375AF0
lbl_80375AC0:
/* 80375AC0  38 1F 00 08 */	addi r0, r31, 8
/* 80375AC4  7F 9B 00 2E */	lwzx r28, r27, r0
/* 80375AC8  48 00 00 20 */	b lbl_80375AE8
lbl_80375ACC:
/* 80375ACC  88 1C 00 03 */	lbz r0, 3(r28)
/* 80375AD0  28 00 00 01 */	cmplwi r0, 1
/* 80375AD4  40 82 00 10 */	bne lbl_80375AE4
/* 80375AD8  7F 83 E3 78 */	mr r3, r28
/* 80375ADC  7F 24 CB 78 */	mr r4, r25
/* 80375AE0  4B FF FE 59 */	bl restore_fgdata
lbl_80375AE4:
/* 80375AE4  83 9C 01 58 */	lwz r28, 0x158(r28)
lbl_80375AE8:
/* 80375AE8  28 1C 00 00 */	cmplwi r28, 0
/* 80375AEC  40 82 FF E0 */	bne lbl_80375ACC
lbl_80375AF0:
/* 80375AF0  3B 5A 00 01 */	addi r26, r26, 1
/* 80375AF4  3B DE 00 04 */	addi r30, r30, 4
/* 80375AF8  2C 1A 00 08 */	cmpwi r26, 8
/* 80375AFC  3B FF 00 08 */	addi r31, r31, 8
/* 80375B00  41 80 FF 8C */	blt lbl_80375A8C
/* 80375B04  39 61 00 30 */	addi r11, r1, 0x30
/* 80375B08  4B D2 54 09 */	bl func_8009AF10
/* 80375B0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80375B10  7C 08 03 A6 */	mtlr r0
/* 80375B14  38 21 00 30 */	addi r1, r1, 0x30
/* 80375B18  4E 80 00 20 */	blr 
