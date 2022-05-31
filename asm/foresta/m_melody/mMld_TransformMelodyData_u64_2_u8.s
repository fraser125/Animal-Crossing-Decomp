lbl_803BF150:
/* 803BF150  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BF154  7C 08 02 A6 */	mflr r0
/* 803BF158  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BF15C  39 61 00 30 */	addi r11, r1, 0x30
/* 803BF160  4B CD BD 65 */	bl func_8009AEC4
/* 803BF164  3B E0 00 00 */	li r31, 0
/* 803BF168  7C 79 1B 78 */	mr r25, r3
/* 803BF16C  7C BB 2B 78 */	mr r27, r5
/* 803BF170  7C DA 33 78 */	mr r26, r6
/* 803BF174  3B 80 00 00 */	li r28, 0
/* 803BF178  3B A0 00 0F */	li r29, 0xf
lbl_803BF17C:
/* 803BF17C  20 BF 00 3C */	subfic r5, r31, 0x3c
/* 803BF180  7F 63 DB 78 */	mr r3, r27
/* 803BF184  7F 44 D3 78 */	mr r4, r26
/* 803BF188  4B CD C1 E1 */	bl __shr2u
/* 803BF18C  3B 9C 00 01 */	addi r28, r28, 1
/* 803BF190  7C 80 E8 38 */	and r0, r4, r29
/* 803BF194  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803BF198  98 19 00 00 */	stb r0, 0(r25)
/* 803BF19C  3B 39 00 01 */	addi r25, r25, 1
/* 803BF1A0  3B FF 00 04 */	addi r31, r31, 4
/* 803BF1A4  41 80 FF D8 */	blt lbl_803BF17C
/* 803BF1A8  39 61 00 30 */	addi r11, r1, 0x30
/* 803BF1AC  4B CD BD 65 */	bl func_8009AF10
/* 803BF1B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BF1B4  7C 08 03 A6 */	mtlr r0
/* 803BF1B8  38 21 00 30 */	addi r1, r1, 0x30
/* 803BF1BC  4E 80 00 20 */	blr 
