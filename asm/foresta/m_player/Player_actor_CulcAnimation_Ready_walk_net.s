lbl_804F2320:
/* 804F2320  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F2324  7C 08 02 A6 */	mflr r0
/* 804F2328  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F232C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804F2330  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804F2334  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F2338  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F233C  7C 7E 1B 78 */	mr r30, r3
/* 804F2340  3C 60 80 65 */	lis r3, lit_10847@ha /* 0x806484FC@ha */
/* 804F2344  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804F2348  38 A3 84 FC */	addi r5, r3, lit_10847@l /* 0x806484FC@l */
/* 804F234C  C0 45 00 00 */	lfs f2, 0(r5)
/* 804F2350  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F2354  EC 20 00 72 */	fmuls f1, f0, f1
/* 804F2358  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F235C  7C 9F 23 78 */	mr r31, r4
/* 804F2360  EC 81 10 24 */	fdivs f4, f1, f2
/* 804F2364  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804F2368  40 81 00 6C */	ble lbl_804F23D4
/* 804F236C  FC 20 20 34 */	frsqrte f1, f4
/* 804F2370  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804F2374  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804F2378  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804F237C  C8 64 00 00 */	lfd f3, 0(r4)
/* 804F2380  FC 01 00 72 */	fmul f0, f1, f1
/* 804F2384  C8 43 69 FC */	lfd f2, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804F2388  FC 23 00 72 */	fmul f1, f3, f1
/* 804F238C  FC 04 00 32 */	fmul f0, f4, f0
/* 804F2390  FC 02 00 28 */	fsub f0, f2, f0
/* 804F2394  FC 21 00 32 */	fmul f1, f1, f0
/* 804F2398  FC 01 00 72 */	fmul f0, f1, f1
/* 804F239C  FC 23 00 72 */	fmul f1, f3, f1
/* 804F23A0  FC 04 00 32 */	fmul f0, f4, f0
/* 804F23A4  FC 02 00 28 */	fsub f0, f2, f0
/* 804F23A8  FC 21 00 32 */	fmul f1, f1, f0
/* 804F23AC  FC 01 00 72 */	fmul f0, f1, f1
/* 804F23B0  FC 23 00 72 */	fmul f1, f3, f1
/* 804F23B4  FC 04 00 32 */	fmul f0, f4, f0
/* 804F23B8  FC 02 00 28 */	fsub f0, f2, f0
/* 804F23BC  FC 01 00 32 */	fmul f0, f1, f0
/* 804F23C0  FC 04 00 32 */	fmul f0, f4, f0
/* 804F23C4  FC 00 00 18 */	frsp f0, f0
/* 804F23C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804F23CC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804F23D0  48 00 00 08 */	b lbl_804F23D8
lbl_804F23D4:
/* 804F23D4  FC 20 20 90 */	fmr f1, f4
lbl_804F23D8:
/* 804F23D8  3C 60 80 65 */	lis r3, lit_10848@ha /* 0x80648500@ha */
/* 804F23DC  88 1E 00 99 */	lbz r0, 0x99(r30)
/* 804F23E0  C0 03 85 00 */	lfs f0, lit_10848@l(r3)  /* 0x80648500@l */
/* 804F23E4  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 804F23E8  28 00 00 02 */	cmplwi r0, 2
/* 804F23EC  EF E0 00 72 */	fmuls f31, f0, f1
/* 804F23F0  40 82 00 10 */	bne lbl_804F2400
/* 804F23F4  3C 60 80 64 */	lis r3, lit_6209@ha /* 0x80647DE8@ha */
/* 804F23F8  C3 E3 7D E8 */	lfs f31, lit_6209@l(r3)  /* 0x80647DE8@l */
/* 804F23FC  48 00 00 C8 */	b lbl_804F24C4
lbl_804F2400:
/* 804F2400  28 00 00 01 */	cmplwi r0, 1
/* 804F2404  40 82 00 AC */	bne lbl_804F24B0
/* 804F2408  A8 7E 00 36 */	lha r3, 0x36(r30)
/* 804F240C  A8 1E 00 A8 */	lha r0, 0xa8(r30)
/* 804F2410  7C 03 00 50 */	subf r0, r3, r0
/* 804F2414  7C 03 07 34 */	extsh r3, r0
/* 804F2418  4B EC 86 D9 */	bl sin_s
/* 804F241C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F2420  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F2424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F2428  4C 41 13 82 */	cror 2, 1, 2
/* 804F242C  40 82 00 08 */	bne lbl_804F2434
/* 804F2430  48 00 00 08 */	b lbl_804F2438
lbl_804F2434:
/* 804F2434  FC 20 08 50 */	fneg f1, f1
lbl_804F2438:
/* 804F2438  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F243C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F2440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F2444  40 81 00 68 */	ble lbl_804F24AC
/* 804F2448  FC 40 08 34 */	frsqrte f2, f1
/* 804F244C  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804F2450  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804F2454  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804F2458  C8 84 00 00 */	lfd f4, 0(r4)
/* 804F245C  FC 02 00 B2 */	fmul f0, f2, f2
/* 804F2460  C8 63 69 FC */	lfd f3, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804F2464  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F2468  FC 01 00 32 */	fmul f0, f1, f0
/* 804F246C  FC 03 00 28 */	fsub f0, f3, f0
/* 804F2470  FC 42 00 32 */	fmul f2, f2, f0
/* 804F2474  FC 02 00 B2 */	fmul f0, f2, f2
/* 804F2478  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F247C  FC 01 00 32 */	fmul f0, f1, f0
/* 804F2480  FC 03 00 28 */	fsub f0, f3, f0
/* 804F2484  FC 42 00 32 */	fmul f2, f2, f0
/* 804F2488  FC 02 00 B2 */	fmul f0, f2, f2
/* 804F248C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F2490  FC 01 00 32 */	fmul f0, f1, f0
/* 804F2494  FC 03 00 28 */	fsub f0, f3, f0
/* 804F2498  FC 02 00 32 */	fmul f0, f2, f0
/* 804F249C  FC 01 00 32 */	fmul f0, f1, f0
/* 804F24A0  FC 00 00 18 */	frsp f0, f0
/* 804F24A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804F24A8  C0 21 00 08 */	lfs f1, 8(r1)
lbl_804F24AC:
/* 804F24AC  EF FF 00 72 */	fmuls f31, f31, f1
lbl_804F24B0:
/* 804F24B0  3C 60 80 64 */	lis r3, lit_6209@ha /* 0x80647DE8@ha */
/* 804F24B4  C0 03 7D E8 */	lfs f0, lit_6209@l(r3)  /* 0x80647DE8@l */
/* 804F24B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F24BC  40 80 00 08 */	bge lbl_804F24C4
/* 804F24C0  FF E0 00 90 */	fmr f31, f0
lbl_804F24C4:
/* 804F24C4  D3 FE 01 80 */	stfs f31, 0x180(r30)
/* 804F24C8  7F C3 F3 78 */	mr r3, r30
/* 804F24CC  7F E4 FB 78 */	mr r4, r31
/* 804F24D0  D3 FE 01 F0 */	stfs f31, 0x1f0(r30)
/* 804F24D4  4B FE 40 B5 */	bl Player_actor_CulcAnimation_Base2
/* 804F24D8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804F24DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F24E0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804F24E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F24E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F24EC  7C 08 03 A6 */	mtlr r0
/* 804F24F0  38 21 00 30 */	addi r1, r1, 0x30
/* 804F24F4  4E 80 00 20 */	blr 
