lbl_804444F4:
/* 804444F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804444F8  7C 08 02 A6 */	mflr r0
/* 804444FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80444500  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80444504  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80444508  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8044450C  2C 05 00 01 */	cmpwi r5, 1
/* 80444510  7D 1F 43 78 */	mr r31, r8
/* 80444514  40 82 01 B0 */	bne lbl_804446C4
/* 80444518  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044451C  3C A0 43 30 */	lis r5, 0x4330
/* 80444520  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80444524  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80444528  80 63 00 00 */	lwz r3, 0(r3)
/* 8044452C  38 E4 42 8C */	addi r7, r4, lit_570@l /* 0x8064428C@l */
/* 80444530  A8 DF 06 1C */	lha r6, 0x61c(r31)
/* 80444534  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80444538  A8 03 1B 82 */	lha r0, 0x1b82(r3)
/* 8044453C  38 64 42 C4 */	addi r3, r4, lit_793@l /* 0x806442C4@l */
/* 80444540  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80444544  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80444548  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044454C  C0 44 42 5C */	lfs f2, lit_471@l(r4)  /* 0x8064425C@l */
/* 80444550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444554  38 00 F5 56 */	li r0, -2730
/* 80444558  C8 67 00 00 */	lfd f3, 0(r7)
/* 8044455C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80444560  C0 23 00 00 */	lfs f1, 0(r3)
/* 80444564  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80444568  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8044456C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80444570  A8 89 00 00 */	lha r4, 0(r9)
/* 80444574  90 A1 00 08 */	stw r5, 8(r1)
/* 80444578  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044457C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80444580  EC 21 18 28 */	fsubs f1, f1, f3
/* 80444584  EC 02 00 2A */	fadds f0, f2, f0
/* 80444588  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044458C  FC 00 00 1E */	fctiwz f0, f0
/* 80444590  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80444594  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80444598  7C 64 1A 14 */	add r3, r4, r3
/* 8044459C  2C 03 F5 56 */	cmpwi r3, -2730
/* 804445A0  40 81 00 08 */	ble lbl_804445A8
/* 804445A4  7C 60 1B 78 */	mr r0, r3
lbl_804445A8:
/* 804445A8  2C 00 0A AA */	cmpwi r0, 0xaaa
/* 804445AC  40 80 00 18 */	bge lbl_804445C4
/* 804445B0  2C 03 F5 56 */	cmpwi r3, -2730
/* 804445B4  38 00 F5 56 */	li r0, -2730
/* 804445B8  40 81 00 10 */	ble lbl_804445C8
/* 804445BC  7C 60 1B 78 */	mr r0, r3
/* 804445C0  48 00 00 08 */	b lbl_804445C8
lbl_804445C4:
/* 804445C4  38 00 0A AA */	li r0, 0xaaa
lbl_804445C8:
/* 804445C8  B0 09 00 00 */	sth r0, 0(r9)
/* 804445CC  A8 7F 06 3A */	lha r3, 0x63a(r31)
/* 804445D0  4B F7 65 21 */	bl sin_s
/* 804445D4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804445D8  3C 00 43 30 */	lis r0, 0x4330
/* 804445DC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804445E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804445E4  80 84 00 00 */	lwz r4, 0(r4)
/* 804445E8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 804445EC  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 804445F0  3C E0 80 64 */	lis r7, lit_4261@ha /* 0x806443E8@ha */
/* 804445F4  A8 84 1B 80 */	lha r4, 0x1b80(r4)
/* 804445F8  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 804445FC  38 C3 43 68 */	addi r6, r3, lit_1712@l /* 0x80644368@l */
/* 80444600  C8 45 00 00 */	lfd f2, 0(r5)
/* 80444604  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80444608  C0 66 00 00 */	lfs f3, 0(r6)
/* 8044460C  90 81 00 24 */	stw r4, 0x24(r1)
/* 80444610  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80444614  C0 87 43 E8 */	lfs f4, lit_4261@l(r7)  /* 0x806443E8@l */
/* 80444618  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044461C  A8 1F 06 3C */	lha r0, 0x63c(r31)
/* 80444620  EC 40 10 28 */	fsubs f2, f0, f2
/* 80444624  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80444628  A8 7F 06 3A */	lha r3, 0x63a(r31)
/* 8044462C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80444630  7C 03 02 14 */	add r0, r3, r0
/* 80444634  7C 03 07 34 */	extsh r3, r0
/* 80444638  EC 44 10 2A */	fadds f2, f4, f2
/* 8044463C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80444640  EF E0 08 2A */	fadds f31, f0, f1
/* 80444644  4B F7 64 AD */	bl sin_s
/* 80444648  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044464C  3C A0 80 64 */	lis r5, lit_4261@ha /* 0x806443E8@ha */
/* 80444650  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80444654  3C 00 43 30 */	lis r0, 0x4330
/* 80444658  80 84 00 00 */	lwz r4, 0(r4)
/* 8044465C  39 05 43 E8 */	addi r8, r5, lit_4261@l /* 0x806443E8@l */
/* 80444660  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80444664  90 01 00 28 */	stw r0, 0x28(r1)
/* 80444668  A8 84 1B 80 */	lha r4, 0x1b80(r4)
/* 8044466C  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80444670  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 80444674  C8 46 00 00 */	lfd f2, 0(r6)
/* 80444678  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8044467C  C0 A8 00 00 */	lfs f5, 0(r8)
/* 80444680  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80444684  38 E3 43 68 */	addi r7, r3, lit_1712@l /* 0x80644368@l */
/* 80444688  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044468C  C0 87 00 00 */	lfs f4, 0(r7)
/* 80444690  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80444694  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80444698  FC 60 F8 90 */	fmr f3, f31
/* 8044469C  38 60 00 01 */	li r3, 1
/* 804446A0  EC 40 10 28 */	fsubs f2, f0, f2
/* 804446A4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804446A8  EC 44 00 B2 */	fmuls f2, f4, f2
/* 804446AC  EC 45 10 2A */	fadds f2, f5, f2
/* 804446B0  EC 42 00 72 */	fmuls f2, f2, f1
/* 804446B4  FC 20 00 90 */	fmr f1, f0
/* 804446B8  EC 40 10 2A */	fadds f2, f0, f2
/* 804446BC  4B FC 7D 31 */	bl Matrix_scale
/* 804446C0  48 00 00 B8 */	b lbl_80444778
lbl_804446C4:
/* 804446C4  2C 05 00 02 */	cmpwi r5, 2
/* 804446C8  40 82 00 B0 */	bne lbl_80444778
/* 804446CC  A8 9F 06 1C */	lha r4, 0x61c(r31)
/* 804446D0  38 00 C7 1D */	li r0, -14563
/* 804446D4  A8 69 00 02 */	lha r3, 2(r9)
/* 804446D8  54 84 08 3C */	slwi r4, r4, 1
/* 804446DC  7C 64 18 50 */	subf r3, r4, r3
/* 804446E0  2C 03 C7 1D */	cmpwi r3, -14563
/* 804446E4  40 81 00 08 */	ble lbl_804446EC
/* 804446E8  7C 60 1B 78 */	mr r0, r3
lbl_804446EC:
/* 804446EC  2C 00 38 E3 */	cmpwi r0, 0x38e3
/* 804446F0  40 80 00 18 */	bge lbl_80444708
/* 804446F4  2C 03 C7 1D */	cmpwi r3, -14563
/* 804446F8  38 00 C7 1D */	li r0, -14563
/* 804446FC  40 81 00 10 */	ble lbl_8044470C
/* 80444700  7C 60 1B 78 */	mr r0, r3
/* 80444704  48 00 00 08 */	b lbl_8044470C
lbl_80444708:
/* 80444708  38 00 38 E3 */	li r0, 0x38e3
lbl_8044470C:
/* 8044470C  B0 09 00 02 */	sth r0, 2(r9)
/* 80444710  A8 7F 06 3A */	lha r3, 0x63a(r31)
/* 80444714  38 03 40 00 */	addi r0, r3, 0x4000
/* 80444718  7C 03 07 34 */	extsh r3, r0
/* 8044471C  4B F7 63 D5 */	bl sin_s
/* 80444720  3C 60 80 64 */	lis r3, lit_4262@ha /* 0x806443EC@ha */
/* 80444724  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80444728  38 A3 43 EC */	addi r5, r3, lit_4262@l /* 0x806443EC@l */
/* 8044472C  A8 7F 06 3A */	lha r3, 0x63a(r31)
/* 80444730  C0 45 00 00 */	lfs f2, 0(r5)
/* 80444734  3C 63 00 01 */	addis r3, r3, 1
/* 80444738  C0 04 42 60 */	lfs f0, lit_472@l(r4)  /* 0x80644260@l */
/* 8044473C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80444740  38 03 C0 00 */	addi r0, r3, -16384
/* 80444744  7C 03 07 34 */	extsh r3, r0
/* 80444748  EF E0 08 2A */	fadds f31, f0, f1
/* 8044474C  4B F7 63 A5 */	bl sin_s
/* 80444750  3C 80 80 64 */	lis r4, lit_4262@ha /* 0x806443EC@ha */
/* 80444754  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80444758  C0 44 43 EC */	lfs f2, lit_4262@l(r4)  /* 0x806443EC@l */
/* 8044475C  FC 60 F8 90 */	fmr f3, f31
/* 80444760  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80444764  38 60 00 01 */	li r3, 1
/* 80444768  EC 42 00 72 */	fmuls f2, f2, f1
/* 8044476C  FC 20 00 90 */	fmr f1, f0
/* 80444770  EC 40 10 2A */	fadds f2, f0, f2
/* 80444774  4B FC 7C 79 */	bl Matrix_scale
lbl_80444778:
/* 80444778  38 60 00 01 */	li r3, 1
/* 8044477C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80444780  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80444784  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80444788  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8044478C  7C 08 03 A6 */	mtlr r0
/* 80444790  38 21 00 50 */	addi r1, r1, 0x50
/* 80444794  4E 80 00 20 */	blr 
