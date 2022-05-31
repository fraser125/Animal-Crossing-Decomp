lbl_805A8234:
/* 805A8234  3C 80 80 65 */	lis r4, lit_450@ha /* 0x8064A4CC@ha */
/* 805A8238  C0 04 A4 CC */	lfs f0, lit_450@l(r4)  /* 0x8064A4CC@l */
/* 805A823C  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 805A8240  4E 80 00 20 */	blr 
