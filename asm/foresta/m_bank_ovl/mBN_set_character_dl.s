lbl_805C4114:
/* 805C4114  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805C4118  7C 08 02 A6 */	mflr r0
/* 805C411C  90 01 00 94 */	stw r0, 0x94(r1)
/* 805C4120  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805C4124  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805C4128  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805C412C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805C4130  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 805C4134  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 805C4138  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 805C413C  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 805C4140  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 805C4144  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 805C4148  39 61 00 40 */	addi r11, r1, 0x40
/* 805C414C  4B AD 6D 75 */	bl func_8009AEC0
/* 805C4150  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805C4154  7C 9C 23 78 */	mr r28, r4
/* 805C4158  3C 60 80 6C */	lis r3, data_806C7A90@ha /* 0x806C7A90@ha */
/* 805C415C  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 805C4160  81 86 09 50 */	lwz r12, 0x950(r6)
/* 805C4164  3B E3 7A 90 */	addi r31, r3, data_806C7A90@l /* 0x806C7A90@l */
/* 805C4168  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 805C416C  83 C6 09 D4 */	lwz r30, 0x9d4(r6)
/* 805C4170  80 64 00 00 */	lwz r3, 0(r4)
/* 805C4174  7D 89 03 A6 */	mtctr r12
/* 805C4178  4E 80 04 21 */	bctrl 
/* 805C417C  3C A0 80 65 */	lis r5, lit_623@ha /* 0x8064AD84@ha */
/* 805C4180  3C 80 80 65 */	lis r4, lit_624@ha /* 0x8064AD88@ha */
/* 805C4184  C0 25 AD 84 */	lfs f1, lit_623@l(r5)  /* 0x8064AD84@l */
/* 805C4188  3C 60 80 65 */	lis r3, lit_625@ha /* 0x8064AD8C@ha */
/* 805C418C  C0 04 AD 88 */	lfs f0, lit_624@l(r4)  /* 0x8064AD88@l */
/* 805C4190  38 C0 00 01 */	li r6, 1
/* 805C4194  C0 63 AD 8C */	lfs f3, lit_625@l(r3)  /* 0x8064AD8C@l */
/* 805C4198  38 00 00 00 */	li r0, 0
/* 805C419C  90 C1 00 08 */	stw r6, 8(r1)
/* 805C41A0  EC 21 F8 2A */	fadds f1, f1, f31
/* 805C41A4  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805C41A8  7F 83 E3 78 */	mr r3, r28
/* 805C41AC  FC 80 18 90 */	fmr f4, f3
/* 805C41B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C41B4  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805C41B8  38 A0 00 0C */	li r5, 0xc
/* 805C41BC  38 C0 00 FF */	li r6, 0xff
/* 805C41C0  38 E0 00 FF */	li r7, 0xff
/* 805C41C4  39 00 00 FF */	li r8, 0xff
/* 805C41C8  39 20 00 FF */	li r9, 0xff
/* 805C41CC  39 40 00 00 */	li r10, 0
/* 805C41D0  4B DE BE D9 */	bl mFont_SetLineStrings
/* 805C41D4  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064AD90@ha */
/* 805C41D8  3C 80 80 65 */	lis r4, lit_627@ha /* 0x8064AD94@ha */
/* 805C41DC  38 A3 AD 90 */	addi r5, r3, lit_626@l /* 0x8064AD90@l */
/* 805C41E0  C0 04 AD 94 */	lfs f0, lit_627@l(r4)  /* 0x8064AD94@l */
/* 805C41E4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C41E8  3C 60 80 65 */	lis r3, lit_625@ha /* 0x8064AD8C@ha */
/* 805C41EC  C0 63 AD 8C */	lfs f3, lit_625@l(r3)  /* 0x8064AD8C@l */
/* 805C41F0  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805C41F4  EF 81 F8 2A */	fadds f28, f1, f31
/* 805C41F8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 805C41FC  7F 83 E3 78 */	mr r3, r28
/* 805C4200  38 BF 00 44 */	addi r5, r31, 0x44
/* 805C4204  FC 20 E0 90 */	fmr f1, f28
/* 805C4208  4B FF FE 01 */	bl mBN_set_num_str
/* 805C420C  3C 80 80 65 */	lis r4, lit_628@ha /* 0x8064AD98@ha */
/* 805C4210  3C 60 80 65 */	lis r3, lit_625@ha /* 0x8064AD8C@ha */
/* 805C4214  C0 04 AD 98 */	lfs f0, lit_628@l(r4)  /* 0x8064AD98@l */
/* 805C4218  38 A3 AD 8C */	addi r5, r3, lit_625@l /* 0x8064AD8C@l */
/* 805C421C  C0 65 00 00 */	lfs f3, 0(r5)
/* 805C4220  FC 20 E0 90 */	fmr f1, f28
/* 805C4224  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805C4228  80 9E 00 08 */	lwz r4, 8(r30)
/* 805C422C  7F 83 E3 78 */	mr r3, r28
/* 805C4230  38 BF 00 48 */	addi r5, r31, 0x48
/* 805C4234  4B FF FD D5 */	bl mBN_set_num_str
/* 805C4238  83 BE 00 10 */	lwz r29, 0x10(r30)
/* 805C423C  2C 1D 00 03 */	cmpwi r29, 3
/* 805C4240  41 80 00 08 */	blt lbl_805C4248
/* 805C4244  3B BD 00 01 */	addi r29, r29, 1
lbl_805C4248:
/* 805C4248  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 805C424C  38 61 00 10 */	addi r3, r1, 0x10
/* 805C4250  38 80 00 07 */	li r4, 7
/* 805C4254  38 C0 00 06 */	li r6, 6
/* 805C4258  38 E0 00 00 */	li r7, 0
/* 805C425C  39 00 00 01 */	li r8, 1
/* 805C4260  39 20 00 01 */	li r9, 1
/* 805C4264  4B DE B2 15 */	bl mFont_UnintToString
/* 805C4268  38 61 00 10 */	addi r3, r1, 0x10
/* 805C426C  38 80 00 07 */	li r4, 7
/* 805C4270  38 A0 00 01 */	li r5, 1
/* 805C4274  4B DE B4 5D */	bl mFont_GetStringWidth
/* 805C4278  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805C427C  3F 40 43 30 */	lis r26, 0x4330
/* 805C4280  3C 60 80 65 */	lis r3, lit_594@ha /* 0x8064AD7C@ha */
/* 805C4284  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805C4288  38 A3 AD 7C */	addi r5, r3, lit_594@l /* 0x8064AD7C@l */
/* 805C428C  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064AD90@ha */
/* 805C4290  93 41 00 18 */	stw r26, 0x18(r1)
/* 805C4294  3C 60 80 65 */	lis r3, lit_629@ha /* 0x8064AD9C@ha */
/* 805C4298  CB A5 00 00 */	lfd f29, 0(r5)
/* 805C429C  3B 00 00 00 */	li r24, 0
/* 805C42A0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 805C42A4  C0 03 AD 9C */	lfs f0, lit_629@l(r3)  /* 0x8064AD9C@l */
/* 805C42A8  3C 60 80 65 */	lis r3, lit_585@ha /* 0x8064AD74@ha */
/* 805C42AC  EC 41 E8 28 */	fsubs f2, f1, f29
/* 805C42B0  C0 24 AD 90 */	lfs f1, lit_626@l(r4)  /* 0x8064AD90@l */
/* 805C42B4  EF 80 F0 28 */	fsubs f28, f0, f30
/* 805C42B8  3B 63 AD 74 */	addi r27, r3, lit_585@l /* 0x8064AD74@l */
/* 805C42BC  EC 1F 10 28 */	fsubs f0, f31, f2
/* 805C42C0  EF 61 00 2A */	fadds f27, f1, f0
lbl_805C42C4:
/* 805C42C4  7C 1D C0 00 */	cmpw r29, r24
/* 805C42C8  38 BF 00 3C */	addi r5, r31, 0x3c
/* 805C42CC  40 82 00 08 */	bne lbl_805C42D4
/* 805C42D0  38 BF 00 40 */	addi r5, r31, 0x40
lbl_805C42D4:
/* 805C42D4  38 00 00 01 */	li r0, 1
/* 805C42D8  C0 7B 00 00 */	lfs f3, 0(r27)
/* 805C42DC  90 01 00 08 */	stw r0, 8(r1)
/* 805C42E0  38 00 00 00 */	li r0, 0
/* 805C42E4  3B 21 00 10 */	addi r25, r1, 0x10
/* 805C42E8  FC 20 D8 90 */	fmr f1, f27
/* 805C42EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C42F0  7F 39 C2 14 */	add r25, r25, r24
/* 805C42F4  FC 40 E0 90 */	fmr f2, f28
/* 805C42F8  7F 83 E3 78 */	mr r3, r28
/* 805C42FC  FC 80 18 90 */	fmr f4, f3
/* 805C4300  88 C5 00 00 */	lbz r6, 0(r5)
/* 805C4304  7F 24 CB 78 */	mr r4, r25
/* 805C4308  88 E5 00 01 */	lbz r7, 1(r5)
/* 805C430C  89 05 00 02 */	lbz r8, 2(r5)
/* 805C4310  38 A0 00 01 */	li r5, 1
/* 805C4314  39 20 00 FF */	li r9, 0xff
/* 805C4318  39 40 00 00 */	li r10, 0
/* 805C431C  4B DE BD 8D */	bl mFont_SetLineStrings
/* 805C4320  7F 23 CB 78 */	mr r3, r25
/* 805C4324  38 80 00 01 */	li r4, 1
/* 805C4328  38 A0 00 01 */	li r5, 1
/* 805C432C  4B DE B3 A5 */	bl mFont_GetStringWidth
/* 805C4330  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805C4334  3B 18 00 01 */	addi r24, r24, 1
/* 805C4338  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805C433C  2C 18 00 07 */	cmpwi r24, 7
/* 805C4340  93 41 00 18 */	stw r26, 0x18(r1)
/* 805C4344  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805C4348  EC 00 E8 28 */	fsubs f0, f0, f29
/* 805C434C  EF 7B 00 2A */	fadds f27, f27, f0
/* 805C4350  41 80 FF 74 */	blt lbl_805C42C4
/* 805C4354  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805C4358  39 1F 00 40 */	addi r8, r31, 0x40
/* 805C435C  2C 00 00 06 */	cmpwi r0, 6
/* 805C4360  40 80 00 08 */	bge lbl_805C4368
/* 805C4364  39 1F 00 3C */	addi r8, r31, 0x3c
lbl_805C4368:
/* 805C4368  38 00 00 01 */	li r0, 1
/* 805C436C  3C A0 80 65 */	lis r5, lit_630@ha /* 0x8064ADA0@ha */
/* 805C4370  3C 80 80 65 */	lis r4, lit_584@ha /* 0x8064AD70@ha */
/* 805C4374  3C 60 80 65 */	lis r3, lit_625@ha /* 0x8064AD8C@ha */
/* 805C4378  38 C5 AD A0 */	addi r6, r5, lit_630@l /* 0x8064ADA0@l */
/* 805C437C  90 01 00 08 */	stw r0, 8(r1)
/* 805C4380  38 A4 AD 70 */	addi r5, r4, lit_584@l /* 0x8064AD70@l */
/* 805C4384  38 83 AD 8C */	addi r4, r3, lit_625@l /* 0x8064AD8C@l */
/* 805C4388  C0 26 00 00 */	lfs f1, 0(r6)
/* 805C438C  38 00 00 00 */	li r0, 0
/* 805C4390  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C4394  7F 83 E3 78 */	mr r3, r28
/* 805C4398  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C439C  EC 21 F8 2A */	fadds f1, f1, f31
/* 805C43A0  C0 64 00 00 */	lfs f3, 0(r4)
/* 805C43A4  38 9F 00 38 */	addi r4, r31, 0x38
/* 805C43A8  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805C43AC  88 C8 00 00 */	lbz r6, 0(r8)
/* 805C43B0  FC 80 18 90 */	fmr f4, f3
/* 805C43B4  88 E8 00 01 */	lbz r7, 1(r8)
/* 805C43B8  38 A0 00 02 */	li r5, 2
/* 805C43BC  89 08 00 02 */	lbz r8, 2(r8)
/* 805C43C0  39 20 00 FF */	li r9, 0xff
/* 805C43C4  39 40 00 00 */	li r10, 0
/* 805C43C8  4B DE BC E1 */	bl mFont_SetLineStrings
/* 805C43CC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805C43D0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805C43D4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805C43D8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805C43DC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 805C43E0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 805C43E4  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 805C43E8  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 805C43EC  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 805C43F0  39 61 00 40 */	addi r11, r1, 0x40
/* 805C43F4  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 805C43F8  4B AD 6B 15 */	bl func_8009AF0C
/* 805C43FC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805C4400  7C 08 03 A6 */	mtlr r0
/* 805C4404  38 21 00 90 */	addi r1, r1, 0x90
/* 805C4408  4E 80 00 20 */	blr 
