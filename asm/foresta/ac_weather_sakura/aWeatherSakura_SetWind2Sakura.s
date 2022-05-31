lbl_80603EAC:
/* 80603EAC  3C 80 80 65 */	lis r4, lit_455@ha /* 0x8064BAD8@ha */
/* 80603EB0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80603EB4  C0 04 BA D8 */	lfs f0, lit_455@l(r4)  /* 0x8064BAD8@l */
/* 80603EB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80603EBC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80603EC0  4E 80 00 20 */	blr 
