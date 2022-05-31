lbl_805A1658:
/* 805A1658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A165C  7C 08 02 A6 */	mflr r0
/* 805A1660  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A1664  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A1668  7C 7F 1B 78 */	mr r31, r3
/* 805A166C  80 03 02 28 */	lwz r0, 0x228(r3)
/* 805A1670  2C 00 00 00 */	cmpwi r0, 0
/* 805A1674  40 81 00 EC */	ble lbl_805A1760
/* 805A1678  3C A0 80 65 */	lis r5, lit_718@ha /* 0x8064A328@ha */
/* 805A167C  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 805A1680  C0 05 A3 28 */	lfs f0, lit_718@l(r5)  /* 0x8064A328@l */
/* 805A1684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A1688  40 80 00 D8 */	bge lbl_805A1760
/* 805A168C  3C 80 80 65 */	lis r4, lit_719@ha /* 0x8064A32C@ha */
/* 805A1690  3C A0 80 65 */	lis r5, lit_586@ha /* 0x8064A30C@ha */
/* 805A1694  38 C4 A3 2C */	addi r6, r4, lit_719@l /* 0x8064A32C@l */
/* 805A1698  C8 E5 A3 0C */	lfd f7, lit_586@l(r5)  /* 0x8064A30C@l */
/* 805A169C  C9 06 00 00 */	lfd f8, 0(r6)
/* 805A16A0  3C 80 80 65 */	lis r4, lit_587@ha /* 0x8064A314@ha */
/* 805A16A4  38 E4 A3 14 */	addi r7, r4, lit_587@l /* 0x8064A314@l */
/* 805A16A8  3C A0 80 65 */	lis r5, lit_412@ha /* 0x8064A2D8@ha */
/* 805A16AC  FC 20 40 34 */	frsqrte f1, f8
/* 805A16B0  3C 80 80 65 */	lis r4, lit_475@ha /* 0x8064A2E0@ha */
/* 805A16B4  38 C4 A2 E0 */	addi r6, r4, lit_475@l /* 0x8064A2E0@l */
/* 805A16B8  C8 C7 00 00 */	lfd f6, 0(r7)
/* 805A16BC  3C 80 80 65 */	lis r4, lit_407@ha /* 0x8064A2C4@ha */
/* 805A16C0  C0 06 00 00 */	lfs f0, 0(r6)
/* 805A16C4  FC 41 00 72 */	fmul f2, f1, f1
/* 805A16C8  C0 65 A2 D8 */	lfs f3, lit_412@l(r5)  /* 0x8064A2D8@l */
/* 805A16CC  C0 84 A2 C4 */	lfs f4, lit_407@l(r4)  /* 0x8064A2C4@l */
/* 805A16D0  38 63 00 2C */	addi r3, r3, 0x2c
/* 805A16D4  FC A7 00 72 */	fmul f5, f7, f1
/* 805A16D8  C0 3F 02 48 */	lfs f1, 0x248(r31)
/* 805A16DC  FC 48 00 B2 */	fmul f2, f8, f2
/* 805A16E0  FC 46 10 28 */	fsub f2, f6, f2
/* 805A16E4  FC A5 00 B2 */	fmul f5, f5, f2
/* 805A16E8  FC 45 01 72 */	fmul f2, f5, f5
/* 805A16EC  FC A7 01 72 */	fmul f5, f7, f5
/* 805A16F0  FC 48 00 B2 */	fmul f2, f8, f2
/* 805A16F4  FC 46 10 28 */	fsub f2, f6, f2
/* 805A16F8  FC A5 00 B2 */	fmul f5, f5, f2
/* 805A16FC  FC 45 01 72 */	fmul f2, f5, f5
/* 805A1700  FC A7 01 72 */	fmul f5, f7, f5
/* 805A1704  FC 48 00 B2 */	fmul f2, f8, f2
/* 805A1708  FC 46 10 28 */	fsub f2, f6, f2
/* 805A170C  FC 45 00 B2 */	fmul f2, f5, f2
/* 805A1710  FC 48 00 B2 */	fmul f2, f8, f2
/* 805A1714  FC 40 10 18 */	frsp f2, f2
/* 805A1718  D0 41 00 08 */	stfs f2, 8(r1)
/* 805A171C  C0 41 00 08 */	lfs f2, 8(r1)
/* 805A1720  EC 40 10 28 */	fsubs f2, f0, f2
/* 805A1724  4B E1 9A 8D */	bl add_calc
/* 805A1728  80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 805A172C  38 03 00 01 */	addi r0, r3, 1
/* 805A1730  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 805A1734  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 805A1738  2C 00 00 14 */	cmpwi r0, 0x14
/* 805A173C  40 80 00 0C */	bge lbl_805A1748
/* 805A1740  7F E3 FB 78 */	mr r3, r31
/* 805A1744  4B FF F4 DD */	bl aITB_anime_proc
lbl_805A1748:
/* 805A1748  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 805A174C  2C 03 00 00 */	cmpwi r3, 0
/* 805A1750  40 81 00 34 */	ble lbl_805A1784
/* 805A1754  38 03 FF FF */	addi r0, r3, -1
/* 805A1758  90 1F 02 28 */	stw r0, 0x228(r31)
/* 805A175C  48 00 00 28 */	b lbl_805A1784
lbl_805A1760:
/* 805A1760  3C 60 80 65 */	lis r3, lit_722@ha /* 0x8064A33C@ha */
/* 805A1764  38 00 00 00 */	li r0, 0
/* 805A1768  C0 03 A3 3C */	lfs f0, lit_722@l(r3)  /* 0x8064A33C@l */
/* 805A176C  7C 85 23 78 */	mr r5, r4
/* 805A1770  90 1F 02 34 */	stw r0, 0x234(r31)
/* 805A1774  7F E3 FB 78 */	mr r3, r31
/* 805A1778  38 80 00 02 */	li r4, 2
/* 805A177C  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 805A1780  48 00 04 0D */	bl aITB_setupAction
lbl_805A1784:
/* 805A1784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A1788  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A178C  7C 08 03 A6 */	mtlr r0
/* 805A1790  38 21 00 20 */	addi r1, r1, 0x20
/* 805A1794  4E 80 00 20 */	blr 
