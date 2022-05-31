lbl_805A6814:
/* 805A6814  3C 80 80 65 */	lis r4, lit_887@ha /* 0x8064A4AC@ha */
/* 805A6818  C0 04 A4 AC */	lfs f0, lit_887@l(r4)  /* 0x8064A4AC@l */
/* 805A681C  D0 03 02 28 */	stfs f0, 0x228(r3)
/* 805A6820  4E 80 00 20 */	blr 
