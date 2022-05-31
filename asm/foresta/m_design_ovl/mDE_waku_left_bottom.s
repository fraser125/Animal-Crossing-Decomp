lbl_805D5F44:
/* 805D5F44  3C 80 80 65 */	lis r4, lit_2011@ha /* 0x8064B19C@ha */
/* 805D5F48  38 00 C0 00 */	li r0, -16384
/* 805D5F4C  C0 04 B1 9C */	lfs f0, lit_2011@l(r4)  /* 0x8064B19C@l */
/* 805D5F50  EC 00 00 72 */	fmuls f0, f0, f1
/* 805D5F54  D0 03 00 00 */	stfs f0, 0(r3)
/* 805D5F58  B0 05 00 00 */	sth r0, 0(r5)
/* 805D5F5C  4E 80 00 20 */	blr 
