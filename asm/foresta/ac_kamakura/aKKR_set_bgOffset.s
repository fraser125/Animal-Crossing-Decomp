lbl_805B1EB8:
/* 805B1EB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805B1EBC  7C 08 02 A6 */	mflr r0
/* 805B1EC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 805B1EC4  39 61 00 70 */	addi r11, r1, 0x70
/* 805B1EC8  4B AE 8F F9 */	bl func_8009AEC0
/* 805B1ECC  3C A0 80 6C */	lis r5, data_806C56A8@ha /* 0x806C56A8@ha */
/* 805B1ED0  54 80 10 3A */	slwi r0, r4, 2
/* 805B1ED4  3B A5 56 A8 */	addi r29, r5, data_806C56A8@l /* 0x806C56A8@l */
/* 805B1ED8  83 E1 00 48 */	lwz r31, 0x48(r1)
/* 805B1EDC  38 9D 00 A0 */	addi r4, r29, 0xa0
/* 805B1EE0  7C 79 1B 78 */	mr r25, r3
/* 805B1EE4  7F 64 00 2E */	lwzx r27, r4, r0
/* 805B1EE8  3B 9D 00 A8 */	addi r28, r29, 0xa8
/* 805B1EEC  3B DD 00 B4 */	addi r30, r29, 0xb4
/* 805B1EF0  3B 40 00 00 */	li r26, 0
/* 805B1EF4  3B 00 00 00 */	li r24, 0
lbl_805B1EF8:
/* 805B1EF8  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 805B1EFC  38 61 00 38 */	addi r3, r1, 0x38
/* 805B1F00  7C 1E C4 2E */	lfsx f0, r30, r24
/* 805B1F04  38 81 00 18 */	addi r4, r1, 0x18
/* 805B1F08  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B1F0C  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 805B1F10  80 1B 00 00 */	lwz r0, 0(r27)
/* 805B1F14  EC 42 00 2A */	fadds f2, f2, f0
/* 805B1F18  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 805B1F1C  38 C0 00 CA */	li r6, 0xca
/* 805B1F20  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B1F24  EC 01 00 2A */	fadds f0, f1, f0
/* 805B1F28  A0 FB 00 04 */	lhz r7, 4(r27)
/* 805B1F2C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805B1F30  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B1F34  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B1F38  B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 805B1F3C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B1F40  89 1B 00 06 */	lbz r8, 6(r27)
/* 805B1F44  99 01 00 1E */	stb r8, 0x1e(r1)
/* 805B1F48  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805B1F4C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B1F50  90 01 00 40 */	stw r0, 0x40(r1)
/* 805B1F54  4B DD FE 25 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B1F58  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B1F5C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B1F60  80 1B 00 07 */	lwz r0, 7(r27)
/* 805B1F64  38 81 00 10 */	addi r4, r1, 0x10
/* 805B1F68  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B1F6C  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 805B1F70  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B1F74  38 C0 00 CE */	li r6, 0xce
/* 805B1F78  EC 01 00 2A */	fadds f0, f1, f0
/* 805B1F7C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B1F80  A0 FB 00 0B */	lhz r7, 0xb(r27)
/* 805B1F84  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B1F88  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805B1F8C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B1F90  89 1B 00 0D */	lbz r8, 0xd(r27)
/* 805B1F94  99 01 00 16 */	stb r8, 0x16(r1)
/* 805B1F98  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805B1F9C  93 E1 00 30 */	stw r31, 0x30(r1)
/* 805B1FA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B1FA4  4B DD FD D5 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B1FA8  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B1FAC  38 61 00 20 */	addi r3, r1, 0x20
/* 805B1FB0  80 1B 00 0E */	lwz r0, 0xe(r27)
/* 805B1FB4  38 81 00 08 */	addi r4, r1, 8
/* 805B1FB8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805B1FBC  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 805B1FC0  90 01 00 08 */	stw r0, 8(r1)
/* 805B1FC4  38 C0 00 D2 */	li r6, 0xd2
/* 805B1FC8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B1FCC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B1FD0  A0 FB 00 12 */	lhz r7, 0x12(r27)
/* 805B1FD4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B1FD8  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805B1FDC  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B1FE0  89 1B 00 14 */	lbz r8, 0x14(r27)
/* 805B1FE4  99 01 00 0E */	stb r8, 0xe(r1)
/* 805B1FE8  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805B1FEC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 805B1FF0  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B1FF4  4B DD FD 85 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B1FF8  3B 5A 00 01 */	addi r26, r26, 1
/* 805B1FFC  3B 18 00 04 */	addi r24, r24, 4
/* 805B2000  2C 1A 00 03 */	cmpwi r26, 3
/* 805B2004  3B 7B 00 15 */	addi r27, r27, 0x15
/* 805B2008  41 80 FE F0 */	blt lbl_805B1EF8
/* 805B200C  39 61 00 70 */	addi r11, r1, 0x70
/* 805B2010  4B AE 8E FD */	bl func_8009AF0C
/* 805B2014  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805B2018  7C 08 03 A6 */	mtlr r0
/* 805B201C  38 21 00 70 */	addi r1, r1, 0x70
/* 805B2020  4E 80 00 20 */	blr 
