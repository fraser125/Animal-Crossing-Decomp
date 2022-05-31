lbl_805BEE40:
/* 805BEE40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805BEE44  7C 08 02 A6 */	mflr r0
/* 805BEE48  90 01 00 64 */	stw r0, 0x64(r1)
/* 805BEE4C  39 61 00 60 */	addi r11, r1, 0x60
/* 805BEE50  4B AD C0 71 */	bl func_8009AEC0
/* 805BEE54  3C A0 80 6C */	lis r5, data_806C7100@ha /* 0x806C7100@ha */
/* 805BEE58  54 80 10 3A */	slwi r0, r4, 2
/* 805BEE5C  3B C5 71 00 */	addi r30, r5, data_806C7100@l /* 0x806C7100@l */
/* 805BEE60  83 01 00 34 */	lwz r24, 0x34(r1)
/* 805BEE64  38 9E 00 7C */	addi r4, r30, 0x7c
/* 805BEE68  7C 7A 1B 78 */	mr r26, r3
/* 805BEE6C  7F 84 00 2E */	lwzx r28, r4, r0
/* 805BEE70  3B BE 00 84 */	addi r29, r30, 0x84
/* 805BEE74  3B FE 00 8C */	addi r31, r30, 0x8c
/* 805BEE78  3B 60 00 00 */	li r27, 0
/* 805BEE7C  3B 20 00 00 */	li r25, 0
lbl_805BEE80:
/* 805BEE80  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 805BEE84  38 61 00 24 */	addi r3, r1, 0x24
/* 805BEE88  7C 1F CC 2E */	lfsx f0, r31, r25
/* 805BEE8C  38 81 00 10 */	addi r4, r1, 0x10
/* 805BEE90  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 805BEE94  38 BE 00 94 */	addi r5, r30, 0x94
/* 805BEE98  80 1C 00 00 */	lwz r0, 0(r28)
/* 805BEE9C  EC 42 00 2A */	fadds f2, f2, f0
/* 805BEEA0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 805BEEA4  38 C0 00 B8 */	li r6, 0xb8
/* 805BEEA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BEEAC  EC 01 00 2A */	fadds f0, f1, f0
/* 805BEEB0  A0 FC 00 04 */	lhz r7, 4(r28)
/* 805BEEB4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 805BEEB8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805BEEBC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805BEEC0  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805BEEC4  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 805BEEC8  89 1C 00 06 */	lbz r8, 6(r28)
/* 805BEECC  99 01 00 16 */	stb r8, 0x16(r1)
/* 805BEED0  90 E1 00 24 */	stw r7, 0x24(r1)
/* 805BEED4  93 01 00 28 */	stw r24, 0x28(r1)
/* 805BEED8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805BEEDC  4B DD 2E 9D */	bl mCoBG_SetPluss5PointOffset_file
/* 805BEEE0  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 805BEEE4  38 61 00 18 */	addi r3, r1, 0x18
/* 805BEEE8  80 1C 00 07 */	lwz r0, 7(r28)
/* 805BEEEC  38 81 00 08 */	addi r4, r1, 8
/* 805BEEF0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805BEEF4  38 BE 00 94 */	addi r5, r30, 0x94
/* 805BEEF8  90 01 00 08 */	stw r0, 8(r1)
/* 805BEEFC  38 C0 00 BC */	li r6, 0xbc
/* 805BEF00  EC 01 00 2A */	fadds f0, f1, f0
/* 805BEF04  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805BEF08  A0 FC 00 0B */	lhz r7, 0xb(r28)
/* 805BEF0C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805BEF10  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805BEF14  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 805BEF18  89 1C 00 0D */	lbz r8, 0xd(r28)
/* 805BEF1C  99 01 00 0E */	stb r8, 0xe(r1)
/* 805BEF20  90 E1 00 18 */	stw r7, 0x18(r1)
/* 805BEF24  93 01 00 1C */	stw r24, 0x1c(r1)
/* 805BEF28  90 01 00 20 */	stw r0, 0x20(r1)
/* 805BEF2C  4B DD 2E 4D */	bl mCoBG_SetPluss5PointOffset_file
/* 805BEF30  3B 7B 00 01 */	addi r27, r27, 1
/* 805BEF34  3B 39 00 04 */	addi r25, r25, 4
/* 805BEF38  2C 1B 00 02 */	cmpwi r27, 2
/* 805BEF3C  3B 9C 00 0E */	addi r28, r28, 0xe
/* 805BEF40  41 80 FF 40 */	blt lbl_805BEE80
/* 805BEF44  39 61 00 60 */	addi r11, r1, 0x60
/* 805BEF48  4B AD BF C5 */	bl func_8009AF0C
/* 805BEF4C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805BEF50  7C 08 03 A6 */	mtlr r0
/* 805BEF54  38 21 00 60 */	addi r1, r1, 0x60
/* 805BEF58  4E 80 00 20 */	blr 
