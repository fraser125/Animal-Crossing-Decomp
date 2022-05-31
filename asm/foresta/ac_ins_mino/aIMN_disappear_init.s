lbl_8059EDC4:
/* 8059EDC4  3C A0 80 65 */	lis r5, lit_462@ha /* 0x8064A194@ha */
/* 8059EDC8  3C 80 80 65 */	lis r4, lit_703@ha /* 0x8064A200@ha */
/* 8059EDCC  C0 25 A1 94 */	lfs f1, lit_462@l(r5)  /* 0x8064A194@l */
/* 8059EDD0  38 00 00 00 */	li r0, 0
/* 8059EDD4  C0 04 A2 00 */	lfs f0, lit_703@l(r4)  /* 0x8064A200@l */
/* 8059EDD8  D0 23 01 EC */	stfs f1, 0x1ec(r3)
/* 8059EDDC  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 8059EDE0  B0 03 00 E0 */	sth r0, 0xe0(r3)
/* 8059EDE4  4E 80 00 20 */	blr 
