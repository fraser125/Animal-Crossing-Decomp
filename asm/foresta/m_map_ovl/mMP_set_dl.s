lbl_805E75CC:
/* 805E75CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E75D0  7C 08 02 A6 */	mflr r0
/* 805E75D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E75D8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805E75DC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805E75E0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805E75E4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805E75E8  39 61 00 30 */	addi r11, r1, 0x30
/* 805E75EC  4B AB 38 D9 */	bl func_8009AEC4
/* 805E75F0  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805E75F4  7C BB 2B 78 */	mr r27, r5
/* 805E75F8  7C 9A 23 78 */	mr r26, r4
/* 805E75FC  7C 79 1B 78 */	mr r25, r3
/* 805E7600  83 C7 09 B4 */	lwz r30, 0x9b4(r7)
/* 805E7604  3C 60 80 65 */	lis r3, lit_749@ha /* 0x8064B568@ha */
/* 805E7608  38 A3 B5 68 */	addi r5, r3, lit_749@l /* 0x8064B568@l */
/* 805E760C  80 DB 00 38 */	lwz r6, 0x38(r27)
/* 805E7610  88 9E 00 01 */	lbz r4, 1(r30)
/* 805E7614  3C 60 80 65 */	lis r3, lit_750@ha /* 0x8064B56C@ha */
/* 805E7618  88 1E 00 00 */	lbz r0, 0(r30)
/* 805E761C  54 C6 10 3A */	slwi r6, r6, 2
/* 805E7620  1C 84 00 64 */	mulli r4, r4, 0x64
/* 805E7624  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E7628  3C A0 80 6D */	lis r5, land_color@ha /* 0x806CDEFC@ha */
/* 805E762C  C0 63 B5 6C */	lfs f3, lit_750@l(r3)  /* 0x8064B56C@l */
/* 805E7630  FC 40 08 90 */	fmr f2, f1
/* 805E7634  83 FA 00 00 */	lwz r31, 0(r26)
/* 805E7638  1C 00 00 14 */	mulli r0, r0, 0x14
/* 805E763C  38 A5 DE FC */	addi r5, r5, land_color@l /* 0x806CDEFC@l */
/* 805E7640  C3 FB 00 18 */	lfs f31, 0x18(r27)
/* 805E7644  38 60 00 00 */	li r3, 0
/* 805E7648  C3 DB 00 1C */	lfs f30, 0x1c(r27)
/* 805E764C  7F A5 32 14 */	add r29, r5, r6
/* 805E7650  7C 84 02 14 */	add r4, r4, r0
/* 805E7654  3B 84 01 90 */	addi r28, r4, 0x190
/* 805E7658  7F 9E E2 14 */	add r28, r30, r28
/* 805E765C  4B E2 4D 91 */	bl Matrix_scale
/* 805E7660  3C 60 80 65 */	lis r3, lit_751@ha /* 0x8064B570@ha */
/* 805E7664  FC 20 F8 90 */	fmr f1, f31
/* 805E7668  C0 63 B5 70 */	lfs f3, lit_751@l(r3)  /* 0x8064B570@l */
/* 805E766C  FC 40 F0 90 */	fmr f2, f30
/* 805E7670  38 60 00 01 */	li r3, 1
/* 805E7674  4B E2 4C 8D */	bl Matrix_translate
/* 805E7678  7F E3 FB 78 */	mr r3, r31
/* 805E767C  7F 64 DB 78 */	mr r4, r27
/* 805E7680  4B FF FB DD */	bl mMP_set_base_dl
/* 805E7684  7F E3 FB 78 */	mr r3, r31
/* 805E7688  7F C4 F3 78 */	mr r4, r30
/* 805E768C  4B FF F6 91 */	bl mMP_set_map_dl
/* 805E7690  7F E3 FB 78 */	mr r3, r31
/* 805E7694  7F C4 F3 78 */	mr r4, r30
/* 805E7698  7F 85 E3 78 */	mr r5, r28
/* 805E769C  4B FF FC 7D */	bl mMP_set_win_dl
/* 805E76A0  7F E3 FB 78 */	mr r3, r31
/* 805E76A4  7F 84 E3 78 */	mr r4, r28
/* 805E76A8  4B FF FD C9 */	bl mMP_set_label_top_dl
/* 805E76AC  FC 20 F8 90 */	fmr f1, f31
/* 805E76B0  7F E3 FB 78 */	mr r3, r31
/* 805E76B4  FC 40 F0 90 */	fmr f2, f30
/* 805E76B8  7F C4 F3 78 */	mr r4, r30
/* 805E76BC  4B FF F3 89 */	bl mMP_set_house_dl
/* 805E76C0  FC 20 F8 90 */	fmr f1, f31
/* 805E76C4  7F E3 FB 78 */	mr r3, r31
/* 805E76C8  FC 40 F0 90 */	fmr f2, f30
/* 805E76CC  7F C4 F3 78 */	mr r4, r30
/* 805E76D0  4B FF F7 D5 */	bl mMP_set_cursol_dl
/* 805E76D4  80 99 00 2C */	lwz r4, 0x2c(r25)
/* 805E76D8  7F E3 FB 78 */	mr r3, r31
/* 805E76DC  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805E76E0  7D 89 03 A6 */	mtctr r12
/* 805E76E4  4E 80 04 21 */	bctrl 
/* 805E76E8  3C 80 80 65 */	lis r4, lit_1001@ha /* 0x8064B5B4@ha */
/* 805E76EC  3C 60 80 65 */	lis r3, lit_1003@ha /* 0x8064B5BC@ha */
/* 805E76F0  C0 03 B5 BC */	lfs f0, lit_1003@l(r3)  /* 0x8064B5BC@l */
/* 805E76F4  3C A0 80 65 */	lis r5, lit_1000@ha /* 0x8064B5B0@ha */
/* 805E76F8  C0 24 B5 B4 */	lfs f1, lit_1001@l(r4)  /* 0x8064B5B4@l */
/* 805E76FC  3C 60 80 65 */	lis r3, lit_1002@ha /* 0x8064B5B8@ha */
/* 805E7700  38 83 B5 B8 */	addi r4, r3, lit_1002@l /* 0x8064B5B8@l */
/* 805E7704  EC 00 F0 2A */	fadds f0, f0, f30
/* 805E7708  EC 41 F8 2A */	fadds f2, f1, f31
/* 805E770C  C0 85 B5 B0 */	lfs f4, lit_1000@l(r5)  /* 0x8064B5B0@l */
/* 805E7710  C0 24 00 00 */	lfs f1, 0(r4)
/* 805E7714  38 00 00 01 */	li r0, 1
/* 805E7718  3C 60 80 65 */	lis r3, lit_750@ha /* 0x8064B56C@ha */
/* 805E771C  90 01 00 08 */	stw r0, 8(r1)
/* 805E7720  C0 63 B5 6C */	lfs f3, lit_750@l(r3)  /* 0x8064B56C@l */
/* 805E7724  EC A4 10 2A */	fadds f5, f4, f2
/* 805E7728  3C A0 80 65 */	lis r5, lit_865@ha /* 0x8064B590@ha */
/* 805E772C  38 00 00 00 */	li r0, 0
/* 805E7730  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 805E7734  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E7738  38 87 85 38 */	addi r4, r7, common_data@l /* 0x81138538@l */
/* 805E773C  C0 45 B5 90 */	lfs f2, lit_865@l(r5)  /* 0x8064B590@l */
/* 805E7740  EC 01 00 2A */	fadds f0, f1, f0
/* 805E7744  3C C0 80 65 */	lis r6, lit_864@ha /* 0x8064B58C@ha */
/* 805E7748  3C 84 00 01 */	addis r4, r4, 1
/* 805E774C  C0 26 B5 8C */	lfs f1, lit_864@l(r6)  /* 0x8064B58C@l */
/* 805E7750  FC 80 18 90 */	fmr f4, f3
/* 805E7754  EC 42 00 28 */	fsubs f2, f2, f0
/* 805E7758  EC 21 28 2A */	fadds f1, f1, f5
/* 805E775C  88 BE 03 F0 */	lbz r5, 0x3f0(r30)
/* 805E7760  88 DD 00 00 */	lbz r6, 0(r29)
/* 805E7764  7F 43 D3 78 */	mr r3, r26
/* 805E7768  88 FD 00 01 */	lbz r7, 1(r29)
/* 805E776C  89 1D 00 02 */	lbz r8, 2(r29)
/* 805E7770  39 20 00 FF */	li r9, 0xff
/* 805E7774  39 40 00 00 */	li r10, 0
/* 805E7778  38 84 91 20 */	addi r4, r4, -28384
/* 805E777C  4B DC 89 2D */	bl mFont_SetLineStrings
/* 805E7780  FC 20 F8 90 */	fmr f1, f31
/* 805E7784  7F 43 D3 78 */	mr r3, r26
/* 805E7788  FC 40 F0 90 */	fmr f2, f30
/* 805E778C  7F 84 E3 78 */	mr r4, r28
/* 805E7790  4B FF F8 4D */	bl mMP_set_label_dl
/* 805E7794  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805E7798  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805E779C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805E77A0  39 61 00 30 */	addi r11, r1, 0x30
/* 805E77A4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805E77A8  4B AB 37 69 */	bl func_8009AF10
/* 805E77AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E77B0  7C 08 03 A6 */	mtlr r0
/* 805E77B4  38 21 00 50 */	addi r1, r1, 0x50
/* 805E77B8  4E 80 00 20 */	blr 
