lbl_8055A744:
/* 8055A744  3C 80 80 65 */	lis r4, lit_675@ha /* 0x806496C8@ha */
/* 8055A748  3C A0 80 65 */	lis r5, lit_676@ha /* 0x806496CC@ha */
/* 8055A74C  38 C4 96 C8 */	addi r6, r4, lit_675@l /* 0x806496C8@l */
/* 8055A750  C0 25 96 CC */	lfs f1, lit_676@l(r5)  /* 0x806496CC@l */
/* 8055A754  C0 06 00 00 */	lfs f0, 0(r6)
/* 8055A758  3C 80 80 65 */	lis r4, lit_677@ha /* 0x806496D0@ha */
/* 8055A75C  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8055A760  C0 04 96 D0 */	lfs f0, lit_677@l(r4)  /* 0x806496D0@l */
/* 8055A764  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 8055A768  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8055A76C  4E 80 00 20 */	blr 
