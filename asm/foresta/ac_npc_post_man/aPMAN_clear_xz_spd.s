lbl_8056E9E4:
/* 8056E9E4  3C 80 80 65 */	lis r4, data_8064987C@ha /* 0x8064987C@ha */
/* 8056E9E8  C0 04 98 7C */	lfs f0, data_8064987C@l(r4)  /* 0x8064987C@l */
/* 8056E9EC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8056E9F0  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8056E9F4  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8056E9F8  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8056E9FC  4E 80 00 20 */	blr 
