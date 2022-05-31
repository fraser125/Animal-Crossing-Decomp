lbl_8056B1BC:
/* 8056B1BC  3C 80 80 65 */	lis r4, data_80649844@ha /* 0x80649844@ha */
/* 8056B1C0  C0 04 98 44 */	lfs f0, data_80649844@l(r4)  /* 0x80649844@l */
/* 8056B1C4  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8056B1C8  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8056B1CC  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8056B1D0  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8056B1D4  4E 80 00 20 */	blr 
