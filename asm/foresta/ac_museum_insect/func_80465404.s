lbl_80465404:
/* 80465404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80465408  7C 08 02 A6 */	mflr r0
/* 8046540C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80465410  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80465414  7C 7F 1B 78 */	mr r31, r3
/* 80465418  80 63 00 00 */	lwz r3, 0(r3)
/* 8046541C  2C 03 00 18 */	cmpwi r3, 0x18
/* 80465420  40 80 00 1C */	bge lbl_8046543C
/* 80465424  2C 03 00 08 */	cmpwi r3, 8
/* 80465428  41 82 00 20 */	beq lbl_80465448
/* 8046542C  41 80 00 34 */	blt lbl_80465460
/* 80465430  2C 03 00 13 */	cmpwi r3, 0x13
/* 80465434  40 80 00 20 */	bge lbl_80465454
/* 80465438  48 00 00 28 */	b lbl_80465460
lbl_8046543C:
/* 8046543C  2C 03 00 20 */	cmpwi r3, 0x20
/* 80465440  40 80 00 20 */	bge lbl_80465460
/* 80465444  48 00 00 1C */	b lbl_80465460
lbl_80465448:
/* 80465448  38 00 00 00 */	li r0, 0
/* 8046544C  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 80465450  48 00 00 18 */	b lbl_80465468
lbl_80465454:
/* 80465454  38 03 FF EE */	addi r0, r3, -18
/* 80465458  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8046545C  48 00 00 0C */	b lbl_80465468
lbl_80465460:
/* 80465460  38 03 FF E9 */	addi r0, r3, -23
/* 80465464  B0 1F 00 70 */	sth r0, 0x70(r31)
lbl_80465468:
/* 80465468  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 8046546C  3C 80 80 68 */	lis r4, kabuto_base_pos@ha /* 0x80686BD4@ha */
/* 80465470  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 80465474  3C A0 80 66 */	lis r5, data_8065F050@ha /* 0x8065F050@ha */
/* 80465478  1C C0 00 0C */	mulli r6, r0, 0xc
/* 8046547C  38 04 6B D4 */	addi r0, r4, kabuto_base_pos@l /* 0x80686BD4@l */
/* 80465480  38 83 46 10 */	addi r4, r3, lit_512@l /* 0x80644610@l */
/* 80465484  C0 04 00 00 */	lfs f0, 0(r4)
/* 80465488  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8046548C  7C C0 32 14 */	add r6, r0, r6
/* 80465490  80 86 00 00 */	lwz r4, 0(r6)
/* 80465494  80 06 00 04 */	lwz r0, 4(r6)
/* 80465498  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 8046549C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 804654A0  80 06 00 08 */	lwz r0, 8(r6)
/* 804654A4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 804654A8  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 804654AC  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 804654B0  90 9F 00 44 */	stw r4, 0x44(r31)
/* 804654B4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 804654B8  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804654BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 804654C0  84 85 F0 50 */	lwzu r4, data_8065F050@l(r5)  /* 0x8065F050@l */
/* 804654C4  80 05 00 04 */	lwz r0, 4(r5)
/* 804654C8  90 9F 00 34 */	stw r4, 0x34(r31)
/* 804654CC  90 1F 00 38 */	stw r0, 0x38(r31)
/* 804654D0  80 05 00 08 */	lwz r0, 8(r5)
/* 804654D4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 804654D8  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 804654DC  84 03 F0 5C */	lwzu r0, ZeroSVec@l(r3)  /* 0x8065F05C@l */
/* 804654E0  90 1F 00 68 */	stw r0, 0x68(r31)
/* 804654E4  A0 03 00 04 */	lhz r0, 4(r3)
/* 804654E8  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804654EC  4B BF 77 E1 */	bl func_8005CCCC
/* 804654F0  B0 7F 00 72 */	sth r3, 0x72(r31)
/* 804654F4  4B BF 78 01 */	bl fqrand
/* 804654F8  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 804654FC  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 80465500  EC 00 00 72 */	fmuls f0, f0, f1
/* 80465504  FC 00 00 1E */	fctiwz f0, f0
/* 80465508  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046550C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80465510  38 03 00 3C */	addi r0, r3, 0x3c
/* 80465514  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80465518  4B BF 77 DD */	bl fqrand
/* 8046551C  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 80465520  38 00 00 00 */	li r0, 0
/* 80465524  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 80465528  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046552C  FC 00 00 1E */	fctiwz f0, f0
/* 80465530  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80465534  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80465538  38 63 00 3C */	addi r3, r3, 0x3c
/* 8046553C  B0 7F 00 78 */	sth r3, 0x78(r31)
/* 80465540  B0 1F 00 7A */	sth r0, 0x7a(r31)
/* 80465544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80465548  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046554C  7C 08 03 A6 */	mtlr r0
/* 80465550  38 21 00 20 */	addi r1, r1, 0x20
/* 80465554  4E 80 00 20 */	blr 
