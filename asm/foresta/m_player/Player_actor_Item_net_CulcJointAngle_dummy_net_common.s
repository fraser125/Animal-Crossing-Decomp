lbl_804E174C:
/* 804E174C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E1750  7C 08 02 A6 */	mflr r0
/* 804E1754  3D 00 80 64 */	lis r8, lit_6209@ha /* 0x80647DE8@ha */
/* 804E1758  3D 20 80 64 */	lis r9, lit_6210@ha /* 0x80647DEC@ha */
/* 804E175C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E1760  39 48 7D E8 */	addi r10, r8, lit_6209@l /* 0x80647DE8@l */
/* 804E1764  C0 0A 00 00 */	lfs f0, 0(r10)
/* 804E1768  3D 00 80 64 */	lis r8, lit_603@ha /* 0x80646564@ha */
/* 804E176C  C0 43 01 80 */	lfs f2, 0x180(r3)
/* 804E1770  38 03 0E 5C */	addi r0, r3, 0xe5c
/* 804E1774  C0 29 7D EC */	lfs f1, lit_6210@l(r9)  /* 0x80647DEC@l */
/* 804E1778  EC 42 00 28 */	fsubs f2, f2, f0
/* 804E177C  C0 08 65 64 */	lfs f0, lit_603@l(r8)  /* 0x80646564@l */
/* 804E1780  EC E2 08 24 */	fdivs f7, f2, f1
/* 804E1784  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 804E1788  40 81 00 0C */	ble lbl_804E1794
/* 804E178C  FC E0 00 90 */	fmr f7, f0
/* 804E1790  48 00 00 18 */	b lbl_804E17A8
lbl_804E1794:
/* 804E1794  3D 00 80 64 */	lis r8, lit_604@ha /* 0x80646568@ha */
/* 804E1798  C0 08 65 68 */	lfs f0, lit_604@l(r8)  /* 0x80646568@l */
/* 804E179C  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 804E17A0  40 80 00 08 */	bge lbl_804E17A8
/* 804E17A4  FC E0 00 90 */	fmr f7, f0
lbl_804E17A8:
/* 804E17A8  C0 84 00 00 */	lfs f4, 0(r4)
/* 804E17AC  3D 00 80 64 */	lis r8, lit_604@ha /* 0x80646568@ha */
/* 804E17B0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E17B4  C0 A4 00 04 */	lfs f5, 4(r4)
/* 804E17B8  EC 61 20 28 */	fsubs f3, f1, f4
/* 804E17BC  C0 05 00 04 */	lfs f0, 4(r5)
/* 804E17C0  C0 C4 00 08 */	lfs f6, 8(r4)
/* 804E17C4  EC 40 28 28 */	fsubs f2, f0, f5
/* 804E17C8  C0 25 00 08 */	lfs f1, 8(r5)
/* 804E17CC  EC 67 00 F2 */	fmuls f3, f7, f3
/* 804E17D0  EC 21 30 28 */	fsubs f1, f1, f6
/* 804E17D4  C0 08 65 68 */	lfs f0, lit_604@l(r8)  /* 0x80646568@l */
/* 804E17D8  EC 47 00 B2 */	fmuls f2, f7, f2
/* 804E17DC  EC 64 18 2A */	fadds f3, f4, f3
/* 804E17E0  EC 27 00 72 */	fmuls f1, f7, f1
/* 804E17E4  EC 45 10 2A */	fadds f2, f5, f2
/* 804E17E8  FC 60 18 1E */	fctiwz f3, f3
/* 804E17EC  EC 26 08 2A */	fadds f1, f6, f1
/* 804E17F0  FC 40 10 1E */	fctiwz f2, f2
/* 804E17F4  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 804E17F8  FC 20 08 1E */	fctiwz f1, f1
/* 804E17FC  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 804E1800  81 21 00 14 */	lwz r9, 0x14(r1)
/* 804E1804  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 804E1808  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 804E180C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804E1810  B1 21 00 08 */	sth r9, 8(r1)
/* 804E1814  B1 01 00 0A */	sth r8, 0xa(r1)
/* 804E1818  B0 A1 00 0C */	sth r5, 0xc(r1)
/* 804E181C  C0 43 0E 00 */	lfs f2, 0xe00(r3)
/* 804E1820  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E1824  40 81 00 28 */	ble lbl_804E184C
/* 804E1828  3C 60 80 64 */	lis r3, lit_6211@ha /* 0x80647DF0@ha */
/* 804E182C  C0 03 7D F0 */	lfs f0, lit_6211@l(r3)  /* 0x80647DF0@l */
/* 804E1830  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E1834  40 81 00 34 */	ble lbl_804E1868
/* 804E1838  3C 60 80 64 */	lis r3, lit_6212@ha /* 0x80647DF4@ha */
/* 804E183C  C0 03 7D F4 */	lfs f0, lit_6212@l(r3)  /* 0x80647DF4@l */
/* 804E1840  EC 00 10 28 */	fsubs f0, f0, f2
/* 804E1844  FC 40 00 50 */	fneg f2, f0
/* 804E1848  48 00 00 20 */	b lbl_804E1868
lbl_804E184C:
/* 804E184C  3C 60 80 64 */	lis r3, lit_6213@ha /* 0x80647DF8@ha */
/* 804E1850  C0 03 7D F8 */	lfs f0, lit_6213@l(r3)  /* 0x80647DF8@l */
/* 804E1854  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E1858  40 80 00 10 */	bge lbl_804E1868
/* 804E185C  3C 60 80 64 */	lis r3, lit_6212@ha /* 0x80647DF4@ha */
/* 804E1860  C0 03 7D F4 */	lfs f0, lit_6212@l(r3)  /* 0x80647DF4@l */
/* 804E1864  EC 40 10 2A */	fadds f2, f0, f2
lbl_804E1868:
/* 804E1868  3C A0 80 64 */	lis r5, lit_6214@ha /* 0x80647DFC@ha */
/* 804E186C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E1870  C0 25 7D FC */	lfs f1, lit_6214@l(r5)  /* 0x80647DFC@l */
/* 804E1874  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E1878  EC A2 08 24 */	fdivs f5, f2, f1
/* 804E187C  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 804E1880  40 81 00 0C */	ble lbl_804E188C
/* 804E1884  FC A0 00 90 */	fmr f5, f0
/* 804E1888  48 00 00 18 */	b lbl_804E18A0
lbl_804E188C:
/* 804E188C  3C 60 80 64 */	lis r3, lit_950@ha /* 0x806468F4@ha */
/* 804E1890  C0 03 68 F4 */	lfs f0, lit_950@l(r3)  /* 0x806468F4@l */
/* 804E1894  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 804E1898  40 80 00 08 */	bge lbl_804E18A0
/* 804E189C  FC A0 00 90 */	fmr f5, f0
lbl_804E18A0:
/* 804E18A0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E18A4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E18A8  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 804E18AC  40 81 00 8C */	ble lbl_804E1938
/* 804E18B0  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E18B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804E18B8  C0 66 00 04 */	lfs f3, 4(r6)
/* 804E18BC  C0 44 00 04 */	lfs f2, 4(r4)
/* 804E18C0  EC 81 00 28 */	fsubs f4, f1, f0
/* 804E18C4  C0 26 00 08 */	lfs f1, 8(r6)
/* 804E18C8  C0 04 00 08 */	lfs f0, 8(r4)
/* 804E18CC  EC 43 10 28 */	fsubs f2, f3, f2
/* 804E18D0  EC 65 01 32 */	fmuls f3, f5, f4
/* 804E18D4  A9 01 00 08 */	lha r8, 8(r1)
/* 804E18D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E18DC  A8 C1 00 0A */	lha r6, 0xa(r1)
/* 804E18E0  EC 25 00 B2 */	fmuls f1, f5, f2
/* 804E18E4  FC 40 18 1E */	fctiwz f2, f3
/* 804E18E8  EC 05 00 32 */	fmuls f0, f5, f0
/* 804E18EC  A8 81 00 0C */	lha r4, 0xc(r1)
/* 804E18F0  FC 20 08 1E */	fctiwz f1, f1
/* 804E18F4  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 804E18F8  FC 00 00 1E */	fctiwz f0, f0
/* 804E18FC  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 804E1900  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804E1904  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804E1908  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 804E190C  7C 67 07 34 */	extsh r7, r3
/* 804E1910  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804E1914  7C E8 3A 14 */	add r7, r8, r7
/* 804E1918  7C A5 07 34 */	extsh r5, r5
/* 804E191C  B0 E1 00 08 */	sth r7, 8(r1)
/* 804E1920  7C 63 07 34 */	extsh r3, r3
/* 804E1924  7C A6 2A 14 */	add r5, r6, r5
/* 804E1928  7C 64 1A 14 */	add r3, r4, r3
/* 804E192C  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 804E1930  B0 61 00 0C */	sth r3, 0xc(r1)
/* 804E1934  48 00 00 90 */	b lbl_804E19C4
lbl_804E1938:
/* 804E1938  40 80 00 8C */	bge lbl_804E19C4
/* 804E193C  C0 27 00 00 */	lfs f1, 0(r7)
/* 804E1940  FC A0 28 50 */	fneg f5, f5
/* 804E1944  C0 04 00 00 */	lfs f0, 0(r4)
/* 804E1948  C0 67 00 04 */	lfs f3, 4(r7)
/* 804E194C  C0 44 00 04 */	lfs f2, 4(r4)
/* 804E1950  EC 81 00 28 */	fsubs f4, f1, f0
/* 804E1954  C0 27 00 08 */	lfs f1, 8(r7)
/* 804E1958  C0 04 00 08 */	lfs f0, 8(r4)
/* 804E195C  EC 43 10 28 */	fsubs f2, f3, f2
/* 804E1960  EC 65 01 32 */	fmuls f3, f5, f4
/* 804E1964  A9 01 00 08 */	lha r8, 8(r1)
/* 804E1968  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E196C  A8 C1 00 0A */	lha r6, 0xa(r1)
/* 804E1970  EC 25 00 B2 */	fmuls f1, f5, f2
/* 804E1974  FC 40 18 1E */	fctiwz f2, f3
/* 804E1978  EC 05 00 32 */	fmuls f0, f5, f0
/* 804E197C  A8 81 00 0C */	lha r4, 0xc(r1)
/* 804E1980  FC 20 08 1E */	fctiwz f1, f1
/* 804E1984  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 804E1988  FC 00 00 1E */	fctiwz f0, f0
/* 804E198C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 804E1990  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804E1994  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804E1998  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 804E199C  7C 67 07 34 */	extsh r7, r3
/* 804E19A0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804E19A4  7C E8 3A 14 */	add r7, r8, r7
/* 804E19A8  7C A5 07 34 */	extsh r5, r5
/* 804E19AC  B0 E1 00 08 */	sth r7, 8(r1)
/* 804E19B0  7C 63 07 34 */	extsh r3, r3
/* 804E19B4  7C A6 2A 14 */	add r5, r6, r5
/* 804E19B8  7C 64 1A 14 */	add r3, r4, r3
/* 804E19BC  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 804E19C0  B0 61 00 0C */	sth r3, 0xc(r1)
lbl_804E19C4:
/* 804E19C4  3C 80 80 64 */	lis r4, lit_6171@ha /* 0x80647DDC@ha */
/* 804E19C8  7C 03 03 78 */	mr r3, r0
/* 804E19CC  38 A4 7D DC */	addi r5, r4, lit_6171@l /* 0x80647DDC@l */
/* 804E19D0  38 81 00 08 */	addi r4, r1, 8
/* 804E19D4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E19D8  38 A0 0A AA */	li r5, 0xaaa
/* 804E19DC  38 C0 00 64 */	li r6, 0x64
/* 804E19E0  4B FF FA B9 */	bl func_804E1498
/* 804E19E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E19E8  7C 08 03 A6 */	mtlr r0
/* 804E19EC  38 21 00 30 */	addi r1, r1, 0x30
/* 804E19F0  4E 80 00 20 */	blr 
