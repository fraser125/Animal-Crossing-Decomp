lbl_804A83D8:
/* 804A83D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804A83DC  7C 08 02 A6 */	mflr r0
/* 804A83E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804A83E4  39 61 00 70 */	addi r11, r1, 0x70
/* 804A83E8  4B BF 2A ED */	bl func_8009AED4
/* 804A83EC  7C 9F 23 78 */	mr r31, r4
/* 804A83F0  7C 7E 1B 78 */	mr r30, r3
/* 804A83F4  80 04 01 B8 */	lwz r0, 0x1b8(r4)
/* 804A83F8  3B A0 00 00 */	li r29, 0
/* 804A83FC  2C 00 00 01 */	cmpwi r0, 1
/* 804A8400  40 82 00 8C */	bne lbl_804A848C
/* 804A8404  38 7F 01 78 */	addi r3, r31, 0x178
/* 804A8408  4B F6 3E 51 */	bl Matrix_put
/* 804A840C  3C 60 80 64 */	lis r3, data_80645DC4@ha /* 0x80645DC4@ha */
/* 804A8410  3C 80 80 64 */	lis r4, lit_450@ha /* 0x80645DC8@ha */
/* 804A8414  38 A3 5D C4 */	addi r5, r3, data_80645DC4@l /* 0x80645DC4@l */
/* 804A8418  C0 64 5D C8 */	lfs f3, lit_450@l(r4)  /* 0x80645DC8@l */
/* 804A841C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804A8420  38 60 00 01 */	li r3, 1
/* 804A8424  FC 40 08 90 */	fmr f2, f1
/* 804A8428  4B F6 3E D9 */	bl Matrix_translate
/* 804A842C  38 61 00 08 */	addi r3, r1, 8
/* 804A8430  4B F6 50 8D */	bl Matrix_Position_Zero
/* 804A8434  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 804A8438  2C 00 00 00 */	cmpwi r0, 0
/* 804A843C  40 82 00 1C */	bne lbl_804A8458
/* 804A8440  38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 804A8444  38 81 00 08 */	addi r4, r1, 8
/* 804A8448  4B F1 2A 75 */	bl xyz_t_move
/* 804A844C  38 00 00 01 */	li r0, 1
/* 804A8450  90 1F 01 D0 */	stw r0, 0x1d0(r31)
/* 804A8454  48 00 00 38 */	b lbl_804A848C
lbl_804A8458:
/* 804A8458  C0 21 00 08 */	lfs f1, 8(r1)
/* 804A845C  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 804A8460  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804A8464  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A8468  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 804A846C  EC 22 08 28 */	fsubs f1, f2, f1
/* 804A8470  FC 40 00 50 */	fneg f2, f0
/* 804A8474  4B F6 3B 8D */	bl atans_table
/* 804A8478  7C 60 1B 78 */	mr r0, r3
/* 804A847C  38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 804A8480  7C 1D 03 78 */	mr r29, r0
/* 804A8484  38 81 00 08 */	addi r4, r1, 8
/* 804A8488  4B F1 2A 35 */	bl xyz_t_move
lbl_804A848C:
/* 804A848C  3C 80 80 C1 */	lis r4, tol_hata_01_v@ha /* 0x80C10EC0@ha */
/* 804A8490  7F C3 F3 78 */	mr r3, r30
/* 804A8494  38 84 0E C0 */	addi r4, r4, tol_hata_01_v@l /* 0x80C10EC0@l */
/* 804A8498  38 A0 00 F0 */	li r5, 0xf0
/* 804A849C  4B F1 25 89 */	bl func_803BAA24
/* 804A84A0  7F A4 EB 78 */	mr r4, r29
/* 804A84A4  38 7F 01 CC */	addi r3, r31, 0x1cc
/* 804A84A8  38 BF 01 CE */	addi r5, r31, 0x1ce
/* 804A84AC  38 C0 09 C4 */	li r6, 0x9c4
/* 804A84B0  4B FF FE BD */	bl func_804A836C
/* 804A84B4  A8 7F 01 CC */	lha r3, 0x1cc(r31)
/* 804A84B8  4B F1 25 E5 */	bl cos_s
/* 804A84BC  A8 7E 00 90 */	lha r3, 0x90(r30)
/* 804A84C0  3C 00 43 30 */	lis r0, 0x4330
/* 804A84C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A84C8  3C 80 80 64 */	lis r4, lit_452@ha /* 0x80645DCC@ha */
/* 804A84CC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804A84D0  C8 44 5D CC */	lfd f2, lit_452@l(r4)  /* 0x80645DCC@l */
/* 804A84D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A84D8  A8 7F 01 CC */	lha r3, 0x1cc(r31)
/* 804A84DC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804A84E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804A84E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A84E8  FC 00 00 1E */	fctiwz f0, f0
/* 804A84EC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804A84F0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 804A84F4  4B F1 25 FD */	bl sin_s
/* 804A84F8  A8 9E 00 90 */	lha r4, 0x90(r30)
/* 804A84FC  3C 00 43 30 */	lis r0, 0x4330
/* 804A8500  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A8504  3C 60 80 64 */	lis r3, lit_452@ha /* 0x80645DCC@ha */
/* 804A8508  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804A850C  C8 43 5D CC */	lfd f2, lit_452@l(r3)  /* 0x80645DCC@l */
/* 804A8510  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A8514  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804A8518  B3 BE 00 90 */	sth r29, 0x90(r30)
/* 804A851C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804A8520  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A8524  FC 00 00 1E */	fctiwz f0, f0
/* 804A8528  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804A852C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A8530  B0 1E 00 92 */	sth r0, 0x92(r30)
/* 804A8534  B3 BE 00 C0 */	sth r29, 0xc0(r30)
/* 804A8538  B0 1E 00 C2 */	sth r0, 0xc2(r30)
/* 804A853C  A8 7F 01 CC */	lha r3, 0x1cc(r31)
/* 804A8540  4B F1 25 5D */	bl cos_s
/* 804A8544  A8 7E 00 A0 */	lha r3, 0xa0(r30)
/* 804A8548  3C 00 43 30 */	lis r0, 0x4330
/* 804A854C  90 01 00 38 */	stw r0, 0x38(r1)
/* 804A8550  3C 80 80 64 */	lis r4, lit_452@ha /* 0x80645DCC@ha */
/* 804A8554  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804A8558  C8 44 5D CC */	lfd f2, lit_452@l(r4)  /* 0x80645DCC@l */
/* 804A855C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804A8560  A8 7F 01 CC */	lha r3, 0x1cc(r31)
/* 804A8564  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804A8568  EC 00 10 28 */	fsubs f0, f0, f2
/* 804A856C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A8570  FC 00 00 1E */	fctiwz f0, f0
/* 804A8574  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804A8578  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 804A857C  4B F1 25 75 */	bl sin_s
/* 804A8580  A8 9E 00 A0 */	lha r4, 0xa0(r30)
/* 804A8584  3C 00 43 30 */	lis r0, 0x4330
/* 804A8588  90 01 00 48 */	stw r0, 0x48(r1)
/* 804A858C  3C 60 80 64 */	lis r3, lit_452@ha /* 0x80645DCC@ha */
/* 804A8590  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804A8594  C8 43 5D CC */	lfd f2, lit_452@l(r3)  /* 0x80645DCC@l */
/* 804A8598  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804A859C  39 61 00 70 */	addi r11, r1, 0x70
/* 804A85A0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804A85A4  B3 FE 00 A0 */	sth r31, 0xa0(r30)
/* 804A85A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804A85AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A85B0  FC 00 00 1E */	fctiwz f0, f0
/* 804A85B4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804A85B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A85BC  B0 1E 00 A2 */	sth r0, 0xa2(r30)
/* 804A85C0  B3 FE 00 B0 */	sth r31, 0xb0(r30)
/* 804A85C4  B0 1E 00 B2 */	sth r0, 0xb2(r30)
/* 804A85C8  4B BF 29 59 */	bl func_8009AF20
/* 804A85CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804A85D0  7C 08 03 A6 */	mtlr r0
/* 804A85D4  38 21 00 70 */	addi r1, r1, 0x70
/* 804A85D8  4E 80 00 20 */	blr 
