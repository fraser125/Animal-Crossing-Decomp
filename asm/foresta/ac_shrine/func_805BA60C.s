lbl_805BA60C:
/* 805BA60C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805BA610  7C 08 02 A6 */	mflr r0
/* 805BA614  90 01 00 64 */	stw r0, 0x64(r1)
/* 805BA618  39 61 00 60 */	addi r11, r1, 0x60
/* 805BA61C  4B AE 08 A5 */	bl func_8009AEC0
/* 805BA620  3C A0 80 6C */	lis r5, data_806C6738@ha /* 0x806C6738@ha */
/* 805BA624  54 80 10 3A */	slwi r0, r4, 2
/* 805BA628  3B C5 67 38 */	addi r30, r5, data_806C6738@l /* 0x806C6738@l */
/* 805BA62C  83 01 00 34 */	lwz r24, 0x34(r1)
/* 805BA630  38 9E 00 80 */	addi r4, r30, 0x80
/* 805BA634  7C 7A 1B 78 */	mr r26, r3
/* 805BA638  7F 84 00 2E */	lwzx r28, r4, r0
/* 805BA63C  3B BE 00 88 */	addi r29, r30, 0x88
/* 805BA640  3B FE 00 90 */	addi r31, r30, 0x90
/* 805BA644  3B 60 00 00 */	li r27, 0
/* 805BA648  3B 20 00 00 */	li r25, 0
lbl_805BA64C:
/* 805BA64C  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 805BA650  38 61 00 24 */	addi r3, r1, 0x24
/* 805BA654  7C 1F CC 2E */	lfsx f0, r31, r25
/* 805BA658  38 81 00 10 */	addi r4, r1, 0x10
/* 805BA65C  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 805BA660  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 805BA664  80 1C 00 00 */	lwz r0, 0(r28)
/* 805BA668  EC 42 00 2A */	fadds f2, f2, f0
/* 805BA66C  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 805BA670  38 C0 00 EE */	li r6, 0xee
/* 805BA674  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BA678  EC 01 00 2A */	fadds f0, f1, f0
/* 805BA67C  A0 FC 00 04 */	lhz r7, 4(r28)
/* 805BA680  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 805BA684  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805BA688  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805BA68C  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805BA690  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 805BA694  89 1C 00 06 */	lbz r8, 6(r28)
/* 805BA698  99 01 00 16 */	stb r8, 0x16(r1)
/* 805BA69C  90 E1 00 24 */	stw r7, 0x24(r1)
/* 805BA6A0  93 01 00 28 */	stw r24, 0x28(r1)
/* 805BA6A4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805BA6A8  4B DD 76 D1 */	bl mCoBG_SetPluss5PointOffset_file
/* 805BA6AC  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 805BA6B0  38 61 00 18 */	addi r3, r1, 0x18
/* 805BA6B4  80 1C 00 07 */	lwz r0, 7(r28)
/* 805BA6B8  38 81 00 08 */	addi r4, r1, 8
/* 805BA6BC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805BA6C0  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 805BA6C4  90 01 00 08 */	stw r0, 8(r1)
/* 805BA6C8  38 C0 00 F2 */	li r6, 0xf2
/* 805BA6CC  EC 01 00 2A */	fadds f0, f1, f0
/* 805BA6D0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805BA6D4  A0 FC 00 0B */	lhz r7, 0xb(r28)
/* 805BA6D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805BA6DC  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805BA6E0  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 805BA6E4  89 1C 00 0D */	lbz r8, 0xd(r28)
/* 805BA6E8  99 01 00 0E */	stb r8, 0xe(r1)
/* 805BA6EC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 805BA6F0  93 01 00 1C */	stw r24, 0x1c(r1)
/* 805BA6F4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805BA6F8  4B DD 76 81 */	bl mCoBG_SetPluss5PointOffset_file
/* 805BA6FC  3B 7B 00 01 */	addi r27, r27, 1
/* 805BA700  3B 39 00 04 */	addi r25, r25, 4
/* 805BA704  2C 1B 00 04 */	cmpwi r27, 4
/* 805BA708  3B 9C 00 0E */	addi r28, r28, 0xe
/* 805BA70C  41 80 FF 40 */	blt lbl_805BA64C
/* 805BA710  39 61 00 60 */	addi r11, r1, 0x60
/* 805BA714  4B AE 07 F9 */	bl func_8009AF0C
/* 805BA718  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BA71C  7C 08 03 A6 */	mtlr r0
/* 805BA720  38 21 00 60 */	addi r1, r1, 0x60
/* 805BA724  4E 80 00 20 */	blr 
