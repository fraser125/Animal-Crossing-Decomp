lbl_8056EA00:
/* 8056EA00  3C 80 80 65 */	lis r4, lit_740@ha /* 0x806498B0@ha */
/* 8056EA04  3C A0 80 65 */	lis r5, lit_741@ha /* 0x806498B4@ha */
/* 8056EA08  38 C4 98 B0 */	addi r6, r4, lit_740@l /* 0x806498B0@l */
/* 8056EA0C  C0 25 98 B4 */	lfs f1, lit_741@l(r5)  /* 0x806498B4@l */
/* 8056EA10  C0 46 00 00 */	lfs f2, 0(r6)
/* 8056EA14  3C 80 80 65 */	lis r4, data_8064987C@ha /* 0x8064987C@ha */
/* 8056EA18  C0 04 98 7C */	lfs f0, data_8064987C@l(r4)  /* 0x8064987C@l */
/* 8056EA1C  D0 43 00 74 */	stfs f2, 0x74(r3)
/* 8056EA20  D0 43 08 F8 */	stfs f2, 0x8f8(r3)
/* 8056EA24  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 8056EA28  D0 23 09 00 */	stfs f1, 0x900(r3)
/* 8056EA2C  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 8056EA30  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 8056EA34  4E 80 00 20 */	blr 
