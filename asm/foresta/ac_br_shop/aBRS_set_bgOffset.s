lbl_805A883C:
/* 805A883C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805A8840  7C 08 02 A6 */	mflr r0
/* 805A8844  90 01 00 74 */	stw r0, 0x74(r1)
/* 805A8848  39 61 00 70 */	addi r11, r1, 0x70
/* 805A884C  4B AF 26 75 */	bl func_8009AEC0
/* 805A8850  3C A0 80 6C */	lis r5, data_806C4460@ha /* 0x806C4460@ha */
/* 805A8854  54 80 10 3A */	slwi r0, r4, 2
/* 805A8858  3B A5 44 60 */	addi r29, r5, data_806C4460@l /* 0x806C4460@l */
/* 805A885C  83 E1 00 48 */	lwz r31, 0x48(r1)
/* 805A8860  38 9D 00 9C */	addi r4, r29, 0x9c
/* 805A8864  7C 79 1B 78 */	mr r25, r3
/* 805A8868  7F 64 00 2E */	lwzx r27, r4, r0
/* 805A886C  3B 9D 00 A4 */	addi r28, r29, 0xa4
/* 805A8870  3B DD 00 B0 */	addi r30, r29, 0xb0
/* 805A8874  3B 40 00 00 */	li r26, 0
/* 805A8878  3B 00 00 00 */	li r24, 0
lbl_805A887C:
/* 805A887C  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 805A8880  38 61 00 38 */	addi r3, r1, 0x38
/* 805A8884  7C 1E C4 2E */	lfsx f0, r30, r24
/* 805A8888  38 81 00 18 */	addi r4, r1, 0x18
/* 805A888C  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805A8890  38 BD 00 BC */	addi r5, r29, 0xbc
/* 805A8894  80 1B 00 00 */	lwz r0, 0(r27)
/* 805A8898  EC 42 00 2A */	fadds f2, f2, f0
/* 805A889C  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 805A88A0  38 C0 00 EE */	li r6, 0xee
/* 805A88A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A88A8  EC 01 00 2A */	fadds f0, f1, f0
/* 805A88AC  A0 FB 00 04 */	lhz r7, 4(r27)
/* 805A88B0  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805A88B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805A88B8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805A88BC  B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 805A88C0  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805A88C4  89 1B 00 06 */	lbz r8, 6(r27)
/* 805A88C8  99 01 00 1E */	stb r8, 0x1e(r1)
/* 805A88CC  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805A88D0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805A88D4  90 01 00 40 */	stw r0, 0x40(r1)
/* 805A88D8  4B DE 94 A1 */	bl mCoBG_SetPluss5PointOffset_file
/* 805A88DC  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805A88E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 805A88E4  80 1B 00 07 */	lwz r0, 7(r27)
/* 805A88E8  38 81 00 10 */	addi r4, r1, 0x10
/* 805A88EC  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805A88F0  38 BD 00 BC */	addi r5, r29, 0xbc
/* 805A88F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A88F8  38 C0 00 F2 */	li r6, 0xf2
/* 805A88FC  EC 01 00 2A */	fadds f0, f1, f0
/* 805A8900  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805A8904  A0 FB 00 0B */	lhz r7, 0xb(r27)
/* 805A8908  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805A890C  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805A8910  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805A8914  89 1B 00 0D */	lbz r8, 0xd(r27)
/* 805A8918  99 01 00 16 */	stb r8, 0x16(r1)
/* 805A891C  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805A8920  93 E1 00 30 */	stw r31, 0x30(r1)
/* 805A8924  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A8928  4B DE 94 51 */	bl mCoBG_SetPluss5PointOffset_file
/* 805A892C  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805A8930  38 61 00 20 */	addi r3, r1, 0x20
/* 805A8934  80 1B 00 0E */	lwz r0, 0xe(r27)
/* 805A8938  38 81 00 08 */	addi r4, r1, 8
/* 805A893C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805A8940  38 BD 00 BC */	addi r5, r29, 0xbc
/* 805A8944  90 01 00 08 */	stw r0, 8(r1)
/* 805A8948  38 C0 00 F6 */	li r6, 0xf6
/* 805A894C  EC 01 00 2A */	fadds f0, f1, f0
/* 805A8950  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805A8954  A0 FB 00 12 */	lhz r7, 0x12(r27)
/* 805A8958  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805A895C  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805A8960  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805A8964  89 1B 00 14 */	lbz r8, 0x14(r27)
/* 805A8968  99 01 00 0E */	stb r8, 0xe(r1)
/* 805A896C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805A8970  93 E1 00 24 */	stw r31, 0x24(r1)
/* 805A8974  90 01 00 28 */	stw r0, 0x28(r1)
/* 805A8978  4B DE 94 01 */	bl mCoBG_SetPluss5PointOffset_file
/* 805A897C  3B 5A 00 01 */	addi r26, r26, 1
/* 805A8980  3B 18 00 04 */	addi r24, r24, 4
/* 805A8984  2C 1A 00 03 */	cmpwi r26, 3
/* 805A8988  3B 7B 00 15 */	addi r27, r27, 0x15
/* 805A898C  41 80 FE F0 */	blt lbl_805A887C
/* 805A8990  39 61 00 70 */	addi r11, r1, 0x70
/* 805A8994  4B AF 25 79 */	bl func_8009AF0C
/* 805A8998  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805A899C  7C 08 03 A6 */	mtlr r0
/* 805A89A0  38 21 00 70 */	addi r1, r1, 0x70
/* 805A89A4  4E 80 00 20 */	blr 
