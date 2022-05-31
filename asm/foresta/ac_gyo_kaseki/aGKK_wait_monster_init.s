lbl_805A6B24:
/* 805A6B24  3C 80 80 65 */	lis r4, lit_466@ha /* 0x8064A44C@ha */
/* 805A6B28  C0 04 A4 4C */	lfs f0, lit_466@l(r4)  /* 0x8064A44C@l */
/* 805A6B2C  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 805A6B30  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 805A6B34  4E 80 00 20 */	blr 
