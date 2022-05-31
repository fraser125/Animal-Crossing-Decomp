lbl_804B38F8:
/* 804B38F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804B38FC  7C 08 02 A6 */	mflr r0
/* 804B3900  90 01 00 64 */	stw r0, 0x64(r1)
/* 804B3904  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804B3908  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804B390C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804B3910  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804B3914  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804B3918  7C 7F 1B 78 */	mr r31, r3
/* 804B391C  3C 00 43 30 */	lis r0, 0x4330
/* 804B3920  A8 A3 00 50 */	lha r5, 0x50(r3)
/* 804B3924  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B3928  38 83 60 0C */	addi r4, r3, lit_770@l /* 0x8064600C@l */
/* 804B392C  A8 DF 00 8A */	lha r6, 0x8a(r31)
/* 804B3930  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 804B3934  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B3938  C8 24 00 00 */	lfd f1, 0(r4)
/* 804B393C  7C C0 07 35 */	extsh. r0, r6
/* 804B3940  90 61 00 24 */	stw r3, 0x24(r1)
/* 804B3944  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804B3948  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804B394C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B3950  EF E2 00 24 */	fdivs f31, f2, f0
/* 804B3954  40 81 00 48 */	ble lbl_804B399C
/* 804B3958  2C 06 00 01 */	cmpwi r6, 1
/* 804B395C  40 82 00 34 */	bne lbl_804B3990
/* 804B3960  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804B3964  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 804B3968  41 82 00 14 */	beq lbl_804B397C
/* 804B396C  38 9F 00 14 */	addi r4, r31, 0x14
/* 804B3970  38 60 04 3D */	li r3, 0x43d
/* 804B3974  48 17 A6 35 */	bl sAdo_OngenTrgStart
/* 804B3978  48 00 00 18 */	b lbl_804B3990
lbl_804B397C:
/* 804B397C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804B3980  41 82 00 10 */	beq lbl_804B3990
/* 804B3984  38 9F 00 14 */	addi r4, r31, 0x14
/* 804B3988  38 60 04 0C */	li r3, 0x40c
/* 804B398C  48 17 A6 1D */	bl sAdo_OngenTrgStart
lbl_804B3990:
/* 804B3990  A8 7F 00 8A */	lha r3, 0x8a(r31)
/* 804B3994  38 03 FF FF */	addi r0, r3, -1
/* 804B3998  B0 1F 00 8A */	sth r0, 0x8a(r31)
lbl_804B399C:
/* 804B399C  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B39A0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804B39A4  41 82 00 94 */	beq lbl_804B3A38
/* 804B39A8  3C 80 80 64 */	lis r4, lit_1855@ha /* 0x80646068@ha */
/* 804B39AC  3C 00 43 30 */	lis r0, 0x4330
/* 804B39B0  C0 44 60 68 */	lfs f2, lit_1855@l(r4)  /* 0x80646068@l */
/* 804B39B4  3C 60 80 64 */	lis r3, lit_1857@ha /* 0x80646070@ha */
/* 804B39B8  38 83 60 70 */	addi r4, r3, lit_1857@l /* 0x80646070@l */
/* 804B39BC  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 804B39C0  EC A2 07 F2 */	fmuls f5, f2, f31
/* 804B39C4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804B39C8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804B39CC  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B39D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B39D4  EC 00 01 72 */	fmuls f0, f0, f5
/* 804B39D8  EC 83 08 28 */	fsubs f4, f3, f1
/* 804B39DC  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 804B39E0  C8 23 60 0C */	lfd f1, lit_770@l(r3)  /* 0x8064600C@l */
/* 804B39E4  FC 00 00 1E */	fctiwz f0, f0
/* 804B39E8  FC 80 22 10 */	fabs f4, f4
/* 804B39EC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804B39F0  FC 00 20 18 */	frsp f0, f4
/* 804B39F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B39F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B39FC  EF C0 18 24 */	fdivs f30, f0, f3
/* 804B3A00  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804B3A04  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804B3A08  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B3A0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B3A10  EC 05 00 28 */	fsubs f0, f5, f0
/* 804B3A14  FC 00 00 1E */	fctiwz f0, f0
/* 804B3A18  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804B3A1C  80 61 00 34 */	lwz r3, 0x34(r1)
/* 804B3A20  4B F0 70 D1 */	bl sin_s
/* 804B3A24  3C 60 80 64 */	lis r3, lit_1856@ha /* 0x8064606C@ha */
/* 804B3A28  C0 03 60 6C */	lfs f0, lit_1856@l(r3)  /* 0x8064606C@l */
/* 804B3A2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B3A30  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804B3A34  D0 1F 00 38 */	stfs f0, 0x38(r31)
lbl_804B3A38:
/* 804B3A38  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B3A3C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804B3A40  41 82 00 3C */	beq lbl_804B3A7C
/* 804B3A44  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646014@ha */
/* 804B3A48  3C 80 80 64 */	lis r4, lit_1859@ha /* 0x80646078@ha */
/* 804B3A4C  C0 23 60 14 */	lfs f1, lit_845@l(r3)  /* 0x80646014@l */
/* 804B3A50  3C A0 80 64 */	lis r5, lit_1858@ha /* 0x80646074@ha */
/* 804B3A54  C0 44 60 78 */	lfs f2, lit_1859@l(r4)  /* 0x80646078@l */
/* 804B3A58  EC 01 F8 28 */	fsubs f0, f1, f31
/* 804B3A5C  C0 65 60 74 */	lfs f3, lit_1858@l(r5)  /* 0x80646074@l */
/* 804B3A60  EC 00 00 32 */	fmuls f0, f0, f0
/* 804B3A64  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B3A68  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B3A6C  EC 03 00 2A */	fadds f0, f3, f0
/* 804B3A70  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804B3A74  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804B3A78  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804B3A7C:
/* 804B3A7C  A8 7F 00 5C */	lha r3, 0x5c(r31)
/* 804B3A80  4B F0 70 71 */	bl sin_s
/* 804B3A84  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804B3A88  A8 7F 00 5C */	lha r3, 0x5c(r31)
/* 804B3A8C  EF E0 00 72 */	fmuls f31, f0, f1
/* 804B3A90  4B F0 70 0D */	bl cos_s
/* 804B3A94  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 804B3A98  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064602C@ha */
/* 804B3A9C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804B3AA0  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804B3AA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B3AA8  C0 43 60 2C */	lfs f2, lit_1004@l(r3)  /* 0x8064602C@l */
/* 804B3AAC  EC 83 00 72 */	fmuls f4, f3, f1
/* 804B3AB0  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804B3AB4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804B3AB8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 804B3ABC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804B3AC0  EC 01 00 2A */	fadds f0, f1, f0
/* 804B3AC4  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 804B3AC8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804B3ACC  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804B3AD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B3AD4  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 804B3AD8  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 804B3ADC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804B3AE0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804B3AE4  EC 22 08 2A */	fadds f1, f2, f1
/* 804B3AE8  EC 03 00 32 */	fmuls f0, f3, f0
/* 804B3AEC  EC 01 00 2A */	fadds f0, f1, f0
/* 804B3AF0  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804B3AF4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804B3AF8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804B3AFC  EC 04 00 32 */	fmuls f0, f4, f0
/* 804B3B00  EC 01 00 2A */	fadds f0, f1, f0
/* 804B3B04  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 804B3B08  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B3B0C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804B3B10  41 82 00 68 */	beq lbl_804B3B78
/* 804B3B14  A0 9F 00 78 */	lhz r4, 0x78(r31)
/* 804B3B18  3C 00 43 30 */	lis r0, 0x4330
/* 804B3B1C  3C 60 80 64 */	lis r3, lit_1524@ha /* 0x8064603C@ha */
/* 804B3B20  90 01 00 30 */	stw r0, 0x30(r1)
/* 804B3B24  C8 23 60 3C */	lfd f1, lit_1524@l(r3)  /* 0x8064603C@l */
/* 804B3B28  90 81 00 34 */	stw r4, 0x34(r1)
/* 804B3B2C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804B3B30  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B3B34  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B3B38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B3B3C  40 81 00 3C */	ble lbl_804B3B78
/* 804B3B40  A0 1F 00 76 */	lhz r0, 0x76(r31)
/* 804B3B44  28 00 00 FF */	cmplwi r0, 0xff
/* 804B3B48  41 81 00 20 */	bgt lbl_804B3B68
/* 804B3B4C  20 00 00 FF */	subfic r0, r0, 0xff
/* 804B3B50  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804B3B54  A0 7F 00 76 */	lhz r3, 0x76(r31)
/* 804B3B58  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 804B3B5C  7C 03 02 14 */	add r0, r3, r0
/* 804B3B60  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804B3B64  48 00 00 14 */	b lbl_804B3B78
lbl_804B3B68:
/* 804B3B68  38 00 00 00 */	li r0, 0
/* 804B3B6C  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804B3B70  90 1F 00 00 */	stw r0, 0(r31)
/* 804B3B74  90 1F 00 04 */	stw r0, 4(r31)
lbl_804B3B78:
/* 804B3B78  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804B3B7C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804B3B80  41 82 00 28 */	beq lbl_804B3BA8
/* 804B3B84  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 804B3B88  41 82 00 14 */	beq lbl_804B3B9C
/* 804B3B8C  A8 7F 00 48 */	lha r3, 0x48(r31)
/* 804B3B90  38 03 FE DD */	addi r0, r3, -291
/* 804B3B94  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 804B3B98  48 00 00 10 */	b lbl_804B3BA8
lbl_804B3B9C:
/* 804B3B9C  A8 7F 00 48 */	lha r3, 0x48(r31)
/* 804B3BA0  38 03 01 23 */	addi r0, r3, 0x123
/* 804B3BA4  B0 1F 00 48 */	sth r0, 0x48(r31)
lbl_804B3BA8:
/* 804B3BA8  A8 9F 00 50 */	lha r4, 0x50(r31)
/* 804B3BAC  3C 00 43 30 */	lis r0, 0x4330
/* 804B3BB0  90 01 00 30 */	stw r0, 0x30(r1)
/* 804B3BB4  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B3BB8  38 04 FF FF */	addi r0, r4, -1
/* 804B3BBC  C8 23 60 0C */	lfd f1, lit_770@l(r3)  /* 0x8064600C@l */
/* 804B3BC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B3BC4  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804B3BC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B3BCC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B3BD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B3BD4  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 804B3BD8  40 82 00 8C */	bne lbl_804B3C64
/* 804B3BDC  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804B3BE0  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804B3BE4  41 82 00 80 */	beq lbl_804B3C64
/* 804B3BE8  54 60 04 E2 */	rlwinm r0, r3, 0, 0x13, 0x11
/* 804B3BEC  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804B3BF0  A0 9F 00 6C */	lhz r4, 0x6c(r31)
/* 804B3BF4  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 804B3BF8  40 82 00 6C */	bne lbl_804B3C64
/* 804B3BFC  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804B3C00  28 03 28 00 */	cmplwi r3, 0x2800
/* 804B3C04  41 82 00 1C */	beq lbl_804B3C20
/* 804B3C08  38 03 D7 FF */	addi r0, r3, -10241
/* 804B3C0C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804B3C10  28 00 00 03 */	cmplwi r0, 3
/* 804B3C14  40 81 00 0C */	ble lbl_804B3C20
/* 804B3C18  28 03 28 07 */	cmplwi r3, 0x2807
/* 804B3C1C  40 82 00 14 */	bne lbl_804B3C30
lbl_804B3C20:
/* 804B3C20  38 9F 00 14 */	addi r4, r31, 0x14
/* 804B3C24  38 60 01 27 */	li r3, 0x127
/* 804B3C28  48 17 A3 81 */	bl sAdo_OngenTrgStart
/* 804B3C2C  48 00 00 38 */	b lbl_804B3C64
lbl_804B3C30:
/* 804B3C30  28 03 21 00 */	cmplwi r3, 0x2100
/* 804B3C34  41 80 00 1C */	blt lbl_804B3C50
/* 804B3C38  28 03 21 04 */	cmplwi r3, 0x2104
/* 804B3C3C  41 81 00 14 */	bgt lbl_804B3C50
/* 804B3C40  38 9F 00 14 */	addi r4, r31, 0x14
/* 804B3C44  38 60 04 44 */	li r3, 0x444
/* 804B3C48  48 17 A3 61 */	bl sAdo_OngenTrgStart
/* 804B3C4C  48 00 00 18 */	b lbl_804B3C64
lbl_804B3C50:
/* 804B3C50  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804B3C54  40 82 00 10 */	bne lbl_804B3C64
/* 804B3C58  38 9F 00 14 */	addi r4, r31, 0x14
/* 804B3C5C  38 60 01 28 */	li r3, 0x128
/* 804B3C60  48 17 A3 49 */	bl sAdo_OngenTrgStart
lbl_804B3C64:
/* 804B3C64  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B3C68  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804B3C6C  41 82 00 38 */	beq lbl_804B3CA4
/* 804B3C70  A8 9F 00 50 */	lha r4, 0x50(r31)
/* 804B3C74  3C 00 43 30 */	lis r0, 0x4330
/* 804B3C78  90 01 00 30 */	stw r0, 0x30(r1)
/* 804B3C7C  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B3C80  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804B3C84  C8 23 60 0C */	lfd f1, lit_770@l(r3)  /* 0x8064600C@l */
/* 804B3C88  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B3C8C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804B3C90  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B3C94  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B3C98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B3C9C  4C 41 13 82 */	cror 2, 1, 2
/* 804B3CA0  41 82 00 2C */	beq lbl_804B3CCC
lbl_804B3CA4:
/* 804B3CA4  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B3CA8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804B3CAC  C0 03 5F EC */	lfs f0, data_80645FEC@l(r3)  /* 0x80645FEC@l */
/* 804B3CB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3CB4  40 80 01 9C */	bge lbl_804B3E50
/* 804B3CB8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804B3CBC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804B3CC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3CC4  4C 40 13 82 */	cror 2, 0, 2
/* 804B3CC8  40 82 01 88 */	bne lbl_804B3E50
lbl_804B3CCC:
/* 804B3CCC  38 7F 00 14 */	addi r3, r31, 0x14
/* 804B3CD0  38 9F 00 20 */	addi r4, r31, 0x20
/* 804B3CD4  4B F0 71 E9 */	bl xyz_t_move
/* 804B3CD8  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804B3CDC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804B3CE0  41 82 00 10 */	beq lbl_804B3CF0
/* 804B3CE4  7F E3 FB 78 */	mr r3, r31
/* 804B3CE8  4B FF FA BD */	bl bIT_actor_drop_move_bury_change
/* 804B3CEC  48 00 01 78 */	b lbl_804B3E64
lbl_804B3CF0:
/* 804B3CF0  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 804B3CF4  2C 00 00 00 */	cmpwi r0, 0
/* 804B3CF8  41 82 00 F0 */	beq lbl_804B3DE8
/* 804B3CFC  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 804B3D00  38 7F 00 14 */	addi r3, r31, 0x14
/* 804B3D04  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804B3D08  38 9F 00 20 */	addi r4, r31, 0x20
/* 804B3D0C  4B F0 71 B1 */	bl xyz_t_move
/* 804B3D10  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B3D14  3C 00 43 30 */	lis r0, 0x4330
/* 804B3D18  38 83 5F EC */	addi r4, r3, data_80645FEC@l /* 0x80645FEC@l */
/* 804B3D1C  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B3D20  C0 04 00 00 */	lfs f0, 0(r4)
/* 804B3D24  38 83 60 0C */	addi r4, r3, lit_770@l /* 0x8064600C@l */
/* 804B3D28  90 01 00 30 */	stw r0, 0x30(r1)
/* 804B3D2C  38 7F 00 94 */	addi r3, r31, 0x94
/* 804B3D30  C8 44 00 00 */	lfd f2, 0(r4)
/* 804B3D34  38 9F 00 14 */	addi r4, r31, 0x14
/* 804B3D38  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804B3D3C  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 804B3D40  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804B3D44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B3D48  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B3D4C  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 804B3D50  EC 21 10 28 */	fsubs f1, f1, f2
/* 804B3D54  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B3D58  FC 00 00 1E */	fctiwz f0, f0
/* 804B3D5C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804B3D60  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804B3D64  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 804B3D68  4B F0 71 55 */	bl xyz_t_move
/* 804B3D6C  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 804B3D70  3C 00 43 30 */	lis r0, 0x4330
/* 804B3D74  3C A0 80 64 */	lis r5, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B3D78  3C 80 80 64 */	lis r4, lit_770@ha /* 0x8064600C@ha */
/* 804B3D7C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804B3D80  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B3D84  38 C5 5F EC */	addi r6, r5, data_80645FEC@l /* 0x80645FEC@l */
/* 804B3D88  38 A4 60 0C */	addi r5, r4, lit_770@l /* 0x8064600C@l */
/* 804B3D8C  90 61 00 24 */	stw r3, 0x24(r1)
/* 804B3D90  38 61 00 0C */	addi r3, r1, 0xc
/* 804B3D94  C0 26 00 00 */	lfs f1, 0(r6)
/* 804B3D98  38 81 00 08 */	addi r4, r1, 8
/* 804B3D9C  C8 65 00 00 */	lfd f3, 0(r5)
/* 804B3DA0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804B3DA4  FC 40 08 90 */	fmr f2, f1
/* 804B3DA8  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 804B3DAC  EC 60 18 28 */	fsubs f3, f0, f3
/* 804B3DB0  4B FF DB 71 */	bl func_calc_spec_drop_time
/* 804B3DB4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804B3DB8  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646014@ha */
/* 804B3DBC  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804B3DC0  C0 03 60 14 */	lfs f0, lit_845@l(r3)  /* 0x80646014@l */
/* 804B3DC4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804B3DC8  D0 3F 00 A0 */	stfs f1, 0xa0(r31)
/* 804B3DCC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804B3DD0  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 804B3DD4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 804B3DD8  A8 7F 00 6E */	lha r3, 0x6e(r31)
/* 804B3DDC  38 03 FF FF */	addi r0, r3, -1
/* 804B3DE0  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804B3DE4  48 00 00 80 */	b lbl_804B3E64
lbl_804B3DE8:
/* 804B3DE8  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804B3DEC  28 00 00 62 */	cmplwi r0, 0x62
/* 804B3DF0  40 82 00 1C */	bne lbl_804B3E0C
/* 804B3DF4  38 00 00 01 */	li r0, 1
/* 804B3DF8  3C 60 80 4B */	lis r3, bIT_actor_drop_wait_bee@ha /* 0x804B3824@ha */
/* 804B3DFC  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 804B3E00  38 03 38 24 */	addi r0, r3, bIT_actor_drop_wait_bee@l /* 0x804B3824@l */
/* 804B3E04  90 1F 00 00 */	stw r0, 0(r31)
/* 804B3E08  48 00 00 5C */	b lbl_804B3E64
lbl_804B3E0C:
/* 804B3E0C  38 00 00 00 */	li r0, 0
/* 804B3E10  90 1F 00 00 */	stw r0, 0(r31)
/* 804B3E14  90 1F 00 04 */	stw r0, 4(r31)
/* 804B3E18  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B3E1C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804B3E20  40 82 00 44 */	bne lbl_804B3E64
/* 804B3E24  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804B3E28  38 81 00 10 */	addi r4, r1, 0x10
/* 804B3E2C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804B3E30  38 A0 00 01 */	li r5, 1
/* 804B3E34  90 61 00 10 */	stw r3, 0x10(r1)
/* 804B3E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B3E3C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804B3E40  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B3E44  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804B3E48  4B EF 39 E9 */	bl mFI_SetFG_common
/* 804B3E4C  48 00 00 18 */	b lbl_804B3E64
lbl_804B3E50:
/* 804B3E50  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064602C@ha */
/* 804B3E54  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804B3E58  C0 03 60 2C */	lfs f0, lit_1004@l(r3)  /* 0x8064602C@l */
/* 804B3E5C  EC 01 00 2A */	fadds f0, f1, f0
/* 804B3E60  D0 1F 00 4C */	stfs f0, 0x4c(r31)
lbl_804B3E64:
/* 804B3E64  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804B3E68  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804B3E6C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804B3E70  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804B3E74  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B3E78  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804B3E7C  7C 08 03 A6 */	mtlr r0
/* 804B3E80  38 21 00 60 */	addi r1, r1, 0x60
/* 804B3E84  4E 80 00 20 */	blr 
