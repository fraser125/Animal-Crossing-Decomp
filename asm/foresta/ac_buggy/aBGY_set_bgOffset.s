lbl_805A9EEC:
/* 805A9EEC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805A9EF0  7C 08 02 A6 */	mflr r0
/* 805A9EF4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805A9EF8  39 61 00 70 */	addi r11, r1, 0x70
/* 805A9EFC  4B AF 0F C5 */	bl func_8009AEC0
/* 805A9F00  3C A0 80 6C */	lis r5, data_806C4630@ha /* 0x806C4630@ha */
/* 805A9F04  54 80 10 3A */	slwi r0, r4, 2
/* 805A9F08  3B A5 46 30 */	addi r29, r5, data_806C4630@l /* 0x806C4630@l */
/* 805A9F0C  83 E1 00 48 */	lwz r31, 0x48(r1)
/* 805A9F10  38 9D 00 A4 */	addi r4, r29, 0xa4
/* 805A9F14  7C 79 1B 78 */	mr r25, r3
/* 805A9F18  7F 64 00 2E */	lwzx r27, r4, r0
/* 805A9F1C  3B 9D 00 AC */	addi r28, r29, 0xac
/* 805A9F20  3B DD 00 B8 */	addi r30, r29, 0xb8
/* 805A9F24  3B 40 00 00 */	li r26, 0
/* 805A9F28  3B 00 00 00 */	li r24, 0
lbl_805A9F2C:
/* 805A9F2C  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 805A9F30  38 61 00 38 */	addi r3, r1, 0x38
/* 805A9F34  7C 1E C4 2E */	lfsx f0, r30, r24
/* 805A9F38  38 81 00 18 */	addi r4, r1, 0x18
/* 805A9F3C  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805A9F40  38 BD 00 C4 */	addi r5, r29, 0xc4
/* 805A9F44  80 1B 00 00 */	lwz r0, 0(r27)
/* 805A9F48  EC 42 00 2A */	fadds f2, f2, f0
/* 805A9F4C  C0 1D 00 AC */	lfs f0, 0xac(r29)
/* 805A9F50  38 C0 00 E1 */	li r6, 0xe1
/* 805A9F54  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A9F58  EC 01 00 2A */	fadds f0, f1, f0
/* 805A9F5C  A0 FB 00 04 */	lhz r7, 4(r27)
/* 805A9F60  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805A9F64  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805A9F68  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805A9F6C  B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 805A9F70  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805A9F74  89 1B 00 06 */	lbz r8, 6(r27)
/* 805A9F78  99 01 00 1E */	stb r8, 0x1e(r1)
/* 805A9F7C  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805A9F80  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805A9F84  90 01 00 40 */	stw r0, 0x40(r1)
/* 805A9F88  4B DE 7D F1 */	bl mCoBG_SetPluss5PointOffset_file
/* 805A9F8C  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805A9F90  38 61 00 2C */	addi r3, r1, 0x2c
/* 805A9F94  80 1B 00 07 */	lwz r0, 7(r27)
/* 805A9F98  38 81 00 10 */	addi r4, r1, 0x10
/* 805A9F9C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805A9FA0  38 BD 00 C4 */	addi r5, r29, 0xc4
/* 805A9FA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A9FA8  38 C0 00 E5 */	li r6, 0xe5
/* 805A9FAC  EC 01 00 2A */	fadds f0, f1, f0
/* 805A9FB0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805A9FB4  A0 FB 00 0B */	lhz r7, 0xb(r27)
/* 805A9FB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805A9FBC  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805A9FC0  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805A9FC4  89 1B 00 0D */	lbz r8, 0xd(r27)
/* 805A9FC8  99 01 00 16 */	stb r8, 0x16(r1)
/* 805A9FCC  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805A9FD0  93 E1 00 30 */	stw r31, 0x30(r1)
/* 805A9FD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A9FD8  4B DE 7D A1 */	bl mCoBG_SetPluss5PointOffset_file
/* 805A9FDC  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805A9FE0  38 61 00 20 */	addi r3, r1, 0x20
/* 805A9FE4  80 1B 00 0E */	lwz r0, 0xe(r27)
/* 805A9FE8  38 81 00 08 */	addi r4, r1, 8
/* 805A9FEC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805A9FF0  38 BD 00 C4 */	addi r5, r29, 0xc4
/* 805A9FF4  90 01 00 08 */	stw r0, 8(r1)
/* 805A9FF8  38 C0 00 E9 */	li r6, 0xe9
/* 805A9FFC  EC 01 00 2A */	fadds f0, f1, f0
/* 805AA000  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805AA004  A0 FB 00 12 */	lhz r7, 0x12(r27)
/* 805AA008  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805AA00C  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805AA010  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805AA014  89 1B 00 14 */	lbz r8, 0x14(r27)
/* 805AA018  99 01 00 0E */	stb r8, 0xe(r1)
/* 805AA01C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805AA020  93 E1 00 24 */	stw r31, 0x24(r1)
/* 805AA024  90 01 00 28 */	stw r0, 0x28(r1)
/* 805AA028  4B DE 7D 51 */	bl mCoBG_SetPluss5PointOffset_file
/* 805AA02C  3B 5A 00 01 */	addi r26, r26, 1
/* 805AA030  3B 18 00 04 */	addi r24, r24, 4
/* 805AA034  2C 1A 00 03 */	cmpwi r26, 3
/* 805AA038  3B 7B 00 15 */	addi r27, r27, 0x15
/* 805AA03C  41 80 FE F0 */	blt lbl_805A9F2C
/* 805AA040  39 61 00 70 */	addi r11, r1, 0x70
/* 805AA044  4B AF 0E C9 */	bl func_8009AF0C
/* 805AA048  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805AA04C  7C 08 03 A6 */	mtlr r0
/* 805AA050  38 21 00 70 */	addi r1, r1, 0x70
/* 805AA054  4E 80 00 20 */	blr 
