lbl_804CF374:
/* 804CF374  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CF378  7C 08 02 A6 */	mflr r0
/* 804CF37C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CF380  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804CF384  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804CF388  39 61 00 30 */	addi r11, r1, 0x30
/* 804CF38C  4B BC BB 49 */	bl func_8009AED4
/* 804CF390  7C 7E 1B 78 */	mr r30, r3
/* 804CF394  3C A0 80 64 */	lis r5, lit_479@ha /* 0x80646320@ha */
/* 804CF398  C0 25 63 20 */	lfs f1, lit_479@l(r5)  /* 0x80646320@l */
/* 804CF39C  7C 9D 23 78 */	mr r29, r4
/* 804CF3A0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 804CF3A4  38 60 00 00 */	li r3, 0
/* 804CF3A8  83 E4 00 00 */	lwz r31, 0(r4)
/* 804CF3AC  EC 41 00 2A */	fadds f2, f1, f0
/* 804CF3B0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804CF3B4  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804CF3B8  4B F3 CF 49 */	bl Matrix_translate
/* 804CF3BC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804CF3C0  38 60 00 01 */	li r3, 1
/* 804CF3C4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 804CF3C8  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 804CF3CC  4B F3 D0 21 */	bl Matrix_scale
/* 804CF3D0  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 804CF3D4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CF3D8  3C A0 E7 00 */	lis r5, 0xe700
/* 804CF3DC  38 80 00 00 */	li r4, 0
/* 804CF3E0  38 C7 00 08 */	addi r6, r7, 8
/* 804CF3E4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804CF3E8  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 804CF3EC  90 A7 00 00 */	stw r5, 0(r7)
/* 804CF3F0  90 87 00 04 */	stw r4, 4(r7)
/* 804CF3F4  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 804CF3F8  38 7E 00 08 */	addi r3, r30, 8
/* 804CF3FC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CF400  90 1E 00 00 */	stw r0, 0(r30)
/* 804CF404  80 7D 00 00 */	lwz r3, 0(r29)
/* 804CF408  4B F3 DF CD */	bl _Matrix_to_Mtx_new
/* 804CF40C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CF410  90 7E 00 04 */	stw r3, 4(r30)
/* 804CF414  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804CF418  3C 63 00 02 */	addis r3, r3, 2
/* 804CF41C  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804CF420  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804CF424  41 80 00 1C */	blt lbl_804CF440
/* 804CF428  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804CF42C  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804CF430  7C 04 00 00 */	cmpw r4, r0
/* 804CF434  40 80 00 0C */	bge lbl_804CF440
/* 804CF438  3B DD 1D 70 */	addi r30, r29, 0x1d70
/* 804CF43C  48 00 00 08 */	b lbl_804CF444
lbl_804CF440:
/* 804CF440  3B DD 1D 73 */	addi r30, r29, 0x1d73
lbl_804CF444:
/* 804CF444  4B EE A4 0D */	bl mKK_windowlight_alpha_get
/* 804CF448  FF E0 08 90 */	fmr f31, f1
/* 804CF44C  4B FF FC 65 */	bl calc_alpha_Ef_Room_Sunshine
/* 804CF450  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804CF454  3C 00 43 30 */	lis r0, 0x4330
/* 804CF458  90 01 00 08 */	stw r0, 8(r1)
/* 804CF45C  3C 60 80 64 */	lis r3, lit_481@ha /* 0x80646324@ha */
/* 804CF460  C8 23 63 24 */	lfd f1, lit_481@l(r3)  /* 0x80646324@l */
/* 804CF464  3C 00 FA 00 */	lis r0, 0xfa00
/* 804CF468  90 81 00 0C */	stw r4, 0xc(r1)
/* 804CF46C  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 804CF470  C8 01 00 08 */	lfd f0, 8(r1)
/* 804CF474  38 65 00 08 */	addi r3, r5, 8
/* 804CF478  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CF47C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CF480  90 05 00 00 */	stw r0, 0(r5)
/* 804CF484  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804CF488  88 1E 00 01 */	lbz r0, 1(r30)
/* 804CF48C  88 7E 00 00 */	lbz r3, 0(r30)
/* 804CF490  FC 00 00 1E */	fctiwz f0, f0
/* 804CF494  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804CF498  88 9E 00 02 */	lbz r4, 2(r30)
/* 804CF49C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 804CF4A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804CF4A4  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 804CF4A8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804CF4AC  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 804CF4B0  90 05 00 04 */	stw r0, 4(r5)
/* 804CF4B4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804CF4B8  39 61 00 30 */	addi r11, r1, 0x30
/* 804CF4BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804CF4C0  4B BC BA 61 */	bl func_8009AF20
/* 804CF4C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CF4C8  7C 08 03 A6 */	mtlr r0
/* 804CF4CC  38 21 00 40 */	addi r1, r1, 0x40
/* 804CF4D0  4E 80 00 20 */	blr 
