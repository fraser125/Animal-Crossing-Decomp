lbl_8056EB08:
/* 8056EB08  3C A0 80 65 */	lis r5, lit_755@ha /* 0x806498BC@ha */
/* 8056EB0C  3C 80 80 65 */	lis r4, lit_756@ha /* 0x806498C0@ha */
/* 8056EB10  C0 25 98 BC */	lfs f1, lit_755@l(r5)  /* 0x806498BC@l */
/* 8056EB14  C0 04 98 C0 */	lfs f0, lit_756@l(r4)  /* 0x806498C0@l */
/* 8056EB18  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 8056EB1C  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 8056EB20  4E 80 00 20 */	blr 
