lbl_806135D0:
/* 806135D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806135D4  7C 08 02 A6 */	mflr r0
/* 806135D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806135DC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806135E0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806135E4  39 61 00 30 */	addi r11, r1, 0x30
/* 806135E8  4B A8 78 ED */	bl func_8009AED4
/* 806135EC  7C 7E 1B 78 */	mr r30, r3
/* 806135F0  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 806135F4  7C 9F 23 78 */	mr r31, r4
/* 806135F8  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 806135FC  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80613600  38 03 F9 9A */	addi r0, r3, -1638
/* 80613604  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80613608  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8061360C  B0 1E 00 4C */	sth r0, 0x4c(r30)
/* 80613610  80 1F 20 90 */	lwz r0, 0x2090(r31)
/* 80613614  90 81 00 18 */	stw r4, 0x18(r1)
/* 80613618  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8061361C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80613620  40 82 01 14 */	bne lbl_80613734
/* 80613624  4B A4 97 09 */	bl fqrand2
/* 80613628  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064C538@ha */
/* 8061362C  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 80613630  C0 04 C5 38 */	lfs f0, lit_393@l(r4)  /* 0x8064C538@l */
/* 80613634  EF E0 00 72 */	fmuls f31, f0, f1
/* 80613638  4B DA 74 B9 */	bl sin_s
/* 8061363C  3C 60 80 65 */	lis r3, data_8064C534@ha /* 0x8064C534@ha */
/* 80613640  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80613644  C0 43 C5 34 */	lfs f2, data_8064C534@l(r3)  /* 0x8064C534@l */
/* 80613648  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061364C  EC 21 F8 2A */	fadds f1, f1, f31
/* 80613650  EC 00 08 2A */	fadds f0, f0, f1
/* 80613654  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80613658  4B A4 96 D5 */	bl fqrand2
/* 8061365C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80613660  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064C538@ha */
/* 80613664  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80613668  3C C0 80 65 */	lis r6, lit_394@ha /* 0x8064C53C@ha */
/* 8061366C  3F A3 00 02 */	addis r29, r3, 2
/* 80613670  38 A4 C5 38 */	addi r5, r4, lit_393@l /* 0x8064C538@l */
/* 80613674  80 7D 60 9C */	lwz r3, 0x609c(r29)
/* 80613678  3C 80 80 65 */	lis r4, lit_395@ha /* 0x8064C540@ha */
/* 8061367C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80613680  38 A4 C5 40 */	addi r5, r4, lit_395@l /* 0x8064C540@l */
/* 80613684  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80613688  38 80 00 00 */	li r4, 0
/* 8061368C  EF E0 00 72 */	fmuls f31, f0, f1
/* 80613690  C0 45 00 00 */	lfs f2, 0(r5)
/* 80613694  A8 7E 00 00 */	lha r3, 0(r30)
/* 80613698  38 A0 00 3C */	li r5, 0x3c
/* 8061369C  C0 26 C5 3C */	lfs f1, lit_394@l(r6)  /* 0x8064C53C@l */
/* 806136A0  7D 89 03 A6 */	mtctr r12
/* 806136A4  4E 80 04 21 */	bctrl 
/* 806136A8  EC 21 F8 2A */	fadds f1, f1, f31
/* 806136AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806136B0  EC 00 08 2A */	fadds f0, f0, f1
/* 806136B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806136B8  4B A4 96 75 */	bl fqrand2
/* 806136BC  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064C538@ha */
/* 806136C0  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 806136C4  C0 04 C5 38 */	lfs f0, lit_393@l(r4)  /* 0x8064C538@l */
/* 806136C8  EF E0 00 72 */	fmuls f31, f0, f1
/* 806136CC  4B DA 73 D1 */	bl cos_s
/* 806136D0  3C 80 80 65 */	lis r4, data_8064C534@ha /* 0x8064C534@ha */
/* 806136D4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 806136D8  C0 44 C5 34 */	lfs f2, data_8064C534@l(r4)  /* 0x8064C534@l */
/* 806136DC  7F E7 FB 78 */	mr r7, r31
/* 806136E0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 806136E4  38 81 00 08 */	addi r4, r1, 8
/* 806136E8  EC 22 00 72 */	fmuls f1, f2, f1
/* 806136EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806136F0  90 61 00 08 */	stw r3, 8(r1)
/* 806136F4  38 60 00 56 */	li r3, 0x56
/* 806136F8  80 BD 60 9C */	lwz r5, 0x609c(r29)
/* 806136FC  38 C0 00 00 */	li r6, 0
/* 80613700  EC 21 F8 2A */	fadds f1, f1, f31
/* 80613704  90 01 00 0C */	stw r0, 0xc(r1)
/* 80613708  39 20 00 00 */	li r9, 0
/* 8061370C  39 40 00 00 */	li r10, 0
/* 80613710  EC 00 08 2A */	fadds f0, f0, f1
/* 80613714  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80613718  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8061371C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80613720  81 85 00 00 */	lwz r12, 0(r5)
/* 80613724  88 BE 00 0E */	lbz r5, 0xe(r30)
/* 80613728  A1 1E 00 0C */	lhz r8, 0xc(r30)
/* 8061372C  7D 89 03 A6 */	mtctr r12
/* 80613730  4E 80 04 21 */	bctrl 
lbl_80613734:
/* 80613734  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80613738  39 61 00 30 */	addi r11, r1, 0x30
/* 8061373C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80613740  4B A8 77 E1 */	bl func_8009AF20
/* 80613744  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80613748  7C 08 03 A6 */	mtlr r0
/* 8061374C  38 21 00 40 */	addi r1, r1, 0x40
/* 80613750  4E 80 00 20 */	blr 
