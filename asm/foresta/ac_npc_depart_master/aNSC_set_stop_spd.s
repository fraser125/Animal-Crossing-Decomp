lbl_8054D710:
/* 8054D710  3C 80 80 65 */	lis r4, data_806494CC@ha /* 0x806494CC@ha */
/* 8054D714  C0 04 94 CC */	lfs f0, data_806494CC@l(r4)  /* 0x806494CC@l */
/* 8054D718  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8054D71C  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8054D720  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8054D724  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8054D728  4E 80 00 20 */	blr 
