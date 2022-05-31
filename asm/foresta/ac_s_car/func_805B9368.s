lbl_805B9368:
/* 805B9368  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B936C  7C 08 02 A6 */	mflr r0
/* 805B9370  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B9374  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805B9378  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805B937C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805B9380  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805B9384  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9388  7C 7F 1B 78 */	mr r31, r3
/* 805B938C  38 60 00 4C */	li r3, 0x4c
/* 805B9390  38 80 00 00 */	li r4, 0
/* 805B9394  4B DE 4D 49 */	bl mEv_get_common_area
/* 805B9398  28 03 00 00 */	cmplwi r3, 0
/* 805B939C  41 82 00 A4 */	beq lbl_805B9440
/* 805B93A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B93A4  3C 00 43 30 */	lis r0, 0x4330
/* 805B93A8  3C C0 80 65 */	lis r6, lit_544@ha /* 0x8064AA94@ha */
/* 805B93AC  90 01 00 08 */	stw r0, 8(r1)
/* 805B93B0  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 805B93B4  3C 80 80 65 */	lis r4, lit_538@ha /* 0x8064AA80@ha */
/* 805B93B8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805B93BC  38 E6 AA 94 */	addi r7, r6, lit_544@l /* 0x8064AA94@l */
/* 805B93C0  38 C4 AA 80 */	addi r6, r4, lit_538@l /* 0x8064AA80@l */
/* 805B93C4  3C 60 80 65 */	lis r3, lit_539@ha /* 0x8064AA84@ha */
/* 805B93C8  C8 27 00 00 */	lfd f1, 0(r7)
/* 805B93CC  38 A3 AA 84 */	addi r5, r3, lit_539@l /* 0x8064AA84@l */
/* 805B93D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 805B93D4  3C 80 80 65 */	lis r4, lit_540@ha /* 0x8064AA88@ha */
/* 805B93D8  C0 66 00 00 */	lfs f3, 0(r6)
/* 805B93DC  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064AA8C@ha */
/* 805B93E0  EC 80 08 28 */	fsubs f4, f0, f1
/* 805B93E4  C0 45 00 00 */	lfs f2, 0(r5)
/* 805B93E8  C0 24 AA 88 */	lfs f1, lit_540@l(r4)  /* 0x8064AA88@l */
/* 805B93EC  C0 03 AA 8C */	lfs f0, lit_541@l(r3)  /* 0x8064AA8C@l */
/* 805B93F0  EC 64 18 24 */	fdivs f3, f4, f3
/* 805B93F4  EF C2 18 28 */	fsubs f30, f2, f3
/* 805B93F8  EF E0 00 F2 */	fmuls f31, f0, f3
/* 805B93FC  EC 01 07 B2 */	fmuls f0, f1, f30
/* 805B9400  EC 20 F8 2A */	fadds f1, f0, f31
/* 805B9404  4B AE 19 A1 */	bl func_8009ADA4
/* 805B9408  3C 80 80 65 */	lis r4, lit_542@ha /* 0x8064AA90@ha */
/* 805B940C  90 7F 00 00 */	stw r3, 0(r31)
/* 805B9410  C0 04 AA 90 */	lfs f0, lit_542@l(r4)  /* 0x8064AA90@l */
/* 805B9414  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805B9418  EC 20 F8 2A */	fadds f1, f0, f31
/* 805B941C  4B AE 19 89 */	bl func_8009ADA4
/* 805B9420  3C 80 80 65 */	lis r4, lit_538@ha /* 0x8064AA80@ha */
/* 805B9424  90 7F 00 04 */	stw r3, 4(r31)
/* 805B9428  C0 04 AA 80 */	lfs f0, lit_538@l(r4)  /* 0x8064AA80@l */
/* 805B942C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805B9430  EC 20 F8 2A */	fadds f1, f0, f31
/* 805B9434  4B AE 19 71 */	bl func_8009ADA4
/* 805B9438  90 7F 00 08 */	stw r3, 8(r31)
/* 805B943C  48 00 00 1C */	b lbl_805B9458
lbl_805B9440:
/* 805B9440  38 00 00 96 */	li r0, 0x96
/* 805B9444  38 60 00 78 */	li r3, 0x78
/* 805B9448  90 1F 00 00 */	stw r0, 0(r31)
/* 805B944C  38 00 00 64 */	li r0, 0x64
/* 805B9450  90 7F 00 04 */	stw r3, 4(r31)
/* 805B9454  90 1F 00 08 */	stw r0, 8(r31)
lbl_805B9458:
/* 805B9458  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805B945C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805B9460  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805B9464  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805B9468  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B946C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B9470  7C 08 03 A6 */	mtlr r0
/* 805B9474  38 21 00 40 */	addi r1, r1, 0x40
/* 805B9478  4E 80 00 20 */	blr 
