lbl_804D14EC:
/* 804D14EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D14F0  7C 08 02 A6 */	mflr r0
/* 804D14F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D14F8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804D14FC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804D1500  39 61 00 30 */	addi r11, r1, 0x30
/* 804D1504  4B BC 99 D1 */	bl func_8009AED4
/* 804D1508  7C 7E 1B 78 */	mr r30, r3
/* 804D150C  7C 9D 23 78 */	mr r29, r4
/* 804D1510  83 E4 00 00 */	lwz r31, 0(r4)
/* 804D1514  38 60 00 00 */	li r3, 0
/* 804D1518  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804D151C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 804D1520  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 804D1524  4B F3 AD DD */	bl Matrix_translate
/* 804D1528  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804D152C  38 60 00 01 */	li r3, 1
/* 804D1530  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 804D1534  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 804D1538  4B F3 AE B5 */	bl Matrix_scale
/* 804D153C  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 804D1540  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804D1544  3C A0 E7 00 */	lis r5, 0xe700
/* 804D1548  38 80 00 00 */	li r4, 0
/* 804D154C  38 C7 00 08 */	addi r6, r7, 8
/* 804D1550  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804D1554  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 804D1558  90 A7 00 00 */	stw r5, 0(r7)
/* 804D155C  90 87 00 04 */	stw r4, 4(r7)
/* 804D1560  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804D1564  38 7E 00 08 */	addi r3, r30, 8
/* 804D1568  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 804D156C  90 1E 00 00 */	stw r0, 0(r30)
/* 804D1570  80 7D 00 00 */	lwz r3, 0(r29)
/* 804D1574  4B F3 BE 61 */	bl _Matrix_to_Mtx_new
/* 804D1578  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D157C  90 7E 00 04 */	stw r3, 4(r30)
/* 804D1580  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D1584  3C 63 00 02 */	addis r3, r3, 2
/* 804D1588  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D158C  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D1590  41 80 00 1C */	blt lbl_804D15AC
/* 804D1594  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D1598  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D159C  7C 04 00 00 */	cmpw r4, r0
/* 804D15A0  40 80 00 0C */	bge lbl_804D15AC
/* 804D15A4  3B DD 1D 70 */	addi r30, r29, 0x1d70
/* 804D15A8  48 00 00 08 */	b lbl_804D15B0
lbl_804D15AC:
/* 804D15AC  3B DD 1D 73 */	addi r30, r29, 0x1d73
lbl_804D15B0:
/* 804D15B0  4B EE 82 A1 */	bl mKK_windowlight_alpha_get
/* 804D15B4  FF E0 08 90 */	fmr f31, f1
/* 804D15B8  4B FF FA C1 */	bl calc_alpha_Ef_Room_SunshineMinsect
/* 804D15BC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D15C0  3C 00 43 30 */	lis r0, 0x4330
/* 804D15C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D15C8  3C 60 80 64 */	lis r3, lit_485@ha /* 0x8064645C@ha */
/* 804D15CC  C8 23 64 5C */	lfd f1, lit_485@l(r3)  /* 0x8064645C@l */
/* 804D15D0  90 01 00 08 */	stw r0, 8(r1)
/* 804D15D4  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 804D15D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 804D15DC  38 05 00 08 */	addi r0, r5, 8
/* 804D15E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D15E4  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 804D15E8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804D15EC  FC 00 00 1E */	fctiwz f0, f0
/* 804D15F0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804D15F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D15F8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804D15FC  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804D1600  90 05 00 00 */	stw r0, 0(r5)
/* 804D1604  88 1E 00 01 */	lbz r0, 1(r30)
/* 804D1608  88 7E 00 00 */	lbz r3, 0(r30)
/* 804D160C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804D1610  88 9E 00 02 */	lbz r4, 2(r30)
/* 804D1614  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 804D1618  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 804D161C  60 00 00 4B */	ori r0, r0, 0x4b
/* 804D1620  90 05 00 04 */	stw r0, 4(r5)
/* 804D1624  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804D1628  39 61 00 30 */	addi r11, r1, 0x30
/* 804D162C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804D1630  4B BC 98 F1 */	bl func_8009AF20
/* 804D1634  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D1638  7C 08 03 A6 */	mtlr r0
/* 804D163C  38 21 00 40 */	addi r1, r1, 0x40
/* 804D1640  4E 80 00 20 */	blr 
