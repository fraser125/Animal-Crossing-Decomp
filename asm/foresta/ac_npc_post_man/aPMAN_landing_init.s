lbl_8056EAEC:
/* 8056EAEC  3C A0 80 65 */	lis r5, lit_766@ha /* 0x806498C8@ha */
/* 8056EAF0  3C 80 80 65 */	lis r4, lit_767@ha /* 0x806498CC@ha */
/* 8056EAF4  C0 25 98 C8 */	lfs f1, lit_766@l(r5)  /* 0x806498C8@l */
/* 8056EAF8  C0 04 98 CC */	lfs f0, lit_767@l(r4)  /* 0x806498CC@l */
/* 8056EAFC  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 8056EB00  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 8056EB04  4E 80 00 20 */	blr 
