lbl_8059C760:
/* 8059C760  3C 80 80 65 */	lis r4, lit_563@ha /* 0x8064A0FC@ha */
/* 8059C764  C0 04 A0 FC */	lfs f0, lit_563@l(r4)  /* 0x8064A0FC@l */
/* 8059C768  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8059C76C  4E 80 00 20 */	blr 
