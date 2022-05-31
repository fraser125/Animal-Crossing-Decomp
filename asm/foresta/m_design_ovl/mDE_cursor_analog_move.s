lbl_805D162C:
/* 805D162C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D1630  7C 08 02 A6 */	mflr r0
/* 805D1634  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D1638  39 61 00 40 */	addi r11, r1, 0x40
/* 805D163C  4B AC 98 95 */	bl func_8009AED0
/* 805D1640  7C 7C 1B 78 */	mr r28, r3
/* 805D1644  3B E0 00 00 */	li r31, 0
/* 805D1648  88 03 06 A8 */	lbz r0, 0x6a8(r3)
/* 805D164C  28 00 00 00 */	cmplwi r0, 0
/* 805D1650  40 82 00 2C */	bne lbl_805D167C
/* 805D1654  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 805D1658  2C 00 00 02 */	cmpwi r0, 2
/* 805D165C  41 82 00 1C */	beq lbl_805D1678
/* 805D1660  40 80 00 1C */	bge lbl_805D167C
/* 805D1664  2C 00 00 01 */	cmpwi r0, 1
/* 805D1668  40 80 00 08 */	bge lbl_805D1670
/* 805D166C  48 00 00 10 */	b lbl_805D167C
lbl_805D1670:
/* 805D1670  3B E0 00 01 */	li r31, 1
/* 805D1674  48 00 00 08 */	b lbl_805D167C
lbl_805D1678:
/* 805D1678  3B E0 00 02 */	li r31, 2
lbl_805D167C:
/* 805D167C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D1680  3C 00 43 30 */	lis r0, 0x4330
/* 805D1684  38 83 52 F0 */	addi r4, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D1688  3C E0 80 65 */	lis r7, lit_587@ha /* 0x8064B124@ha */
/* 805D168C  81 04 00 00 */	lwz r8, 0(r4)
/* 805D1690  3C 60 80 65 */	lis r3, lit_609@ha /* 0x8064B174@ha */
/* 805D1694  38 C3 B1 74 */	addi r6, r3, lit_609@l /* 0x8064B174@l */
/* 805D1698  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D169C  88 A8 00 16 */	lbz r5, 0x16(r8)
/* 805D16A0  3C 60 80 65 */	lis r3, lit_588@ha /* 0x8064B128@ha */
/* 805D16A4  38 83 B1 28 */	addi r4, r3, lit_588@l /* 0x8064B128@l */
/* 805D16A8  C8 46 00 00 */	lfd f2, 0(r6)
/* 805D16AC  7C A5 07 74 */	extsb r5, r5
/* 805D16B0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D16B4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 805D16B8  C0 24 00 00 */	lfs f1, 0(r4)
/* 805D16BC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805D16C0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D16C4  C0 BC 06 60 */	lfs f5, 0x660(r28)
/* 805D16C8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805D16CC  C0 7C 06 64 */	lfs f3, 0x664(r28)
/* 805D16D0  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D16D4  C0 87 B1 24 */	lfs f4, lit_587@l(r7)  /* 0x8064B124@l */
/* 805D16D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D16DC  EC 63 20 24 */	fdivs f3, f3, f4
/* 805D16E0  80 63 00 00 */	lwz r3, 0(r3)
/* 805D16E4  EC 00 08 24 */	fdivs f0, f0, f1
/* 805D16E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D16EC  88 08 00 17 */	lbz r0, 0x17(r8)
/* 805D16F0  7C 00 07 74 */	extsb r0, r0
/* 805D16F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D16F8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D16FC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805D1700  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D1704  EC 45 20 24 */	fdivs f2, f5, f4
/* 805D1708  EC 00 08 24 */	fdivs f0, f0, f1
/* 805D170C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805D1710  FC 20 18 1E */	fctiwz f1, f3
/* 805D1714  FC 00 10 1E */	fctiwz f0, f2
/* 805D1718  A8 03 16 B4 */	lha r0, 0x16b4(r3)
/* 805D171C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805D1720  2C 00 00 00 */	cmpwi r0, 0
/* 805D1724  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805D1728  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805D172C  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 805D1730  7F A0 00 D0 */	neg r29, r0
/* 805D1734  40 82 00 F4 */	bne lbl_805D1828
/* 805D1738  3C C0 80 65 */	lis r6, lit_589@ha /* 0x8064B12C@ha */
/* 805D173C  3C A0 80 65 */	lis r5, lit_590@ha /* 0x8064B130@ha */
/* 805D1740  3C 80 80 65 */	lis r4, lit_591@ha /* 0x8064B134@ha */
/* 805D1744  38 61 00 0C */	addi r3, r1, 0xc
/* 805D1748  38 E6 B1 2C */	addi r7, r6, lit_589@l /* 0x8064B12C@l */
/* 805D174C  38 C5 B1 30 */	addi r6, r5, lit_590@l /* 0x8064B130@l */
/* 805D1750  38 A4 B1 34 */	addi r5, r4, lit_591@l /* 0x8064B134@l */
/* 805D1754  C0 27 00 00 */	lfs f1, 0(r7)
/* 805D1758  C0 46 00 00 */	lfs f2, 0(r6)
/* 805D175C  38 81 00 08 */	addi r4, r1, 8
/* 805D1760  C0 65 00 00 */	lfs f3, 0(r5)
/* 805D1764  4B FF FE 51 */	bl mDE_cursor_analog_move_hosei
/* 805D1768  3C C0 80 65 */	lis r6, lit_592@ha /* 0x8064B138@ha */
/* 805D176C  3C A0 80 65 */	lis r5, lit_593@ha /* 0x8064B13C@ha */
/* 805D1770  3C 80 80 65 */	lis r4, lit_594@ha /* 0x8064B140@ha */
/* 805D1774  38 61 00 0C */	addi r3, r1, 0xc
/* 805D1778  38 E6 B1 38 */	addi r7, r6, lit_592@l /* 0x8064B138@l */
/* 805D177C  38 C5 B1 3C */	addi r6, r5, lit_593@l /* 0x8064B13C@l */
/* 805D1780  38 A4 B1 40 */	addi r5, r4, lit_594@l /* 0x8064B140@l */
/* 805D1784  C0 27 00 00 */	lfs f1, 0(r7)
/* 805D1788  C0 46 00 00 */	lfs f2, 0(r6)
/* 805D178C  38 81 00 08 */	addi r4, r1, 8
/* 805D1790  C0 65 00 00 */	lfs f3, 0(r5)
/* 805D1794  4B FF FE 21 */	bl mDE_cursor_analog_move_hosei
/* 805D1798  3C C0 80 65 */	lis r6, lit_595@ha /* 0x8064B144@ha */
/* 805D179C  3C A0 80 65 */	lis r5, lit_596@ha /* 0x8064B148@ha */
/* 805D17A0  3C 80 80 65 */	lis r4, lit_597@ha /* 0x8064B14C@ha */
/* 805D17A4  38 61 00 0C */	addi r3, r1, 0xc
/* 805D17A8  38 E6 B1 44 */	addi r7, r6, lit_595@l /* 0x8064B144@l */
/* 805D17AC  38 C5 B1 48 */	addi r6, r5, lit_596@l /* 0x8064B148@l */
/* 805D17B0  38 A4 B1 4C */	addi r5, r4, lit_597@l /* 0x8064B14C@l */
/* 805D17B4  C0 27 00 00 */	lfs f1, 0(r7)
/* 805D17B8  C0 46 00 00 */	lfs f2, 0(r6)
/* 805D17BC  38 81 00 08 */	addi r4, r1, 8
/* 805D17C0  C0 65 00 00 */	lfs f3, 0(r5)
/* 805D17C4  4B FF FD F1 */	bl mDE_cursor_analog_move_hosei
/* 805D17C8  3C C0 80 65 */	lis r6, lit_598@ha /* 0x8064B150@ha */
/* 805D17CC  3C A0 80 65 */	lis r5, lit_594@ha /* 0x8064B140@ha */
/* 805D17D0  3C 80 80 65 */	lis r4, lit_599@ha /* 0x8064B154@ha */
/* 805D17D4  38 61 00 0C */	addi r3, r1, 0xc
/* 805D17D8  38 E6 B1 50 */	addi r7, r6, lit_598@l /* 0x8064B150@l */
/* 805D17DC  38 C5 B1 40 */	addi r6, r5, lit_594@l /* 0x8064B140@l */
/* 805D17E0  38 A4 B1 54 */	addi r5, r4, lit_599@l /* 0x8064B154@l */
/* 805D17E4  C0 27 00 00 */	lfs f1, 0(r7)
/* 805D17E8  C0 46 00 00 */	lfs f2, 0(r6)
/* 805D17EC  38 81 00 08 */	addi r4, r1, 8
/* 805D17F0  C0 65 00 00 */	lfs f3, 0(r5)
/* 805D17F4  4B FF FD C1 */	bl mDE_cursor_analog_move_hosei
/* 805D17F8  3C C0 80 65 */	lis r6, lit_600@ha /* 0x8064B158@ha */
/* 805D17FC  3C A0 80 65 */	lis r5, lit_601@ha /* 0x8064B15C@ha */
/* 805D1800  3C 80 80 65 */	lis r4, lit_596@ha /* 0x8064B148@ha */
/* 805D1804  38 61 00 0C */	addi r3, r1, 0xc
/* 805D1808  38 E6 B1 58 */	addi r7, r6, lit_600@l /* 0x8064B158@l */
/* 805D180C  38 C5 B1 5C */	addi r6, r5, lit_601@l /* 0x8064B15C@l */
/* 805D1810  38 A4 B1 48 */	addi r5, r4, lit_596@l /* 0x8064B148@l */
/* 805D1814  C0 27 00 00 */	lfs f1, 0(r7)
/* 805D1818  C0 46 00 00 */	lfs f2, 0(r6)
/* 805D181C  38 81 00 08 */	addi r4, r1, 8
/* 805D1820  C0 65 00 00 */	lfs f3, 0(r5)
/* 805D1824  4B FF FD 91 */	bl mDE_cursor_analog_move_hosei
lbl_805D1828:
/* 805D1828  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D182C  80 83 52 F0 */	lwz r4, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805D1830  88 04 00 17 */	lbz r0, 0x17(r4)
/* 805D1834  7C 00 07 75 */	extsb. r0, r0
/* 805D1838  41 82 00 18 */	beq lbl_805D1850
/* 805D183C  3C 60 80 65 */	lis r3, lit_602@ha /* 0x8064B160@ha */
/* 805D1840  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805D1844  C0 03 B1 60 */	lfs f0, lit_602@l(r3)  /* 0x8064B160@l */
/* 805D1848  EC 01 00 32 */	fmuls f0, f1, f0
/* 805D184C  48 00 00 14 */	b lbl_805D1860
lbl_805D1850:
/* 805D1850  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064B124@ha */
/* 805D1854  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805D1858  C0 03 B1 24 */	lfs f0, lit_587@l(r3)  /* 0x8064B124@l */
/* 805D185C  EC 01 00 32 */	fmuls f0, f1, f0
lbl_805D1860:
/* 805D1860  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D1864  88 04 00 16 */	lbz r0, 0x16(r4)
/* 805D1868  7C 00 07 75 */	extsb. r0, r0
/* 805D186C  41 82 00 18 */	beq lbl_805D1884
/* 805D1870  3C 60 80 65 */	lis r3, lit_602@ha /* 0x8064B160@ha */
/* 805D1874  C0 21 00 08 */	lfs f1, 8(r1)
/* 805D1878  C0 03 B1 60 */	lfs f0, lit_602@l(r3)  /* 0x8064B160@l */
/* 805D187C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805D1880  48 00 00 14 */	b lbl_805D1894
lbl_805D1884:
/* 805D1884  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064B124@ha */
/* 805D1888  C0 21 00 08 */	lfs f1, 8(r1)
/* 805D188C  C0 03 B1 24 */	lfs f0, lit_587@l(r3)  /* 0x8064B124@l */
/* 805D1890  EC 01 00 32 */	fmuls f0, f1, f0
lbl_805D1894:
/* 805D1894  7C 1D F8 00 */	cmpw r29, r31
/* 805D1898  D0 01 00 08 */	stfs f0, 8(r1)
/* 805D189C  40 80 00 1C */	bge lbl_805D18B8
/* 805D18A0  93 FC 06 6C */	stw r31, 0x66c(r28)
/* 805D18A4  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 805D18A8  7C 00 00 D0 */	neg r0, r0
/* 805D18AC  1C 00 00 05 */	mulli r0, r0, 5
/* 805D18B0  90 1C 06 54 */	stw r0, 0x654(r28)
/* 805D18B4  48 00 00 24 */	b lbl_805D18D8
lbl_805D18B8:
/* 805D18B8  2C 1D 00 1F */	cmpwi r29, 0x1f
/* 805D18BC  40 81 00 1C */	ble lbl_805D18D8
/* 805D18C0  38 00 00 1F */	li r0, 0x1f
/* 805D18C4  90 1C 06 6C */	stw r0, 0x66c(r28)
/* 805D18C8  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 805D18CC  7C 00 00 D0 */	neg r0, r0
/* 805D18D0  1C 00 00 05 */	mulli r0, r0, 5
/* 805D18D4  90 1C 06 54 */	stw r0, 0x654(r28)
lbl_805D18D8:
/* 805D18D8  2C 1E 00 00 */	cmpwi r30, 0
/* 805D18DC  40 80 00 1C */	bge lbl_805D18F8
/* 805D18E0  38 00 00 00 */	li r0, 0
/* 805D18E4  90 1C 06 68 */	stw r0, 0x668(r28)
/* 805D18E8  80 1C 06 68 */	lwz r0, 0x668(r28)
/* 805D18EC  1C 00 00 05 */	mulli r0, r0, 5
/* 805D18F0  90 1C 06 50 */	stw r0, 0x650(r28)
/* 805D18F4  48 00 00 20 */	b lbl_805D1914
lbl_805D18F8:
/* 805D18F8  20 1F 00 1F */	subfic r0, r31, 0x1f
/* 805D18FC  7C 1E 00 00 */	cmpw r30, r0
/* 805D1900  40 81 00 14 */	ble lbl_805D1914
/* 805D1904  90 1C 06 68 */	stw r0, 0x668(r28)
/* 805D1908  80 1C 06 68 */	lwz r0, 0x668(r28)
/* 805D190C  1C 00 00 05 */	mulli r0, r0, 5
/* 805D1910  90 1C 06 50 */	stw r0, 0x650(r28)
lbl_805D1914:
/* 805D1914  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D1918  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D191C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D1920  89 03 00 17 */	lbz r8, 0x17(r3)
/* 805D1924  7D 03 07 75 */	extsb. r3, r8
/* 805D1928  40 81 00 10 */	ble lbl_805D1938
/* 805D192C  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 805D1930  7C 00 F8 00 */	cmpw r0, r31
/* 805D1934  41 81 00 18 */	bgt lbl_805D194C
lbl_805D1938:
/* 805D1938  2C 03 00 00 */	cmpwi r3, 0
/* 805D193C  40 80 01 54 */	bge lbl_805D1A90
/* 805D1940  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 805D1944  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805D1948  40 80 01 48 */	bge lbl_805D1A90
lbl_805D194C:
/* 805D194C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D1950  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D1954  80 63 00 00 */	lwz r3, 0(r3)
/* 805D1958  A8 03 16 BA */	lha r0, 0x16ba(r3)
/* 805D195C  2C 00 00 00 */	cmpwi r0, 0
/* 805D1960  41 82 01 20 */	beq lbl_805D1A80
/* 805D1964  A8 03 16 B8 */	lha r0, 0x16b8(r3)
/* 805D1968  2C 00 00 00 */	cmpwi r0, 0
/* 805D196C  41 82 00 48 */	beq lbl_805D19B4
/* 805D1970  7D 03 07 74 */	extsb r3, r8
/* 805D1974  3C 00 43 30 */	lis r0, 0x4330
/* 805D1978  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D197C  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D1980  90 61 00 2C */	stw r3, 0x2c(r1)
/* 805D1984  38 64 B1 74 */	addi r3, r4, lit_609@l /* 0x8064B174@l */
/* 805D1988  3C 80 80 65 */	lis r4, lit_603@ha /* 0x8064B164@ha */
/* 805D198C  C8 23 00 00 */	lfd f1, 0(r3)
/* 805D1990  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D1994  C0 44 B1 64 */	lfs f2, lit_603@l(r4)  /* 0x8064B164@l */
/* 805D1998  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805D199C  C0 7C 06 64 */	lfs f3, 0x664(r28)
/* 805D19A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D19A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D19A8  EC 03 00 2A */	fadds f0, f3, f0
/* 805D19AC  D0 1C 06 64 */	stfs f0, 0x664(r28)
/* 805D19B0  48 00 00 E0 */	b lbl_805D1A90
lbl_805D19B4:
/* 805D19B4  A8 03 16 B6 */	lha r0, 0x16b6(r3)
/* 805D19B8  2C 00 00 00 */	cmpwi r0, 0
/* 805D19BC  41 82 00 48 */	beq lbl_805D1A04
/* 805D19C0  7D 03 07 74 */	extsb r3, r8
/* 805D19C4  3C 00 43 30 */	lis r0, 0x4330
/* 805D19C8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D19CC  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D19D0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 805D19D4  38 64 B1 74 */	addi r3, r4, lit_609@l /* 0x8064B174@l */
/* 805D19D8  3C 80 80 65 */	lis r4, lit_604@ha /* 0x8064B168@ha */
/* 805D19DC  C8 23 00 00 */	lfd f1, 0(r3)
/* 805D19E0  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D19E4  C0 44 B1 68 */	lfs f2, lit_604@l(r4)  /* 0x8064B168@l */
/* 805D19E8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805D19EC  C0 7C 06 64 */	lfs f3, 0x664(r28)
/* 805D19F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D19F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D19F8  EC 03 00 2A */	fadds f0, f3, f0
/* 805D19FC  D0 1C 06 64 */	stfs f0, 0x664(r28)
/* 805D1A00  48 00 00 90 */	b lbl_805D1A90
lbl_805D1A04:
/* 805D1A04  A8 03 16 BC */	lha r0, 0x16bc(r3)
/* 805D1A08  3C C0 43 30 */	lis r6, 0x4330
/* 805D1A0C  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D1A10  3C A0 80 65 */	lis r5, lit_605@ha /* 0x8064B16C@ha */
/* 805D1A14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D1A18  90 C1 00 20 */	stw r6, 0x20(r1)
/* 805D1A1C  38 E4 B1 74 */	addi r7, r4, lit_609@l /* 0x8064B174@l */
/* 805D1A20  3C 60 80 65 */	lis r3, data_8064B11C@ha /* 0x8064B11C@ha */
/* 805D1A24  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D1A28  38 83 B1 1C */	addi r4, r3, data_8064B11C@l /* 0x8064B11C@l */
/* 805D1A2C  C8 87 00 00 */	lfd f4, 0(r7)
/* 805D1A30  7D 00 07 74 */	extsb r0, r8
/* 805D1A34  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805D1A38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D1A3C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805D1A40  3C 60 80 65 */	lis r3, lit_588@ha /* 0x8064B128@ha */
/* 805D1A44  EC 20 20 28 */	fsubs f1, f0, f4
/* 805D1A48  C0 65 B1 6C */	lfs f3, lit_605@l(r5)  /* 0x8064B16C@l */
/* 805D1A4C  C0 03 B1 28 */	lfs f0, lit_588@l(r3)  /* 0x8064B128@l */
/* 805D1A50  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D1A54  EC 22 00 72 */	fmuls f1, f2, f1
/* 805D1A58  C0 BC 06 64 */	lfs f5, 0x664(r28)
/* 805D1A5C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 805D1A60  EC 23 08 2A */	fadds f1, f3, f1
/* 805D1A64  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 805D1A68  EC 42 20 28 */	fsubs f2, f2, f4
/* 805D1A6C  EC 01 00 24 */	fdivs f0, f1, f0
/* 805D1A70  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D1A74  EC 05 00 2A */	fadds f0, f5, f0
/* 805D1A78  D0 1C 06 64 */	stfs f0, 0x664(r28)
/* 805D1A7C  48 00 00 14 */	b lbl_805D1A90
lbl_805D1A80:
/* 805D1A80  C0 3C 06 64 */	lfs f1, 0x664(r28)
/* 805D1A84  C0 01 00 08 */	lfs f0, 8(r1)
/* 805D1A88  EC 01 00 2A */	fadds f0, f1, f0
/* 805D1A8C  D0 1C 06 64 */	stfs f0, 0x664(r28)
lbl_805D1A90:
/* 805D1A90  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D1A94  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D1A98  80 63 00 00 */	lwz r3, 0(r3)
/* 805D1A9C  89 03 00 16 */	lbz r8, 0x16(r3)
/* 805D1AA0  7D 03 07 75 */	extsb. r3, r8
/* 805D1AA4  40 80 00 10 */	bge lbl_805D1AB4
/* 805D1AA8  80 1C 06 68 */	lwz r0, 0x668(r28)
/* 805D1AAC  2C 00 00 00 */	cmpwi r0, 0
/* 805D1AB0  41 81 00 1C */	bgt lbl_805D1ACC
lbl_805D1AB4:
/* 805D1AB4  2C 03 00 00 */	cmpwi r3, 0
/* 805D1AB8  40 81 01 58 */	ble lbl_805D1C10
/* 805D1ABC  80 7C 06 68 */	lwz r3, 0x668(r28)
/* 805D1AC0  20 1F 00 1F */	subfic r0, r31, 0x1f
/* 805D1AC4  7C 03 00 00 */	cmpw r3, r0
/* 805D1AC8  40 80 01 48 */	bge lbl_805D1C10
lbl_805D1ACC:
/* 805D1ACC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D1AD0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D1AD4  80 63 00 00 */	lwz r3, 0(r3)
/* 805D1AD8  A8 03 16 BA */	lha r0, 0x16ba(r3)
/* 805D1ADC  2C 00 00 00 */	cmpwi r0, 0
/* 805D1AE0  41 82 01 20 */	beq lbl_805D1C00
/* 805D1AE4  A8 03 16 B8 */	lha r0, 0x16b8(r3)
/* 805D1AE8  2C 00 00 00 */	cmpwi r0, 0
/* 805D1AEC  41 82 00 48 */	beq lbl_805D1B34
/* 805D1AF0  7D 03 07 74 */	extsb r3, r8
/* 805D1AF4  3C 00 43 30 */	lis r0, 0x4330
/* 805D1AF8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D1AFC  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D1B00  90 61 00 2C */	stw r3, 0x2c(r1)
/* 805D1B04  38 64 B1 74 */	addi r3, r4, lit_609@l /* 0x8064B174@l */
/* 805D1B08  3C 80 80 65 */	lis r4, lit_603@ha /* 0x8064B164@ha */
/* 805D1B0C  C8 23 00 00 */	lfd f1, 0(r3)
/* 805D1B10  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D1B14  C0 44 B1 64 */	lfs f2, lit_603@l(r4)  /* 0x8064B164@l */
/* 805D1B18  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805D1B1C  C0 7C 06 60 */	lfs f3, 0x660(r28)
/* 805D1B20  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D1B24  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D1B28  EC 03 00 2A */	fadds f0, f3, f0
/* 805D1B2C  D0 1C 06 60 */	stfs f0, 0x660(r28)
/* 805D1B30  48 00 00 E0 */	b lbl_805D1C10
lbl_805D1B34:
/* 805D1B34  A8 03 16 B6 */	lha r0, 0x16b6(r3)
/* 805D1B38  2C 00 00 00 */	cmpwi r0, 0
/* 805D1B3C  41 82 00 48 */	beq lbl_805D1B84
/* 805D1B40  7D 03 07 74 */	extsb r3, r8
/* 805D1B44  3C 00 43 30 */	lis r0, 0x4330
/* 805D1B48  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D1B4C  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D1B50  90 61 00 2C */	stw r3, 0x2c(r1)
/* 805D1B54  38 64 B1 74 */	addi r3, r4, lit_609@l /* 0x8064B174@l */
/* 805D1B58  3C 80 80 65 */	lis r4, lit_604@ha /* 0x8064B168@ha */
/* 805D1B5C  C8 23 00 00 */	lfd f1, 0(r3)
/* 805D1B60  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D1B64  C0 44 B1 68 */	lfs f2, lit_604@l(r4)  /* 0x8064B168@l */
/* 805D1B68  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805D1B6C  C0 7C 06 60 */	lfs f3, 0x660(r28)
/* 805D1B70  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D1B74  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D1B78  EC 03 00 2A */	fadds f0, f3, f0
/* 805D1B7C  D0 1C 06 60 */	stfs f0, 0x660(r28)
/* 805D1B80  48 00 00 90 */	b lbl_805D1C10
lbl_805D1B84:
/* 805D1B84  A8 03 16 BC */	lha r0, 0x16bc(r3)
/* 805D1B88  3C C0 43 30 */	lis r6, 0x4330
/* 805D1B8C  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D1B90  3C A0 80 65 */	lis r5, lit_605@ha /* 0x8064B16C@ha */
/* 805D1B94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D1B98  90 C1 00 20 */	stw r6, 0x20(r1)
/* 805D1B9C  38 E4 B1 74 */	addi r7, r4, lit_609@l /* 0x8064B174@l */
/* 805D1BA0  3C 60 80 65 */	lis r3, data_8064B11C@ha /* 0x8064B11C@ha */
/* 805D1BA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D1BA8  38 83 B1 1C */	addi r4, r3, data_8064B11C@l /* 0x8064B11C@l */
/* 805D1BAC  C8 87 00 00 */	lfd f4, 0(r7)
/* 805D1BB0  7D 00 07 74 */	extsb r0, r8
/* 805D1BB4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805D1BB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D1BBC  C0 44 00 00 */	lfs f2, 0(r4)
/* 805D1BC0  3C 60 80 65 */	lis r3, lit_588@ha /* 0x8064B128@ha */
/* 805D1BC4  EC 20 20 28 */	fsubs f1, f0, f4
/* 805D1BC8  C0 65 B1 6C */	lfs f3, lit_605@l(r5)  /* 0x8064B16C@l */
/* 805D1BCC  C0 03 B1 28 */	lfs f0, lit_588@l(r3)  /* 0x8064B128@l */
/* 805D1BD0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D1BD4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805D1BD8  C0 BC 06 60 */	lfs f5, 0x660(r28)
/* 805D1BDC  90 C1 00 28 */	stw r6, 0x28(r1)
/* 805D1BE0  EC 23 08 2A */	fadds f1, f3, f1
/* 805D1BE4  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 805D1BE8  EC 42 20 28 */	fsubs f2, f2, f4
/* 805D1BEC  EC 01 00 24 */	fdivs f0, f1, f0
/* 805D1BF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D1BF4  EC 05 00 2A */	fadds f0, f5, f0
/* 805D1BF8  D0 1C 06 60 */	stfs f0, 0x660(r28)
/* 805D1BFC  48 00 00 14 */	b lbl_805D1C10
lbl_805D1C00:
/* 805D1C00  C0 3C 06 60 */	lfs f1, 0x660(r28)
/* 805D1C04  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805D1C08  EC 01 00 2A */	fadds f0, f1, f0
/* 805D1C0C  D0 1C 06 60 */	stfs f0, 0x660(r28)
lbl_805D1C10:
/* 805D1C10  39 61 00 40 */	addi r11, r1, 0x40
/* 805D1C14  4B AC 93 09 */	bl func_8009AF1C
/* 805D1C18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D1C1C  7C 08 03 A6 */	mtlr r0
/* 805D1C20  38 21 00 40 */	addi r1, r1, 0x40
/* 805D1C24  4E 80 00 20 */	blr 
