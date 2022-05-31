lbl_805A0504:
/* 805A0504  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A0508  7C 08 02 A6 */	mflr r0
/* 805A050C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A0510  39 61 00 30 */	addi r11, r1, 0x30
/* 805A0514  4B AF A9 C1 */	bl func_8009AED4
/* 805A0518  3C C0 80 5A */	lis r6, aITB_actor_move@ha /* 0x805A1BD8@ha */
/* 805A051C  3C A0 80 65 */	lis r5, data_8064A2B4@ha /* 0x8064A2B4@ha */
/* 805A0520  38 C6 1B D8 */	addi r6, r6, aITB_actor_move@l /* 0x805A1BD8@l */
/* 805A0524  C0 05 A2 B4 */	lfs f0, data_8064A2B4@l(r5)  /* 0x8064A2B4@l */
/* 805A0528  90 C3 01 64 */	stw r6, 0x164(r3)
/* 805A052C  7C 7F 1B 78 */	mr r31, r3
/* 805A0530  38 00 00 01 */	li r0, 1
/* 805A0534  7C 9E 23 78 */	mr r30, r4
/* 805A0538  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 805A053C  90 1F 02 18 */	stw r0, 0x218(r31)
/* 805A0540  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 805A0544  2C 00 00 0B */	cmpwi r0, 0xb
/* 805A0548  41 82 00 3C */	beq lbl_805A0584
/* 805A054C  40 80 00 14 */	bge lbl_805A0560
/* 805A0550  2C 00 00 09 */	cmpwi r0, 9
/* 805A0554  41 82 00 18 */	beq lbl_805A056C
/* 805A0558  40 80 00 20 */	bge lbl_805A0578
/* 805A055C  48 00 00 3C */	b lbl_805A0598
lbl_805A0560:
/* 805A0560  2C 00 00 0D */	cmpwi r0, 0xd
/* 805A0564  40 80 00 34 */	bge lbl_805A0598
/* 805A0568  48 00 00 28 */	b lbl_805A0590
lbl_805A056C:
/* 805A056C  38 00 2D 09 */	li r0, 0x2d09
/* 805A0570  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 805A0574  48 00 00 24 */	b lbl_805A0598
lbl_805A0578:
/* 805A0578  38 00 2D 0A */	li r0, 0x2d0a
/* 805A057C  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 805A0580  48 00 00 18 */	b lbl_805A0598
lbl_805A0584:
/* 805A0584  38 00 2D 0B */	li r0, 0x2d0b
/* 805A0588  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 805A058C  48 00 00 0C */	b lbl_805A0598
lbl_805A0590:
/* 805A0590  38 00 2D 0C */	li r0, 0x2d0c
/* 805A0594  B0 1F 02 1C */	sth r0, 0x21c(r31)
lbl_805A0598:
/* 805A0598  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 805A059C  38 60 00 00 */	li r3, 0
/* 805A05A0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 805A05A4  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 805A05A8  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 805A05AC  2C 00 00 00 */	cmpwi r0, 0
/* 805A05B0  40 82 01 0C */	bne lbl_805A06BC
/* 805A05B4  7F E3 FB 78 */	mr r3, r31
/* 805A05B8  48 00 01 75 */	bl aITB_check_live_condition
/* 805A05BC  2C 03 00 01 */	cmpwi r3, 1
/* 805A05C0  40 82 01 54 */	bne lbl_805A0714
/* 805A05C4  4B AB C7 31 */	bl fqrand
/* 805A05C8  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064A2BC@ha */
/* 805A05CC  3C 80 80 65 */	lis r4, lit_404@ha /* 0x8064A2B8@ha */
/* 805A05D0  38 A3 A2 BC */	addi r5, r3, lit_405@l /* 0x8064A2BC@l */
/* 805A05D4  C0 04 A2 B8 */	lfs f0, lit_404@l(r4)  /* 0x8064A2B8@l */
/* 805A05D8  C0 45 00 00 */	lfs f2, 0(r5)
/* 805A05DC  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064A2C4@ha */
/* 805A05E0  EC 42 00 72 */	fmuls f2, f2, f1
/* 805A05E4  C0 23 A2 C4 */	lfs f1, lit_407@l(r3)  /* 0x8064A2C4@l */
/* 805A05E8  38 61 00 08 */	addi r3, r1, 8
/* 805A05EC  EC 00 10 2A */	fadds f0, f0, f2
/* 805A05F0  D0 1F 02 44 */	stfs f0, 0x244(r31)
/* 805A05F4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805A05F8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A05FC  90 81 00 08 */	stw r4, 8(r1)
/* 805A0600  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A0604  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A0608  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A060C  4B DE F2 15 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 805A0610  3C 60 80 65 */	lis r3, lit_406@ha /* 0x8064A2C0@ha */
/* 805A0614  C0 03 A2 C0 */	lfs f0, lit_406@l(r3)  /* 0x8064A2C0@l */
/* 805A0618  EC 00 08 2A */	fadds f0, f0, f1
/* 805A061C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 805A0620  4B AB C6 D5 */	bl fqrand
/* 805A0624  3C 60 80 65 */	lis r3, lit_409@ha /* 0x8064A2CC@ha */
/* 805A0628  3C 80 80 65 */	lis r4, lit_408@ha /* 0x8064A2C8@ha */
/* 805A062C  38 A3 A2 CC */	addi r5, r3, lit_409@l /* 0x8064A2CC@l */
/* 805A0630  C0 04 A2 C8 */	lfs f0, lit_408@l(r4)  /* 0x8064A2C8@l */
/* 805A0634  C0 45 00 00 */	lfs f2, 0(r5)
/* 805A0638  38 7F 02 4C */	addi r3, r31, 0x24c
/* 805A063C  38 9F 02 50 */	addi r4, r31, 0x250
/* 805A0640  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A0644  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A0648  FC 00 00 1E */	fctiwz f0, f0
/* 805A064C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A0650  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805A0654  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A0658  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A065C  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A0660  88 BF 00 08 */	lbz r5, 8(r31)
/* 805A0664  88 DF 00 09 */	lbz r6, 9(r31)
/* 805A0668  7C A5 07 74 */	extsb r5, r5
/* 805A066C  7C C6 07 74 */	extsb r6, r6
/* 805A0670  4B E0 55 09 */	bl mFI_BkNum2WposXZ
/* 805A0674  3C 60 80 65 */	lis r3, lit_410@ha /* 0x8064A2D0@ha */
/* 805A0678  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 805A067C  38 83 A2 D0 */	addi r4, r3, lit_410@l /* 0x8064A2D0@l */
/* 805A0680  7F C5 F3 78 */	mr r5, r30
/* 805A0684  C0 24 00 00 */	lfs f1, 0(r4)
/* 805A0688  7F E3 FB 78 */	mr r3, r31
/* 805A068C  EC 00 08 2A */	fadds f0, f0, f1
/* 805A0690  D0 1F 02 4C */	stfs f0, 0x24c(r31)
/* 805A0694  C0 1F 02 50 */	lfs f0, 0x250(r31)
/* 805A0698  EC 00 08 2A */	fadds f0, f0, f1
/* 805A069C  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 805A06A0  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 805A06A4  20 00 00 0C */	subfic r0, r0, 0xc
/* 805A06A8  7C 00 00 34 */	cntlzw r0, r0
/* 805A06AC  54 04 D9 7E */	srwi r4, r0, 5
/* 805A06B0  38 84 00 02 */	addi r4, r4, 2
/* 805A06B4  48 00 14 D9 */	bl aITB_setupAction
/* 805A06B8  48 00 00 5C */	b lbl_805A0714
lbl_805A06BC:
/* 805A06BC  7F C3 F3 78 */	mr r3, r30
/* 805A06C0  4B E3 8F 81 */	bl get_player_actor_withoutCheck
/* 805A06C4  7C 7D 1B 79 */	or. r29, r3, r3
/* 805A06C8  41 82 00 3C */	beq lbl_805A0704
/* 805A06CC  4B AB C6 29 */	bl fqrand
/* 805A06D0  3C 80 80 65 */	lis r4, lit_412@ha /* 0x8064A2D8@ha */
/* 805A06D4  3C 60 80 65 */	lis r3, lit_411@ha /* 0x8064A2D4@ha */
/* 805A06D8  C0 44 A2 D8 */	lfs f2, lit_412@l(r4)  /* 0x8064A2D8@l */
/* 805A06DC  C0 03 A2 D4 */	lfs f0, lit_411@l(r3)  /* 0x8064A2D4@l */
/* 805A06E0  EC 21 10 28 */	fsubs f1, f1, f2
/* 805A06E4  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 805A06E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A06EC  FC 00 00 1E */	fctiwz f0, f0
/* 805A06F0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A06F4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 805A06F8  7C 00 1A 14 */	add r0, r0, r3
/* 805A06FC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A0700  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_805A0704:
/* 805A0704  7F E3 FB 78 */	mr r3, r31
/* 805A0708  7F C5 F3 78 */	mr r5, r30
/* 805A070C  38 80 00 01 */	li r4, 1
/* 805A0710  48 00 14 7D */	bl aITB_setupAction
lbl_805A0714:
/* 805A0714  39 61 00 30 */	addi r11, r1, 0x30
/* 805A0718  4B AF A8 09 */	bl func_8009AF20
/* 805A071C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A0720  7C 08 03 A6 */	mtlr r0
/* 805A0724  38 21 00 30 */	addi r1, r1, 0x30
/* 805A0728  4E 80 00 20 */	blr 
