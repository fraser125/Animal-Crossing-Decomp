lbl_804B1920:
/* 804B1920  3C A0 80 64 */	lis r5, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B1924  C0 05 5F EC */	lfs f0, data_80645FEC@l(r5)  /* 0x80645FEC@l */
/* 804B1928  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B192C  40 81 00 30 */	ble lbl_804B195C
/* 804B1930  3C A0 80 64 */	lis r5, lit_1004@ha /* 0x8064602C@ha */
/* 804B1934  EC A1 18 24 */	fdivs f5, f1, f3
/* 804B1938  C0 05 60 2C */	lfs f0, lit_1004@l(r5)  /* 0x8064602C@l */
/* 804B193C  EC 20 00 F2 */	fmuls f1, f0, f3
/* 804B1940  D0 A3 00 00 */	stfs f5, 0(r3)
/* 804B1944  EC 03 01 32 */	fmuls f0, f3, f4
/* 804B1948  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B194C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804B1950  EC 00 18 24 */	fdivs f0, f0, f3
/* 804B1954  D0 04 00 00 */	stfs f0, 0(r4)
/* 804B1958  4E 80 00 20 */	blr 
lbl_804B195C:
/* 804B195C  D0 03 00 00 */	stfs f0, 0(r3)
/* 804B1960  D0 04 00 00 */	stfs f0, 0(r4)
/* 804B1964  4E 80 00 20 */	blr 
