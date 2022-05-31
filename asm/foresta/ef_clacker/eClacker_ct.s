lbl_80607CD4:
/* 80607CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80607CD8  7C 08 02 A6 */	mflr r0
/* 80607CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80607CE0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80607CE4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80607CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80607CEC  A8 85 00 00 */	lha r4, 0(r5)
/* 80607CF0  7C 7F 1B 78 */	mr r31, r3
/* 80607CF4  38 00 00 50 */	li r0, 0x50
/* 80607CF8  B0 83 00 4C */	sth r4, 0x4c(r3)
/* 80607CFC  B0 03 00 00 */	sth r0, 0(r3)
/* 80607D00  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 80607D04  4B DB 2D ED */	bl sin_s
/* 80607D08  FF E0 08 90 */	fmr f31, f1
/* 80607D0C  38 60 10 00 */	li r3, 0x1000
/* 80607D10  4B DB 2D E1 */	bl sin_s
/* 80607D14  3C 80 80 65 */	lis r4, data_8064BD34@ha /* 0x8064BD34@ha */
/* 80607D18  38 60 10 00 */	li r3, 0x1000
/* 80607D1C  C0 04 BD 34 */	lfs f0, data_8064BD34@l(r4)  /* 0x8064BD34@l */
/* 80607D20  EC 00 00 72 */	fmuls f0, f0, f1
/* 80607D24  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80607D28  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80607D2C  4B DB 2D 71 */	bl cos_s
/* 80607D30  3C 60 80 65 */	lis r3, data_8064BD34@ha /* 0x8064BD34@ha */
/* 80607D34  C0 03 BD 34 */	lfs f0, data_8064BD34@l(r3)  /* 0x8064BD34@l */
/* 80607D38  EC 00 00 72 */	fmuls f0, f0, f1
/* 80607D3C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80607D40  A8 7F 00 4C */	lha r3, 0x4c(r31)
/* 80607D44  4B DB 2D 59 */	bl cos_s
/* 80607D48  FF E0 08 90 */	fmr f31, f1
/* 80607D4C  38 60 10 00 */	li r3, 0x1000
/* 80607D50  4B DB 2D A1 */	bl sin_s
/* 80607D54  3C 60 80 65 */	lis r3, data_8064BD34@ha /* 0x8064BD34@ha */
/* 80607D58  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 80607D5C  38 A3 BD 34 */	addi r5, r3, data_8064BD34@l /* 0x8064BD34@l */
/* 80607D60  C0 45 00 00 */	lfs f2, 0(r5)
/* 80607D64  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064BD38@ha */
/* 80607D68  C0 03 BD 38 */	lfs f0, lit_422@l(r3)  /* 0x8064BD38@l */
/* 80607D6C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80607D70  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80607D74  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 80607D78  84 64 F0 50 */	lwzu r3, data_8065F050@l(r4)  /* 0x8065F050@l */
/* 80607D7C  80 04 00 04 */	lwz r0, 4(r4)
/* 80607D80  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80607D84  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80607D88  80 04 00 08 */	lwz r0, 8(r4)
/* 80607D8C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80607D90  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80607D94  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80607D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80607D9C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80607DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80607DA4  7C 08 03 A6 */	mtlr r0
/* 80607DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80607DAC  4E 80 00 20 */	blr 
