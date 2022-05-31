lbl_804D1394:
/* 804D1394  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D1398  7C 08 02 A6 */	mflr r0
/* 804D139C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D13A0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804D13A4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804D13A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804D13AC  4B BC 9B 29 */	bl func_8009AED4
/* 804D13B0  7C 7E 1B 78 */	mr r30, r3
/* 804D13B4  7C 9D 23 78 */	mr r29, r4
/* 804D13B8  83 E4 00 00 */	lwz r31, 0(r4)
/* 804D13BC  38 60 00 00 */	li r3, 0
/* 804D13C0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D13C4  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 804D13C8  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804D13CC  4B F3 AF 35 */	bl Matrix_translate
/* 804D13D0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804D13D4  38 60 00 01 */	li r3, 1
/* 804D13D8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 804D13DC  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 804D13E0  4B F3 B0 0D */	bl Matrix_scale
/* 804D13E4  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 804D13E8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804D13EC  3C A0 E7 00 */	lis r5, 0xe700
/* 804D13F0  38 80 00 00 */	li r4, 0
/* 804D13F4  38 C7 00 08 */	addi r6, r7, 8
/* 804D13F8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804D13FC  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 804D1400  90 A7 00 00 */	stw r5, 0(r7)
/* 804D1404  90 87 00 04 */	stw r4, 4(r7)
/* 804D1408  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 804D140C  38 7E 00 08 */	addi r3, r30, 8
/* 804D1410  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804D1414  90 1E 00 00 */	stw r0, 0(r30)
/* 804D1418  80 7D 00 00 */	lwz r3, 0(r29)
/* 804D141C  4B F3 BF B9 */	bl _Matrix_to_Mtx_new
/* 804D1420  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D1424  90 7E 00 04 */	stw r3, 4(r30)
/* 804D1428  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D142C  3C 63 00 02 */	addis r3, r3, 2
/* 804D1430  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D1434  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D1438  41 80 00 1C */	blt lbl_804D1454
/* 804D143C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D1440  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D1444  7C 04 00 00 */	cmpw r4, r0
/* 804D1448  40 80 00 0C */	bge lbl_804D1454
/* 804D144C  3B DD 1D 70 */	addi r30, r29, 0x1d70
/* 804D1450  48 00 00 08 */	b lbl_804D1458
lbl_804D1454:
/* 804D1454  3B DD 1D 73 */	addi r30, r29, 0x1d73
lbl_804D1458:
/* 804D1458  4B EE 83 F9 */	bl mKK_windowlight_alpha_get
/* 804D145C  FF E0 08 90 */	fmr f31, f1
/* 804D1460  4B FF FC 19 */	bl calc_alpha_Ef_Room_SunshineMinsect
/* 804D1464  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D1468  3C 00 43 30 */	lis r0, 0x4330
/* 804D146C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D1470  3C 60 80 64 */	lis r3, lit_485@ha /* 0x8064645C@ha */
/* 804D1474  C8 23 64 5C */	lfd f1, lit_485@l(r3)  /* 0x8064645C@l */
/* 804D1478  90 01 00 08 */	stw r0, 8(r1)
/* 804D147C  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 804D1480  C8 01 00 08 */	lfd f0, 8(r1)
/* 804D1484  38 05 00 08 */	addi r0, r5, 8
/* 804D1488  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D148C  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 804D1490  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804D1494  FC 00 00 1E */	fctiwz f0, f0
/* 804D1498  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804D149C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D14A0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D14A4  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804D14A8  90 05 00 00 */	stw r0, 0(r5)
/* 804D14AC  88 1E 00 01 */	lbz r0, 1(r30)
/* 804D14B0  88 7E 00 00 */	lbz r3, 0(r30)
/* 804D14B4  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804D14B8  88 9E 00 02 */	lbz r4, 2(r30)
/* 804D14BC  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 804D14C0  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 804D14C4  60 00 00 4B */	ori r0, r0, 0x4b
/* 804D14C8  90 05 00 04 */	stw r0, 4(r5)
/* 804D14CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804D14D0  39 61 00 30 */	addi r11, r1, 0x30
/* 804D14D4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804D14D8  4B BC 9A 49 */	bl func_8009AF20
/* 804D14DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D14E0  7C 08 03 A6 */	mtlr r0
/* 804D14E4  38 21 00 40 */	addi r1, r1, 0x40
/* 804D14E8  4E 80 00 20 */	blr 
