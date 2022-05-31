lbl_80580EE4:
/* 80580EE4  3C 80 80 65 */	lis r4, lit_675@ha /* 0x80649A9C@ha */
/* 80580EE8  3C A0 80 65 */	lis r5, lit_676@ha /* 0x80649AA0@ha */
/* 80580EEC  38 C4 9A 9C */	addi r6, r4, lit_675@l /* 0x80649A9C@l */
/* 80580EF0  C0 25 9A A0 */	lfs f1, lit_676@l(r5)  /* 0x80649AA0@l */
/* 80580EF4  C0 06 00 00 */	lfs f0, 0(r6)
/* 80580EF8  3C 80 80 65 */	lis r4, lit_677@ha /* 0x80649AA4@ha */
/* 80580EFC  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 80580F00  C0 04 9A A4 */	lfs f0, lit_677@l(r4)  /* 0x80649AA4@l */
/* 80580F04  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 80580F08  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 80580F0C  4E 80 00 20 */	blr 
