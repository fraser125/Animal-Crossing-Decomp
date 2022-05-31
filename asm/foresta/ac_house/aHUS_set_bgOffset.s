lbl_805B02C8:
/* 805B02C8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805B02CC  7C 08 02 A6 */	mflr r0
/* 805B02D0  90 01 00 74 */	stw r0, 0x74(r1)
/* 805B02D4  39 61 00 70 */	addi r11, r1, 0x70
/* 805B02D8  4B AE AB E9 */	bl func_8009AEC0
/* 805B02DC  3C A0 80 6C */	lis r5, data_806C5240@ha /* 0x806C5240@ha */
/* 805B02E0  54 80 10 3A */	slwi r0, r4, 2
/* 805B02E4  3B A5 52 40 */	addi r29, r5, data_806C5240@l /* 0x806C5240@l */
/* 805B02E8  83 E1 00 48 */	lwz r31, 0x48(r1)
/* 805B02EC  38 9D 02 00 */	addi r4, r29, 0x200
/* 805B02F0  7C 79 1B 78 */	mr r25, r3
/* 805B02F4  7F 64 00 2E */	lwzx r27, r4, r0
/* 805B02F8  3B 9D 02 08 */	addi r28, r29, 0x208
/* 805B02FC  3B DD 02 14 */	addi r30, r29, 0x214
/* 805B0300  3B 40 00 00 */	li r26, 0
/* 805B0304  3B 00 00 00 */	li r24, 0
lbl_805B0308:
/* 805B0308  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 805B030C  38 61 00 38 */	addi r3, r1, 0x38
/* 805B0310  7C 1E C4 2E */	lfsx f0, r30, r24
/* 805B0314  38 81 00 18 */	addi r4, r1, 0x18
/* 805B0318  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B031C  38 BD 02 20 */	addi r5, r29, 0x220
/* 805B0320  80 1B 00 00 */	lwz r0, 0(r27)
/* 805B0324  EC 42 00 2A */	fadds f2, f2, f0
/* 805B0328  C0 1D 02 08 */	lfs f0, 0x208(r29)
/* 805B032C  38 C0 02 6C */	li r6, 0x26c
/* 805B0330  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B0334  EC 01 00 2A */	fadds f0, f1, f0
/* 805B0338  A0 FB 00 04 */	lhz r7, 4(r27)
/* 805B033C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805B0340  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B0344  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B0348  B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 805B034C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B0350  89 1B 00 06 */	lbz r8, 6(r27)
/* 805B0354  99 01 00 1E */	stb r8, 0x1e(r1)
/* 805B0358  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805B035C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B0360  90 01 00 40 */	stw r0, 0x40(r1)
/* 805B0364  4B DE 1A 15 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B0368  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B036C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B0370  80 1B 00 07 */	lwz r0, 7(r27)
/* 805B0374  38 81 00 10 */	addi r4, r1, 0x10
/* 805B0378  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B037C  38 BD 02 20 */	addi r5, r29, 0x220
/* 805B0380  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B0384  38 C0 02 70 */	li r6, 0x270
/* 805B0388  EC 01 00 2A */	fadds f0, f1, f0
/* 805B038C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B0390  A0 FB 00 0B */	lhz r7, 0xb(r27)
/* 805B0394  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B0398  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805B039C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B03A0  89 1B 00 0D */	lbz r8, 0xd(r27)
/* 805B03A4  99 01 00 16 */	stb r8, 0x16(r1)
/* 805B03A8  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805B03AC  93 E1 00 30 */	stw r31, 0x30(r1)
/* 805B03B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B03B4  4B DE 19 C5 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B03B8  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B03BC  38 61 00 20 */	addi r3, r1, 0x20
/* 805B03C0  80 1B 00 0E */	lwz r0, 0xe(r27)
/* 805B03C4  38 81 00 08 */	addi r4, r1, 8
/* 805B03C8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805B03CC  38 BD 02 20 */	addi r5, r29, 0x220
/* 805B03D0  90 01 00 08 */	stw r0, 8(r1)
/* 805B03D4  38 C0 02 74 */	li r6, 0x274
/* 805B03D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B03DC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B03E0  A0 FB 00 12 */	lhz r7, 0x12(r27)
/* 805B03E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B03E8  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805B03EC  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B03F0  89 1B 00 14 */	lbz r8, 0x14(r27)
/* 805B03F4  99 01 00 0E */	stb r8, 0xe(r1)
/* 805B03F8  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805B03FC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 805B0400  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B0404  4B DE 19 75 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B0408  3B 5A 00 01 */	addi r26, r26, 1
/* 805B040C  3B 18 00 04 */	addi r24, r24, 4
/* 805B0410  2C 1A 00 03 */	cmpwi r26, 3
/* 805B0414  3B 7B 00 15 */	addi r27, r27, 0x15
/* 805B0418  41 80 FE F0 */	blt lbl_805B0308
/* 805B041C  39 61 00 70 */	addi r11, r1, 0x70
/* 805B0420  4B AE AA ED */	bl func_8009AF0C
/* 805B0424  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805B0428  7C 08 03 A6 */	mtlr r0
/* 805B042C  38 21 00 70 */	addi r1, r1, 0x70
/* 805B0430  4E 80 00 20 */	blr 
