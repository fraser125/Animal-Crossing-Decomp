lbl_8051AC90:
/* 8051AC90  3C 80 80 65 */	lis r4, data_8064908C@ha /* 0x8064908C@ha */
/* 8051AC94  C0 04 90 8C */	lfs f0, data_8064908C@l(r4)  /* 0x8064908C@l */
/* 8051AC98  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8051AC9C  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8051ACA0  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8051ACA4  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8051ACA8  4E 80 00 20 */	blr 
