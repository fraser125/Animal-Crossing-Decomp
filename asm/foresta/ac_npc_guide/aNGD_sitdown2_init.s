lbl_80554644:
/* 80554644  3C 80 80 65 */	lis r4, lit_541@ha /* 0x80649540@ha */
/* 80554648  38 00 00 20 */	li r0, 0x20
/* 8055464C  C0 04 95 40 */	lfs f0, lit_541@l(r4)  /* 0x80649540@l */
/* 80554650  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 80554654  90 03 09 98 */	stw r0, 0x998(r3)
/* 80554658  4E 80 00 20 */	blr 
