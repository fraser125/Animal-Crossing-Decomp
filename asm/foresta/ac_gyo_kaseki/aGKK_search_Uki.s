lbl_805A5648:
/* 805A5648  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805A564C  7C 08 02 A6 */	mflr r0
/* 805A5650  90 01 00 54 */	stw r0, 0x54(r1)
/* 805A5654  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805A5658  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805A565C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805A5660  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805A5664  39 61 00 30 */	addi r11, r1, 0x30
/* 805A5668  4B AF 58 61 */	bl func_8009AEC8
/* 805A566C  7C 7B 1B 78 */	mr r27, r3
/* 805A5670  3C 60 80 6C */	lis r3, data_806C3FA8@ha /* 0x806C3FA8@ha */
/* 805A5674  80 1B 01 D8 */	lwz r0, 0x1d8(r27)
/* 805A5678  3B E3 3F A8 */	addi r31, r3, data_806C3FA8@l /* 0x806C3FA8@l */
/* 805A567C  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 805A5680  3B 80 00 00 */	li r28, 0
/* 805A5684  38 9F 00 00 */	addi r4, r31, 0
/* 805A5688  54 00 18 38 */	slwi r0, r0, 3
/* 805A568C  7C A4 02 14 */	add r5, r4, r0
/* 805A5690  38 80 00 6F */	li r4, 0x6f
/* 805A5694  AB A5 00 02 */	lha r29, 2(r5)
/* 805A5698  38 A0 00 05 */	li r5, 5
/* 805A569C  4B DD 06 45 */	bl Actor_info_name_search
/* 805A56A0  7C 7A 1B 79 */	or. r26, r3, r3
/* 805A56A4  93 5B 01 CC */	stw r26, 0x1cc(r27)
/* 805A56A8  41 82 01 34 */	beq lbl_805A57DC
/* 805A56AC  38 7B 00 28 */	addi r3, r27, 0x28
/* 805A56B0  38 9A 00 28 */	addi r4, r26, 0x28
/* 805A56B4  4B E1 59 21 */	bl search_position_distance
/* 805A56B8  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 805A56BC  FF E0 08 90 */	fmr f31, f1
/* 805A56C0  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 805A56C4  38 7B 00 28 */	addi r3, r27, 0x28
/* 805A56C8  38 9A 00 28 */	addi r4, r26, 0x28
/* 805A56CC  EF C2 00 28 */	fsubs f30, f2, f0
/* 805A56D0  4B E1 5A 61 */	bl search_position_angleY
/* 805A56D4  A8 9B 01 DC */	lha r4, 0x1dc(r27)
/* 805A56D8  7C 65 07 34 */	extsh r5, r3
/* 805A56DC  A8 7B 00 DE */	lha r3, 0xde(r27)
/* 805A56E0  7C 80 07 35 */	extsh. r0, r4
/* 805A56E4  7C 03 28 50 */	subf r0, r3, r5
/* 805A56E8  7C 1E 07 34 */	extsh r30, r0
/* 805A56EC  41 82 00 0C */	beq lbl_805A56F8
/* 805A56F0  2C 04 00 01 */	cmpwi r4, 1
/* 805A56F4  40 82 00 10 */	bne lbl_805A5704
lbl_805A56F8:
/* 805A56F8  3C 60 80 65 */	lis r3, lit_601@ha /* 0x8064A464@ha */
/* 805A56FC  C0 03 A4 64 */	lfs f0, lit_601@l(r3)  /* 0x8064A464@l */
/* 805A5700  48 00 00 0C */	b lbl_805A570C
lbl_805A5704:
/* 805A5704  3C 60 80 65 */	lis r3, lit_602@ha /* 0x8064A468@ha */
/* 805A5708  C0 03 A4 68 */	lfs f0, lit_602@l(r3)  /* 0x8064A468@l */
lbl_805A570C:
/* 805A570C  88 1A 02 61 */	lbz r0, 0x261(r26)
/* 805A5710  28 00 00 00 */	cmplwi r0, 0
/* 805A5714  41 82 00 30 */	beq lbl_805A5744
/* 805A5718  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A571C  40 80 00 28 */	bge lbl_805A5744
/* 805A5720  3C 85 00 01 */	addis r4, r5, 1
/* 805A5724  7F 63 DB 78 */	mr r3, r27
/* 805A5728  38 04 80 00 */	addi r0, r4, -32768
/* 805A572C  7C 04 07 34 */	extsh r4, r0
/* 805A5730  4B FF F7 DD */	bl aGKK_set_angle
/* 805A5734  7F 63 DB 78 */	mr r3, r27
/* 805A5738  38 80 00 06 */	li r4, 6
/* 805A573C  48 00 14 1D */	bl aGKK_setupAction
/* 805A5740  48 00 00 9C */	b lbl_805A57DC
lbl_805A5744:
/* 805A5744  4B FF F7 7D */	bl aGKK_get_uki_type
/* 805A5748  A0 1B 02 40 */	lhz r0, 0x240(r27)
/* 805A574C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805A5750  40 82 00 8C */	bne lbl_805A57DC
/* 805A5754  A8 1A 02 64 */	lha r0, 0x264(r26)
/* 805A5758  2C 00 00 00 */	cmpwi r0, 0
/* 805A575C  40 82 00 80 */	bne lbl_805A57DC
/* 805A5760  1C 83 00 14 */	mulli r4, r3, 0x14
/* 805A5764  57 A0 10 3A */	slwi r0, r29, 2
/* 805A5768  38 7F 01 F8 */	addi r3, r31, 0x1f8
/* 805A576C  7C 04 02 14 */	add r0, r4, r0
/* 805A5770  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A5774  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A5778  40 80 00 64 */	bge lbl_805A57DC
/* 805A577C  FC 20 F2 10 */	fabs f1, f30
/* 805A5780  3C 60 80 65 */	lis r3, lit_603@ha /* 0x8064A46C@ha */
/* 805A5784  C0 03 A4 6C */	lfs f0, lit_603@l(r3)  /* 0x8064A46C@l */
/* 805A5788  FC 20 08 18 */	frsp f1, f1
/* 805A578C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A5790  40 80 00 4C */	bge lbl_805A57DC
/* 805A5794  38 7F 02 20 */	addi r3, r31, 0x220
/* 805A5798  3C 80 80 65 */	lis r4, lit_553@ha /* 0x8064A45C@ha */
/* 805A579C  7C 43 04 2E */	lfsx f2, r3, r0
/* 805A57A0  C0 24 A4 5C */	lfs f1, lit_553@l(r4)  /* 0x8064A45C@l */
/* 805A57A4  FC 00 10 50 */	fneg f0, f2
/* 805A57A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A57AC  FC 00 00 1E */	fctiwz f0, f0
/* 805A57B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A57B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A57B8  7C 1E 00 00 */	cmpw r30, r0
/* 805A57BC  40 81 00 20 */	ble lbl_805A57DC
/* 805A57C0  EC 01 00 B2 */	fmuls f0, f1, f2
/* 805A57C4  FC 00 00 1E */	fctiwz f0, f0
/* 805A57C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A57CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A57D0  7C 1E 00 00 */	cmpw r30, r0
/* 805A57D4  40 80 00 08 */	bge lbl_805A57DC
/* 805A57D8  3B 80 00 01 */	li r28, 1
lbl_805A57DC:
/* 805A57DC  7F 83 E3 78 */	mr r3, r28
/* 805A57E0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805A57E4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805A57E8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805A57EC  39 61 00 30 */	addi r11, r1, 0x30
/* 805A57F0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805A57F4  4B AF 57 21 */	bl func_8009AF14
/* 805A57F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805A57FC  7C 08 03 A6 */	mtlr r0
/* 805A5800  38 21 00 50 */	addi r1, r1, 0x50
/* 805A5804  4E 80 00 20 */	blr 
