lbl_805D5F24:
/* 805D5F24  3C C0 80 65 */	lis r6, lit_2011@ha /* 0x8064B19C@ha */
/* 805D5F28  D0 24 00 00 */	stfs f1, 0(r4)
/* 805D5F2C  C0 06 B1 9C */	lfs f0, lit_2011@l(r6)  /* 0x8064B19C@l */
/* 805D5F30  38 00 80 00 */	li r0, -32768
/* 805D5F34  EC 00 00 72 */	fmuls f0, f0, f1
/* 805D5F38  D0 03 00 00 */	stfs f0, 0(r3)
/* 805D5F3C  B0 05 00 00 */	sth r0, 0(r5)
/* 805D5F40  4E 80 00 20 */	blr 
