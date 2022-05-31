lbl_803CFA28:
/* 803CFA28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CFA2C  7C 08 02 A6 */	mflr r0
/* 803CFA30  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CFA34  39 61 00 30 */	addi r11, r1, 0x30
/* 803CFA38  4B CC B4 8D */	bl func_8009AEC4
/* 803CFA3C  7C 79 1B 79 */	or. r25, r3, r3
/* 803CFA40  7C 9A 23 78 */	mr r26, r4
/* 803CFA44  41 82 00 5C */	beq lbl_803CFAA0
/* 803CFA48  1C 9A 00 38 */	mulli r4, r26, 0x38
/* 803CFA4C  4B C8 D6 1D */	bl bzero
/* 803CFA50  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803CFA54  3B 60 00 00 */	li r27, 0
/* 803CFA58  3B A3 FF FF */	addi r29, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803CFA5C  3B 80 00 00 */	li r28, 0
/* 803CFA60  3B C0 00 FF */	li r30, 0xff
/* 803CFA64  3B E0 00 CB */	li r31, 0xcb
/* 803CFA68  48 00 00 30 */	b lbl_803CFA98
lbl_803CFA6C:
/* 803CFA6C  B3 99 00 00 */	sth r28, 0(r25)
/* 803CFA70  38 79 00 20 */	addi r3, r25, 0x20
/* 803CFA74  B3 B9 00 02 */	sth r29, 2(r25)
/* 803CFA78  48 01 2E 31 */	bl func_803E28A8
/* 803CFA7C  9B D9 00 2C */	stb r30, 0x2c(r25)
/* 803CFA80  3B 7B 00 01 */	addi r27, r27, 1
/* 803CFA84  9B D9 00 2D */	stb r30, 0x2d(r25)
/* 803CFA88  9B D9 00 2E */	stb r30, 0x2e(r25)
/* 803CFA8C  9B D9 00 2F */	stb r30, 0x2f(r25)
/* 803CFA90  B3 F9 00 30 */	sth r31, 0x30(r25)
/* 803CFA94  3B 39 00 38 */	addi r25, r25, 0x38
lbl_803CFA98:
/* 803CFA98  7C 1B D0 00 */	cmpw r27, r26
/* 803CFA9C  41 80 FF D0 */	blt lbl_803CFA6C
lbl_803CFAA0:
/* 803CFAA0  39 61 00 30 */	addi r11, r1, 0x30
/* 803CFAA4  4B CC B4 6D */	bl func_8009AF10
/* 803CFAA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CFAAC  7C 08 03 A6 */	mtlr r0
/* 803CFAB0  38 21 00 30 */	addi r1, r1, 0x30
/* 803CFAB4  4E 80 00 20 */	blr 
