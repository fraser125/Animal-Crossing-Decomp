lbl_803F1440:
/* 803F1440  C0 64 00 00 */	lfs f3, 0(r4)
/* 803F1444  C0 43 00 00 */	lfs f2, 0(r3)
/* 803F1448  C0 24 00 04 */	lfs f1, 4(r4)
/* 803F144C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 803F1450  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F1454  C0 64 00 08 */	lfs f3, 8(r4)
/* 803F1458  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F145C  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 803F1460  C0 83 00 30 */	lfs f4, 0x30(r3)
/* 803F1464  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F1468  EC 02 00 2A */	fadds f0, f2, f0
/* 803F146C  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1470  EC 04 00 2A */	fadds f0, f4, f0
/* 803F1474  D0 05 00 00 */	stfs f0, 0(r5)
/* 803F1478  C0 64 00 00 */	lfs f3, 0(r4)
/* 803F147C  C0 43 00 04 */	lfs f2, 4(r3)
/* 803F1480  C0 24 00 04 */	lfs f1, 4(r4)
/* 803F1484  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 803F1488  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F148C  C0 64 00 08 */	lfs f3, 8(r4)
/* 803F1490  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F1494  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 803F1498  C0 83 00 34 */	lfs f4, 0x34(r3)
/* 803F149C  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F14A0  EC 02 00 2A */	fadds f0, f2, f0
/* 803F14A4  EC 01 00 2A */	fadds f0, f1, f0
/* 803F14A8  EC 04 00 2A */	fadds f0, f4, f0
/* 803F14AC  D0 05 00 04 */	stfs f0, 4(r5)
/* 803F14B0  C0 64 00 00 */	lfs f3, 0(r4)
/* 803F14B4  C0 43 00 08 */	lfs f2, 8(r3)
/* 803F14B8  C0 24 00 04 */	lfs f1, 4(r4)
/* 803F14BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 803F14C0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F14C4  C0 64 00 08 */	lfs f3, 8(r4)
/* 803F14C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F14CC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 803F14D0  C0 83 00 38 */	lfs f4, 0x38(r3)
/* 803F14D4  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F14D8  EC 02 00 2A */	fadds f0, f2, f0
/* 803F14DC  EC 01 00 2A */	fadds f0, f1, f0
/* 803F14E0  EC 04 00 2A */	fadds f0, f4, f0
/* 803F14E4  D0 05 00 08 */	stfs f0, 8(r5)
/* 803F14E8  C0 64 00 00 */	lfs f3, 0(r4)
/* 803F14EC  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 803F14F0  C0 24 00 04 */	lfs f1, 4(r4)
/* 803F14F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 803F14F8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F14FC  C0 64 00 08 */	lfs f3, 8(r4)
/* 803F1500  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F1504  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 803F1508  C0 83 00 3C */	lfs f4, 0x3c(r3)
/* 803F150C  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F1510  EC 02 00 2A */	fadds f0, f2, f0
/* 803F1514  EC 01 00 2A */	fadds f0, f1, f0
/* 803F1518  EC 04 00 2A */	fadds f0, f4, f0
/* 803F151C  D0 06 00 00 */	stfs f0, 0(r6)
/* 803F1520  4E 80 00 20 */	blr 
