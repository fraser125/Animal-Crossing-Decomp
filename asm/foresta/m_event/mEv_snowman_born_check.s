lbl_8039ED88:
/* 8039ED88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039ED8C  7C 08 02 A6 */	mflr r0
/* 8039ED90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039ED94  39 20 00 64 */	li r9, 0x64
/* 8039ED98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039ED9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039EDA0  3D 63 00 02 */	addis r11, r3, 2
/* 8039EDA4  38 00 00 05 */	li r0, 5
/* 8039EDA8  A1 4B 61 26 */	lhz r10, 0x6126(r11)
/* 8039EDAC  88 6B 13 92 */	lbz r3, 0x1392(r11)
/* 8039EDB0  7C EA 4B D6 */	divw r7, r10, r9
/* 8039EDB4  88 CB 13 8F */	lbz r6, 0x138f(r11)
/* 8039EDB8  88 8B 13 90 */	lbz r4, 0x1390(r11)
/* 8039EDBC  28 03 00 06 */	cmplwi r3, 6
/* 8039EDC0  88 AB 13 91 */	lbz r5, 0x1391(r11)
/* 8039EDC4  98 C1 00 18 */	stb r6, 0x18(r1)
/* 8039EDC8  7D 27 49 D6 */	mullw r9, r7, r9
/* 8039EDCC  98 81 00 19 */	stb r4, 0x19(r1)
/* 8039EDD0  89 0B 61 25 */	lbz r8, 0x6125(r11)
/* 8039EDD4  98 A1 00 1A */	stb r5, 0x1a(r1)
/* 8039EDD8  88 EB 61 23 */	lbz r7, 0x6123(r11)
/* 8039EDDC  98 61 00 1B */	stb r3, 0x1b(r1)
/* 8039EDE0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8039EDE4  7D 29 50 50 */	subf r9, r9, r10
/* 8039EDE8  88 CB 61 22 */	lbz r6, 0x6122(r11)
/* 8039EDEC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8039EDF0  99 21 00 14 */	stb r9, 0x14(r1)
/* 8039EDF4  99 01 00 15 */	stb r8, 0x15(r1)
/* 8039EDF8  98 E1 00 16 */	stb r7, 0x16(r1)
/* 8039EDFC  98 C1 00 17 */	stb r6, 0x17(r1)
/* 8039EE00  98 01 00 13 */	stb r0, 0x13(r1)
/* 8039EE04  41 80 00 54 */	blt lbl_8039EE58
/* 8039EE08  98 81 00 0C */	stb r4, 0xc(r1)
/* 8039EE0C  38 80 00 01 */	li r4, 1
/* 8039EE10  98 A1 00 0D */	stb r5, 0xd(r1)
/* 8039EE14  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8039EE18  4B FF C3 F9 */	bl after_n_day
/* 8039EE1C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8039EE20  B0 61 00 08 */	sth r3, 8(r1)
/* 8039EE24  28 00 01 01 */	cmplwi r0, 0x101
/* 8039EE28  40 82 00 20 */	bne lbl_8039EE48
/* 8039EE2C  88 81 00 10 */	lbz r4, 0x10(r1)
/* 8039EE30  38 60 00 64 */	li r3, 0x64
/* 8039EE34  38 84 00 01 */	addi r4, r4, 1
/* 8039EE38  7C 04 1B D6 */	divw r0, r4, r3
/* 8039EE3C  7C 00 19 D6 */	mullw r0, r0, r3
/* 8039EE40  7C 00 20 50 */	subf r0, r0, r4
/* 8039EE44  98 01 00 10 */	stb r0, 0x10(r1)
lbl_8039EE48:
/* 8039EE48  88 61 00 08 */	lbz r3, 8(r1)
/* 8039EE4C  88 01 00 09 */	lbz r0, 9(r1)
/* 8039EE50  98 61 00 11 */	stb r3, 0x11(r1)
/* 8039EE54  98 01 00 12 */	stb r0, 0x12(r1)
lbl_8039EE58:
/* 8039EE58  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8039EE5C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8039EE60  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8039EE64  4B FF C3 8D */	bl check_ymdh_range
/* 8039EE68  2C 03 00 00 */	cmpwi r3, 0
/* 8039EE6C  41 82 00 0C */	beq lbl_8039EE78
/* 8039EE70  38 60 00 00 */	li r3, 0
/* 8039EE74  48 00 00 08 */	b lbl_8039EE7C
lbl_8039EE78:
/* 8039EE78  38 60 00 01 */	li r3, 1
lbl_8039EE7C:
/* 8039EE7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039EE80  7C 08 03 A6 */	mtlr r0
/* 8039EE84  38 21 00 20 */	addi r1, r1, 0x20
/* 8039EE88  4E 80 00 20 */	blr 
