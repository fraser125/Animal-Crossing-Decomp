lbl_80567AC4:
/* 80567AC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80567AC8  7C 08 02 A6 */	mflr r0
/* 80567ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80567AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80567AD4  4B B3 34 01 */	bl func_8009AED4
/* 80567AD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80567ADC  3B C0 00 00 */	li r30, 0
/* 80567AE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80567AE4  3B A0 00 00 */	li r29, 0
/* 80567AE8  3B E3 00 20 */	addi r31, r3, 0x20
lbl_80567AEC:
/* 80567AEC  7F E3 FB 78 */	mr r3, r31
/* 80567AF0  4B E7 85 55 */	bl mPr_NullCheckPersonalID
/* 80567AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80567AF8  40 82 00 08 */	bne lbl_80567B00
/* 80567AFC  3B DE 00 01 */	addi r30, r30, 1
lbl_80567B00:
/* 80567B00  3B BD 00 01 */	addi r29, r29, 1
/* 80567B04  3B FF 24 40 */	addi r31, r31, 0x2440
/* 80567B08  2C 1D 00 04 */	cmpwi r29, 4
/* 80567B0C  41 80 FF E0 */	blt lbl_80567AEC
/* 80567B10  7F C3 F3 78 */	mr r3, r30
/* 80567B14  39 61 00 20 */	addi r11, r1, 0x20
/* 80567B18  4B B3 34 09 */	bl func_8009AF20
/* 80567B1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80567B20  7C 08 03 A6 */	mtlr r0
/* 80567B24  38 21 00 20 */	addi r1, r1, 0x20
/* 80567B28  4E 80 00 20 */	blr 
