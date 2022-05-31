lbl_805C55F0:
/* 805C55F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C55F4  7C 08 02 A6 */	mflr r0
/* 805C55F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C55FC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805C5600  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805C5604  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805C5608  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805C560C  39 61 00 30 */	addi r11, r1, 0x30
/* 805C5610  4B AD 58 BD */	bl func_8009AECC
/* 805C5614  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C5618  FF C0 08 90 */	fmr f30, f1
/* 805C561C  FF E0 10 90 */	fmr f31, f2
/* 805C5620  83 C4 00 00 */	lwz r30, 0(r4)
/* 805C5624  83 E3 09 90 */	lwz r31, 0x990(r3)
/* 805C5628  3B 60 00 00 */	li r27, 0
/* 805C562C  8B 9F 00 37 */	lbz r28, 0x37(r31)
/* 805C5630  3B BF 00 3A */	addi r29, r31, 0x3a
/* 805C5634  48 00 00 18 */	b lbl_805C564C
lbl_805C5638:
/* 805C5638  88 7D 00 00 */	lbz r3, 0(r29)
/* 805C563C  38 80 00 01 */	li r4, 1
/* 805C5640  4B DE A0 5D */	bl mFont_GetCodeWidth
/* 805C5644  7F 7B 1A 14 */	add r27, r27, r3
/* 805C5648  3B BD 00 01 */	addi r29, r29, 1
lbl_805C564C:
/* 805C564C  2C 1C 00 00 */	cmpwi r28, 0
/* 805C5650  3B 9C FF FF */	addi r28, r28, -1
/* 805C5654  40 82 FF E4 */	bne lbl_805C5638
/* 805C5658  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 805C565C  3C 00 43 30 */	lis r0, 0x4330
/* 805C5660  3C 80 80 65 */	lis r4, lit_483@ha /* 0x8064ADEC@ha */
/* 805C5664  90 61 00 0C */	stw r3, 0xc(r1)
/* 805C5668  38 64 AD EC */	addi r3, r4, lit_483@l /* 0x8064ADEC@l */
/* 805C566C  90 01 00 08 */	stw r0, 8(r1)
/* 805C5670  3C 80 80 65 */	lis r4, lit_646@ha /* 0x8064AE0C@ha */
/* 805C5674  C8 23 00 00 */	lfd f1, 0(r3)
/* 805C5678  38 A4 AE 0C */	addi r5, r4, lit_646@l /* 0x8064AE0C@l */
/* 805C567C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C5680  3C 60 80 65 */	lis r3, lit_645@ha /* 0x8064AE08@ha */
/* 805C5684  38 C3 AE 08 */	addi r6, r3, lit_645@l /* 0x8064AE08@l */
/* 805C5688  C0 85 00 00 */	lfs f4, 0(r5)
/* 805C568C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805C5690  3C 80 80 65 */	lis r4, lit_647@ha /* 0x8064AE10@ha */
/* 805C5694  C0 04 AE 10 */	lfs f0, lit_647@l(r4)  /* 0x8064AE10@l */
/* 805C5698  3C 60 80 65 */	lis r3, lit_505@ha /* 0x8064ADFC@ha */
/* 805C569C  38 83 AD FC */	addi r4, r3, lit_505@l /* 0x8064ADFC@l */
/* 805C56A0  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805C56A4  EC 5E 08 2A */	fadds f2, f30, f1
/* 805C56A8  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C56AC  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C56B0  EC 1F 00 28 */	fsubs f0, f31, f0
/* 805C56B4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805C56B8  38 60 00 00 */	li r3, 0
/* 805C56BC  EC 84 10 2A */	fadds f4, f4, f2
/* 805C56C0  FC 40 08 90 */	fmr f2, f1
/* 805C56C4  EC 85 20 2A */	fadds f4, f5, f4
/* 805C56C8  D0 9F 01 38 */	stfs f4, 0x138(r31)
/* 805C56CC  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 805C56D0  4B E4 6D 1D */	bl Matrix_scale
/* 805C56D4  3C 60 80 65 */	lis r3, lit_609@ha /* 0x8064AE04@ha */
/* 805C56D8  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 805C56DC  C0 63 AE 04 */	lfs f3, lit_609@l(r3)  /* 0x8064AE04@l */
/* 805C56E0  38 60 00 01 */	li r3, 1
/* 805C56E4  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 805C56E8  4B E4 6C 19 */	bl Matrix_translate
/* 805C56EC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C56F0  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 805C56F4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C56F8  7F C3 F3 78 */	mr r3, r30
/* 805C56FC  90 1B 00 00 */	stw r0, 0(r27)
/* 805C5700  4B E4 7C D5 */	bl _Matrix_to_Mtx_new
/* 805C5704  90 7B 00 04 */	stw r3, 4(r27)
/* 805C5708  3C A0 DE 00 */	lis r5, 0xde00
/* 805C570C  3C 60 80 A1 */	lis r3, data_80A0DC70@ha /* 0x80A0DC70@ha */
/* 805C5710  3C 80 80 A1 */	lis r4, lat_point_mT_model@ha /* 0x80A0DD90@ha */
/* 805C5714  90 BB 00 08 */	stw r5, 8(r27)
/* 805C5718  38 03 DC 70 */	addi r0, r3, data_80A0DC70@l /* 0x80A0DC70@l */
/* 805C571C  3C 60 80 A1 */	lis r3, lat_hani_senT_model@ha /* 0x80A0DC40@ha */
/* 805C5720  38 84 DD 90 */	addi r4, r4, lat_point_mT_model@l /* 0x80A0DD90@l */
/* 805C5724  90 1B 00 0C */	stw r0, 0xc(r27)
/* 805C5728  38 03 DC 40 */	addi r0, r3, lat_hani_senT_model@l /* 0x80A0DC40@l */
/* 805C572C  90 BB 00 10 */	stw r5, 0x10(r27)
/* 805C5730  90 9B 00 14 */	stw r4, 0x14(r27)
/* 805C5734  3B 7B 00 18 */	addi r27, r27, 0x18
/* 805C5738  7F 63 DB 78 */	mr r3, r27
/* 805C573C  90 BB 00 00 */	stw r5, 0(r27)
/* 805C5740  3B 7B 00 08 */	addi r27, r27, 8
/* 805C5744  90 03 00 04 */	stw r0, 4(r3)
/* 805C5748  93 7E 02 D0 */	stw r27, 0x2d0(r30)
/* 805C574C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805C5750  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805C5754  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805C5758  39 61 00 30 */	addi r11, r1, 0x30
/* 805C575C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805C5760  4B AD 57 B9 */	bl func_8009AF18
/* 805C5764  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C5768  7C 08 03 A6 */	mtlr r0
/* 805C576C  38 21 00 50 */	addi r1, r1, 0x50
/* 805C5770  4E 80 00 20 */	blr 
