lbl_805B4088:
/* 805B4088  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B408C  7C 08 02 A6 */	mflr r0
/* 805B4090  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B4094  39 61 00 60 */	addi r11, r1, 0x60
/* 805B4098  4B AE 6E 29 */	bl func_8009AEC0
/* 805B409C  3C A0 80 6C */	lis r5, data_806C5B10@ha /* 0x806C5B10@ha */
/* 805B40A0  54 80 10 3A */	slwi r0, r4, 2
/* 805B40A4  3B C5 5B 10 */	addi r30, r5, data_806C5B10@l /* 0x806C5B10@l */
/* 805B40A8  83 01 00 34 */	lwz r24, 0x34(r1)
/* 805B40AC  38 9E 00 5C */	addi r4, r30, 0x5c
/* 805B40B0  7C 7A 1B 78 */	mr r26, r3
/* 805B40B4  7F 84 00 2E */	lwzx r28, r4, r0
/* 805B40B8  3B BE 00 64 */	addi r29, r30, 0x64
/* 805B40BC  3B FE 00 6C */	addi r31, r30, 0x6c
/* 805B40C0  3B 60 00 00 */	li r27, 0
/* 805B40C4  3B 20 00 00 */	li r25, 0
lbl_805B40C8:
/* 805B40C8  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 805B40CC  38 61 00 24 */	addi r3, r1, 0x24
/* 805B40D0  7C 1F CC 2E */	lfsx f0, r31, r25
/* 805B40D4  38 81 00 10 */	addi r4, r1, 0x10
/* 805B40D8  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 805B40DC  38 BE 00 74 */	addi r5, r30, 0x74
/* 805B40E0  80 1C 00 00 */	lwz r0, 0(r28)
/* 805B40E4  EC 42 00 2A */	fadds f2, f2, f0
/* 805B40E8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805B40EC  38 C0 00 61 */	li r6, 0x61
/* 805B40F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B40F4  EC 01 00 2A */	fadds f0, f1, f0
/* 805B40F8  A0 FC 00 04 */	lhz r7, 4(r28)
/* 805B40FC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 805B4100  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805B4104  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805B4108  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805B410C  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 805B4110  89 1C 00 06 */	lbz r8, 6(r28)
/* 805B4114  99 01 00 16 */	stb r8, 0x16(r1)
/* 805B4118  90 E1 00 24 */	stw r7, 0x24(r1)
/* 805B411C  93 01 00 28 */	stw r24, 0x28(r1)
/* 805B4120  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B4124  4B DD DC 55 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B4128  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 805B412C  38 61 00 18 */	addi r3, r1, 0x18
/* 805B4130  80 1C 00 07 */	lwz r0, 7(r28)
/* 805B4134  38 81 00 08 */	addi r4, r1, 8
/* 805B4138  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805B413C  38 BE 00 74 */	addi r5, r30, 0x74
/* 805B4140  90 01 00 08 */	stw r0, 8(r1)
/* 805B4144  38 C0 00 65 */	li r6, 0x65
/* 805B4148  EC 01 00 2A */	fadds f0, f1, f0
/* 805B414C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805B4150  A0 FC 00 0B */	lhz r7, 0xb(r28)
/* 805B4154  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805B4158  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805B415C  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 805B4160  89 1C 00 0D */	lbz r8, 0xd(r28)
/* 805B4164  99 01 00 0E */	stb r8, 0xe(r1)
/* 805B4168  90 E1 00 18 */	stw r7, 0x18(r1)
/* 805B416C  93 01 00 1C */	stw r24, 0x1c(r1)
/* 805B4170  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B4174  4B DD DC 05 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B4178  3B 7B 00 01 */	addi r27, r27, 1
/* 805B417C  3B 39 00 04 */	addi r25, r25, 4
/* 805B4180  2C 1B 00 02 */	cmpwi r27, 2
/* 805B4184  3B 9C 00 0E */	addi r28, r28, 0xe
/* 805B4188  41 80 FF 40 */	blt lbl_805B40C8
/* 805B418C  39 61 00 60 */	addi r11, r1, 0x60
/* 805B4190  4B AE 6D 7D */	bl func_8009AF0C
/* 805B4194  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B4198  7C 08 03 A6 */	mtlr r0
/* 805B419C  38 21 00 60 */	addi r1, r1, 0x60
/* 805B41A0  4E 80 00 20 */	blr 
