lbl_8059EBBC:
/* 8059EBBC  3C A0 80 65 */	lis r5, lit_576@ha /* 0x8064A1A8@ha */
/* 8059EBC0  3C 80 80 65 */	lis r4, lit_674@ha /* 0x8064A1E8@ha */
/* 8059EBC4  C0 25 A1 A8 */	lfs f1, lit_576@l(r5)  /* 0x8064A1A8@l */
/* 8059EBC8  38 00 00 00 */	li r0, 0
/* 8059EBCC  C0 04 A1 E8 */	lfs f0, lit_674@l(r4)  /* 0x8064A1E8@l */
/* 8059EBD0  38 80 00 01 */	li r4, 1
/* 8059EBD4  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 8059EBD8  D0 23 01 EC */	stfs f1, 0x1ec(r3)
/* 8059EBDC  D0 23 01 E8 */	stfs f1, 0x1e8(r3)
/* 8059EBE0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8059EBE4  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8059EBE8  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 8059EBEC  98 03 00 B5 */	stb r0, 0xb5(r3)
/* 8059EBF0  88 03 02 1E */	lbz r0, 0x21e(r3)
/* 8059EBF4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8059EBF8  98 03 02 1E */	stb r0, 0x21e(r3)
/* 8059EBFC  4E 80 00 20 */	blr 
