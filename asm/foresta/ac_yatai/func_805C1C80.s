lbl_805C1C80:
/* 805C1C80  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805C1C84  7C 08 02 A6 */	mflr r0
/* 805C1C88  90 01 00 84 */	stw r0, 0x84(r1)
/* 805C1C8C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805C1C90  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805C1C94  39 61 00 70 */	addi r11, r1, 0x70
/* 805C1C98  4B AD 92 21 */	bl func_8009AEB8
/* 805C1C9C  3C C0 80 6C */	lis r6, data_806C75B8@ha /* 0x806C75B8@ha */
/* 805C1CA0  3C A0 80 65 */	lis r5, data_8064ACD4@ha /* 0x8064ACD4@ha */
/* 805C1CA4  3B C6 75 B8 */	addi r30, r6, data_806C75B8@l /* 0x806C75B8@l */
/* 805C1CA8  54 80 10 3A */	slwi r0, r4, 2
/* 805C1CAC  38 DE 00 D4 */	addi r6, r30, 0xd4
/* 805C1CB0  C3 E5 AC D4 */	lfs f31, data_8064ACD4@l(r5)  /* 0x8064ACD4@l */
/* 805C1CB4  7F A6 00 2E */	lwzx r29, r6, r0
/* 805C1CB8  7C 79 1B 78 */	mr r25, r3
/* 805C1CBC  54 9C 07 FE */	clrlwi r28, r4, 0x1f
/* 805C1CC0  3B FE 00 F0 */	addi r31, r30, 0xf0
/* 805C1CC4  3B 60 00 00 */	li r27, 0
/* 805C1CC8  3B 00 00 00 */	li r24, 0
/* 805C1CCC  3A E0 00 00 */	li r23, 0
lbl_805C1CD0:
/* 805C1CD0  C0 39 00 14 */	lfs f1, 0x14(r25)
/* 805C1CD4  3B 40 00 00 */	li r26, 0
/* 805C1CD8  7C 1F BC 2E */	lfsx f0, r31, r23
/* 805C1CDC  3A C0 00 00 */	li r22, 0
/* 805C1CE0  EC 01 00 2A */	fadds f0, f1, f0
/* 805C1CE4  EC 1F 00 2A */	fadds f0, f31, f0
/* 805C1CE8  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_805C1CEC:
/* 805C1CEC  2C 1C 00 00 */	cmpwi r28, 0
/* 805C1CF0  40 82 00 70 */	bne lbl_805C1D60
/* 805C1CF4  7C 1A C2 15 */	add. r0, r26, r24
/* 805C1CF8  41 82 00 D4 */	beq lbl_805C1DCC
/* 805C1CFC  2C 00 00 08 */	cmpwi r0, 8
/* 805C1D00  41 82 00 CC */	beq lbl_805C1DCC
/* 805C1D04  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 805C1D08  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805C1D0C  80 1D 00 00 */	lwz r0, 0(r29)
/* 805C1D10  38 61 00 24 */	addi r3, r1, 0x24
/* 805C1D14  7C 04 B4 2E */	lfsx f0, r4, r22
/* 805C1D18  38 81 00 10 */	addi r4, r1, 0x10
/* 805C1D1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C1D20  38 BE 00 FC */	addi r5, r30, 0xfc
/* 805C1D24  EC 01 00 2A */	fadds f0, f1, f0
/* 805C1D28  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 805C1D2C  A1 1D 00 04 */	lhz r8, 4(r29)
/* 805C1D30  38 C0 00 7B */	li r6, 0x7b
/* 805C1D34  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805C1D38  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C1D3C  B1 01 00 14 */	sth r8, 0x14(r1)
/* 805C1D40  81 01 00 30 */	lwz r8, 0x30(r1)
/* 805C1D44  89 3D 00 06 */	lbz r9, 6(r29)
/* 805C1D48  99 21 00 16 */	stb r9, 0x16(r1)
/* 805C1D4C  91 01 00 24 */	stw r8, 0x24(r1)
/* 805C1D50  90 E1 00 28 */	stw r7, 0x28(r1)
/* 805C1D54  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805C1D58  4B DD 00 21 */	bl mCoBG_SetPluss5PointOffset_file
/* 805C1D5C  48 00 00 70 */	b lbl_805C1DCC
lbl_805C1D60:
/* 805C1D60  7C 1A C2 14 */	add r0, r26, r24
/* 805C1D64  2C 00 00 02 */	cmpwi r0, 2
/* 805C1D68  41 82 00 64 */	beq lbl_805C1DCC
/* 805C1D6C  2C 00 00 06 */	cmpwi r0, 6
/* 805C1D70  41 82 00 5C */	beq lbl_805C1DCC
/* 805C1D74  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 805C1D78  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805C1D7C  80 1D 00 00 */	lwz r0, 0(r29)
/* 805C1D80  38 61 00 18 */	addi r3, r1, 0x18
/* 805C1D84  7C 04 B4 2E */	lfsx f0, r4, r22
/* 805C1D88  38 81 00 08 */	addi r4, r1, 8
/* 805C1D8C  90 01 00 08 */	stw r0, 8(r1)
/* 805C1D90  38 BE 00 FC */	addi r5, r30, 0xfc
/* 805C1D94  EC 01 00 2A */	fadds f0, f1, f0
/* 805C1D98  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 805C1D9C  A1 1D 00 04 */	lhz r8, 4(r29)
/* 805C1DA0  38 C0 00 81 */	li r6, 0x81
/* 805C1DA4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805C1DA8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C1DAC  B1 01 00 0C */	sth r8, 0xc(r1)
/* 805C1DB0  81 01 00 30 */	lwz r8, 0x30(r1)
/* 805C1DB4  89 3D 00 06 */	lbz r9, 6(r29)
/* 805C1DB8  99 21 00 0E */	stb r9, 0xe(r1)
/* 805C1DBC  91 01 00 18 */	stw r8, 0x18(r1)
/* 805C1DC0  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 805C1DC4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C1DC8  4B DC FF B1 */	bl mCoBG_SetPluss5PointOffset_file
lbl_805C1DCC:
/* 805C1DCC  3B 5A 00 01 */	addi r26, r26, 1
/* 805C1DD0  3A D6 00 04 */	addi r22, r22, 4
/* 805C1DD4  2C 1A 00 03 */	cmpwi r26, 3
/* 805C1DD8  3B BD 00 07 */	addi r29, r29, 7
/* 805C1DDC  41 80 FF 10 */	blt lbl_805C1CEC
/* 805C1DE0  3B 7B 00 01 */	addi r27, r27, 1
/* 805C1DE4  3A F7 00 04 */	addi r23, r23, 4
/* 805C1DE8  2C 1B 00 03 */	cmpwi r27, 3
/* 805C1DEC  3B 18 00 03 */	addi r24, r24, 3
/* 805C1DF0  41 80 FE E0 */	blt lbl_805C1CD0
/* 805C1DF4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805C1DF8  39 61 00 70 */	addi r11, r1, 0x70
/* 805C1DFC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805C1E00  4B AD 91 05 */	bl func_8009AF04
/* 805C1E04  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805C1E08  7C 08 03 A6 */	mtlr r0
/* 805C1E0C  38 21 00 80 */	addi r1, r1, 0x80
/* 805C1E10  4E 80 00 20 */	blr 
