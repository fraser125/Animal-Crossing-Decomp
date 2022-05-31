lbl_805B72B8:
/* 805B72B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805B72BC  7C 08 02 A6 */	mflr r0
/* 805B72C0  90 01 00 74 */	stw r0, 0x74(r1)
/* 805B72C4  39 61 00 70 */	addi r11, r1, 0x70
/* 805B72C8  4B AE 3B F9 */	bl func_8009AEC0
/* 805B72CC  3C A0 80 6C */	lis r5, data_806C61D0@ha /* 0x806C61D0@ha */
/* 805B72D0  54 80 10 3A */	slwi r0, r4, 2
/* 805B72D4  3B A5 61 D0 */	addi r29, r5, data_806C61D0@l /* 0x806C61D0@l */
/* 805B72D8  83 E1 00 48 */	lwz r31, 0x48(r1)
/* 805B72DC  38 9D 00 A0 */	addi r4, r29, 0xa0
/* 805B72E0  7C 79 1B 78 */	mr r25, r3
/* 805B72E4  7F 64 00 2E */	lwzx r27, r4, r0
/* 805B72E8  3B 9D 00 A8 */	addi r28, r29, 0xa8
/* 805B72EC  3B DD 00 B4 */	addi r30, r29, 0xb4
/* 805B72F0  3B 40 00 00 */	li r26, 0
/* 805B72F4  3B 00 00 00 */	li r24, 0
lbl_805B72F8:
/* 805B72F8  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 805B72FC  38 61 00 38 */	addi r3, r1, 0x38
/* 805B7300  7C 1E C4 2E */	lfsx f0, r30, r24
/* 805B7304  38 81 00 18 */	addi r4, r1, 0x18
/* 805B7308  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B730C  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 805B7310  80 1B 00 00 */	lwz r0, 0(r27)
/* 805B7314  EC 42 00 2A */	fadds f2, f2, f0
/* 805B7318  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 805B731C  38 C0 00 8E */	li r6, 0x8e
/* 805B7320  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B7324  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7328  A0 FB 00 04 */	lhz r7, 4(r27)
/* 805B732C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805B7330  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B7334  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B7338  B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 805B733C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B7340  89 1B 00 06 */	lbz r8, 6(r27)
/* 805B7344  99 01 00 1E */	stb r8, 0x1e(r1)
/* 805B7348  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805B734C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B7350  90 01 00 40 */	stw r0, 0x40(r1)
/* 805B7354  4B DD AA 25 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B7358  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B735C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B7360  80 1B 00 07 */	lwz r0, 7(r27)
/* 805B7364  38 81 00 10 */	addi r4, r1, 0x10
/* 805B7368  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B736C  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 805B7370  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B7374  38 C0 00 92 */	li r6, 0x92
/* 805B7378  EC 01 00 2A */	fadds f0, f1, f0
/* 805B737C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B7380  A0 FB 00 0B */	lhz r7, 0xb(r27)
/* 805B7384  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B7388  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805B738C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B7390  89 1B 00 0D */	lbz r8, 0xd(r27)
/* 805B7394  99 01 00 16 */	stb r8, 0x16(r1)
/* 805B7398  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805B739C  93 E1 00 30 */	stw r31, 0x30(r1)
/* 805B73A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B73A4  4B DD A9 D5 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B73A8  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B73AC  38 61 00 20 */	addi r3, r1, 0x20
/* 805B73B0  80 1B 00 0E */	lwz r0, 0xe(r27)
/* 805B73B4  38 81 00 08 */	addi r4, r1, 8
/* 805B73B8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805B73BC  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 805B73C0  90 01 00 08 */	stw r0, 8(r1)
/* 805B73C4  38 C0 00 96 */	li r6, 0x96
/* 805B73C8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B73CC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B73D0  A0 FB 00 12 */	lhz r7, 0x12(r27)
/* 805B73D4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B73D8  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805B73DC  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B73E0  89 1B 00 14 */	lbz r8, 0x14(r27)
/* 805B73E4  99 01 00 0E */	stb r8, 0xe(r1)
/* 805B73E8  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805B73EC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 805B73F0  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B73F4  4B DD A9 85 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B73F8  3B 5A 00 01 */	addi r26, r26, 1
/* 805B73FC  3B 18 00 04 */	addi r24, r24, 4
/* 805B7400  2C 1A 00 03 */	cmpwi r26, 3
/* 805B7404  3B 7B 00 15 */	addi r27, r27, 0x15
/* 805B7408  41 80 FE F0 */	blt lbl_805B72F8
/* 805B740C  39 61 00 70 */	addi r11, r1, 0x70
/* 805B7410  4B AE 3A FD */	bl func_8009AF0C
/* 805B7414  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805B7418  7C 08 03 A6 */	mtlr r0
/* 805B741C  38 21 00 70 */	addi r1, r1, 0x70
/* 805B7420  4E 80 00 20 */	blr 
