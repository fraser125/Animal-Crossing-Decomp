lbl_805A4EE8:
/* 805A4EE8  3C 80 80 65 */	lis r4, lit_466@ha /* 0x8064A44C@ha */
/* 805A4EEC  C0 04 A4 4C */	lfs f0, lit_466@l(r4)  /* 0x8064A44C@l */
/* 805A4EF0  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 805A4EF4  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 805A4EF8  4E 80 00 20 */	blr 
