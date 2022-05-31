lbl_8040A214:
/* 8040A214  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8040A218  7C 08 02 A6 */	mflr r0
/* 8040A21C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8040A220  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8040A224  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8040A228  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8040A22C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8040A230  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8040A234  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8040A238  39 61 00 40 */	addi r11, r1, 0x40
/* 8040A23C  4B C9 0C 8D */	bl func_8009AEC8
/* 8040A240  A8 03 00 00 */	lha r0, 0(r3)
/* 8040A244  3C E0 43 30 */	lis r7, 0x4330
/* 8040A248  7C 7A 1B 78 */	mr r26, r3
/* 8040A24C  3C 60 80 64 */	lis r3, lit_573@ha /* 0x8064370C@ha */
/* 8040A250  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A254  7C 9B 23 78 */	mr r27, r4
/* 8040A258  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040A25C  3C 80 81 1C */	lis r4, data_811C75D8@ha /* 0x811C75D8@ha */
/* 8040A260  3B E4 75 D8 */	addi r31, r4, data_811C75D8@l /* 0x811C75D8@l */
/* 8040A264  C8 23 37 0C */	lfd f1, lit_573@l(r3)  /* 0x8064370C@l */
/* 8040A268  90 E1 00 08 */	stw r7, 8(r1)
/* 8040A26C  3B BF 01 14 */	addi r29, r31, 0x114
/* 8040A270  7C BC 2B 78 */	mr r28, r5
/* 8040A274  7F 63 DB 78 */	mr r3, r27
/* 8040A278  C8 01 00 08 */	lfd f0, 8(r1)
/* 8040A27C  38 9B 00 0C */	addi r4, r27, 0xc
/* 8040A280  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8040A284  7F A6 EB 78 */	mr r6, r29
/* 8040A288  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040A28C  38 BB 00 18 */	addi r5, r27, 0x18
/* 8040A290  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8040A294  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 8040A298  A8 1A 00 02 */	lha r0, 2(r26)
/* 8040A29C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8040A2A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040A2A8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8040A2AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040A2B0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8040A2B4  A8 1A 00 04 */	lha r0, 4(r26)
/* 8040A2B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A2BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8040A2C0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8040A2C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040A2C8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8040A2CC  A8 1A 00 06 */	lha r0, 6(r26)
/* 8040A2D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A2D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040A2D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8040A2DC  EF C0 08 28 */	fsubs f30, f0, f1
/* 8040A2E0  FC 20 F0 90 */	fmr f1, f30
/* 8040A2E4  4B FF E8 65 */	bl Math3DCheck3PointMinMaxAreaInside3D
/* 8040A2E8  2C 03 00 00 */	cmpwi r3, 0
/* 8040A2EC  40 82 00 0C */	bne lbl_8040A2F8
/* 8040A2F0  38 60 00 00 */	li r3, 0
/* 8040A2F4  48 00 02 E0 */	b lbl_8040A5D4
lbl_8040A2F8:
/* 8040A2F8  C0 3B 00 24 */	lfs f1, 0x24(r27)
/* 8040A2FC  7F A3 EB 78 */	mr r3, r29
/* 8040A300  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 8040A304  C0 7B 00 2C */	lfs f3, 0x2c(r27)
/* 8040A308  C0 9B 00 30 */	lfs f4, 0x30(r27)
/* 8040A30C  4B FF EF 51 */	bl Math3DLengthPlaneAndPos
/* 8040A310  FF E0 08 90 */	fmr f31, f1
/* 8040A314  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8040A318  40 81 00 0C */	ble lbl_8040A324
/* 8040A31C  38 60 00 00 */	li r3, 0
/* 8040A320  48 00 02 B4 */	b lbl_8040A5D4
lbl_8040A324:
/* 8040A324  80 BB 00 00 */	lwz r5, 0(r27)
/* 8040A328  3B DF 01 20 */	addi r30, r31, 0x120
/* 8040A32C  80 1B 00 04 */	lwz r0, 4(r27)
/* 8040A330  7F 43 D3 78 */	mr r3, r26
/* 8040A334  7F C4 F3 78 */	mr r4, r30
/* 8040A338  90 BF 01 20 */	stw r5, 0x120(r31)
/* 8040A33C  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8040A340  80 1B 00 08 */	lwz r0, 8(r27)
/* 8040A344  90 1F 01 28 */	stw r0, 0x128(r31)
/* 8040A348  80 BB 00 0C */	lwz r5, 0xc(r27)
/* 8040A34C  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8040A350  90 BE 00 0C */	stw r5, 0xc(r30)
/* 8040A354  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8040A358  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8040A35C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8040A360  4B FF FB 3D */	bl Math3D_sphereCrossLineSegment
/* 8040A364  2C 03 00 00 */	cmpwi r3, 0
/* 8040A368  41 82 00 1C */	beq lbl_8040A384
/* 8040A36C  7F 43 D3 78 */	mr r3, r26
/* 8040A370  7F 64 DB 78 */	mr r4, r27
/* 8040A374  7F 85 E3 78 */	mr r5, r28
/* 8040A378  4B FF FD 31 */	bl Math3D_sphereCrossTriangleCalc_cp
/* 8040A37C  38 60 00 01 */	li r3, 1
/* 8040A380  48 00 02 54 */	b lbl_8040A5D4
lbl_8040A384:
/* 8040A384  80 BB 00 0C */	lwz r5, 0xc(r27)
/* 8040A388  7F 43 D3 78 */	mr r3, r26
/* 8040A38C  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8040A390  7F C4 F3 78 */	mr r4, r30
/* 8040A394  90 BF 01 20 */	stw r5, 0x120(r31)
/* 8040A398  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8040A39C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8040A3A0  90 1F 01 28 */	stw r0, 0x128(r31)
/* 8040A3A4  80 BB 00 18 */	lwz r5, 0x18(r27)
/* 8040A3A8  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 8040A3AC  90 BE 00 0C */	stw r5, 0xc(r30)
/* 8040A3B0  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8040A3B4  80 1B 00 20 */	lwz r0, 0x20(r27)
/* 8040A3B8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8040A3BC  4B FF FA E1 */	bl Math3D_sphereCrossLineSegment
/* 8040A3C0  2C 03 00 00 */	cmpwi r3, 0
/* 8040A3C4  41 82 00 1C */	beq lbl_8040A3E0
/* 8040A3C8  7F 43 D3 78 */	mr r3, r26
/* 8040A3CC  7F 64 DB 78 */	mr r4, r27
/* 8040A3D0  7F 85 E3 78 */	mr r5, r28
/* 8040A3D4  4B FF FC D5 */	bl Math3D_sphereCrossTriangleCalc_cp
/* 8040A3D8  38 60 00 01 */	li r3, 1
/* 8040A3DC  48 00 01 F8 */	b lbl_8040A5D4
lbl_8040A3E0:
/* 8040A3E0  80 BB 00 18 */	lwz r5, 0x18(r27)
/* 8040A3E4  7F 43 D3 78 */	mr r3, r26
/* 8040A3E8  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 8040A3EC  7F C4 F3 78 */	mr r4, r30
/* 8040A3F0  90 BF 01 20 */	stw r5, 0x120(r31)
/* 8040A3F4  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8040A3F8  80 1B 00 20 */	lwz r0, 0x20(r27)
/* 8040A3FC  90 1F 01 28 */	stw r0, 0x128(r31)
/* 8040A400  80 BB 00 00 */	lwz r5, 0(r27)
/* 8040A404  80 1B 00 04 */	lwz r0, 4(r27)
/* 8040A408  90 BE 00 0C */	stw r5, 0xc(r30)
/* 8040A40C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8040A410  80 1B 00 08 */	lwz r0, 8(r27)
/* 8040A414  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8040A418  4B FF FA 85 */	bl Math3D_sphereCrossLineSegment
/* 8040A41C  2C 03 00 00 */	cmpwi r3, 0
/* 8040A420  41 82 00 1C */	beq lbl_8040A43C
/* 8040A424  7F 43 D3 78 */	mr r3, r26
/* 8040A428  7F 64 DB 78 */	mr r4, r27
/* 8040A42C  7F 85 E3 78 */	mr r5, r28
/* 8040A430  4B FF FC 79 */	bl Math3D_sphereCrossTriangleCalc_cp
/* 8040A434  38 60 00 01 */	li r3, 1
/* 8040A438  48 00 01 9C */	b lbl_8040A5D4
lbl_8040A43C:
/* 8040A43C  C0 3B 00 24 */	lfs f1, 0x24(r27)
/* 8040A440  7F A3 EB 78 */	mr r3, r29
/* 8040A444  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 8040A448  C0 7B 00 2C */	lfs f3, 0x2c(r27)
/* 8040A44C  EF C1 07 F2 */	fmuls f30, f1, f31
/* 8040A450  EF A2 07 F2 */	fmuls f29, f2, f31
/* 8040A454  C0 9B 00 30 */	lfs f4, 0x30(r27)
/* 8040A458  EF E3 07 F2 */	fmuls f31, f3, f31
/* 8040A45C  4B FF ED D9 */	bl Math3DPlaneFunc
/* 8040A460  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040A464  C0 03 36 E8 */	lfs f0, lit_275@l(r3)  /* 0x806436E8@l */
/* 8040A468  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040A46C  40 81 00 30 */	ble lbl_8040A49C
/* 8040A470  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 8040A474  38 7F 01 38 */	addi r3, r31, 0x138
/* 8040A478  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8040A47C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8040A480  EC 42 F0 28 */	fsubs f2, f2, f30
/* 8040A484  EC 21 E8 28 */	fsubs f1, f1, f29
/* 8040A488  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8040A48C  D0 5F 01 38 */	stfs f2, 0x138(r31)
/* 8040A490  D0 23 00 04 */	stfs f1, 4(r3)
/* 8040A494  D0 03 00 08 */	stfs f0, 8(r3)
/* 8040A498  48 00 00 2C */	b lbl_8040A4C4
lbl_8040A49C:
/* 8040A49C  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 8040A4A0  38 7F 01 38 */	addi r3, r31, 0x138
/* 8040A4A4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8040A4A8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8040A4AC  EC 42 F0 2A */	fadds f2, f2, f30
/* 8040A4B0  EC 21 E8 2A */	fadds f1, f1, f29
/* 8040A4B4  EC 00 F8 2A */	fadds f0, f0, f31
/* 8040A4B8  D0 5F 01 38 */	stfs f2, 0x138(r31)
/* 8040A4BC  D0 23 00 04 */	stfs f1, 4(r3)
/* 8040A4C0  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8040A4C4:
/* 8040A4C4  C0 9B 00 28 */	lfs f4, 0x28(r27)
/* 8040A4C8  3C 60 80 64 */	lis r3, lit_872@ha /* 0x80643714@ha */
/* 8040A4CC  C0 23 37 14 */	lfs f1, lit_872@l(r3)  /* 0x80643714@l */
/* 8040A4D0  FC 00 22 10 */	fabs f0, f4
/* 8040A4D4  FC 00 00 18 */	frsp f0, f0
/* 8040A4D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8040A4DC  40 81 00 4C */	ble lbl_8040A528
/* 8040A4E0  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040A4E4  38 9F 01 38 */	addi r4, r31, 0x138
/* 8040A4E8  38 A3 36 E8 */	addi r5, r3, lit_275@l /* 0x806436E8@l */
/* 8040A4EC  C0 24 00 08 */	lfs f1, 8(r4)
/* 8040A4F0  C0 65 00 00 */	lfs f3, 0(r5)
/* 8040A4F4  7F 63 DB 78 */	mr r3, r27
/* 8040A4F8  C0 5F 01 38 */	lfs f2, 0x138(r31)
/* 8040A4FC  38 9B 00 0C */	addi r4, r27, 0xc
/* 8040A500  38 BB 00 18 */	addi r5, r27, 0x18
/* 8040A504  4B FF F0 F5 */	bl Math3DTriangleCrossYCheck_chparam
/* 8040A508  2C 03 00 00 */	cmpwi r3, 0
/* 8040A50C  41 82 00 C4 */	beq lbl_8040A5D0
/* 8040A510  7F 43 D3 78 */	mr r3, r26
/* 8040A514  7F 64 DB 78 */	mr r4, r27
/* 8040A518  7F 85 E3 78 */	mr r5, r28
/* 8040A51C  4B FF FB 8D */	bl Math3D_sphereCrossTriangleCalc_cp
/* 8040A520  38 60 00 01 */	li r3, 1
/* 8040A524  48 00 00 B0 */	b lbl_8040A5D4
lbl_8040A528:
/* 8040A528  C0 9B 00 24 */	lfs f4, 0x24(r27)
/* 8040A52C  FC 00 22 10 */	fabs f0, f4
/* 8040A530  FC 00 00 18 */	frsp f0, f0
/* 8040A534  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8040A538  40 81 00 4C */	ble lbl_8040A584
/* 8040A53C  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040A540  38 9F 01 38 */	addi r4, r31, 0x138
/* 8040A544  38 A3 36 E8 */	addi r5, r3, lit_275@l /* 0x806436E8@l */
/* 8040A548  C0 24 00 04 */	lfs f1, 4(r4)
/* 8040A54C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8040A550  7F 63 DB 78 */	mr r3, r27
/* 8040A554  C0 65 00 00 */	lfs f3, 0(r5)
/* 8040A558  38 9B 00 0C */	addi r4, r27, 0xc
/* 8040A55C  38 BB 00 18 */	addi r5, r27, 0x18
/* 8040A560  4B FF F5 19 */	bl Math3DTriangleCrossXCheck_chparam
/* 8040A564  2C 03 00 00 */	cmpwi r3, 0
/* 8040A568  41 82 00 68 */	beq lbl_8040A5D0
/* 8040A56C  7F 43 D3 78 */	mr r3, r26
/* 8040A570  7F 64 DB 78 */	mr r4, r27
/* 8040A574  7F 85 E3 78 */	mr r5, r28
/* 8040A578  4B FF FB 31 */	bl Math3D_sphereCrossTriangleCalc_cp
/* 8040A57C  38 60 00 01 */	li r3, 1
/* 8040A580  48 00 00 54 */	b lbl_8040A5D4
lbl_8040A584:
/* 8040A584  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040A588  38 BF 01 38 */	addi r5, r31, 0x138
/* 8040A58C  38 83 36 E8 */	addi r4, r3, lit_275@l /* 0x806436E8@l */
/* 8040A590  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8040A594  C0 45 00 04 */	lfs f2, 4(r5)
/* 8040A598  7F 63 DB 78 */	mr r3, r27
/* 8040A59C  C0 64 00 00 */	lfs f3, 0(r4)
/* 8040A5A0  38 9B 00 0C */	addi r4, r27, 0xc
/* 8040A5A4  C0 9B 00 2C */	lfs f4, 0x2c(r27)
/* 8040A5A8  38 BB 00 18 */	addi r5, r27, 0x18
/* 8040A5AC  4B FF F7 A5 */	bl Math3DTriangleCrossZCheck_chparam
/* 8040A5B0  2C 03 00 00 */	cmpwi r3, 0
/* 8040A5B4  41 82 00 1C */	beq lbl_8040A5D0
/* 8040A5B8  7F 43 D3 78 */	mr r3, r26
/* 8040A5BC  7F 64 DB 78 */	mr r4, r27
/* 8040A5C0  7F 85 E3 78 */	mr r5, r28
/* 8040A5C4  4B FF FA E5 */	bl Math3D_sphereCrossTriangleCalc_cp
/* 8040A5C8  38 60 00 01 */	li r3, 1
/* 8040A5CC  48 00 00 08 */	b lbl_8040A5D4
lbl_8040A5D0:
/* 8040A5D0  38 60 00 00 */	li r3, 0
lbl_8040A5D4:
/* 8040A5D4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8040A5D8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8040A5DC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8040A5E0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8040A5E4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8040A5E8  39 61 00 40 */	addi r11, r1, 0x40
/* 8040A5EC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8040A5F0  4B C9 09 25 */	bl func_8009AF14
/* 8040A5F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8040A5F8  7C 08 03 A6 */	mtlr r0
/* 8040A5FC  38 21 00 70 */	addi r1, r1, 0x70
/* 8040A600  4E 80 00 20 */	blr 
