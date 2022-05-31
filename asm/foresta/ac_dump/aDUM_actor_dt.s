lbl_805AE680:
/* 805AE680  3C 80 80 65 */	lis r4, data_8064A6FC@ha /* 0x8064A6FC@ha */
/* 805AE684  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 805AE688  C0 04 A6 FC */	lfs f0, data_8064A6FC@l(r4)  /* 0x8064A6FC@l */
/* 805AE68C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AE690  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 805AE694  4E 80 00 20 */	blr 
