lbl_804A53E8:
/* 804A53E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A53EC  7C 08 02 A6 */	mflr r0
/* 804A53F0  38 80 00 00 */	li r4, 0
/* 804A53F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A53F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A53FC  7C 7F 1B 78 */	mr r31, r3
/* 804A5400  38 61 00 08 */	addi r3, r1, 8
/* 804A5404  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804A5408  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A540C  90 A1 00 08 */	stw r5, 8(r1)
/* 804A5410  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A5414  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A5418  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A541C  4B EE 3C 91 */	bl mCoBG_Wpos2Attribute
/* 804A5420  28 03 00 03 */	cmplwi r3, 3
/* 804A5424  41 81 00 18 */	bgt lbl_804A543C
/* 804A5428  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 804A542C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A5430  EC 01 00 2A */	fadds f0, f1, f0
/* 804A5434  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
/* 804A5438  48 00 00 20 */	b lbl_804A5458
lbl_804A543C:
/* 804A543C  3C 60 80 64 */	lis r3, lit_1079@ha /* 0x80645D50@ha */
/* 804A5440  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A5444  C0 23 5D 50 */	lfs f1, lit_1079@l(r3)  /* 0x80645D50@l */
/* 804A5448  C0 5F 01 D8 */	lfs f2, 0x1d8(r31)
/* 804A544C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A5450  EC 02 00 28 */	fsubs f0, f2, f0
/* 804A5454  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
lbl_804A5458:
/* 804A5458  3C 60 80 64 */	lis r3, lit_1080@ha /* 0x80645D54@ha */
/* 804A545C  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 804A5460  C0 03 5D 54 */	lfs f0, lit_1080@l(r3)  /* 0x80645D54@l */
/* 804A5464  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A5468  40 81 00 0C */	ble lbl_804A5474
/* 804A546C  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
/* 804A5470  48 00 00 18 */	b lbl_804A5488
lbl_804A5474:
/* 804A5474  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A5478  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A547C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A5480  40 80 00 08 */	bge lbl_804A5488
/* 804A5484  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
lbl_804A5488:
/* 804A5488  3C 80 80 64 */	lis r4, lit_1080@ha /* 0x80645D54@ha */
/* 804A548C  3C A0 80 64 */	lis r5, lit_473@ha /* 0x80645CA0@ha */
/* 804A5490  38 C4 5D 54 */	addi r6, r4, lit_1080@l /* 0x80645D54@l */
/* 804A5494  3C 60 80 64 */	lis r3, lit_813@ha /* 0x80645D1C@ha */
/* 804A5498  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 804A549C  38 83 5D 1C */	addi r4, r3, lit_813@l /* 0x80645D1C@l */
/* 804A54A0  C0 06 00 00 */	lfs f0, 0(r6)
/* 804A54A4  3C 60 80 64 */	lis r3, lit_1081@ha /* 0x80645D58@ha */
/* 804A54A8  C0 44 00 00 */	lfs f2, 0(r4)
/* 804A54AC  EC 21 00 24 */	fdivs f1, f1, f0
/* 804A54B0  C0 65 5C A0 */	lfs f3, lit_473@l(r5)  /* 0x80645CA0@l */
/* 804A54B4  C0 03 5D 58 */	lfs f0, lit_1081@l(r3)  /* 0x80645D58@l */
/* 804A54B8  D0 3F 01 D0 */	stfs f1, 0x1d0(r31)
/* 804A54BC  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 804A54C0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A54C4  EC 43 08 2A */	fadds f2, f3, f1
/* 804A54C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804A54CC  40 81 00 08 */	ble lbl_804A54D4
/* 804A54D0  FC 40 00 90 */	fmr f2, f0
lbl_804A54D4:
/* 804A54D4  D0 5F 00 64 */	stfs f2, 0x64(r31)
/* 804A54D8  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A54DC  C0 23 5C C4 */	lfs f1, lit_644@l(r3)  /* 0x80645CC4@l */
/* 804A54E0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80645C90@ha */
/* 804A54E4  D0 5F 00 60 */	stfs f2, 0x60(r31)
/* 804A54E8  D0 5F 00 5C */	stfs f2, 0x5c(r31)
/* 804A54EC  C0 44 5C 90 */	lfs f2, lit_469@l(r4)  /* 0x80645C90@l */
/* 804A54F0  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A54F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A54F8  EC 02 00 2A */	fadds f0, f2, f0
/* 804A54FC  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 804A5500  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 804A5504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A5508  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A550C  7C 08 03 A6 */	mtlr r0
/* 804A5510  38 21 00 20 */	addi r1, r1, 0x20
/* 804A5514  4E 80 00 20 */	blr 
