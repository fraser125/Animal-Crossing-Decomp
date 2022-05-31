lbl_804A0A34:
/* 804A0A34  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804A0A38  7C 08 02 A6 */	mflr r0
/* 804A0A3C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804A0A40  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 804A0A44  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 804A0A48  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 804A0A4C  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 804A0A50  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 804A0A54  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 804A0A58  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 804A0A5C  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 804A0A60  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 804A0A64  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 804A0A68  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 804A0A6C  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 804A0A70  DB 21 00 60 */	stfd f25, 0x60(r1)
/* 804A0A74  F3 21 00 68 */	psq_st f25, 104(r1), 0, 0 /* qr0 */
/* 804A0A78  39 61 00 60 */	addi r11, r1, 0x60
/* 804A0A7C  4B BF A4 35 */	bl func_8009AEB0
/* 804A0A80  81 23 01 78 */	lwz r9, 0x178(r3)
/* 804A0A84  83 83 01 7C */	lwz r28, 0x17c(r3)
/* 804A0A88  28 09 00 00 */	cmplwi r9, 0
/* 804A0A8C  83 63 01 80 */	lwz r27, 0x180(r3)
/* 804A0A90  41 82 01 C4 */	beq lbl_804A0C54
/* 804A0A94  3F A0 43 30 */	lis r29, 0x4330
/* 804A0A98  6F 84 80 00 */	xoris r4, r28, 0x8000
/* 804A0A9C  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 804A0AA0  90 81 00 24 */	stw r4, 0x24(r1)
/* 804A0AA4  3C A0 80 64 */	lis r5, lit_493@ha /* 0x80645C1C@ha */
/* 804A0AA8  3C 80 80 64 */	lis r4, data_80645C04@ha /* 0x80645C04@ha */
/* 804A0AAC  93 A1 00 20 */	stw r29, 0x20(r1)
/* 804A0AB0  39 04 5C 04 */	addi r8, r4, data_80645C04@l /* 0x80645C04@l */
/* 804A0AB4  CB E5 5C 1C */	lfd f31, lit_493@l(r5)  /* 0x80645C1C@l */
/* 804A0AB8  3C A0 80 64 */	lis r5, lit_490@ha /* 0x80645C10@ha */
/* 804A0ABC  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 804A0AC0  3B C5 5C 10 */	addi r30, r5, lit_490@l /* 0x80645C10@l */
/* 804A0AC4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A0AC8  3C 80 80 64 */	lis r4, lit_491@ha /* 0x80645C14@ha */
/* 804A0ACC  EC 21 F8 28 */	fsubs f1, f1, f31
/* 804A0AD0  C0 48 00 00 */	lfs f2, 0(r8)
/* 804A0AD4  3B E4 5C 14 */	addi r31, r4, lit_491@l /* 0x80645C14@l */
/* 804A0AD8  93 A1 00 28 */	stw r29, 0x28(r1)
/* 804A0ADC  3C E0 80 64 */	lis r7, lit_488@ha /* 0x80645C08@ha */
/* 804A0AE0  3C C0 80 64 */	lis r6, lit_489@ha /* 0x80645C0C@ha */
/* 804A0AE4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804A0AE8  3C A0 81 1D */	lis r5, angle_y@ha /* 0x811CF5C8@ha */
/* 804A0AEC  3C 80 80 69 */	lis r4, l_umbrella_mBgData@ha /* 0x8068E764@ha */
/* 804A0AF0  EF 42 00 72 */	fmuls f26, f2, f1
/* 804A0AF4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804A0AF8  83 23 01 74 */	lwz r25, 0x174(r3)
/* 804A0AFC  C3 67 5C 08 */	lfs f27, lit_488@l(r7)  /* 0x80645C08@l */
/* 804A0B00  7D 3A 4B 78 */	mr r26, r9
/* 804A0B04  C3 86 5C 0C */	lfs f28, lit_489@l(r6)  /* 0x80645C0C@l */
/* 804A0B08  EF 22 00 32 */	fmuls f25, f2, f0
/* 804A0B0C  C3 BE 00 00 */	lfs f29, 0(r30)
/* 804A0B10  3A 85 F5 C8 */	addi r20, r5, angle_y@l /* 0x811CF5C8@l */
/* 804A0B14  C3 DF 00 00 */	lfs f30, 0(r31)
/* 804A0B18  3A A4 E7 64 */	addi r21, r4, l_umbrella_mBgData@l /* 0x8068E764@l */
/* 804A0B1C  3B 00 00 00 */	li r24, 0
/* 804A0B20  48 00 01 2C */	b lbl_804A0C4C
lbl_804A0B24:
/* 804A0B24  38 00 00 00 */	li r0, 0
/* 804A0B28  3A FA 00 0C */	addi r23, r26, 0xc
/* 804A0B2C  B0 1A 00 50 */	sth r0, 0x50(r26)
/* 804A0B30  3A DA 00 10 */	addi r22, r26, 0x10
/* 804A0B34  7E E3 BB 78 */	mr r3, r23
/* 804A0B38  7F 06 C3 78 */	mr r6, r24
/* 804A0B3C  D3 7A 00 54 */	stfs f27, 0x54(r26)
/* 804A0B40  7E C4 B3 78 */	mr r4, r22
/* 804A0B44  7F 87 E3 78 */	mr r7, r28
/* 804A0B48  7F 68 DB 78 */	mr r8, r27
/* 804A0B4C  90 1A 00 1C */	stw r0, 0x1c(r26)
/* 804A0B50  38 BA 00 14 */	addi r5, r26, 0x14
/* 804A0B54  4B FF FE 21 */	bl aShopUmbrella_SearchUmbrellaPlace
/* 804A0B58  A0 9A 00 14 */	lhz r4, 0x14(r26)
/* 804A0B5C  38 00 00 00 */	li r0, 0
/* 804A0B60  28 04 22 04 */	cmplwi r4, 0x2204
/* 804A0B64  41 80 00 10 */	blt lbl_804A0B74
/* 804A0B68  28 04 22 2B */	cmplwi r4, 0x222b
/* 804A0B6C  41 81 00 08 */	bgt lbl_804A0B74
/* 804A0B70  38 00 00 01 */	li r0, 1
lbl_804A0B74:
/* 804A0B74  20 60 00 00 */	subfic r3, r0, 0
/* 804A0B78  38 04 DD FC */	addi r0, r4, -8708
/* 804A0B7C  7C 63 19 10 */	subfe r3, r3, r3
/* 804A0B80  93 A1 00 28 */	stw r29, 0x28(r1)
/* 804A0B84  7C 00 18 38 */	and r0, r0, r3
/* 804A0B88  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A0B8C  90 1A 00 18 */	stw r0, 0x18(r26)
/* 804A0B90  38 61 00 10 */	addi r3, r1, 0x10
/* 804A0B94  80 17 00 00 */	lwz r0, 0(r23)
/* 804A0B98  93 A1 00 20 */	stw r29, 0x20(r1)
/* 804A0B9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A0BA0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A0BA4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804A0BA8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804A0BAC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 804A0BB0  EC 1A 00 2A */	fadds f0, f26, f0
/* 804A0BB4  EC 1C 00 2A */	fadds f0, f28, f0
/* 804A0BB8  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804A0BBC  D3 DA 00 04 */	stfs f30, 4(r26)
/* 804A0BC0  80 16 00 00 */	lwz r0, 0(r22)
/* 804A0BC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A0BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A0BCC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804A0BD0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804A0BD4  EC 1D 00 32 */	fmuls f0, f29, f0
/* 804A0BD8  EC 19 00 2A */	fadds f0, f25, f0
/* 804A0BDC  EC 1C 00 2A */	fadds f0, f28, f0
/* 804A0BE0  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804A0BE4  80 9A 00 00 */	lwz r4, 0(r26)
/* 804A0BE8  80 1A 00 04 */	lwz r0, 4(r26)
/* 804A0BEC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804A0BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A0BF4  80 1A 00 08 */	lwz r0, 8(r26)
/* 804A0BF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A0BFC  4B EE ED 9D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804A0C00  D0 3A 00 04 */	stfs f1, 4(r26)
/* 804A0C04  38 60 00 06 */	li r3, 6
/* 804A0C08  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804A0C0C  38 00 00 07 */	li r0, 7
/* 804A0C10  90 61 00 08 */	stw r3, 8(r1)
/* 804A0C14  7F 44 D3 78 */	mr r4, r26
/* 804A0C18  FC 40 08 90 */	fmr f2, f1
/* 804A0C1C  7E 86 A3 78 */	mr r6, r20
/* 804A0C20  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A0C24  7E A7 AB 78 */	mr r7, r21
/* 804A0C28  38 7A 00 20 */	addi r3, r26, 0x20
/* 804A0C2C  38 A0 00 00 */	li r5, 0
/* 804A0C30  39 00 00 00 */	li r8, 0
/* 804A0C34  39 20 00 00 */	li r9, 0
/* 804A0C38  39 40 00 00 */	li r10, 0
/* 804A0C3C  4B EE C1 69 */	bl mCoBG_RegistMoveBg
/* 804A0C40  90 7A 00 48 */	stw r3, 0x48(r26)
/* 804A0C44  3B 5A 00 58 */	addi r26, r26, 0x58
/* 804A0C48  3B 18 00 01 */	addi r24, r24, 1
lbl_804A0C4C:
/* 804A0C4C  7C 18 C8 00 */	cmpw r24, r25
/* 804A0C50  41 80 FE D4 */	blt lbl_804A0B24
lbl_804A0C54:
/* 804A0C54  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 804A0C58  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 804A0C5C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 804A0C60  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 804A0C64  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 804A0C68  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 804A0C6C  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 804A0C70  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 804A0C74  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 804A0C78  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 804A0C7C  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 804A0C80  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 804A0C84  E3 21 00 68 */	psq_l f25, 104(r1), 0, 0 /* qr0 */
/* 804A0C88  39 61 00 60 */	addi r11, r1, 0x60
/* 804A0C8C  CB 21 00 60 */	lfd f25, 0x60(r1)
/* 804A0C90  4B BF A2 6D */	bl func_8009AEFC
/* 804A0C94  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804A0C98  7C 08 03 A6 */	mtlr r0
/* 804A0C9C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 804A0CA0  4E 80 00 20 */	blr 
