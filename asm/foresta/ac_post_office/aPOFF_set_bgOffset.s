lbl_805B7E88:
/* 805B7E88  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805B7E8C  7C 08 02 A6 */	mflr r0
/* 805B7E90  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B7E94  39 61 00 50 */	addi r11, r1, 0x50
/* 805B7E98  4B AE 30 29 */	bl func_8009AEC0
/* 805B7E9C  3C A0 80 6C */	lis r5, data_806C62C0@ha /* 0x806C62C0@ha */
/* 805B7EA0  54 80 10 3A */	slwi r0, r4, 2
/* 805B7EA4  3B 65 62 C0 */	addi r27, r5, data_806C62C0@l /* 0x806C62C0@l */
/* 805B7EA8  7C 7F 1B 78 */	mr r31, r3
/* 805B7EAC  38 7B 01 0C */	addi r3, r27, 0x10c
/* 805B7EB0  3B 20 00 00 */	li r25, 0
/* 805B7EB4  7F 43 00 2E */	lwzx r26, r3, r0
/* 805B7EB8  3B 9B 01 24 */	addi r28, r27, 0x124
/* 805B7EBC  3B C0 00 00 */	li r30, 0
lbl_805B7EC0:
/* 805B7EC0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805B7EC4  3B 00 00 00 */	li r24, 0
/* 805B7EC8  7C 1C F4 2E */	lfsx f0, r28, r30
/* 805B7ECC  3B A0 00 00 */	li r29, 0
/* 805B7ED0  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7ED4  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_805B7ED8:
/* 805B7ED8  7C 18 F2 15 */	add. r0, r24, r30
/* 805B7EDC  41 82 00 74 */	beq lbl_805B7F50
/* 805B7EE0  2C 00 00 03 */	cmpwi r0, 3
/* 805B7EE4  41 82 00 6C */	beq lbl_805B7F50
/* 805B7EE8  2C 00 00 0C */	cmpwi r0, 0xc
/* 805B7EEC  41 82 00 64 */	beq lbl_805B7F50
/* 805B7EF0  2C 00 00 0F */	cmpwi r0, 0xf
/* 805B7EF4  41 82 00 5C */	beq lbl_805B7F50
/* 805B7EF8  38 9B 01 14 */	addi r4, r27, 0x114
/* 805B7EFC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805B7F00  80 1A 00 00 */	lwz r0, 0(r26)
/* 805B7F04  38 61 00 10 */	addi r3, r1, 0x10
/* 805B7F08  7C 04 EC 2E */	lfsx f0, r4, r29
/* 805B7F0C  38 81 00 08 */	addi r4, r1, 8
/* 805B7F10  90 01 00 08 */	stw r0, 8(r1)
/* 805B7F14  38 BB 01 34 */	addi r5, r27, 0x134
/* 805B7F18  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7F1C  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 805B7F20  A1 1A 00 04 */	lhz r8, 4(r26)
/* 805B7F24  38 C0 01 51 */	li r6, 0x151
/* 805B7F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B7F2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B7F30  B1 01 00 0C */	sth r8, 0xc(r1)
/* 805B7F34  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 805B7F38  89 3A 00 06 */	lbz r9, 6(r26)
/* 805B7F3C  99 21 00 0E */	stb r9, 0xe(r1)
/* 805B7F40  91 01 00 10 */	stw r8, 0x10(r1)
/* 805B7F44  90 E1 00 14 */	stw r7, 0x14(r1)
/* 805B7F48  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B7F4C  4B DD 9E 2D */	bl mCoBG_SetPluss5PointOffset_file
lbl_805B7F50:
/* 805B7F50  3B 18 00 01 */	addi r24, r24, 1
/* 805B7F54  3B BD 00 04 */	addi r29, r29, 4
/* 805B7F58  2C 18 00 04 */	cmpwi r24, 4
/* 805B7F5C  3B 5A 00 07 */	addi r26, r26, 7
/* 805B7F60  41 80 FF 78 */	blt lbl_805B7ED8
/* 805B7F64  3B 39 00 01 */	addi r25, r25, 1
/* 805B7F68  3B DE 00 04 */	addi r30, r30, 4
/* 805B7F6C  2C 19 00 04 */	cmpwi r25, 4
/* 805B7F70  41 80 FF 50 */	blt lbl_805B7EC0
/* 805B7F74  39 61 00 50 */	addi r11, r1, 0x50
/* 805B7F78  4B AE 2F 95 */	bl func_8009AF0C
/* 805B7F7C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B7F80  7C 08 03 A6 */	mtlr r0
/* 805B7F84  38 21 00 50 */	addi r1, r1, 0x50
/* 805B7F88  4E 80 00 20 */	blr 
