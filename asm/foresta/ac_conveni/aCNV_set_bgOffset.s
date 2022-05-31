lbl_805AAFE8:
/* 805AAFE8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805AAFEC  7C 08 02 A6 */	mflr r0
/* 805AAFF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805AAFF4  39 61 00 50 */	addi r11, r1, 0x50
/* 805AAFF8  4B AE FE C9 */	bl func_8009AEC0
/* 805AAFFC  3C A0 80 6C */	lis r5, data_806C4758@ha /* 0x806C4758@ha */
/* 805AB000  54 80 10 3A */	slwi r0, r4, 2
/* 805AB004  3B 65 47 58 */	addi r27, r5, data_806C4758@l /* 0x806C4758@l */
/* 805AB008  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 805AB00C  38 9B 00 D8 */	addi r4, r27, 0xd8
/* 805AB010  7C 78 1B 78 */	mr r24, r3
/* 805AB014  7F 44 00 2E */	lwzx r26, r4, r0
/* 805AB018  3B 9B 01 24 */	addi r28, r27, 0x124
/* 805AB01C  3B BB 00 E0 */	addi r29, r27, 0xe0
/* 805AB020  3B 20 00 00 */	li r25, 0
/* 805AB024  3B E0 00 00 */	li r31, 0
lbl_805AB028:
/* 805AB028  C0 58 00 14 */	lfs f2, 0x14(r24)
/* 805AB02C  38 61 00 10 */	addi r3, r1, 0x10
/* 805AB030  7C 1C FC 2E */	lfsx f0, r28, r31
/* 805AB034  38 81 00 08 */	addi r4, r1, 8
/* 805AB038  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805AB03C  38 BB 01 68 */	addi r5, r27, 0x168
/* 805AB040  80 1A 00 00 */	lwz r0, 0(r26)
/* 805AB044  EC 42 00 2A */	fadds f2, f2, f0
/* 805AB048  7C 1D FC 2E */	lfsx f0, r29, r31
/* 805AB04C  38 C0 01 94 */	li r6, 0x194
/* 805AB050  90 01 00 08 */	stw r0, 8(r1)
/* 805AB054  EC 01 00 2A */	fadds f0, f1, f0
/* 805AB058  A0 FA 00 04 */	lhz r7, 4(r26)
/* 805AB05C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805AB060  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805AB064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AB068  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805AB06C  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 805AB070  89 1A 00 06 */	lbz r8, 6(r26)
/* 805AB074  99 01 00 0E */	stb r8, 0xe(r1)
/* 805AB078  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805AB07C  93 C1 00 14 */	stw r30, 0x14(r1)
/* 805AB080  90 01 00 18 */	stw r0, 0x18(r1)
/* 805AB084  4B DE 6C F5 */	bl mCoBG_SetPluss5PointOffset_file
/* 805AB088  3B 39 00 01 */	addi r25, r25, 1
/* 805AB08C  3B FF 00 04 */	addi r31, r31, 4
/* 805AB090  2C 19 00 11 */	cmpwi r25, 0x11
/* 805AB094  3B 5A 00 07 */	addi r26, r26, 7
/* 805AB098  41 80 FF 90 */	blt lbl_805AB028
/* 805AB09C  39 61 00 50 */	addi r11, r1, 0x50
/* 805AB0A0  4B AE FE 6D */	bl func_8009AF0C
/* 805AB0A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AB0A8  7C 08 03 A6 */	mtlr r0
/* 805AB0AC  38 21 00 50 */	addi r1, r1, 0x50
/* 805AB0B0  4E 80 00 20 */	blr 
