lbl_80605210:
/* 80605210  3C A0 80 65 */	lis r5, lit_376@ha /* 0x8064BBC4@ha */
/* 80605214  3C 80 80 65 */	lis r4, lit_381@ha /* 0x8064BBC8@ha */
/* 80605218  C0 25 BB C4 */	lfs f1, lit_376@l(r5)  /* 0x8064BBC4@l */
/* 8060521C  C0 04 BB C8 */	lfs f0, lit_381@l(r4)  /* 0x8064BBC8@l */
/* 80605220  D0 23 00 00 */	stfs f1, 0(r3)
/* 80605224  D0 03 00 04 */	stfs f0, 4(r3)
/* 80605228  D0 23 00 08 */	stfs f1, 8(r3)
/* 8060522C  4E 80 00 20 */	blr 
