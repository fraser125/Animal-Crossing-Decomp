lbl_805A2EF8:
/* 805A2EF8  3C 80 80 65 */	lis r4, lit_458@ha /* 0x8064A3CC@ha */
/* 805A2EFC  C0 04 A3 CC */	lfs f0, lit_458@l(r4)  /* 0x8064A3CC@l */
/* 805A2F00  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 805A2F04  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 805A2F08  4E 80 00 20 */	blr 
