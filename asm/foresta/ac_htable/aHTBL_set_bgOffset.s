lbl_805B1398:
/* 805B1398  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805B139C  7C 08 02 A6 */	mflr r0
/* 805B13A0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805B13A4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 805B13A8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 805B13AC  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 805B13B0  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 805B13B4  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 805B13B8  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 805B13BC  39 61 00 80 */	addi r11, r1, 0x80
/* 805B13C0  4B AE 9B 01 */	bl func_8009AEC0
/* 805B13C4  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 805B13C8  7C 7C 1B 78 */	mr r28, r3
/* 805B13CC  3B A0 00 00 */	li r29, 0
/* 805B13D0  3B E0 00 00 */	li r31, 0
/* 805B13D4  2C 00 00 01 */	cmpwi r0, 1
/* 805B13D8  41 82 01 18 */	beq lbl_805B14F0
/* 805B13DC  40 80 00 10 */	bge lbl_805B13EC
/* 805B13E0  2C 00 00 00 */	cmpwi r0, 0
/* 805B13E4  40 80 00 14 */	bge lbl_805B13F8
/* 805B13E8  48 00 02 DC */	b lbl_805B16C4
lbl_805B13EC:
/* 805B13EC  2C 00 00 03 */	cmpwi r0, 3
/* 805B13F0  40 80 02 D4 */	bge lbl_805B16C4
/* 805B13F4  48 00 01 F4 */	b lbl_805B15E8
lbl_805B13F8:
/* 805B13F8  3C 80 80 65 */	lis r4, lit_489@ha /* 0x8064A7C0@ha */
/* 805B13FC  3C 60 80 65 */	lis r3, lit_583@ha /* 0x8064A854@ha */
/* 805B1400  38 C4 A7 C0 */	addi r6, r4, lit_489@l /* 0x8064A7C0@l */
/* 805B1404  3C 80 80 65 */	lis r4, rewrite_dataA@ha /* 0x8064A7CC@ha */
/* 805B1408  38 A3 A8 54 */	addi r5, r3, lit_583@l /* 0x8064A854@l */
/* 805B140C  3C 60 80 6C */	lis r3, lit_581@ha /* 0x806C562C@ha */
/* 805B1410  C3 E6 00 00 */	lfs f31, 0(r6)
/* 805B1414  3B 44 A7 CC */	addi r26, r4, rewrite_dataA@l /* 0x8064A7CC@l */
/* 805B1418  CB C5 00 00 */	lfd f30, 0(r5)
/* 805B141C  3B 23 56 2C */	addi r25, r3, lit_581@l /* 0x806C562C@l */
/* 805B1420  3B A0 FF FF */	li r29, -1
/* 805B1424  3F 60 43 30 */	lis r27, 0x4330
lbl_805B1428:
/* 805B1428  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 805B142C  93 61 00 50 */	stw r27, 0x50(r1)
/* 805B1430  3B C0 FF FF */	li r30, -1
/* 805B1434  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B1438  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805B143C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805B1440  EF BF 00 32 */	fmuls f29, f31, f0
lbl_805B1444:
/* 805B1444  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 805B1448  7C FA FA 14 */	add r7, r26, r31
/* 805B144C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B1450  7F 25 CB 78 */	mr r5, r25
/* 805B1454  81 1C 00 28 */	lwz r8, 0x28(r28)
/* 805B1458  38 61 00 38 */	addi r3, r1, 0x38
/* 805B145C  93 61 00 50 */	stw r27, 0x50(r1)
/* 805B1460  38 81 00 18 */	addi r4, r1, 0x18
/* 805B1464  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 805B1468  38 C0 01 A6 */	li r6, 0x1a6
/* 805B146C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805B1470  81 7C 00 2C */	lwz r11, 0x2c(r28)
/* 805B1474  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805B1478  91 01 00 44 */	stw r8, 0x44(r1)
/* 805B147C  81 47 00 00 */	lwz r10, 0(r7)
/* 805B1480  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805B1484  EC 3F 00 32 */	fmuls f1, f31, f0
/* 805B1488  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 805B148C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805B1490  A1 27 00 04 */	lhz r9, 4(r7)
/* 805B1494  EC 22 08 2A */	fadds f1, f2, f1
/* 805B1498  89 07 00 06 */	lbz r8, 6(r7)
/* 805B149C  EC 00 E8 2A */	fadds f0, f0, f29
/* 805B14A0  91 61 00 48 */	stw r11, 0x48(r1)
/* 805B14A4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805B14A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805B14AC  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B14B0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B14B4  91 41 00 18 */	stw r10, 0x18(r1)
/* 805B14B8  B1 21 00 1C */	sth r9, 0x1c(r1)
/* 805B14BC  99 01 00 1E */	stb r8, 0x1e(r1)
/* 805B14C0  90 E1 00 38 */	stw r7, 0x38(r1)
/* 805B14C4  91 61 00 3C */	stw r11, 0x3c(r1)
/* 805B14C8  90 01 00 40 */	stw r0, 0x40(r1)
/* 805B14CC  4B DE 08 AD */	bl mCoBG_SetPluss5PointOffset_file
/* 805B14D0  3B DE 00 01 */	addi r30, r30, 1
/* 805B14D4  3B FF 00 07 */	addi r31, r31, 7
/* 805B14D8  2C 1E 00 01 */	cmpwi r30, 1
/* 805B14DC  40 81 FF 68 */	ble lbl_805B1444
/* 805B14E0  3B BD 00 01 */	addi r29, r29, 1
/* 805B14E4  2C 1D 00 01 */	cmpwi r29, 1
/* 805B14E8  40 81 FF 40 */	ble lbl_805B1428
/* 805B14EC  48 00 01 D8 */	b lbl_805B16C4
lbl_805B14F0:
/* 805B14F0  3C 80 80 65 */	lis r4, lit_489@ha /* 0x8064A7C0@ha */
/* 805B14F4  3C 60 80 65 */	lis r3, lit_583@ha /* 0x8064A854@ha */
/* 805B14F8  38 C4 A7 C0 */	addi r6, r4, lit_489@l /* 0x8064A7C0@l */
/* 805B14FC  3C 80 80 65 */	lis r4, rewrite_dataB@ha /* 0x8064A80C@ha */
/* 805B1500  38 A3 A8 54 */	addi r5, r3, lit_583@l /* 0x8064A854@l */
/* 805B1504  3C 60 80 6C */	lis r3, lit_581@ha /* 0x806C562C@ha */
/* 805B1508  C3 E6 00 00 */	lfs f31, 0(r6)
/* 805B150C  3B 44 A8 0C */	addi r26, r4, rewrite_dataB@l /* 0x8064A80C@l */
/* 805B1510  CB C5 00 00 */	lfd f30, 0(r5)
/* 805B1514  3B 23 56 2C */	addi r25, r3, lit_581@l /* 0x806C562C@l */
/* 805B1518  3B E0 FF FF */	li r31, -1
/* 805B151C  3F 60 43 30 */	lis r27, 0x4330
lbl_805B1520:
/* 805B1520  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 805B1524  93 61 00 50 */	stw r27, 0x50(r1)
/* 805B1528  3B C0 FF FF */	li r30, -1
/* 805B152C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B1530  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805B1534  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805B1538  EF BF 00 32 */	fmuls f29, f31, f0
lbl_805B153C:
/* 805B153C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 805B1540  7C FA EA 14 */	add r7, r26, r29
/* 805B1544  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B1548  7F 25 CB 78 */	mr r5, r25
/* 805B154C  81 1C 00 28 */	lwz r8, 0x28(r28)
/* 805B1550  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B1554  93 61 00 50 */	stw r27, 0x50(r1)
/* 805B1558  38 81 00 10 */	addi r4, r1, 0x10
/* 805B155C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 805B1560  38 C0 01 B4 */	li r6, 0x1b4
/* 805B1564  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805B1568  81 7C 00 2C */	lwz r11, 0x2c(r28)
/* 805B156C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805B1570  91 01 00 44 */	stw r8, 0x44(r1)
/* 805B1574  81 47 00 00 */	lwz r10, 0(r7)
/* 805B1578  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805B157C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 805B1580  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 805B1584  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805B1588  A1 27 00 04 */	lhz r9, 4(r7)
/* 805B158C  EC 22 08 2A */	fadds f1, f2, f1
/* 805B1590  89 07 00 06 */	lbz r8, 6(r7)
/* 805B1594  EC 00 E8 2A */	fadds f0, f0, f29
/* 805B1598  91 61 00 48 */	stw r11, 0x48(r1)
/* 805B159C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805B15A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805B15A4  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B15A8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B15AC  91 41 00 10 */	stw r10, 0x10(r1)
/* 805B15B0  B1 21 00 14 */	sth r9, 0x14(r1)
/* 805B15B4  99 01 00 16 */	stb r8, 0x16(r1)
/* 805B15B8  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 805B15BC  91 61 00 30 */	stw r11, 0x30(r1)
/* 805B15C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B15C4  4B DE 07 B5 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B15C8  3B DE 00 01 */	addi r30, r30, 1
/* 805B15CC  3B BD 00 07 */	addi r29, r29, 7
/* 805B15D0  2C 1E 00 01 */	cmpwi r30, 1
/* 805B15D4  40 81 FF 68 */	ble lbl_805B153C
/* 805B15D8  3B FF 00 01 */	addi r31, r31, 1
/* 805B15DC  2C 1F 00 01 */	cmpwi r31, 1
/* 805B15E0  40 81 FF 40 */	ble lbl_805B1520
/* 805B15E4  48 00 00 E0 */	b lbl_805B16C4
lbl_805B15E8:
/* 805B15E8  3C 80 80 65 */	lis r4, rewrite_dataC@ha /* 0x8064A84C@ha */
/* 805B15EC  87 44 A8 4C */	lwzu r26, rewrite_dataC@l(r4)  /* 0x8064A84C@l */
/* 805B15F0  3C C0 80 65 */	lis r6, lit_489@ha /* 0x8064A7C0@ha */
/* 805B15F4  3C A0 80 65 */	lis r5, lit_583@ha /* 0x8064A854@ha */
/* 805B15F8  3C 60 80 6C */	lis r3, lit_581@ha /* 0x806C562C@ha */
/* 805B15FC  C3 C6 A7 C0 */	lfs f30, lit_489@l(r6)  /* 0x8064A7C0@l */
/* 805B1600  CB E5 A8 54 */	lfd f31, lit_583@l(r5)  /* 0x8064A854@l */
/* 805B1604  3B A3 56 2C */	addi r29, r3, lit_581@l /* 0x806C562C@l */
/* 805B1608  A3 64 00 04 */	lhz r27, 4(r4)
/* 805B160C  3F 20 43 30 */	lis r25, 0x4330
/* 805B1610  8B C4 00 06 */	lbz r30, 6(r4)
lbl_805B1614:
/* 805B1614  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 805B1618  93 21 00 50 */	stw r25, 0x50(r1)
/* 805B161C  3B 00 FF FF */	li r24, -1
/* 805B1620  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B1624  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805B1628  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805B162C  EF BE 00 32 */	fmuls f29, f30, f0
lbl_805B1630:
/* 805B1630  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 805B1634  80 FC 00 28 */	lwz r7, 0x28(r28)
/* 805B1638  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B163C  7F A5 EB 78 */	mr r5, r29
/* 805B1640  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 805B1644  38 61 00 20 */	addi r3, r1, 0x20
/* 805B1648  93 21 00 50 */	stw r25, 0x50(r1)
/* 805B164C  38 81 00 08 */	addi r4, r1, 8
/* 805B1650  81 1C 00 2C */	lwz r8, 0x2c(r28)
/* 805B1654  38 C0 01 C2 */	li r6, 0x1c2
/* 805B1658  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805B165C  90 E1 00 44 */	stw r7, 0x44(r1)
/* 805B1660  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805B1664  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805B1668  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 805B166C  EC 3E 00 32 */	fmuls f1, f30, f0
/* 805B1670  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805B1674  91 01 00 48 */	stw r8, 0x48(r1)
/* 805B1678  EC 00 E8 2A */	fadds f0, f0, f29
/* 805B167C  EC 22 08 2A */	fadds f1, f2, f1
/* 805B1680  93 41 00 08 */	stw r26, 8(r1)
/* 805B1684  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805B1688  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805B168C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B1690  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 805B1694  B3 61 00 0C */	sth r27, 0xc(r1)
/* 805B1698  9B C1 00 0E */	stb r30, 0xe(r1)
/* 805B169C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 805B16A0  91 01 00 24 */	stw r8, 0x24(r1)
/* 805B16A4  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B16A8  4B DE 06 D1 */	bl mCoBG_SetPluss5PointOffset_file
/* 805B16AC  3B 18 00 01 */	addi r24, r24, 1
/* 805B16B0  2C 18 00 01 */	cmpwi r24, 1
/* 805B16B4  40 81 FF 7C */	ble lbl_805B1630
/* 805B16B8  3B FF 00 01 */	addi r31, r31, 1
/* 805B16BC  2C 1F 00 01 */	cmpwi r31, 1
/* 805B16C0  40 81 FF 54 */	ble lbl_805B1614
lbl_805B16C4:
/* 805B16C4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 805B16C8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 805B16CC  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 805B16D0  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 805B16D4  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 805B16D8  39 61 00 80 */	addi r11, r1, 0x80
/* 805B16DC  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 805B16E0  4B AE 98 2D */	bl func_8009AF0C
/* 805B16E4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805B16E8  7C 08 03 A6 */	mtlr r0
/* 805B16EC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805B16F0  4E 80 00 20 */	blr 
