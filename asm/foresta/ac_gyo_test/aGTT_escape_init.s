lbl_805A4C24:
/* 805A4C24  38 00 00 00 */	li r0, 0
/* 805A4C28  3C 80 80 65 */	lis r4, lit_731@ha /* 0x8064A3FC@ha */
/* 805A4C2C  B0 03 02 2C */	sth r0, 0x22c(r3)
/* 805A4C30  38 00 00 64 */	li r0, 0x64
/* 805A4C34  C0 04 A3 FC */	lfs f0, lit_731@l(r4)  /* 0x8064A3FC@l */
/* 805A4C38  90 03 02 18 */	stw r0, 0x218(r3)
/* 805A4C3C  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 805A4C40  4E 80 00 20 */	blr 
