lbl_805A2110:
/* 805A2110  7C 60 07 35 */	extsh. r0, r3
/* 805A2114  40 82 00 10 */	bne lbl_805A2124
/* 805A2118  3C 60 80 65 */	lis r3, lit_530@ha /* 0x8064A370@ha */
/* 805A211C  C0 23 A3 70 */	lfs f1, lit_530@l(r3)  /* 0x8064A370@l */
/* 805A2120  4E 80 00 20 */	blr 
lbl_805A2124:
/* 805A2124  3C 60 80 65 */	lis r3, lit_531@ha /* 0x8064A374@ha */
/* 805A2128  C0 23 A3 74 */	lfs f1, lit_531@l(r3)  /* 0x8064A374@l */
/* 805A212C  4E 80 00 20 */	blr 
