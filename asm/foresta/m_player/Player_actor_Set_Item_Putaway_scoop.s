lbl_804F9D20:
/* 804F9D20  3C 80 80 65 */	lis r4, lit_11511@ha /* 0x8064850C@ha */
/* 804F9D24  C0 23 0D 28 */	lfs f1, 0xd28(r3)
/* 804F9D28  C0 04 85 0C */	lfs f0, lit_11511@l(r4)  /* 0x8064850C@l */
/* 804F9D2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F9D30  D0 03 0D 28 */	stfs f0, 0xd28(r3)
/* 804F9D34  4E 80 00 20 */	blr 
