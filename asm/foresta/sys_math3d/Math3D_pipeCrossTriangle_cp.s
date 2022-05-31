lbl_8040B1EC:
/* 8040B1EC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8040B1F0  7C 08 02 A6 */	mflr r0
/* 8040B1F4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8040B1F8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8040B1FC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8040B200  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8040B204  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8040B208  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8040B20C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8040B210  39 61 00 60 */	addi r11, r1, 0x60
/* 8040B214  4B C8 FC BD */	bl func_8009AED0
/* 8040B218  7C 7C 1B 78 */	mr r28, r3
/* 8040B21C  3C C0 43 30 */	lis r6, 0x4330
/* 8040B220  A8 03 00 08 */	lha r0, 8(r3)
/* 8040B224  3C E0 80 64 */	lis r7, lit_573@ha /* 0x8064370C@ha */
/* 8040B228  A8 63 00 04 */	lha r3, 4(r3)
/* 8040B22C  39 07 37 0C */	addi r8, r7, lit_573@l /* 0x8064370C@l */
/* 8040B230  6C 07 80 00 */	xoris r7, r0, 0x8000
/* 8040B234  A8 1C 00 02 */	lha r0, 2(r28)
/* 8040B238  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040B23C  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 8040B240  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040B244  7C 9D 23 78 */	mr r29, r4
/* 8040B248  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8040B24C  3C 80 81 1C */	lis r4, data_811C75D8@ha /* 0x811C75D8@ha */
/* 8040B250  C8 68 00 00 */	lfd f3, 0(r8)
/* 8040B254  7C BE 2B 78 */	mr r30, r5
/* 8040B258  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8040B25C  3B E4 75 D8 */	addi r31, r4, data_811C75D8@l /* 0x811C75D8@l */
/* 8040B260  90 61 00 44 */	stw r3, 0x44(r1)
/* 8040B264  EC 40 18 28 */	fsubs f2, f0, f3
/* 8040B268  C0 9D 00 04 */	lfs f4, 4(r29)
/* 8040B26C  90 C1 00 40 */	stw r6, 0x40(r1)
/* 8040B270  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8040B274  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8040B278  EC 20 18 28 */	fsubs f1, f0, f3
/* 8040B27C  90 C1 00 48 */	stw r6, 0x48(r1)
/* 8040B280  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8040B284  EF E2 08 2A */	fadds f31, f2, f1
/* 8040B288  EC 00 18 28 */	fsubs f0, f0, f3
/* 8040B28C  FC 1F 20 40 */	fcmpo cr0, f31, f4
/* 8040B290  EF DF 00 2A */	fadds f30, f31, f0
/* 8040B294  40 81 00 1C */	ble lbl_8040B2B0
/* 8040B298  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8040B29C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8040B2A0  40 81 00 10 */	ble lbl_8040B2B0
/* 8040B2A4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8040B2A8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8040B2AC  41 81 00 24 */	bgt lbl_8040B2D0
lbl_8040B2B0:
/* 8040B2B0  FC 1E 20 40 */	fcmpo cr0, f30, f4
/* 8040B2B4  40 80 00 24 */	bge lbl_8040B2D8
/* 8040B2B8  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8040B2BC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8040B2C0  40 80 00 18 */	bge lbl_8040B2D8
/* 8040B2C4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8040B2C8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8040B2CC  40 80 00 0C */	bge lbl_8040B2D8
lbl_8040B2D0:
/* 8040B2D0  38 60 00 00 */	li r3, 0
/* 8040B2D4  48 00 03 98 */	b lbl_8040B66C
lbl_8040B2D8:
/* 8040B2D8  3C 80 80 64 */	lis r4, lit_1501@ha /* 0x80643720@ha */
/* 8040B2DC  7F 83 E3 78 */	mr r3, r28
/* 8040B2E0  38 A4 37 20 */	addi r5, r4, lit_1501@l /* 0x80643720@l */
/* 8040B2E4  7F A4 EB 78 */	mr r4, r29
/* 8040B2E8  C3 A5 00 00 */	lfs f29, 0(r5)
/* 8040B2EC  38 BD 00 0C */	addi r5, r29, 0xc
/* 8040B2F0  38 DF 01 44 */	addi r6, r31, 0x144
/* 8040B2F4  38 FF 01 50 */	addi r7, r31, 0x150
/* 8040B2F8  4B FF F4 15 */	bl Math3D_pipeCrossLine
/* 8040B2FC  2C 03 00 00 */	cmpwi r3, 0
/* 8040B300  41 82 00 2C */	beq lbl_8040B32C
/* 8040B304  7F A4 EB 78 */	mr r4, r29
/* 8040B308  38 7F 01 44 */	addi r3, r31, 0x144
/* 8040B30C  4B FF DB DD */	bl Math3DLengthSquare
/* 8040B310  80 7F 01 44 */	lwz r3, 0x144(r31)
/* 8040B314  FF A0 08 90 */	fmr f29, f1
/* 8040B318  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 8040B31C  90 7E 00 00 */	stw r3, 0(r30)
/* 8040B320  90 1E 00 04 */	stw r0, 4(r30)
/* 8040B324  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 8040B328  90 1E 00 08 */	stw r0, 8(r30)
lbl_8040B32C:
/* 8040B32C  7F 83 E3 78 */	mr r3, r28
/* 8040B330  38 9D 00 18 */	addi r4, r29, 0x18
/* 8040B334  38 BD 00 0C */	addi r5, r29, 0xc
/* 8040B338  38 DF 01 44 */	addi r6, r31, 0x144
/* 8040B33C  38 FF 01 50 */	addi r7, r31, 0x150
/* 8040B340  4B FF F3 CD */	bl Math3D_pipeCrossLine
/* 8040B344  2C 03 00 00 */	cmpwi r3, 0
/* 8040B348  41 82 00 34 */	beq lbl_8040B37C
/* 8040B34C  38 7F 01 44 */	addi r3, r31, 0x144
/* 8040B350  38 9D 00 18 */	addi r4, r29, 0x18
/* 8040B354  4B FF DB 95 */	bl Math3DLengthSquare
/* 8040B358  FC 1D 08 40 */	fcmpo cr0, f29, f1
/* 8040B35C  40 81 00 20 */	ble lbl_8040B37C
/* 8040B360  80 7F 01 44 */	lwz r3, 0x144(r31)
/* 8040B364  FF A0 08 90 */	fmr f29, f1
/* 8040B368  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 8040B36C  90 7E 00 00 */	stw r3, 0(r30)
/* 8040B370  90 1E 00 04 */	stw r0, 4(r30)
/* 8040B374  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 8040B378  90 1E 00 08 */	stw r0, 8(r30)
lbl_8040B37C:
/* 8040B37C  7F 83 E3 78 */	mr r3, r28
/* 8040B380  7F A4 EB 78 */	mr r4, r29
/* 8040B384  38 BD 00 18 */	addi r5, r29, 0x18
/* 8040B388  38 DF 01 44 */	addi r6, r31, 0x144
/* 8040B38C  38 FF 01 50 */	addi r7, r31, 0x150
/* 8040B390  4B FF F3 7D */	bl Math3D_pipeCrossLine
/* 8040B394  2C 03 00 00 */	cmpwi r3, 0
/* 8040B398  41 82 00 34 */	beq lbl_8040B3CC
/* 8040B39C  7F A4 EB 78 */	mr r4, r29
/* 8040B3A0  38 7F 01 44 */	addi r3, r31, 0x144
/* 8040B3A4  4B FF DB 45 */	bl Math3DLengthSquare
/* 8040B3A8  FC 1D 08 40 */	fcmpo cr0, f29, f1
/* 8040B3AC  40 81 00 20 */	ble lbl_8040B3CC
/* 8040B3B0  80 7F 01 44 */	lwz r3, 0x144(r31)
/* 8040B3B4  FF A0 08 90 */	fmr f29, f1
/* 8040B3B8  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 8040B3BC  90 7E 00 00 */	stw r3, 0(r30)
/* 8040B3C0  90 1E 00 04 */	stw r0, 4(r30)
/* 8040B3C4  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 8040B3C8  90 1E 00 08 */	stw r0, 8(r30)
lbl_8040B3CC:
/* 8040B3CC  3C 60 80 64 */	lis r3, lit_1501@ha /* 0x80643720@ha */
/* 8040B3D0  C0 03 37 20 */	lfs f0, lit_1501@l(r3)  /* 0x80643720@l */
/* 8040B3D4  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 8040B3D8  41 82 00 0C */	beq lbl_8040B3E4
/* 8040B3DC  38 60 00 01 */	li r3, 1
/* 8040B3E0  48 00 02 8C */	b lbl_8040B66C
lbl_8040B3E4:
/* 8040B3E4  A8 7C 00 0A */	lha r3, 0xa(r28)
/* 8040B3E8  3C 80 43 30 */	lis r4, 0x4330
/* 8040B3EC  A8 1C 00 06 */	lha r0, 6(r28)
/* 8040B3F0  3C A0 80 64 */	lis r5, lit_573@ha /* 0x8064370C@ha */
/* 8040B3F4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040B3F8  C8 85 37 0C */	lfd f4, lit_573@l(r5)  /* 0x8064370C@l */
/* 8040B3FC  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8040B400  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040B404  FC E0 F8 90 */	fmr f7, f31
/* 8040B408  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8040B40C  90 81 00 48 */	stw r4, 0x48(r1)
/* 8040B410  FD 00 F0 90 */	fmr f8, f30
/* 8040B414  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 8040B418  7F A3 EB 78 */	mr r3, r29
/* 8040B41C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8040B420  38 BD 00 18 */	addi r5, r29, 0x18
/* 8040B424  90 81 00 40 */	stw r4, 0x40(r1)
/* 8040B428  38 9D 00 0C */	addi r4, r29, 0xc
/* 8040B42C  EC A0 20 28 */	fsubs f5, f0, f4
/* 8040B430  C0 7D 00 2C */	lfs f3, 0x2c(r29)
/* 8040B434  90 01 00 44 */	stw r0, 0x44(r1)
/* 8040B438  38 C1 00 0C */	addi r6, r1, 0xc
/* 8040B43C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8040B440  EC C0 20 28 */	fsubs f6, f0, f4
/* 8040B444  C0 9D 00 30 */	lfs f4, 0x30(r29)
/* 8040B448  4B FF E1 DD */	bl Math3DTriangleCrossYLine_scope
/* 8040B44C  2C 03 00 00 */	cmpwi r3, 0
/* 8040B450  41 82 01 98 */	beq lbl_8040B5E8
/* 8040B454  A8 7C 00 06 */	lha r3, 6(r28)
/* 8040B458  3C 00 43 30 */	lis r0, 0x4330
/* 8040B45C  3C A0 80 64 */	lis r5, lit_573@ha /* 0x8064370C@ha */
/* 8040B460  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8040B464  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8040B468  C8 65 37 0C */	lfd f3, lit_573@l(r5)  /* 0x8064370C@l */
/* 8040B46C  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8040B470  3C 60 80 64 */	lis r3, lit_872@ha /* 0x80643714@ha */
/* 8040B474  38 83 37 14 */	addi r4, r3, lit_872@l /* 0x80643714@l */
/* 8040B478  38 A1 00 10 */	addi r5, r1, 0x10
/* 8040B47C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8040B480  38 61 00 1C */	addi r3, r1, 0x1c
/* 8040B484  C0 44 00 00 */	lfs f2, 0(r4)
/* 8040B488  38 81 00 28 */	addi r4, r1, 0x28
/* 8040B48C  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 8040B490  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8040B494  EC 01 18 28 */	fsubs f0, f1, f3
/* 8040B498  90 01 00 40 */	stw r0, 0x40(r1)
/* 8040B49C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8040B4A0  A8 1C 00 0A */	lha r0, 0xa(r28)
/* 8040B4A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040B4A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8040B4AC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8040B4B0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8040B4B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8040B4B8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8040B4BC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8040B4C0  EC 01 00 2A */	fadds f0, f1, f0
/* 8040B4C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8040B4C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8040B4CC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8040B4D0  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8040B4D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8040B4D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8040B4DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8040B4E0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8040B4E4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8040B4E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8040B4EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8040B4F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8040B4F4  4B FA FA 85 */	bl xyz_t_sub
/* 8040B4F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8040B4FC  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 8040B500  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8040B504  EC 40 00 32 */	fmuls f2, f0, f0
/* 8040B508  C0 03 36 E8 */	lfs f0, lit_275@l(r3)  /* 0x806436E8@l */
/* 8040B50C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8040B510  EC 82 08 2A */	fadds f4, f2, f1
/* 8040B514  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8040B518  40 81 00 68 */	ble lbl_8040B580
/* 8040B51C  FC 20 20 34 */	frsqrte f1, f4
/* 8040B520  3C 60 80 64 */	lis r3, lit_516@ha /* 0x806436F4@ha */
/* 8040B524  38 83 36 F4 */	addi r4, r3, lit_516@l /* 0x806436F4@l */
/* 8040B528  3C 60 80 64 */	lis r3, lit_517@ha /* 0x806436FC@ha */
/* 8040B52C  C8 64 00 00 */	lfd f3, 0(r4)
/* 8040B530  FC 01 00 72 */	fmul f0, f1, f1
/* 8040B534  C8 43 36 FC */	lfd f2, lit_517@l(r3)  /* 0x806436FC@l */
/* 8040B538  FC 23 00 72 */	fmul f1, f3, f1
/* 8040B53C  FC 04 00 32 */	fmul f0, f4, f0
/* 8040B540  FC 02 00 28 */	fsub f0, f2, f0
/* 8040B544  FC 21 00 32 */	fmul f1, f1, f0
/* 8040B548  FC 01 00 72 */	fmul f0, f1, f1
/* 8040B54C  FC 23 00 72 */	fmul f1, f3, f1
/* 8040B550  FC 04 00 32 */	fmul f0, f4, f0
/* 8040B554  FC 02 00 28 */	fsub f0, f2, f0
/* 8040B558  FC 21 00 32 */	fmul f1, f1, f0
/* 8040B55C  FC 01 00 72 */	fmul f0, f1, f1
/* 8040B560  FC 23 00 72 */	fmul f1, f3, f1
/* 8040B564  FC 04 00 32 */	fmul f0, f4, f0
/* 8040B568  FC 02 00 28 */	fsub f0, f2, f0
/* 8040B56C  FC 01 00 32 */	fmul f0, f1, f0
/* 8040B570  FC 04 00 32 */	fmul f0, f4, f0
/* 8040B574  FC 00 00 18 */	frsp f0, f0
/* 8040B578  D0 01 00 08 */	stfs f0, 8(r1)
/* 8040B57C  C0 81 00 08 */	lfs f4, 8(r1)
lbl_8040B580:
/* 8040B580  FC 20 22 10 */	fabs f1, f4
/* 8040B584  3C 60 80 64 */	lis r3, data_806436E4@ha /* 0x806436E4@ha */
/* 8040B588  C0 03 36 E4 */	lfs f0, data_806436E4@l(r3)  /* 0x806436E4@l */
/* 8040B58C  FC 20 08 18 */	frsp f1, f1
/* 8040B590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040B594  40 80 00 14 */	bge lbl_8040B5A8
/* 8040B598  7F C3 F3 78 */	mr r3, r30
/* 8040B59C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8040B5A0  4B FA F9 1D */	bl xyz_t_move
/* 8040B5A4  48 00 00 3C */	b lbl_8040B5E0
lbl_8040B5A8:
/* 8040B5A8  A8 9C 00 00 */	lha r4, 0(r28)
/* 8040B5AC  3C 00 43 30 */	lis r0, 0x4330
/* 8040B5B0  90 01 00 48 */	stw r0, 0x48(r1)
/* 8040B5B4  3C 60 80 64 */	lis r3, lit_573@ha /* 0x8064370C@ha */
/* 8040B5B8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8040B5BC  C8 23 37 0C */	lfd f1, lit_573@l(r3)  /* 0x8064370C@l */
/* 8040B5C0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8040B5C4  7F C5 F3 78 */	mr r5, r30
/* 8040B5C8  38 61 00 28 */	addi r3, r1, 0x28
/* 8040B5CC  38 81 00 10 */	addi r4, r1, 0x10
/* 8040B5D0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8040B5D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8040B5D8  EC 20 20 24 */	fdivs f1, f0, f4
/* 8040B5DC  4B FF D4 01 */	bl Math3DInDivPos1
lbl_8040B5E0:
/* 8040B5E0  38 60 00 01 */	li r3, 1
/* 8040B5E4  48 00 00 88 */	b lbl_8040B66C
lbl_8040B5E8:
/* 8040B5E8  FC 20 F0 1E */	fctiwz f1, f30
/* 8040B5EC  A8 1C 00 06 */	lha r0, 6(r28)
/* 8040B5F0  FC 00 F8 1E */	fctiwz f0, f31
/* 8040B5F4  38 7F 01 5C */	addi r3, r31, 0x15c
/* 8040B5F8  B0 1F 01 64 */	sth r0, 0x164(r31)
/* 8040B5FC  38 FF 01 64 */	addi r7, r31, 0x164
/* 8040B600  B0 1F 01 5C */	sth r0, 0x15c(r31)
/* 8040B604  7F A4 EB 78 */	mr r4, r29
/* 8040B608  7F C5 F3 78 */	mr r5, r30
/* 8040B60C  A9 1C 00 0A */	lha r8, 0xa(r28)
/* 8040B610  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8040B614  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8040B618  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 8040B61C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8040B620  B1 07 00 04 */	sth r8, 4(r7)
/* 8040B624  B1 03 00 04 */	sth r8, 4(r3)
/* 8040B628  B0 C3 00 02 */	sth r6, 2(r3)
/* 8040B62C  B0 07 00 02 */	sth r0, 2(r7)
/* 8040B630  A8 1C 00 00 */	lha r0, 0(r28)
/* 8040B634  B0 07 00 06 */	sth r0, 6(r7)
/* 8040B638  B0 03 00 06 */	sth r0, 6(r3)
/* 8040B63C  4B FF EB D9 */	bl Math3D_sphereCrossTriangle3_cp
/* 8040B640  2C 03 00 00 */	cmpwi r3, 0
/* 8040B644  40 82 00 1C */	bne lbl_8040B660
/* 8040B648  7F A4 EB 78 */	mr r4, r29
/* 8040B64C  7F C5 F3 78 */	mr r5, r30
/* 8040B650  38 7F 01 64 */	addi r3, r31, 0x164
/* 8040B654  4B FF EB C1 */	bl Math3D_sphereCrossTriangle3_cp
/* 8040B658  2C 03 00 00 */	cmpwi r3, 0
/* 8040B65C  41 82 00 0C */	beq lbl_8040B668
lbl_8040B660:
/* 8040B660  38 60 00 01 */	li r3, 1
/* 8040B664  48 00 00 08 */	b lbl_8040B66C
lbl_8040B668:
/* 8040B668  38 60 00 00 */	li r3, 0
lbl_8040B66C:
/* 8040B66C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8040B670  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8040B674  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8040B678  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8040B67C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8040B680  39 61 00 60 */	addi r11, r1, 0x60
/* 8040B684  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8040B688  4B C8 F8 95 */	bl func_8009AF1C
/* 8040B68C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8040B690  7C 08 03 A6 */	mtlr r0
/* 8040B694  38 21 00 90 */	addi r1, r1, 0x90
/* 8040B698  4E 80 00 20 */	blr 
