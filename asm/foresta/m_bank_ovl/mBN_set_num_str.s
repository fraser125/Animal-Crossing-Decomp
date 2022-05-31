lbl_805C4008:
/* 805C4008  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805C400C  7C 08 02 A6 */	mflr r0
/* 805C4010  90 01 00 64 */	stw r0, 0x64(r1)
/* 805C4014  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805C4018  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805C401C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805C4020  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805C4024  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 805C4028  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 805C402C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C4030  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805C4034  FF A0 08 90 */	fmr f29, f1
/* 805C4038  7C 7E 1B 78 */	mr r30, r3
/* 805C403C  FF C0 10 90 */	fmr f30, f2
/* 805C4040  7C BF 2B 78 */	mr r31, r5
/* 805C4044  7C 85 23 78 */	mr r5, r4
/* 805C4048  FF E0 18 90 */	fmr f31, f3
/* 805C404C  38 61 00 10 */	addi r3, r1, 0x10
/* 805C4050  38 80 00 0B */	li r4, 0xb
/* 805C4054  38 C0 00 09 */	li r6, 9
/* 805C4058  38 E0 00 00 */	li r7, 0
/* 805C405C  39 00 00 00 */	li r8, 0
/* 805C4060  39 20 00 01 */	li r9, 1
/* 805C4064  4B DE B4 15 */	bl mFont_UnintToString
/* 805C4068  38 61 00 10 */	addi r3, r1, 0x10
/* 805C406C  38 80 00 0B */	li r4, 0xb
/* 805C4070  38 A0 00 01 */	li r5, 1
/* 805C4074  4B DE B6 5D */	bl mFont_GetStringWidth
/* 805C4078  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805C407C  3C 00 43 30 */	lis r0, 0x4330
/* 805C4080  90 61 00 24 */	stw r3, 0x24(r1)
/* 805C4084  3C 80 80 65 */	lis r4, lit_594@ha /* 0x8064AD7C@ha */
/* 805C4088  C8 24 AD 7C */	lfd f1, lit_594@l(r4)  /* 0x8064AD7C@l */
/* 805C408C  38 60 00 01 */	li r3, 1
/* 805C4090  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C4094  38 00 00 00 */	li r0, 0
/* 805C4098  FC 40 F0 90 */	fmr f2, f30
/* 805C409C  38 81 00 10 */	addi r4, r1, 0x10
/* 805C40A0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805C40A4  FC 60 F8 90 */	fmr f3, f31
/* 805C40A8  90 61 00 08 */	stw r3, 8(r1)
/* 805C40AC  FC 80 F8 90 */	fmr f4, f31
/* 805C40B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805C40B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C40B8  7F C3 F3 78 */	mr r3, r30
/* 805C40BC  38 A0 00 0B */	li r5, 0xb
/* 805C40C0  88 DF 00 00 */	lbz r6, 0(r31)
/* 805C40C4  39 20 00 FF */	li r9, 0xff
/* 805C40C8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805C40CC  88 FF 00 01 */	lbz r7, 1(r31)
/* 805C40D0  89 1F 00 02 */	lbz r8, 2(r31)
/* 805C40D4  39 40 00 00 */	li r10, 0
/* 805C40D8  EF BD 00 28 */	fsubs f29, f29, f0
/* 805C40DC  FC 20 E8 90 */	fmr f1, f29
/* 805C40E0  4B DE BF C9 */	bl mFont_SetLineStrings
/* 805C40E4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805C40E8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805C40EC  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805C40F0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805C40F4  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 805C40F8  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 805C40FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C4100  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C4104  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805C4108  7C 08 03 A6 */	mtlr r0
/* 805C410C  38 21 00 60 */	addi r1, r1, 0x60
/* 805C4110  4E 80 00 20 */	blr 
