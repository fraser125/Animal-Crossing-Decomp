lbl_80621D00:
/* 80621D00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80621D04  7C 08 02 A6 */	mflr r0
/* 80621D08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80621D0C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80621D10  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80621D14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80621D18  A8 85 00 00 */	lha r4, 0(r5)
/* 80621D1C  7C 7F 1B 78 */	mr r31, r3
/* 80621D20  38 60 00 50 */	li r3, 0x50
/* 80621D24  38 00 0E 38 */	li r0, 0xe38
/* 80621D28  B0 7F 00 00 */	sth r3, 0(r31)
/* 80621D2C  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80621D30  B0 9F 00 4E */	sth r4, 0x4e(r31)
/* 80621D34  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80621D38  4B D9 8D B9 */	bl sin_s
/* 80621D3C  3C 80 80 65 */	lis r4, data_8064CDE4@ha /* 0x8064CDE4@ha */
/* 80621D40  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 80621D44  C0 04 CD E4 */	lfs f0, data_8064CDE4@l(r4)  /* 0x8064CDE4@l */
/* 80621D48  EF E0 00 72 */	fmuls f31, f0, f1
/* 80621D4C  4B D9 8D A5 */	bl sin_s
/* 80621D50  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80621D54  D0 01 00 08 */	stfs f0, 8(r1)
/* 80621D58  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 80621D5C  4B D9 8D 41 */	bl cos_s
/* 80621D60  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80621D64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80621D68  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80621D6C  4B D9 8D 31 */	bl cos_s
/* 80621D70  3C 60 80 65 */	lis r3, data_8064CDE4@ha /* 0x8064CDE4@ha */
/* 80621D74  38 80 00 00 */	li r4, 0
/* 80621D78  C0 03 CD E4 */	lfs f0, data_8064CDE4@l(r3)  /* 0x8064CDE4@l */
/* 80621D7C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80621D80  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80621D84  A8 7F 00 06 */	lha r3, 6(r31)
/* 80621D88  4B DE A8 D5 */	bl Matrix_RotateY
/* 80621D8C  A8 7F 00 08 */	lha r3, 8(r31)
/* 80621D90  38 80 00 01 */	li r4, 1
/* 80621D94  4B DE A7 25 */	bl Matrix_RotateX
/* 80621D98  38 61 00 08 */	addi r3, r1, 8
/* 80621D9C  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80621DA0  4B DE B6 65 */	bl Matrix_Position
/* 80621DA4  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 80621DA8  3C 60 80 65 */	lis r3, lit_383@ha /* 0x8064CDE8@ha */
/* 80621DAC  38 A4 F0 50 */	addi r5, r4, data_8065F050@l /* 0x8065F050@l */
/* 80621DB0  C0 03 CD E8 */	lfs f0, lit_383@l(r3)  /* 0x8064CDE8@l */
/* 80621DB4  80 85 00 00 */	lwz r4, 0(r5)
/* 80621DB8  80 05 00 04 */	lwz r0, 4(r5)
/* 80621DBC  90 9F 00 28 */	stw r4, 0x28(r31)
/* 80621DC0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80621DC4  80 05 00 08 */	lwz r0, 8(r5)
/* 80621DC8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80621DCC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80621DD0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80621DD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80621DD8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80621DDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80621DE0  7C 08 03 A6 */	mtlr r0
/* 80621DE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80621DE8  4E 80 00 20 */	blr 
