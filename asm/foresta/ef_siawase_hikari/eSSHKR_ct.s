lbl_8061D294:
/* 8061D294  3C A0 80 65 */	lis r5, lit_387@ha /* 0x8064CB68@ha */
/* 8061D298  38 80 00 96 */	li r4, 0x96
/* 8061D29C  C0 05 CB 68 */	lfs f0, lit_387@l(r5)  /* 0x8064CB68@l */
/* 8061D2A0  38 00 00 16 */	li r0, 0x16
/* 8061D2A4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8061D2A8  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8061D2AC  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8061D2B0  B0 83 00 4C */	sth r4, 0x4c(r3)
/* 8061D2B4  B0 03 00 00 */	sth r0, 0(r3)
/* 8061D2B8  4E 80 00 20 */	blr 
