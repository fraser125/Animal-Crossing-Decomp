lbl_8059A5CC:
/* 8059A5CC  3C 80 80 65 */	lis r4, lit_553@ha /* 0x80649F74@ha */
/* 8059A5D0  C0 04 9F 74 */	lfs f0, lit_553@l(r4)  /* 0x80649F74@l */
/* 8059A5D4  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8059A5D8  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 8059A5DC  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 8059A5E0  4E 80 00 20 */	blr 
