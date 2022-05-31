lbl_805B56C4:
/* 805B56C4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 805B56C8  7C 08 02 A6 */	mflr r0
/* 805B56CC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805B56D0  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 805B56D4  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 805B56D8  39 61 00 D0 */	addi r11, r1, 0xd0
/* 805B56DC  4B AE 57 D5 */	bl func_8009AEB0
/* 805B56E0  7C 79 1B 78 */	mr r25, r3
/* 805B56E4  3C A0 80 6C */	lis r5, data_806C5CC0@ha /* 0x806C5CC0@ha */
/* 805B56E8  80 99 02 B4 */	lwz r4, 0x2b4(r25)
/* 805B56EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B56F0  3B E5 5C C0 */	addi r31, r5, data_806C5CC0@l /* 0x806C5CC0@l */
/* 805B56F4  38 C0 00 04 */	li r6, 4
/* 805B56F8  54 85 07 FE */	clrlwi r5, r4, 0x1f
/* 805B56FC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805B5700  1C 65 26 B0 */	mulli r3, r5, 0x26b0
/* 805B5704  38 9F 02 C4 */	addi r4, r31, 0x2c4
/* 805B5708  38 E5 FF FF */	addi r7, r5, -1
/* 805B570C  7C 60 1A 14 */	add r3, r0, r3
/* 805B5710  7C DE 38 78 */	andc r30, r6, r7
/* 805B5714  3C C3 00 01 */	addis r6, r3, 1
/* 805B5718  88 06 9D 12 */	lbz r0, -0x62ee(r6)
/* 805B571C  38 61 00 28 */	addi r3, r1, 0x28
/* 805B5720  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 805B5724  7C 84 00 AE */	lbzx r4, r4, r0
/* 805B5728  4B FF FE D9 */	bl aMHS_make_bgOffset
/* 805B572C  3C 60 80 65 */	lis r3, lit_668@ha /* 0x8064A984@ha */
/* 805B5730  38 1F 02 D0 */	addi r0, r31, 0x2d0
/* 805B5734  82 A1 00 20 */	lwz r21, 0x20(r1)
/* 805B5738  7C 18 03 78 */	mr r24, r0
/* 805B573C  CB E3 A9 84 */	lfd f31, lit_668@l(r3)  /* 0x8064A984@l */
/* 805B5740  3B 81 00 28 */	addi r28, r1, 0x28
/* 805B5744  3B BF 02 C8 */	addi r29, r31, 0x2c8
/* 805B5748  3B 60 00 00 */	li r27, 0
/* 805B574C  3E 80 43 30 */	lis r20, 0x4330
lbl_805B5750:
/* 805B5750  88 18 00 00 */	lbz r0, 0(r24)
/* 805B5754  7E FD F2 14 */	add r23, r29, r30
/* 805B5758  92 81 00 98 */	stw r20, 0x98(r1)
/* 805B575C  3B 40 00 00 */	li r26, 0
/* 805B5760  7C 00 07 74 */	extsb r0, r0
/* 805B5764  C0 39 00 14 */	lfs f1, 0x14(r25)
/* 805B5768  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805B576C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 805B5770  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 805B5774  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805B5778  EC 01 00 2A */	fadds f0, f1, f0
/* 805B577C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805B5780  82 C1 00 24 */	lwz r22, 0x24(r1)
lbl_805B5784:
/* 805B5784  88 17 00 00 */	lbz r0, 0(r23)
/* 805B5788  38 61 00 10 */	addi r3, r1, 0x10
/* 805B578C  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805B5790  38 81 00 08 */	addi r4, r1, 8
/* 805B5794  7C 00 07 74 */	extsb r0, r0
/* 805B5798  81 1C 00 00 */	lwz r8, 0(r28)
/* 805B579C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805B57A0  A0 FC 00 04 */	lhz r7, 4(r28)
/* 805B57A4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 805B57A8  38 BF 02 D4 */	addi r5, r31, 0x2d4
/* 805B57AC  88 1C 00 06 */	lbz r0, 6(r28)
/* 805B57B0  38 C0 02 8B */	li r6, 0x28b
/* 805B57B4  92 81 00 98 */	stw r20, 0x98(r1)
/* 805B57B8  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 805B57BC  91 01 00 08 */	stw r8, 8(r1)
/* 805B57C0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805B57C4  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 805B57C8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B57CC  98 01 00 0E */	stb r0, 0xe(r1)
/* 805B57D0  92 A1 00 14 */	stw r21, 0x14(r1)
/* 805B57D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B57D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B57DC  92 C1 00 18 */	stw r22, 0x18(r1)
/* 805B57E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B57E4  4B DD C5 95 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B57E8  3B 5A 00 01 */	addi r26, r26, 1
/* 805B57EC  3A F7 00 01 */	addi r23, r23, 1
/* 805B57F0  2C 1A 00 04 */	cmpwi r26, 4
/* 805B57F4  3B 9C 00 07 */	addi r28, r28, 7
/* 805B57F8  41 80 FF 8C */	blt lbl_805B5784
/* 805B57FC  3B 7B 00 01 */	addi r27, r27, 1
/* 805B5800  3B 18 00 01 */	addi r24, r24, 1
/* 805B5804  2C 1B 00 04 */	cmpwi r27, 4
/* 805B5808  41 80 FF 48 */	blt lbl_805B5750
/* 805B580C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 805B5810  39 61 00 D0 */	addi r11, r1, 0xd0
/* 805B5814  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 805B5818  4B AE 56 E5 */	bl func_8009AEFC
/* 805B581C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 805B5820  7C 08 03 A6 */	mtlr r0
/* 805B5824  38 21 00 E0 */	addi r1, r1, 0xe0
/* 805B5828  4E 80 00 20 */	blr 
