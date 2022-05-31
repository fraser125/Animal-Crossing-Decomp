lbl_805AC0E0:
/* 805AC0E0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805AC0E4  7C 08 02 A6 */	mflr r0
/* 805AC0E8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805AC0EC  39 61 00 70 */	addi r11, r1, 0x70
/* 805AC0F0  4B AE ED D1 */	bl func_8009AEC0
/* 805AC0F4  3C A0 80 6C */	lis r5, data_806C49A8@ha /* 0x806C49A8@ha */
/* 805AC0F8  54 80 10 3A */	slwi r0, r4, 2
/* 805AC0FC  3B A5 49 A8 */	addi r29, r5, data_806C49A8@l /* 0x806C49A8@l */
/* 805AC100  83 E1 00 48 */	lwz r31, 0x48(r1)
/* 805AC104  38 9D 00 68 */	addi r4, r29, 0x68
/* 805AC108  7C 79 1B 78 */	mr r25, r3
/* 805AC10C  7F 64 00 2E */	lwzx r27, r4, r0
/* 805AC110  3B 9D 00 70 */	addi r28, r29, 0x70
/* 805AC114  3B DD 00 7C */	addi r30, r29, 0x7c
/* 805AC118  3B 40 00 00 */	li r26, 0
/* 805AC11C  3B 00 00 00 */	li r24, 0
lbl_805AC120:
/* 805AC120  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 805AC124  38 61 00 38 */	addi r3, r1, 0x38
/* 805AC128  7C 1E C4 2E */	lfsx f0, r30, r24
/* 805AC12C  38 81 00 18 */	addi r4, r1, 0x18
/* 805AC130  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805AC134  38 BD 00 84 */	addi r5, r29, 0x84
/* 805AC138  80 1B 00 00 */	lwz r0, 0(r27)
/* 805AC13C  EC 42 00 2A */	fadds f2, f2, f0
/* 805AC140  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 805AC144  38 C0 00 71 */	li r6, 0x71
/* 805AC148  90 01 00 18 */	stw r0, 0x18(r1)
/* 805AC14C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC150  A0 FB 00 04 */	lhz r7, 4(r27)
/* 805AC154  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805AC158  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805AC15C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805AC160  B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 805AC164  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805AC168  89 1B 00 06 */	lbz r8, 6(r27)
/* 805AC16C  99 01 00 1E */	stb r8, 0x1e(r1)
/* 805AC170  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805AC174  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805AC178  90 01 00 40 */	stw r0, 0x40(r1)
/* 805AC17C  4B DE 5B FD */	bl mCoBG_SetPluss5PointOffset_file
/* 805AC180  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805AC184  38 61 00 2C */	addi r3, r1, 0x2c
/* 805AC188  80 1B 00 07 */	lwz r0, 7(r27)
/* 805AC18C  38 81 00 10 */	addi r4, r1, 0x10
/* 805AC190  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805AC194  38 BD 00 84 */	addi r5, r29, 0x84
/* 805AC198  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AC19C  38 C0 00 75 */	li r6, 0x75
/* 805AC1A0  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC1A4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805AC1A8  A0 FB 00 0B */	lhz r7, 0xb(r27)
/* 805AC1AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805AC1B0  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805AC1B4  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805AC1B8  89 1B 00 0D */	lbz r8, 0xd(r27)
/* 805AC1BC  99 01 00 16 */	stb r8, 0x16(r1)
/* 805AC1C0  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805AC1C4  93 E1 00 30 */	stw r31, 0x30(r1)
/* 805AC1C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AC1CC  4B DE 5B AD */	bl mCoBG_SetPluss5PointOffset_file
/* 805AC1D0  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805AC1D4  38 61 00 20 */	addi r3, r1, 0x20
/* 805AC1D8  80 1B 00 0E */	lwz r0, 0xe(r27)
/* 805AC1DC  38 81 00 08 */	addi r4, r1, 8
/* 805AC1E0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805AC1E4  38 BD 00 84 */	addi r5, r29, 0x84
/* 805AC1E8  90 01 00 08 */	stw r0, 8(r1)
/* 805AC1EC  38 C0 00 79 */	li r6, 0x79
/* 805AC1F0  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC1F4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805AC1F8  A0 FB 00 12 */	lhz r7, 0x12(r27)
/* 805AC1FC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805AC200  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805AC204  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805AC208  89 1B 00 14 */	lbz r8, 0x14(r27)
/* 805AC20C  99 01 00 0E */	stb r8, 0xe(r1)
/* 805AC210  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805AC214  93 E1 00 24 */	stw r31, 0x24(r1)
/* 805AC218  90 01 00 28 */	stw r0, 0x28(r1)
/* 805AC21C  4B DE 5B 5D */	bl mCoBG_SetPluss5PointOffset_file
/* 805AC220  3B 5A 00 01 */	addi r26, r26, 1
/* 805AC224  3B 18 00 04 */	addi r24, r24, 4
/* 805AC228  2C 1A 00 02 */	cmpwi r26, 2
/* 805AC22C  3B 7B 00 15 */	addi r27, r27, 0x15
/* 805AC230  41 80 FE F0 */	blt lbl_805AC120
/* 805AC234  39 61 00 70 */	addi r11, r1, 0x70
/* 805AC238  4B AE EC D5 */	bl func_8009AF0C
/* 805AC23C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805AC240  7C 08 03 A6 */	mtlr r0
/* 805AC244  38 21 00 70 */	addi r1, r1, 0x70
/* 805AC248  4E 80 00 20 */	blr 
