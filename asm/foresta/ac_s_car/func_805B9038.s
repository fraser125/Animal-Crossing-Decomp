lbl_805B9038:
/* 805B9038  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805B903C  7C 08 02 A6 */	mflr r0
/* 805B9040  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B9044  39 61 00 50 */	addi r11, r1, 0x50
/* 805B9048  4B AE 1E 71 */	bl func_8009AEB8
/* 805B904C  3C A0 80 6C */	lis r5, data_806C6508@ha /* 0x806C6508@ha */
/* 805B9050  54 80 10 3A */	slwi r0, r4, 2
/* 805B9054  3B 05 65 08 */	addi r24, r5, data_806C6508@l /* 0x806C6508@l */
/* 805B9058  7C 7E 1B 78 */	mr r30, r3
/* 805B905C  38 78 00 90 */	addi r3, r24, 0x90
/* 805B9060  3B E0 00 00 */	li r31, 0
/* 805B9064  7E E3 00 2E */	lwzx r23, r3, r0
/* 805B9068  3B 58 00 98 */	addi r26, r24, 0x98
/* 805B906C  3B 38 00 A4 */	addi r25, r24, 0xa4
/* 805B9070  3B A0 00 00 */	li r29, 0
/* 805B9074  3B 80 00 00 */	li r28, 0
lbl_805B9078:
/* 805B9078  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805B907C  3A C0 00 00 */	li r22, 0
/* 805B9080  7C 19 E4 2E */	lfsx f0, r25, r28
/* 805B9084  3B 60 00 00 */	li r27, 0
/* 805B9088  EC 01 00 2A */	fadds f0, f1, f0
/* 805B908C  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_805B9090:
/* 805B9090  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805B9094  7C 16 EA 14 */	add r0, r22, r29
/* 805B9098  7C 1A DC 2E */	lfsx f0, r26, r27
/* 805B909C  2C 00 00 02 */	cmpwi r0, 2
/* 805B90A0  EC 01 00 2A */	fadds f0, f1, f0
/* 805B90A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B90A8  41 82 00 50 */	beq lbl_805B90F8
/* 805B90AC  2C 00 00 06 */	cmpwi r0, 6
/* 805B90B0  41 82 00 48 */	beq lbl_805B90F8
/* 805B90B4  80 17 00 00 */	lwz r0, 0(r23)
/* 805B90B8  38 61 00 10 */	addi r3, r1, 0x10
/* 805B90BC  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 805B90C0  38 81 00 08 */	addi r4, r1, 8
/* 805B90C4  90 01 00 08 */	stw r0, 8(r1)
/* 805B90C8  38 B8 00 B0 */	addi r5, r24, 0xb0
/* 805B90CC  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 805B90D0  38 C0 00 4A */	li r6, 0x4a
/* 805B90D4  A1 37 00 04 */	lhz r9, 4(r23)
/* 805B90D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B90DC  B1 21 00 0C */	sth r9, 0xc(r1)
/* 805B90E0  89 37 00 06 */	lbz r9, 6(r23)
/* 805B90E4  99 21 00 0E */	stb r9, 0xe(r1)
/* 805B90E8  91 01 00 10 */	stw r8, 0x10(r1)
/* 805B90EC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 805B90F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B90F4  4B DD 8C 85 */	bl mCoBG_SetPluss5PointOffset_file
lbl_805B90F8:
/* 805B90F8  3A D6 00 01 */	addi r22, r22, 1
/* 805B90FC  3B 7B 00 04 */	addi r27, r27, 4
/* 805B9100  2C 16 00 03 */	cmpwi r22, 3
/* 805B9104  3A F7 00 07 */	addi r23, r23, 7
/* 805B9108  41 80 FF 88 */	blt lbl_805B9090
/* 805B910C  3B FF 00 01 */	addi r31, r31, 1
/* 805B9110  3B 9C 00 04 */	addi r28, r28, 4
/* 805B9114  2C 1F 00 03 */	cmpwi r31, 3
/* 805B9118  3B BD 00 03 */	addi r29, r29, 3
/* 805B911C  41 80 FF 5C */	blt lbl_805B9078
/* 805B9120  39 61 00 50 */	addi r11, r1, 0x50
/* 805B9124  4B AE 1D E1 */	bl func_8009AF04
/* 805B9128  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B912C  7C 08 03 A6 */	mtlr r0
/* 805B9130  38 21 00 50 */	addi r1, r1, 0x50
/* 805B9134  4E 80 00 20 */	blr 
