lbl_805A1AE4:
/* 805A1AE4  3C 80 80 65 */	lis r4, lit_407@ha /* 0x8064A2C4@ha */
/* 805A1AE8  38 00 00 14 */	li r0, 0x14
/* 805A1AEC  C0 04 A2 C4 */	lfs f0, lit_407@l(r4)  /* 0x8064A2C4@l */
/* 805A1AF0  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 805A1AF4  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 805A1AF8  90 03 02 28 */	stw r0, 0x228(r3)
/* 805A1AFC  4E 80 00 20 */	blr 
