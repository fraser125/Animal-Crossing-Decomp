lbl_8055A6FC:
/* 8055A6FC  3C 80 80 65 */	lis r4, data_806496AC@ha /* 0x806496AC@ha */
/* 8055A700  C0 04 96 AC */	lfs f0, data_806496AC@l(r4)  /* 0x806496AC@l */
/* 8055A704  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8055A708  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8055A70C  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8055A710  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8055A714  4E 80 00 20 */	blr 
