lbl_804A0040:
/* 804A0040  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804A0044  7C 08 02 A6 */	mflr r0
/* 804A0048  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804A004C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804A0050  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804A0054  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 804A0058  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 804A005C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 804A0060  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 804A0064  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 804A0068  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 804A006C  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 804A0070  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 804A0074  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 804A0078  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 804A007C  39 61 00 60 */	addi r11, r1, 0x60
/* 804A0080  4B BF AE 31 */	bl func_8009AEB0
/* 804A0084  81 03 01 78 */	lwz r8, 0x178(r3)
/* 804A0088  83 83 01 7C */	lwz r28, 0x17c(r3)
/* 804A008C  28 08 00 00 */	cmplwi r8, 0
/* 804A0090  83 63 01 80 */	lwz r27, 0x180(r3)
/* 804A0094  41 82 01 A8 */	beq lbl_804A023C
/* 804A0098  3F A0 43 30 */	lis r29, 0x4330
/* 804A009C  6F 84 80 00 */	xoris r4, r28, 0x8000
/* 804A00A0  90 81 00 24 */	stw r4, 0x24(r1)
/* 804A00A4  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 804A00A8  3C A0 80 64 */	lis r5, lit_517@ha /* 0x80645BF4@ha */
/* 804A00AC  3C 80 80 64 */	lis r4, data_80645BE4@ha /* 0x80645BE4@ha */
/* 804A00B0  93 A1 00 20 */	stw r29, 0x20(r1)
/* 804A00B4  38 E4 5B E4 */	addi r7, r4, data_80645BE4@l /* 0x80645BE4@l */
/* 804A00B8  CB 85 5B F4 */	lfd f28, lit_517@l(r5)  /* 0x80645BF4@l */
/* 804A00BC  3C A0 80 64 */	lis r5, lit_514@ha /* 0x80645BEC@ha */
/* 804A00C0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804A00C4  3B C5 5B EC */	addi r30, r5, lit_514@l /* 0x80645BEC@l */
/* 804A00C8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A00CC  3C 80 80 64 */	lis r4, lit_515@ha /* 0x80645BF0@ha */
/* 804A00D0  EC 20 E0 28 */	fsubs f1, f0, f28
/* 804A00D4  3B E4 5B F0 */	addi r31, r4, lit_515@l /* 0x80645BF0@l */
/* 804A00D8  93 A1 00 28 */	stw r29, 0x28(r1)
/* 804A00DC  3C C0 80 64 */	lis r6, lit_513@ha /* 0x80645BE8@ha */
/* 804A00E0  C0 47 00 00 */	lfs f2, 0(r7)
/* 804A00E4  3C A0 81 1D */	lis r5, angle_y@ha /* 0x811CF5C0@ha */
/* 804A00E8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804A00EC  3C 80 80 69 */	lis r4, l_manekin_mBgData@ha /* 0x8068E62C@ha */
/* 804A00F0  EF 62 00 72 */	fmuls f27, f2, f1
/* 804A00F4  83 23 01 74 */	lwz r25, 0x174(r3)
/* 804A00F8  EC 00 E0 28 */	fsubs f0, f0, f28
/* 804A00FC  C3 A6 5B E8 */	lfs f29, lit_513@l(r6)  /* 0x80645BE8@l */
/* 804A0100  C3 DE 00 00 */	lfs f30, 0(r30)
/* 804A0104  7D 1A 43 78 */	mr r26, r8
/* 804A0108  EF 42 00 32 */	fmuls f26, f2, f0
/* 804A010C  C3 FF 00 00 */	lfs f31, 0(r31)
/* 804A0110  3A A5 F5 C0 */	addi r21, r5, angle_y@l /* 0x811CF5C0@l */
/* 804A0114  3A C4 E6 2C */	addi r22, r4, l_manekin_mBgData@l /* 0x8068E62C@l */
/* 804A0118  3B 00 00 00 */	li r24, 0
/* 804A011C  48 00 01 18 */	b lbl_804A0234
lbl_804A0120:
/* 804A0120  38 00 00 00 */	li r0, 0
/* 804A0124  3A 9A 00 0C */	addi r20, r26, 0xc
/* 804A0128  90 1A 00 50 */	stw r0, 0x50(r26)
/* 804A012C  3A FA 00 10 */	addi r23, r26, 0x10
/* 804A0130  7E 83 A3 78 */	mr r3, r20
/* 804A0134  7F 06 C3 78 */	mr r6, r24
/* 804A0138  90 1A 00 18 */	stw r0, 0x18(r26)
/* 804A013C  7E E4 BB 78 */	mr r4, r23
/* 804A0140  7F 87 E3 78 */	mr r7, r28
/* 804A0144  7F 68 DB 78 */	mr r8, r27
/* 804A0148  90 1A 00 1C */	stw r0, 0x1c(r26)
/* 804A014C  38 BA 00 14 */	addi r5, r26, 0x14
/* 804A0150  4B FF FE 29 */	bl aSM_SearchManekinPlace
/* 804A0154  A0 1A 00 14 */	lhz r0, 0x14(r26)
/* 804A0158  28 00 FE 0F */	cmplwi r0, 0xfe0f
/* 804A015C  40 82 00 14 */	bne lbl_804A0170
/* 804A0160  38 60 24 00 */	li r3, 0x2400
/* 804A0164  38 00 00 01 */	li r0, 1
/* 804A0168  B0 7A 00 14 */	sth r3, 0x14(r26)
/* 804A016C  90 1A 00 50 */	stw r0, 0x50(r26)
lbl_804A0170:
/* 804A0170  80 14 00 00 */	lwz r0, 0(r20)
/* 804A0174  38 61 00 10 */	addi r3, r1, 0x10
/* 804A0178  93 A1 00 28 */	stw r29, 0x28(r1)
/* 804A017C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A0180  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A0184  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A0188  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804A018C  93 A1 00 20 */	stw r29, 0x20(r1)
/* 804A0190  EC 00 E0 28 */	fsubs f0, f0, f28
/* 804A0194  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804A0198  EC 1B 00 2A */	fadds f0, f27, f0
/* 804A019C  EC 1D 00 2A */	fadds f0, f29, f0
/* 804A01A0  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804A01A4  D3 FA 00 04 */	stfs f31, 4(r26)
/* 804A01A8  80 17 00 00 */	lwz r0, 0(r23)
/* 804A01AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A01B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A01B4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804A01B8  EC 00 E0 28 */	fsubs f0, f0, f28
/* 804A01BC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804A01C0  EC 1A 00 2A */	fadds f0, f26, f0
/* 804A01C4  EC 1D 00 2A */	fadds f0, f29, f0
/* 804A01C8  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804A01CC  80 9A 00 00 */	lwz r4, 0(r26)
/* 804A01D0  80 1A 00 04 */	lwz r0, 4(r26)
/* 804A01D4  90 81 00 10 */	stw r4, 0x10(r1)
/* 804A01D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A01DC  80 1A 00 08 */	lwz r0, 8(r26)
/* 804A01E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A01E4  4B EE F7 B5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804A01E8  D0 3A 00 04 */	stfs f1, 4(r26)
/* 804A01EC  38 60 00 06 */	li r3, 6
/* 804A01F0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804A01F4  38 00 00 07 */	li r0, 7
/* 804A01F8  90 61 00 08 */	stw r3, 8(r1)
/* 804A01FC  7F 44 D3 78 */	mr r4, r26
/* 804A0200  FC 40 08 90 */	fmr f2, f1
/* 804A0204  7E A6 AB 78 */	mr r6, r21
/* 804A0208  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A020C  7E C7 B3 78 */	mr r7, r22
/* 804A0210  38 7A 00 20 */	addi r3, r26, 0x20
/* 804A0214  38 A0 00 00 */	li r5, 0
/* 804A0218  39 00 00 00 */	li r8, 0
/* 804A021C  39 20 00 00 */	li r9, 0
/* 804A0220  39 40 00 00 */	li r10, 0
/* 804A0224  4B EE CB 81 */	bl mCoBG_RegistMoveBg
/* 804A0228  90 7A 00 48 */	stw r3, 0x48(r26)
/* 804A022C  3B 5A 00 54 */	addi r26, r26, 0x54
/* 804A0230  3B 18 00 01 */	addi r24, r24, 1
lbl_804A0234:
/* 804A0234  7C 18 C8 00 */	cmpw r24, r25
/* 804A0238  41 80 FE E8 */	blt lbl_804A0120
lbl_804A023C:
/* 804A023C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804A0240  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804A0244  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 804A0248  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804A024C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 804A0250  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 804A0254  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 804A0258  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 804A025C  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 804A0260  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 804A0264  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 804A0268  39 61 00 60 */	addi r11, r1, 0x60
/* 804A026C  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 804A0270  4B BF AC 8D */	bl func_8009AEFC
/* 804A0274  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804A0278  7C 08 03 A6 */	mtlr r0
/* 804A027C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804A0280  4E 80 00 20 */	blr 
