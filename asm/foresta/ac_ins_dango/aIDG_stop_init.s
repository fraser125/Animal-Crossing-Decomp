lbl_80598028:
/* 80598028  3C A0 80 65 */	lis r5, lit_623@ha /* 0x80649EAC@ha */
/* 8059802C  3C 80 80 65 */	lis r4, lit_624@ha /* 0x80649EB0@ha */
/* 80598030  C0 25 9E AC */	lfs f1, lit_623@l(r5)  /* 0x80649EAC@l */
/* 80598034  C0 04 9E B0 */	lfs f0, lit_624@l(r4)  /* 0x80649EB0@l */
/* 80598038  D0 23 01 EC */	stfs f1, 0x1ec(r3)
/* 8059803C  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 80598040  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 80598044  4E 80 00 20 */	blr 
