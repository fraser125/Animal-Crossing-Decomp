lbl_804E1498:
/* 804E1498  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E149C  7C 08 02 A6 */	mflr r0
/* 804E14A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E14A4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804E14A8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804E14AC  39 61 00 30 */	addi r11, r1, 0x30
/* 804E14B0  4B BB 9A 21 */	bl func_8009AED0
/* 804E14B4  3D 00 80 64 */	lis r8, lit_603@ha /* 0x80646564@ha */
/* 804E14B8  3C E0 80 64 */	lis r7, lit_604@ha /* 0x80646568@ha */
/* 804E14BC  C0 48 65 64 */	lfs f2, lit_603@l(r8)  /* 0x80646564@l */
/* 804E14C0  7C 7C 1B 78 */	mr r28, r3
/* 804E14C4  C0 07 65 68 */	lfs f0, lit_604@l(r7)  /* 0x80646568@l */
/* 804E14C8  7C 9D 23 78 */	mr r29, r4
/* 804E14CC  EF E2 08 28 */	fsubs f31, f2, f1
/* 804E14D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E14D4  40 81 00 6C */	ble lbl_804E1540
/* 804E14D8  FC 20 F8 34 */	frsqrte f1, f31
/* 804E14DC  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804E14E0  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804E14E4  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E14E8  C8 64 00 00 */	lfd f3, 0(r4)
/* 804E14EC  FC 01 00 72 */	fmul f0, f1, f1
/* 804E14F0  C8 43 69 FC */	lfd f2, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804E14F4  FC 23 00 72 */	fmul f1, f3, f1
/* 804E14F8  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E14FC  FC 02 00 28 */	fsub f0, f2, f0
/* 804E1500  FC 21 00 32 */	fmul f1, f1, f0
/* 804E1504  FC 01 00 72 */	fmul f0, f1, f1
/* 804E1508  FC 23 00 72 */	fmul f1, f3, f1
/* 804E150C  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E1510  FC 02 00 28 */	fsub f0, f2, f0
/* 804E1514  FC 21 00 32 */	fmul f1, f1, f0
/* 804E1518  FC 01 00 72 */	fmul f0, f1, f1
/* 804E151C  FC 23 00 72 */	fmul f1, f3, f1
/* 804E1520  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E1524  FC 02 00 28 */	fsub f0, f2, f0
/* 804E1528  FC 01 00 32 */	fmul f0, f1, f0
/* 804E152C  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E1530  FC 00 00 18 */	frsp f0, f0
/* 804E1534  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E1538  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804E153C  48 00 00 08 */	b lbl_804E1544
lbl_804E1540:
/* 804E1540  FC 20 F8 90 */	fmr f1, f31
lbl_804E1544:
/* 804E1544  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E1548  7C A0 07 34 */	extsh r0, r5
/* 804E154C  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E1550  7C 1E 0E 70 */	srawi r30, r0, 1
/* 804E1554  7C C0 07 34 */	extsh r0, r6
/* 804E1558  A8 9D 00 00 */	lha r4, 0(r29)
/* 804E155C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804E1560  7C 1F 0E 70 */	srawi r31, r0, 1
/* 804E1564  7F 83 E3 78 */	mr r3, r28
/* 804E1568  7F C5 07 34 */	extsh r5, r30
/* 804E156C  7F E6 07 34 */	extsh r6, r31
/* 804E1570  4B ED 9D A1 */	bl add_calc_short_angle2
/* 804E1574  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E1578  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E157C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E1580  40 81 00 6C */	ble lbl_804E15EC
/* 804E1584  FC 20 F8 34 */	frsqrte f1, f31
/* 804E1588  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804E158C  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804E1590  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E1594  C8 64 00 00 */	lfd f3, 0(r4)
/* 804E1598  FC 01 00 72 */	fmul f0, f1, f1
/* 804E159C  C8 43 69 FC */	lfd f2, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804E15A0  FC 23 00 72 */	fmul f1, f3, f1
/* 804E15A4  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E15A8  FC 02 00 28 */	fsub f0, f2, f0
/* 804E15AC  FC 21 00 32 */	fmul f1, f1, f0
/* 804E15B0  FC 01 00 72 */	fmul f0, f1, f1
/* 804E15B4  FC 23 00 72 */	fmul f1, f3, f1
/* 804E15B8  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E15BC  FC 02 00 28 */	fsub f0, f2, f0
/* 804E15C0  FC 21 00 32 */	fmul f1, f1, f0
/* 804E15C4  FC 01 00 72 */	fmul f0, f1, f1
/* 804E15C8  FC 23 00 72 */	fmul f1, f3, f1
/* 804E15CC  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E15D0  FC 02 00 28 */	fsub f0, f2, f0
/* 804E15D4  FC 01 00 32 */	fmul f0, f1, f0
/* 804E15D8  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E15DC  FC 00 00 18 */	frsp f0, f0
/* 804E15E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E15E4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E15E8  48 00 00 08 */	b lbl_804E15F0
lbl_804E15EC:
/* 804E15EC  FC 20 F8 90 */	fmr f1, f31
lbl_804E15F0:
/* 804E15F0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E15F4  A8 9D 00 02 */	lha r4, 2(r29)
/* 804E15F8  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E15FC  7F E6 07 34 */	extsh r6, r31
/* 804E1600  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E1604  38 7C 00 02 */	addi r3, r28, 2
/* 804E1608  7F C5 07 34 */	extsh r5, r30
/* 804E160C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804E1610  4B ED 9D 01 */	bl add_calc_short_angle2
/* 804E1614  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E1618  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E161C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E1620  40 81 00 68 */	ble lbl_804E1688
/* 804E1624  FC 20 F8 34 */	frsqrte f1, f31
/* 804E1628  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804E162C  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804E1630  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E1634  C8 64 00 00 */	lfd f3, 0(r4)
/* 804E1638  FC 01 00 72 */	fmul f0, f1, f1
/* 804E163C  C8 43 69 FC */	lfd f2, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804E1640  FC 23 00 72 */	fmul f1, f3, f1
/* 804E1644  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E1648  FC 02 00 28 */	fsub f0, f2, f0
/* 804E164C  FC 21 00 32 */	fmul f1, f1, f0
/* 804E1650  FC 01 00 72 */	fmul f0, f1, f1
/* 804E1654  FC 23 00 72 */	fmul f1, f3, f1
/* 804E1658  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E165C  FC 02 00 28 */	fsub f0, f2, f0
/* 804E1660  FC 21 00 32 */	fmul f1, f1, f0
/* 804E1664  FC 01 00 72 */	fmul f0, f1, f1
/* 804E1668  FC 23 00 72 */	fmul f1, f3, f1
/* 804E166C  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E1670  FC 02 00 28 */	fsub f0, f2, f0
/* 804E1674  FC 01 00 32 */	fmul f0, f1, f0
/* 804E1678  FC 1F 00 32 */	fmul f0, f31, f0
/* 804E167C  FC 00 00 18 */	frsp f0, f0
/* 804E1680  D0 01 00 08 */	stfs f0, 8(r1)
/* 804E1684  C3 E1 00 08 */	lfs f31, 8(r1)
lbl_804E1688:
/* 804E1688  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E168C  A8 9D 00 04 */	lha r4, 4(r29)
/* 804E1690  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E1694  7F E6 07 34 */	extsh r6, r31
/* 804E1698  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E169C  38 7C 00 04 */	addi r3, r28, 4
/* 804E16A0  7F C5 07 34 */	extsh r5, r30
/* 804E16A4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 804E16A8  4B ED 9C 69 */	bl add_calc_short_angle2
/* 804E16AC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804E16B0  39 61 00 30 */	addi r11, r1, 0x30
/* 804E16B4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804E16B8  4B BB 98 65 */	bl func_8009AF1C
/* 804E16BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E16C0  7C 08 03 A6 */	mtlr r0
/* 804E16C4  38 21 00 40 */	addi r1, r1, 0x40
/* 804E16C8  4E 80 00 20 */	blr 
