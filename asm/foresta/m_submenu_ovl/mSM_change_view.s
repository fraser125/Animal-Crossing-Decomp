lbl_805ED1E8:
/* 805ED1E8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805ED1EC  7C 08 02 A6 */	mflr r0
/* 805ED1F0  90 01 00 74 */	stw r0, 0x74(r1)
/* 805ED1F4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805ED1F8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805ED1FC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805ED200  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805ED204  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805ED208  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805ED20C  39 61 00 40 */	addi r11, r1, 0x40
/* 805ED210  4B AA DC C1 */	bl func_8009AED0
/* 805ED214  7C 7C 1B 78 */	mr r28, r3
/* 805ED218  80 63 02 D4 */	lwz r3, 0x2d4(r3)
/* 805ED21C  FF A0 08 90 */	fmr f29, f1
/* 805ED220  7C 9D 23 78 */	mr r29, r4
/* 805ED224  35 03 FF F0 */	addic. r8, r3, -16
/* 805ED228  FF C0 10 90 */	fmr f30, f2
/* 805ED22C  91 1C 02 D4 */	stw r8, 0x2d4(r28)
/* 805ED230  80 7C 02 D4 */	lwz r3, 0x2d4(r28)
/* 805ED234  38 03 FF C0 */	addi r0, r3, -64
/* 805ED238  90 1C 02 D4 */	stw r0, 0x2d4(r28)
/* 805ED23C  7C 1F 03 78 */	mr r31, r0
/* 805ED240  80 7C 02 D4 */	lwz r3, 0x2d4(r28)
/* 805ED244  38 03 FF C0 */	addi r0, r3, -64
/* 805ED248  90 1C 02 D4 */	stw r0, 0x2d4(r28)
/* 805ED24C  7C 1E 03 78 */	mr r30, r0
/* 805ED250  40 82 00 14 */	bne lbl_805ED264
/* 805ED254  3C 60 80 6D */	lis r3, data_806CE450@ha /* 0x806CE450@ha */
/* 805ED258  38 03 E4 50 */	addi r0, r3, data_806CE450@l /* 0x806CE450@l */
/* 805ED25C  7C 08 03 78 */	mr r8, r0
/* 805ED260  48 00 00 5C */	b lbl_805ED2BC
lbl_805ED264:
/* 805ED264  FC 20 18 1E */	fctiwz f1, f3
/* 805ED268  54 A7 08 3C */	slwi r7, r5, 1
/* 805ED26C  FC 00 20 1E */	fctiwz f0, f4
/* 805ED270  B0 E8 00 00 */	sth r7, 0(r8)
/* 805ED274  54 C9 08 3C */	slwi r9, r6, 1
/* 805ED278  38 60 01 FF */	li r3, 0x1ff
/* 805ED27C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805ED280  38 00 00 00 */	li r0, 0
/* 805ED284  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 805ED288  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805ED28C  7C 84 07 34 */	extsh r4, r4
/* 805ED290  7C E7 22 14 */	add r7, r7, r4
/* 805ED294  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805ED298  B0 E8 00 08 */	sth r7, 8(r8)
/* 805ED29C  7C 84 07 34 */	extsh r4, r4
/* 805ED2A0  B1 28 00 02 */	sth r9, 2(r8)
/* 805ED2A4  7C 89 22 14 */	add r4, r9, r4
/* 805ED2A8  B0 88 00 0A */	sth r4, 0xa(r8)
/* 805ED2AC  B0 68 00 0C */	sth r3, 0xc(r8)
/* 805ED2B0  B0 68 00 04 */	sth r3, 4(r8)
/* 805ED2B4  B0 08 00 0E */	sth r0, 0xe(r8)
/* 805ED2B8  B0 08 00 06 */	sth r0, 6(r8)
lbl_805ED2BC:
/* 805ED2BC  80 9C 02 D0 */	lwz r4, 0x2d0(r28)
/* 805ED2C0  3C 60 DC 08 */	lis r3, 0xDC08 /* 0xDC080008@ha */
/* 805ED2C4  38 03 00 08 */	addi r0, r3, 0x0008 /* 0xDC080008@l */
/* 805ED2C8  2C 05 01 00 */	cmpwi r5, 0x100
/* 805ED2CC  38 64 00 08 */	addi r3, r4, 8
/* 805ED2D0  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805ED2D4  90 04 00 00 */	stw r0, 0(r4)
/* 805ED2D8  91 04 00 04 */	stw r8, 4(r4)
/* 805ED2DC  41 82 00 70 */	beq lbl_805ED34C
/* 805ED2E0  3C 80 43 30 */	lis r4, 0x4330
/* 805ED2E4  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 805ED2E8  90 61 00 24 */	stw r3, 0x24(r1)
/* 805ED2EC  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 805ED2F0  3C A0 80 65 */	lis r5, lit_458@ha /* 0x8064B78C@ha */
/* 805ED2F4  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805ED2F8  90 81 00 20 */	stw r4, 0x20(r1)
/* 805ED2FC  C8 C5 B7 8C */	lfd f6, lit_458@l(r5)  /* 0x8064B78C@l */
/* 805ED300  3C A0 80 65 */	lis r5, lit_506@ha /* 0x8064B794@ha */
/* 805ED304  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805ED308  38 C5 B7 94 */	addi r6, r5, lit_506@l /* 0x8064B794@l */
/* 805ED30C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805ED310  38 81 00 10 */	addi r4, r1, 0x10
/* 805ED314  EC 40 30 28 */	fsubs f2, f0, f6
/* 805ED318  C0 63 B7 98 */	lfs f3, lit_507@l(r3)  /* 0x8064B798@l */
/* 805ED31C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805ED320  3C 60 80 65 */	lis r3, lit_508@ha /* 0x8064B79C@ha */
/* 805ED324  38 A3 B7 9C */	addi r5, r3, lit_508@l /* 0x8064B79C@l */
/* 805ED328  FC A0 18 90 */	fmr f5, f3
/* 805ED32C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805ED330  7F E3 FB 78 */	mr r3, r31
/* 805ED334  C0 26 00 00 */	lfs f1, 0(r6)
/* 805ED338  EC 00 30 28 */	fsubs f0, f0, f6
/* 805ED33C  C0 85 00 00 */	lfs f4, 0(r5)
/* 805ED340  EC 42 00 24 */	fdivs f2, f2, f0
/* 805ED344  4B A7 10 D1 */	bl func_8005E414
/* 805ED348  48 00 00 78 */	b lbl_805ED3C0
lbl_805ED34C:
/* 805ED34C  3D 00 43 30 */	lis r8, 0x4330
/* 805ED350  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 805ED354  90 61 00 24 */	stw r3, 0x24(r1)
/* 805ED358  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 805ED35C  3C 80 80 65 */	lis r4, lit_458@ha /* 0x8064B78C@ha */
/* 805ED360  3C C0 80 65 */	lis r6, lit_509@ha /* 0x8064B7A0@ha */
/* 805ED364  91 01 00 20 */	stw r8, 0x20(r1)
/* 805ED368  3C A0 80 65 */	lis r5, lit_510@ha /* 0x8064B7A4@ha */
/* 805ED36C  C8 84 B7 8C */	lfd f4, lit_458@l(r4)  /* 0x8064B78C@l */
/* 805ED370  39 26 B7 A0 */	addi r9, r6, lit_509@l /* 0x8064B7A0@l */
/* 805ED374  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805ED378  3C 80 80 65 */	lis r4, lit_511@ha /* 0x8064B7A8@ha */
/* 805ED37C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805ED380  38 E5 B7 A4 */	addi r7, r5, lit_510@l /* 0x8064B7A4@l */
/* 805ED384  EC 40 20 28 */	fsubs f2, f0, f4
/* 805ED388  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805ED38C  91 01 00 18 */	stw r8, 0x18(r1)
/* 805ED390  38 A3 B7 98 */	addi r5, r3, lit_507@l /* 0x8064B798@l */
/* 805ED394  38 C4 B7 A8 */	addi r6, r4, lit_511@l /* 0x8064B7A8@l */
/* 805ED398  C0 29 00 00 */	lfs f1, 0(r9)
/* 805ED39C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805ED3A0  7F E3 FB 78 */	mr r3, r31
/* 805ED3A4  C0 67 00 00 */	lfs f3, 0(r7)
/* 805ED3A8  38 81 00 10 */	addi r4, r1, 0x10
/* 805ED3AC  EC 00 20 28 */	fsubs f0, f0, f4
/* 805ED3B0  C0 86 00 00 */	lfs f4, 0(r6)
/* 805ED3B4  C0 A5 00 00 */	lfs f5, 0(r5)
/* 805ED3B8  EC 42 00 24 */	fdivs f2, f2, f0
/* 805ED3BC  4B A7 10 59 */	bl func_8005E414
lbl_805ED3C0:
/* 805ED3C0  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 805ED3C4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380007@ha */
/* 805ED3C8  7F A0 07 34 */	extsh r0, r29
/* 805ED3CC  3C 80 DB 0E */	lis r4, 0xdb0e
/* 805ED3D0  38 A6 00 08 */	addi r5, r6, 8
/* 805ED3D4  38 63 00 07 */	addi r3, r3, 0x0007 /* 0xDA380007@l */
/* 805ED3D8  90 BC 02 D0 */	stw r5, 0x2d0(r28)
/* 805ED3DC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805ED3E0  90 86 00 00 */	stw r4, 0(r6)
/* 805ED3E4  A0 81 00 10 */	lhz r4, 0x10(r1)
/* 805ED3E8  90 86 00 04 */	stw r4, 4(r6)
/* 805ED3EC  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 805ED3F0  38 85 00 08 */	addi r4, r5, 8
/* 805ED3F4  90 9C 02 D0 */	stw r4, 0x2d0(r28)
/* 805ED3F8  90 65 00 00 */	stw r3, 0(r5)
/* 805ED3FC  93 E5 00 04 */	stw r31, 4(r5)
/* 805ED400  40 82 00 0C */	bne lbl_805ED40C
/* 805ED404  3B A0 41 00 */	li r29, 0x4100
/* 805ED408  48 00 00 10 */	b lbl_805ED418
lbl_805ED40C:
/* 805ED40C  2C 00 C0 00 */	cmpwi r0, -16384
/* 805ED410  40 82 00 08 */	bne lbl_805ED418
/* 805ED414  3B A0 C1 00 */	li r29, -16128
lbl_805ED418:
/* 805ED418  7F A3 EB 78 */	mr r3, r29
/* 805ED41C  4B DC D6 D5 */	bl sin_s
/* 805ED420  EC 1D 00 72 */	fmuls f0, f29, f1
/* 805ED424  7F A3 EB 78 */	mr r3, r29
/* 805ED428  EF FE 00 2A */	fadds f31, f30, f0
/* 805ED42C  4B DC D6 71 */	bl cos_s
/* 805ED430  7F A0 07 34 */	extsh r0, r29
/* 805ED434  EC 7D 00 72 */	fmuls f3, f29, f1
/* 805ED438  2C 00 C0 00 */	cmpwi r0, -16384
/* 805ED43C  41 80 00 0C */	blt lbl_805ED448
/* 805ED440  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805ED444  41 80 00 38 */	blt lbl_805ED47C
lbl_805ED448:
/* 805ED448  3C 80 80 65 */	lis r4, lit_512@ha /* 0x8064B7AC@ha */
/* 805ED44C  3C 60 80 65 */	lis r3, lit_513@ha /* 0x8064B7B0@ha */
/* 805ED450  C0 24 B7 AC */	lfs f1, lit_512@l(r4)  /* 0x8064B7AC@l */
/* 805ED454  FC 40 F8 90 */	fmr f2, f31
/* 805ED458  C1 03 B7 B0 */	lfs f8, lit_513@l(r3)  /* 0x8064B7B0@l */
/* 805ED45C  FC A0 F0 90 */	fmr f5, f30
/* 805ED460  FC 80 08 90 */	fmr f4, f1
/* 805ED464  D0 21 00 08 */	stfs f1, 8(r1)
/* 805ED468  FC C0 08 90 */	fmr f6, f1
/* 805ED46C  FC E0 08 90 */	fmr f7, f1
/* 805ED470  7F C3 F3 78 */	mr r3, r30
/* 805ED474  4B A7 00 75 */	bl guLookAt
/* 805ED478  48 00 00 34 */	b lbl_805ED4AC
lbl_805ED47C:
/* 805ED47C  3C 80 80 65 */	lis r4, lit_512@ha /* 0x8064B7AC@ha */
/* 805ED480  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805ED484  C0 24 B7 AC */	lfs f1, lit_512@l(r4)  /* 0x8064B7AC@l */
/* 805ED488  FC 40 F8 90 */	fmr f2, f31
/* 805ED48C  C1 03 B7 98 */	lfs f8, lit_507@l(r3)  /* 0x8064B798@l */
/* 805ED490  FC A0 F0 90 */	fmr f5, f30
/* 805ED494  FC 80 08 90 */	fmr f4, f1
/* 805ED498  D0 21 00 08 */	stfs f1, 8(r1)
/* 805ED49C  FC C0 08 90 */	fmr f6, f1
/* 805ED4A0  FC E0 08 90 */	fmr f7, f1
/* 805ED4A4  7F C3 F3 78 */	mr r3, r30
/* 805ED4A8  4B A7 00 41 */	bl guLookAt
lbl_805ED4AC:
/* 805ED4AC  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 805ED4B0  3C 80 DC 08 */	lis r4, 0xDC08 /* 0xDC08060A@ha */
/* 805ED4B4  3C 60 80 6D */	lis r3, light_data_470@ha /* 0x806CE460@ha */
/* 805ED4B8  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380005@ha */
/* 805ED4BC  38 06 00 08 */	addi r0, r6, 8
/* 805ED4C0  3F A0 DB 02 */	lis r29, 0xdb02
/* 805ED4C4  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805ED4C8  38 05 00 05 */	addi r0, r5, 0x0005 /* 0xDA380005@l */
/* 805ED4CC  39 63 E4 60 */	addi r11, r3, light_data_470@l /* 0x806CE460@l */
/* 805ED4D0  39 80 00 18 */	li r12, 0x18
/* 805ED4D4  90 06 00 00 */	stw r0, 0(r6)
/* 805ED4D8  39 44 06 0A */	addi r10, r4, 0x060A /* 0xDC08060A@l */
/* 805ED4DC  38 04 09 0A */	addi r0, r4, 0x90a
/* 805ED4E0  38 6B 00 08 */	addi r3, r11, 8
/* 805ED4E4  93 C6 00 04 */	stw r30, 4(r6)
/* 805ED4E8  38 80 00 FF */	li r4, 0xff
/* 805ED4EC  38 A0 00 FF */	li r5, 0xff
/* 805ED4F0  38 C0 00 FF */	li r6, 0xff
/* 805ED4F4  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 805ED4F8  38 E0 00 FF */	li r7, 0xff
/* 805ED4FC  39 00 03 E8 */	li r8, 0x3e8
/* 805ED500  39 20 03 E8 */	li r9, 0x3e8
/* 805ED504  3B DF 00 08 */	addi r30, r31, 8
/* 805ED508  93 DC 02 D0 */	stw r30, 0x2d0(r28)
/* 805ED50C  93 BF 00 00 */	stw r29, 0(r31)
/* 805ED510  91 9F 00 04 */	stw r12, 4(r31)
/* 805ED514  83 BC 02 D0 */	lwz r29, 0x2d0(r28)
/* 805ED518  39 9D 00 08 */	addi r12, r29, 8
/* 805ED51C  91 9C 02 D0 */	stw r12, 0x2d0(r28)
/* 805ED520  91 5D 00 00 */	stw r10, 0(r29)
/* 805ED524  90 7D 00 04 */	stw r3, 4(r29)
/* 805ED528  81 5C 02 D0 */	lwz r10, 0x2d0(r28)
/* 805ED52C  38 6A 00 08 */	addi r3, r10, 8
/* 805ED530  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805ED534  90 0A 00 00 */	stw r0, 0(r10)
/* 805ED538  91 6A 00 04 */	stw r11, 4(r10)
/* 805ED53C  80 7C 02 D0 */	lwz r3, 0x2d0(r28)
/* 805ED540  38 03 00 08 */	addi r0, r3, 8
/* 805ED544  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805ED548  4B DF 7B 19 */	bl gfx_set_fog_nosync
/* 805ED54C  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805ED550  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805ED554  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805ED558  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805ED55C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805ED560  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805ED564  39 61 00 40 */	addi r11, r1, 0x40
/* 805ED568  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805ED56C  4B AA D9 B1 */	bl func_8009AF1C
/* 805ED570  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805ED574  7C 08 03 A6 */	mtlr r0
/* 805ED578  38 21 00 70 */	addi r1, r1, 0x70
/* 805ED57C  4E 80 00 20 */	blr 
