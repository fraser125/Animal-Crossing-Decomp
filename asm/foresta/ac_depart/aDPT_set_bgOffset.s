lbl_805ACDC4:
/* 805ACDC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805ACDC8  7C 08 02 A6 */	mflr r0
/* 805ACDCC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805ACDD0  39 61 00 50 */	addi r11, r1, 0x50
/* 805ACDD4  4B AE E0 ED */	bl func_8009AEC0
/* 805ACDD8  3C A0 80 6C */	lis r5, data_806C4AA8@ha /* 0x806C4AA8@ha */
/* 805ACDDC  54 80 10 3A */	slwi r0, r4, 2
/* 805ACDE0  3B 65 4A A8 */	addi r27, r5, data_806C4AA8@l /* 0x806C4AA8@l */
/* 805ACDE4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 805ACDE8  38 9B 01 08 */	addi r4, r27, 0x108
/* 805ACDEC  7C 78 1B 78 */	mr r24, r3
/* 805ACDF0  7F 44 00 2E */	lwzx r26, r4, r0
/* 805ACDF4  3B 9B 01 70 */	addi r28, r27, 0x170
/* 805ACDF8  3B BB 01 10 */	addi r29, r27, 0x110
/* 805ACDFC  3B 20 00 00 */	li r25, 0
/* 805ACE00  3B E0 00 00 */	li r31, 0
lbl_805ACE04:
/* 805ACE04  C0 58 00 14 */	lfs f2, 0x14(r24)
/* 805ACE08  38 61 00 10 */	addi r3, r1, 0x10
/* 805ACE0C  7C 1C FC 2E */	lfsx f0, r28, r31
/* 805ACE10  38 81 00 08 */	addi r4, r1, 8
/* 805ACE14  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805ACE18  38 BB 01 D0 */	addi r5, r27, 0x1d0
/* 805ACE1C  80 1A 00 00 */	lwz r0, 0(r26)
/* 805ACE20  EC 42 00 2A */	fadds f2, f2, f0
/* 805ACE24  7C 1D FC 2E */	lfsx f0, r29, r31
/* 805ACE28  38 C0 01 AE */	li r6, 0x1ae
/* 805ACE2C  90 01 00 08 */	stw r0, 8(r1)
/* 805ACE30  EC 01 00 2A */	fadds f0, f1, f0
/* 805ACE34  A0 FA 00 04 */	lhz r7, 4(r26)
/* 805ACE38  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805ACE3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805ACE40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805ACE44  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805ACE48  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 805ACE4C  89 1A 00 06 */	lbz r8, 6(r26)
/* 805ACE50  99 01 00 0E */	stb r8, 0xe(r1)
/* 805ACE54  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805ACE58  93 C1 00 14 */	stw r30, 0x14(r1)
/* 805ACE5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805ACE60  4B DE 4F 19 */	bl mCoBG_SetPluss5PointOffset_file
/* 805ACE64  3B 39 00 01 */	addi r25, r25, 1
/* 805ACE68  3B FF 00 04 */	addi r31, r31, 4
/* 805ACE6C  2C 19 00 18 */	cmpwi r25, 0x18
/* 805ACE70  3B 5A 00 07 */	addi r26, r26, 7
/* 805ACE74  41 80 FF 90 */	blt lbl_805ACE04
/* 805ACE78  39 61 00 50 */	addi r11, r1, 0x50
/* 805ACE7C  4B AE E0 91 */	bl func_8009AF0C
/* 805ACE80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805ACE84  7C 08 03 A6 */	mtlr r0
/* 805ACE88  38 21 00 50 */	addi r1, r1, 0x50
/* 805ACE8C  4E 80 00 20 */	blr 
