lbl_8059C35C:
/* 8059C35C  3C A0 80 65 */	lis r5, lit_490@ha /* 0x8064A0E0@ha */
/* 8059C360  3C 80 80 65 */	lis r4, lit_491@ha /* 0x8064A0E4@ha */
/* 8059C364  C0 43 00 78 */	lfs f2, 0x78(r3)
/* 8059C368  C0 25 A0 E0 */	lfs f1, lit_490@l(r5)  /* 0x8064A0E0@l */
/* 8059C36C  C0 04 A0 E4 */	lfs f0, lit_491@l(r4)  /* 0x8064A0E4@l */
/* 8059C370  EC 42 00 72 */	fmuls f2, f2, f1
/* 8059C374  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059C378  40 81 00 08 */	ble lbl_8059C380
/* 8059C37C  FC 40 00 90 */	fmr f2, f0
lbl_8059C380:
/* 8059C380  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 8059C384  4E 80 00 20 */	blr 
