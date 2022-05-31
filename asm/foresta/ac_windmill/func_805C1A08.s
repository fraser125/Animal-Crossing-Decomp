lbl_805C1A08:
/* 805C1A08  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805C1A0C  7C 08 02 A6 */	mflr r0
/* 805C1A10  90 01 00 74 */	stw r0, 0x74(r1)
/* 805C1A14  39 61 00 70 */	addi r11, r1, 0x70
/* 805C1A18  4B AD 94 A9 */	bl func_8009AEC0
/* 805C1A1C  3C A0 80 6C */	lis r5, data_806C74D0@ha /* 0x806C74D0@ha */
/* 805C1A20  54 80 10 3A */	slwi r0, r4, 2
/* 805C1A24  3B A5 74 D0 */	addi r29, r5, data_806C74D0@l /* 0x806C74D0@l */
/* 805C1A28  83 E1 00 48 */	lwz r31, 0x48(r1)
/* 805C1A2C  38 9D 00 AC */	addi r4, r29, 0xac
/* 805C1A30  7C 79 1B 78 */	mr r25, r3
/* 805C1A34  7F 64 00 2E */	lwzx r27, r4, r0
/* 805C1A38  3B 9D 00 B4 */	addi r28, r29, 0xb4
/* 805C1A3C  3B DD 00 C0 */	addi r30, r29, 0xc0
/* 805C1A40  3B 40 00 00 */	li r26, 0
/* 805C1A44  3B 00 00 00 */	li r24, 0
lbl_805C1A48:
/* 805C1A48  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 805C1A4C  38 61 00 38 */	addi r3, r1, 0x38
/* 805C1A50  7C 1E C4 2E */	lfsx f0, r30, r24
/* 805C1A54  38 81 00 18 */	addi r4, r1, 0x18
/* 805C1A58  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805C1A5C  38 BD 00 CC */	addi r5, r29, 0xcc
/* 805C1A60  80 1B 00 00 */	lwz r0, 0(r27)
/* 805C1A64  EC 42 00 2A */	fadds f2, f2, f0
/* 805C1A68  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 805C1A6C  38 C0 00 6D */	li r6, 0x6d
/* 805C1A70  90 01 00 18 */	stw r0, 0x18(r1)
/* 805C1A74  EC 01 00 2A */	fadds f0, f1, f0
/* 805C1A78  A0 FB 00 04 */	lhz r7, 4(r27)
/* 805C1A7C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805C1A80  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805C1A84  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805C1A88  B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 805C1A8C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805C1A90  89 1B 00 06 */	lbz r8, 6(r27)
/* 805C1A94  99 01 00 1E */	stb r8, 0x1e(r1)
/* 805C1A98  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805C1A9C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805C1AA0  90 01 00 40 */	stw r0, 0x40(r1)
/* 805C1AA4  4B DD 02 D5 */	bl mCoBG_SetPluss5PointOffset_file
/* 805C1AA8  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805C1AAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 805C1AB0  80 1B 00 07 */	lwz r0, 7(r27)
/* 805C1AB4  38 81 00 10 */	addi r4, r1, 0x10
/* 805C1AB8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805C1ABC  38 BD 00 CC */	addi r5, r29, 0xcc
/* 805C1AC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C1AC4  38 C0 00 71 */	li r6, 0x71
/* 805C1AC8  EC 01 00 2A */	fadds f0, f1, f0
/* 805C1ACC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805C1AD0  A0 FB 00 0B */	lhz r7, 0xb(r27)
/* 805C1AD4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805C1AD8  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805C1ADC  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805C1AE0  89 1B 00 0D */	lbz r8, 0xd(r27)
/* 805C1AE4  99 01 00 16 */	stb r8, 0x16(r1)
/* 805C1AE8  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805C1AEC  93 E1 00 30 */	stw r31, 0x30(r1)
/* 805C1AF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C1AF4  4B DD 02 85 */	bl mCoBG_SetPluss5PointOffset_file
/* 805C1AF8  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805C1AFC  38 61 00 20 */	addi r3, r1, 0x20
/* 805C1B00  80 1B 00 0E */	lwz r0, 0xe(r27)
/* 805C1B04  38 81 00 08 */	addi r4, r1, 8
/* 805C1B08  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805C1B0C  38 BD 00 CC */	addi r5, r29, 0xcc
/* 805C1B10  90 01 00 08 */	stw r0, 8(r1)
/* 805C1B14  38 C0 00 75 */	li r6, 0x75
/* 805C1B18  EC 01 00 2A */	fadds f0, f1, f0
/* 805C1B1C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805C1B20  A0 FB 00 12 */	lhz r7, 0x12(r27)
/* 805C1B24  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805C1B28  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805C1B2C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805C1B30  89 1B 00 14 */	lbz r8, 0x14(r27)
/* 805C1B34  99 01 00 0E */	stb r8, 0xe(r1)
/* 805C1B38  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805C1B3C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 805C1B40  90 01 00 28 */	stw r0, 0x28(r1)
/* 805C1B44  4B DD 02 35 */	bl mCoBG_SetPluss5PointOffset_file
/* 805C1B48  3B 5A 00 01 */	addi r26, r26, 1
/* 805C1B4C  3B 18 00 04 */	addi r24, r24, 4
/* 805C1B50  2C 1A 00 03 */	cmpwi r26, 3
/* 805C1B54  3B 7B 00 15 */	addi r27, r27, 0x15
/* 805C1B58  41 80 FE F0 */	blt lbl_805C1A48
/* 805C1B5C  39 61 00 70 */	addi r11, r1, 0x70
/* 805C1B60  4B AD 93 AD */	bl func_8009AF0C
/* 805C1B64  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805C1B68  7C 08 03 A6 */	mtlr r0
/* 805C1B6C  38 21 00 70 */	addi r1, r1, 0x70
/* 805C1B70  4E 80 00 20 */	blr 
