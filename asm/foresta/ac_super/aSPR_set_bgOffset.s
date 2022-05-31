lbl_805BD524:
/* 805BD524  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805BD528  7C 08 02 A6 */	mflr r0
/* 805BD52C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805BD530  39 61 00 50 */	addi r11, r1, 0x50
/* 805BD534  4B AD D9 8D */	bl func_8009AEC0
/* 805BD538  3C A0 80 6C */	lis r5, data_806C6DD0@ha /* 0x806C6DD0@ha */
/* 805BD53C  54 80 10 3A */	slwi r0, r4, 2
/* 805BD540  3B 65 6D D0 */	addi r27, r5, data_806C6DD0@l /* 0x806C6DD0@l */
/* 805BD544  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 805BD548  38 9B 01 04 */	addi r4, r27, 0x104
/* 805BD54C  7C 78 1B 78 */	mr r24, r3
/* 805BD550  7F 44 00 2E */	lwzx r26, r4, r0
/* 805BD554  3B 9B 01 6C */	addi r28, r27, 0x16c
/* 805BD558  3B BB 01 0C */	addi r29, r27, 0x10c
/* 805BD55C  3B 20 00 00 */	li r25, 0
/* 805BD560  3B E0 00 00 */	li r31, 0
lbl_805BD564:
/* 805BD564  C0 58 00 14 */	lfs f2, 0x14(r24)
/* 805BD568  38 61 00 10 */	addi r3, r1, 0x10
/* 805BD56C  7C 1C FC 2E */	lfsx f0, r28, r31
/* 805BD570  38 81 00 08 */	addi r4, r1, 8
/* 805BD574  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 805BD578  38 BB 01 CC */	addi r5, r27, 0x1cc
/* 805BD57C  80 1A 00 00 */	lwz r0, 0(r26)
/* 805BD580  EC 42 00 2A */	fadds f2, f2, f0
/* 805BD584  7C 1D FC 2E */	lfsx f0, r29, r31
/* 805BD588  38 C0 01 AE */	li r6, 0x1ae
/* 805BD58C  90 01 00 08 */	stw r0, 8(r1)
/* 805BD590  EC 01 00 2A */	fadds f0, f1, f0
/* 805BD594  A0 FA 00 04 */	lhz r7, 4(r26)
/* 805BD598  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805BD59C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BD5A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BD5A4  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805BD5A8  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 805BD5AC  89 1A 00 06 */	lbz r8, 6(r26)
/* 805BD5B0  99 01 00 0E */	stb r8, 0xe(r1)
/* 805BD5B4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805BD5B8  93 C1 00 14 */	stw r30, 0x14(r1)
/* 805BD5BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BD5C0  4B DD 47 B9 */	bl mCoBG_SetPluss5PointOffset_file
/* 805BD5C4  3B 39 00 01 */	addi r25, r25, 1
/* 805BD5C8  3B FF 00 04 */	addi r31, r31, 4
/* 805BD5CC  2C 19 00 18 */	cmpwi r25, 0x18
/* 805BD5D0  3B 5A 00 07 */	addi r26, r26, 7
/* 805BD5D4  41 80 FF 90 */	blt lbl_805BD564
/* 805BD5D8  39 61 00 50 */	addi r11, r1, 0x50
/* 805BD5DC  4B AD D9 31 */	bl func_8009AF0C
/* 805BD5E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805BD5E4  7C 08 03 A6 */	mtlr r0
/* 805BD5E8  38 21 00 50 */	addi r1, r1, 0x50
/* 805BD5EC  4E 80 00 20 */	blr 
