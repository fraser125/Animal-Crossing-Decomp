lbl_8056EB24:
/* 8056EB24  3C A0 80 65 */	lis r5, lit_675@ha /* 0x80649894@ha */
/* 8056EB28  3C 80 80 65 */	lis r4, lit_721@ha /* 0x806498A4@ha */
/* 8056EB2C  C0 25 98 94 */	lfs f1, lit_675@l(r5)  /* 0x80649894@l */
/* 8056EB30  C0 04 98 A4 */	lfs f0, lit_721@l(r4)  /* 0x806498A4@l */
/* 8056EB34  D0 23 08 F8 */	stfs f1, 0x8f8(r3)
/* 8056EB38  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8056EB3C  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8056EB40  4E 80 00 20 */	blr 
