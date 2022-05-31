lbl_805A0E98:
/* 805A0E98  3C A0 80 65 */	lis r5, lit_594@ha /* 0x8064A31C@ha */
/* 805A0E9C  3C 80 80 65 */	lis r4, lit_595@ha /* 0x8064A320@ha */
/* 805A0EA0  C0 43 00 78 */	lfs f2, 0x78(r3)
/* 805A0EA4  C0 25 A3 1C */	lfs f1, lit_594@l(r5)  /* 0x8064A31C@l */
/* 805A0EA8  C0 04 A3 20 */	lfs f0, lit_595@l(r4)  /* 0x8064A320@l */
/* 805A0EAC  EC 42 00 72 */	fmuls f2, f2, f1
/* 805A0EB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A0EB4  40 81 00 08 */	ble lbl_805A0EBC
/* 805A0EB8  FC 40 00 90 */	fmr f2, f0
lbl_805A0EBC:
/* 805A0EBC  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 805A0EC0  4E 80 00 20 */	blr 
