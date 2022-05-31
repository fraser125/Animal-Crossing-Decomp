lbl_803F1524:
/* 803F1524  C0 03 00 00 */	lfs f0, 0(r3)
/* 803F1528  C0 44 00 00 */	lfs f2, 0(r4)
/* 803F152C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 803F1530  C0 64 00 04 */	lfs f3, 4(r4)
/* 803F1534  EC A0 00 B2 */	fmuls f5, f0, f2
/* 803F1538  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 803F153C  EC 81 00 F2 */	fmuls f4, f1, f3
/* 803F1540  C0 C4 00 08 */	lfs f6, 8(r4)
/* 803F1544  C0 63 00 30 */	lfs f3, 0x30(r3)
/* 803F1548  C0 E4 00 0C */	lfs f7, 0xc(r4)
/* 803F154C  EC C2 01 B2 */	fmuls f6, f2, f6
/* 803F1550  EC 85 20 2A */	fadds f4, f5, f4
/* 803F1554  EC A3 01 F2 */	fmuls f5, f3, f7
/* 803F1558  EC 86 20 2A */	fadds f4, f6, f4
/* 803F155C  EC 85 20 2A */	fadds f4, f5, f4
/* 803F1560  D0 85 00 00 */	stfs f4, 0(r5)
/* 803F1564  C0 84 00 10 */	lfs f4, 0x10(r4)
/* 803F1568  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 803F156C  C0 E4 00 18 */	lfs f7, 0x18(r4)
/* 803F1570  EC A0 01 32 */	fmuls f5, f0, f4
/* 803F1574  EC 81 01 B2 */	fmuls f4, f1, f6
/* 803F1578  C1 04 00 1C */	lfs f8, 0x1c(r4)
/* 803F157C  EC C2 01 F2 */	fmuls f6, f2, f7
/* 803F1580  EC E3 02 32 */	fmuls f7, f3, f8
/* 803F1584  EC 85 20 2A */	fadds f4, f5, f4
/* 803F1588  EC 86 20 2A */	fadds f4, f6, f4
/* 803F158C  EC 87 20 2A */	fadds f4, f7, f4
/* 803F1590  D0 85 00 10 */	stfs f4, 0x10(r5)
/* 803F1594  C0 84 00 20 */	lfs f4, 0x20(r4)
/* 803F1598  C0 C4 00 24 */	lfs f6, 0x24(r4)
/* 803F159C  C0 E4 00 28 */	lfs f7, 0x28(r4)
/* 803F15A0  EC A0 01 32 */	fmuls f5, f0, f4
/* 803F15A4  EC 81 01 B2 */	fmuls f4, f1, f6
/* 803F15A8  C1 04 00 2C */	lfs f8, 0x2c(r4)
/* 803F15AC  EC C2 01 F2 */	fmuls f6, f2, f7
/* 803F15B0  EC E3 02 32 */	fmuls f7, f3, f8
/* 803F15B4  EC 85 20 2A */	fadds f4, f5, f4
/* 803F15B8  EC 86 20 2A */	fadds f4, f6, f4
/* 803F15BC  EC 87 20 2A */	fadds f4, f7, f4
/* 803F15C0  D0 85 00 20 */	stfs f4, 0x20(r5)
/* 803F15C4  C0 84 00 30 */	lfs f4, 0x30(r4)
/* 803F15C8  C0 A4 00 34 */	lfs f5, 0x34(r4)
/* 803F15CC  C0 C4 00 38 */	lfs f6, 0x38(r4)
/* 803F15D0  EC 80 01 32 */	fmuls f4, f0, f4
/* 803F15D4  EC 01 01 72 */	fmuls f0, f1, f5
/* 803F15D8  C0 A4 00 3C */	lfs f5, 0x3c(r4)
/* 803F15DC  EC 22 01 B2 */	fmuls f1, f2, f6
/* 803F15E0  EC 43 01 72 */	fmuls f2, f3, f5
/* 803F15E4  EC 04 00 2A */	fadds f0, f4, f0
/* 803F15E8  EC 01 00 2A */	fadds f0, f1, f0
/* 803F15EC  EC 02 00 2A */	fadds f0, f2, f0
/* 803F15F0  D0 05 00 30 */	stfs f0, 0x30(r5)
/* 803F15F4  C0 83 00 04 */	lfs f4, 4(r3)
/* 803F15F8  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F15FC  C0 A3 00 14 */	lfs f5, 0x14(r3)
/* 803F1600  C0 44 00 04 */	lfs f2, 4(r4)
/* 803F1604  EC 24 00 32 */	fmuls f1, f4, f0
/* 803F1608  C0 C3 00 24 */	lfs f6, 0x24(r3)
/* 803F160C  EC 05 00 B2 */	fmuls f0, f5, f2
/* 803F1610  C0 44 00 08 */	lfs f2, 8(r4)
/* 803F1614  C0 E3 00 34 */	lfs f7, 0x34(r3)
/* 803F1618  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 803F161C  EC 46 00 B2 */	fmuls f2, f6, f2
/* 803F1620  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1624  EC 27 00 F2 */	fmuls f1, f7, f3
/* 803F1628  EC 02 00 2A */	fadds f0, f2, f0
/* 803F162C  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1630  D0 05 00 04 */	stfs f0, 4(r5)
/* 803F1634  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F1638  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 803F163C  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 803F1640  EC 24 00 32 */	fmuls f1, f4, f0
/* 803F1644  EC 05 00 B2 */	fmuls f0, f5, f2
/* 803F1648  C1 04 00 1C */	lfs f8, 0x1c(r4)
/* 803F164C  EC 46 00 F2 */	fmuls f2, f6, f3
/* 803F1650  EC 67 02 32 */	fmuls f3, f7, f8
/* 803F1654  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1658  EC 02 00 2A */	fadds f0, f2, f0
/* 803F165C  EC 03 00 2A */	fadds f0, f3, f0
/* 803F1660  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 803F1664  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 803F1668  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 803F166C  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 803F1670  EC 24 00 32 */	fmuls f1, f4, f0
/* 803F1674  EC 05 00 B2 */	fmuls f0, f5, f2
/* 803F1678  C1 04 00 2C */	lfs f8, 0x2c(r4)
/* 803F167C  EC 46 00 F2 */	fmuls f2, f6, f3
/* 803F1680  EC 67 02 32 */	fmuls f3, f7, f8
/* 803F1684  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1688  EC 02 00 2A */	fadds f0, f2, f0
/* 803F168C  EC 03 00 2A */	fadds f0, f3, f0
/* 803F1690  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 803F1694  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 803F1698  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 803F169C  C0 64 00 38 */	lfs f3, 0x38(r4)
/* 803F16A0  EC 24 00 32 */	fmuls f1, f4, f0
/* 803F16A4  EC 05 00 B2 */	fmuls f0, f5, f2
/* 803F16A8  C0 84 00 3C */	lfs f4, 0x3c(r4)
/* 803F16AC  EC 46 00 F2 */	fmuls f2, f6, f3
/* 803F16B0  EC 67 01 32 */	fmuls f3, f7, f4
/* 803F16B4  EC 01 00 2A */	fadds f0, f1, f0
/* 803F16B8  EC 02 00 2A */	fadds f0, f2, f0
/* 803F16BC  EC 03 00 2A */	fadds f0, f3, f0
/* 803F16C0  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 803F16C4  C0 83 00 08 */	lfs f4, 8(r3)
/* 803F16C8  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F16CC  C0 A3 00 18 */	lfs f5, 0x18(r3)
/* 803F16D0  C0 44 00 04 */	lfs f2, 4(r4)
/* 803F16D4  EC 24 00 32 */	fmuls f1, f4, f0
/* 803F16D8  C0 C3 00 28 */	lfs f6, 0x28(r3)
/* 803F16DC  EC 05 00 B2 */	fmuls f0, f5, f2
/* 803F16E0  C0 44 00 08 */	lfs f2, 8(r4)
/* 803F16E4  C0 E3 00 38 */	lfs f7, 0x38(r3)
/* 803F16E8  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 803F16EC  EC 46 00 B2 */	fmuls f2, f6, f2
/* 803F16F0  EC 01 00 2A */	fadds f0, f1, f0
/* 803F16F4  EC 27 00 F2 */	fmuls f1, f7, f3
/* 803F16F8  EC 02 00 2A */	fadds f0, f2, f0
/* 803F16FC  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1700  D0 05 00 08 */	stfs f0, 8(r5)
/* 803F1704  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 803F1708  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 803F170C  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 803F1710  EC 24 00 32 */	fmuls f1, f4, f0
/* 803F1714  EC 05 00 B2 */	fmuls f0, f5, f2
/* 803F1718  C1 04 00 1C */	lfs f8, 0x1c(r4)
/* 803F171C  EC 46 00 F2 */	fmuls f2, f6, f3
/* 803F1720  EC 67 02 32 */	fmuls f3, f7, f8
/* 803F1724  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1728  EC 02 00 2A */	fadds f0, f2, f0
/* 803F172C  EC 03 00 2A */	fadds f0, f3, f0
/* 803F1730  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 803F1734  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 803F1738  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 803F173C  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 803F1740  EC 24 00 32 */	fmuls f1, f4, f0
/* 803F1744  EC 05 00 B2 */	fmuls f0, f5, f2
/* 803F1748  C1 04 00 2C */	lfs f8, 0x2c(r4)
/* 803F174C  EC 46 00 F2 */	fmuls f2, f6, f3
/* 803F1750  EC 67 02 32 */	fmuls f3, f7, f8
/* 803F1754  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1758  EC 02 00 2A */	fadds f0, f2, f0
/* 803F175C  EC 03 00 2A */	fadds f0, f3, f0
/* 803F1760  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 803F1764  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 803F1768  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 803F176C  C0 64 00 38 */	lfs f3, 0x38(r4)
/* 803F1770  EC 24 00 32 */	fmuls f1, f4, f0
/* 803F1774  EC 05 00 B2 */	fmuls f0, f5, f2
/* 803F1778  C0 84 00 3C */	lfs f4, 0x3c(r4)
/* 803F177C  EC 46 00 F2 */	fmuls f2, f6, f3
/* 803F1780  EC 67 01 32 */	fmuls f3, f7, f4
/* 803F1784  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1788  EC 02 00 2A */	fadds f0, f2, f0
/* 803F178C  EC 03 00 2A */	fadds f0, f3, f0
/* 803F1790  D0 05 00 38 */	stfs f0, 0x38(r5)
/* 803F1794  C0 E3 00 0C */	lfs f7, 0xc(r3)
/* 803F1798  C0 24 00 00 */	lfs f1, 0(r4)
/* 803F179C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 803F17A0  C0 44 00 04 */	lfs f2, 4(r4)
/* 803F17A4  EC 87 00 72 */	fmuls f4, f7, f1
/* 803F17A8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 803F17AC  EC 60 00 B2 */	fmuls f3, f0, f2
/* 803F17B0  C0 A4 00 08 */	lfs f5, 8(r4)
/* 803F17B4  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 803F17B8  C0 C4 00 0C */	lfs f6, 0xc(r4)
/* 803F17BC  EC A1 01 72 */	fmuls f5, f1, f5
/* 803F17C0  EC 64 18 2A */	fadds f3, f4, f3
/* 803F17C4  EC 82 01 B2 */	fmuls f4, f2, f6
/* 803F17C8  EC 65 18 2A */	fadds f3, f5, f3
/* 803F17CC  EC 64 18 2A */	fadds f3, f4, f3
/* 803F17D0  D0 65 00 0C */	stfs f3, 0xc(r5)
/* 803F17D4  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 803F17D8  C0 A4 00 14 */	lfs f5, 0x14(r4)
/* 803F17DC  C0 C4 00 18 */	lfs f6, 0x18(r4)
/* 803F17E0  EC 87 00 F2 */	fmuls f4, f7, f3
/* 803F17E4  EC 60 01 72 */	fmuls f3, f0, f5
/* 803F17E8  C1 04 00 1C */	lfs f8, 0x1c(r4)
/* 803F17EC  EC A1 01 B2 */	fmuls f5, f1, f6
/* 803F17F0  EC C2 02 32 */	fmuls f6, f2, f8
/* 803F17F4  EC 64 18 2A */	fadds f3, f4, f3
/* 803F17F8  EC 65 18 2A */	fadds f3, f5, f3
/* 803F17FC  EC 66 18 2A */	fadds f3, f6, f3
/* 803F1800  D0 65 00 1C */	stfs f3, 0x1c(r5)
/* 803F1804  C0 84 00 20 */	lfs f4, 0x20(r4)
/* 803F1808  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 803F180C  C0 A4 00 28 */	lfs f5, 0x28(r4)
/* 803F1810  EC 87 01 32 */	fmuls f4, f7, f4
/* 803F1814  EC 60 00 F2 */	fmuls f3, f0, f3
/* 803F1818  C0 C4 00 2C */	lfs f6, 0x2c(r4)
/* 803F181C  EC A1 01 72 */	fmuls f5, f1, f5
/* 803F1820  EC C2 01 B2 */	fmuls f6, f2, f6
/* 803F1824  EC 64 18 2A */	fadds f3, f4, f3
/* 803F1828  EC 65 18 2A */	fadds f3, f5, f3
/* 803F182C  EC 66 18 2A */	fadds f3, f6, f3
/* 803F1830  D0 65 00 2C */	stfs f3, 0x2c(r5)
/* 803F1834  C0 84 00 30 */	lfs f4, 0x30(r4)
/* 803F1838  C0 64 00 34 */	lfs f3, 0x34(r4)
/* 803F183C  C0 A4 00 38 */	lfs f5, 0x38(r4)
/* 803F1840  EC 87 01 32 */	fmuls f4, f7, f4
/* 803F1844  EC 00 00 F2 */	fmuls f0, f0, f3
/* 803F1848  C0 64 00 3C */	lfs f3, 0x3c(r4)
/* 803F184C  EC 21 01 72 */	fmuls f1, f1, f5
/* 803F1850  EC 42 00 F2 */	fmuls f2, f2, f3
/* 803F1854  EC 04 00 2A */	fadds f0, f4, f0
/* 803F1858  EC 01 00 2A */	fadds f0, f1, f0
/* 803F185C  EC 02 00 2A */	fadds f0, f2, f0
/* 803F1860  D0 05 00 3C */	stfs f0, 0x3c(r5)
/* 803F1864  4E 80 00 20 */	blr 
