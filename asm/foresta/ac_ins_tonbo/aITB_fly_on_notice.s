lbl_805A1424:
/* 805A1424  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A1428  7C 08 02 A6 */	mflr r0
/* 805A142C  3C A0 80 65 */	lis r5, lit_585@ha /* 0x8064A304@ha */
/* 805A1430  C8 A5 A3 04 */	lfd f5, lit_585@l(r5)  /* 0x8064A304@l */
/* 805A1434  3C A0 80 65 */	lis r5, lit_587@ha /* 0x8064A314@ha */
/* 805A1438  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A143C  FC 40 28 34 */	frsqrte f2, f5
/* 805A1440  C8 65 A3 14 */	lfd f3, lit_587@l(r5)  /* 0x8064A314@l */
/* 805A1444  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A1448  7C 7F 1B 78 */	mr r31, r3
/* 805A144C  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064A30C@ha */
/* 805A1450  38 A0 09 C4 */	li r5, 0x9c4
/* 805A1454  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1458  38 C3 A3 0C */	addi r6, r3, lit_586@l /* 0x8064A30C@l */
/* 805A145C  C8 86 00 00 */	lfd f4, 0(r6)
/* 805A1460  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064A2E0@ha */
/* 805A1464  C0 03 A2 E0 */	lfs f0, lit_475@l(r3)  /* 0x8064A2E0@l */
/* 805A1468  38 7F 00 DE */	addi r3, r31, 0xde
/* 805A146C  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1470  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A1474  7C 9E 23 78 */	mr r30, r4
/* 805A1478  38 C0 00 00 */	li r6, 0
/* 805A147C  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1480  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 805A1484  FC 23 08 28 */	fsub f1, f3, f1
/* 805A1488  FC 42 00 72 */	fmul f2, f2, f1
/* 805A148C  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A1490  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A1494  FC 25 00 72 */	fmul f1, f5, f1
/* 805A1498  FC 23 08 28 */	fsub f1, f3, f1
/* 805A149C  FC 42 00 72 */	fmul f2, f2, f1
/* 805A14A0  FC 22 00 B2 */	fmul f1, f2, f2
/* 805A14A4  FC 44 00 B2 */	fmul f2, f4, f2
/* 805A14A8  FC 25 00 72 */	fmul f1, f5, f1
/* 805A14AC  FC 23 08 28 */	fsub f1, f3, f1
/* 805A14B0  FC 22 00 72 */	fmul f1, f2, f1
/* 805A14B4  FC 25 00 72 */	fmul f1, f5, f1
/* 805A14B8  FC 20 08 18 */	frsp f1, f1
/* 805A14BC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805A14C0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805A14C4  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A14C8  4B E1 9E 49 */	bl add_calc_short_angle2
/* 805A14CC  3C 60 80 65 */	lis r3, lit_718@ha /* 0x8064A328@ha */
/* 805A14D0  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 805A14D4  C0 03 A3 28 */	lfs f0, lit_718@l(r3)  /* 0x8064A328@l */
/* 805A14D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A14DC  40 80 01 40 */	bge lbl_805A161C
/* 805A14E0  3C 60 80 65 */	lis r3, lit_719@ha /* 0x8064A32C@ha */
/* 805A14E4  3C 80 80 65 */	lis r4, lit_586@ha /* 0x8064A30C@ha */
/* 805A14E8  38 A3 A3 2C */	addi r5, r3, lit_719@l /* 0x8064A32C@l */
/* 805A14EC  C8 E4 A3 0C */	lfd f7, lit_586@l(r4)  /* 0x8064A30C@l */
/* 805A14F0  C9 05 00 00 */	lfd f8, 0(r5)
/* 805A14F4  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064A314@ha */
/* 805A14F8  38 C3 A3 14 */	addi r6, r3, lit_587@l /* 0x8064A314@l */
/* 805A14FC  3C 80 80 65 */	lis r4, lit_412@ha /* 0x8064A2D8@ha */
/* 805A1500  FC 20 40 34 */	frsqrte f1, f8
/* 805A1504  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064A2E0@ha */
/* 805A1508  38 A3 A2 E0 */	addi r5, r3, lit_475@l /* 0x8064A2E0@l */
/* 805A150C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 805A1510  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064A2C4@ha */
/* 805A1514  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A1518  FC 41 00 72 */	fmul f2, f1, f1
/* 805A151C  C0 83 A2 C4 */	lfs f4, lit_407@l(r3)  /* 0x8064A2C4@l */
/* 805A1520  C0 64 A2 D8 */	lfs f3, lit_412@l(r4)  /* 0x8064A2D8@l */
/* 805A1524  38 7F 00 2C */	addi r3, r31, 0x2c
/* 805A1528  FC A7 00 72 */	fmul f5, f7, f1
/* 805A152C  C0 3F 02 48 */	lfs f1, 0x248(r31)
/* 805A1530  FC 48 00 B2 */	fmul f2, f8, f2
/* 805A1534  FC 46 10 28 */	fsub f2, f6, f2
/* 805A1538  FC A5 00 B2 */	fmul f5, f5, f2
/* 805A153C  FC 45 01 72 */	fmul f2, f5, f5
/* 805A1540  FC A7 01 72 */	fmul f5, f7, f5
/* 805A1544  FC 48 00 B2 */	fmul f2, f8, f2
/* 805A1548  FC 46 10 28 */	fsub f2, f6, f2
/* 805A154C  FC A5 00 B2 */	fmul f5, f5, f2
/* 805A1550  FC 45 01 72 */	fmul f2, f5, f5
/* 805A1554  FC A7 01 72 */	fmul f5, f7, f5
/* 805A1558  FC 48 00 B2 */	fmul f2, f8, f2
/* 805A155C  FC 46 10 28 */	fsub f2, f6, f2
/* 805A1560  FC 45 00 B2 */	fmul f2, f5, f2
/* 805A1564  FC 48 00 B2 */	fmul f2, f8, f2
/* 805A1568  FC 40 10 18 */	frsp f2, f2
/* 805A156C  D0 41 00 08 */	stfs f2, 8(r1)
/* 805A1570  C0 41 00 08 */	lfs f2, 8(r1)
/* 805A1574  EC 40 10 28 */	fsubs f2, f0, f2
/* 805A1578  4B E1 9C 39 */	bl add_calc
/* 805A157C  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 805A1580  38 61 00 1C */	addi r3, r1, 0x1c
/* 805A1584  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A1588  38 81 00 10 */	addi r4, r1, 0x10
/* 805A158C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805A1590  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1594  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A1598  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A159C  4B E0 3F A1 */	bl mFI_Wpos2UtCenterWpos
/* 805A15A0  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 805A15A4  3C 60 80 65 */	lis r3, lit_720@ha /* 0x8064A334@ha */
/* 805A15A8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805A15AC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 805A15B0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805A15B4  EC 63 00 28 */	fsubs f3, f3, f0
/* 805A15B8  C0 03 A3 34 */	lfs f0, lit_720@l(r3)  /* 0x8064A334@l */
/* 805A15BC  EC 22 08 28 */	fsubs f1, f2, f1
/* 805A15C0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 805A15C4  EC 21 00 72 */	fmuls f1, f1, f1
/* 805A15C8  EC 22 08 2A */	fadds f1, f2, f1
/* 805A15CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A15D0  40 81 00 18 */	ble lbl_805A15E8
/* 805A15D4  38 7F 00 28 */	addi r3, r31, 0x28
/* 805A15D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 805A15DC  4B E1 9B 55 */	bl search_position_angleY
/* 805A15E0  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 805A15E4  48 00 00 5C */	b lbl_805A1640
lbl_805A15E8:
/* 805A15E8  C0 5F 02 48 */	lfs f2, 0x248(r31)
/* 805A15EC  3C 60 80 65 */	lis r3, lit_721@ha /* 0x8064A338@ha */
/* 805A15F0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805A15F4  C0 03 A3 38 */	lfs f0, lit_721@l(r3)  /* 0x8064A338@l */
/* 805A15F8  EC 22 08 28 */	fsubs f1, f2, f1
/* 805A15FC  EC 21 00 72 */	fmuls f1, f1, f1
/* 805A1600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A1604  40 80 00 3C */	bge lbl_805A1640
/* 805A1608  7F E3 FB 78 */	mr r3, r31
/* 805A160C  7F C5 F3 78 */	mr r5, r30
/* 805A1610  38 80 00 09 */	li r4, 9
/* 805A1614  48 00 05 79 */	bl aITB_setupAction
/* 805A1618  48 00 00 28 */	b lbl_805A1640
lbl_805A161C:
/* 805A161C  3C 60 80 65 */	lis r3, lit_722@ha /* 0x8064A33C@ha */
/* 805A1620  38 00 00 00 */	li r0, 0
/* 805A1624  C0 03 A3 3C */	lfs f0, lit_722@l(r3)  /* 0x8064A33C@l */
/* 805A1628  7F E3 FB 78 */	mr r3, r31
/* 805A162C  90 1F 02 34 */	stw r0, 0x234(r31)
/* 805A1630  7F C5 F3 78 */	mr r5, r30
/* 805A1634  38 80 00 02 */	li r4, 2
/* 805A1638  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 805A163C  48 00 05 51 */	bl aITB_setupAction
lbl_805A1640:
/* 805A1640  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A1644  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A1648  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A164C  7C 08 03 A6 */	mtlr r0
/* 805A1650  38 21 00 30 */	addi r1, r1, 0x30
/* 805A1654  4E 80 00 20 */	blr 
