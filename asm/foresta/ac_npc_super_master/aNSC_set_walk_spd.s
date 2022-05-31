lbl_80580EB8:
/* 80580EB8  3C 80 80 65 */	lis r4, lit_668@ha /* 0x80649A90@ha */
/* 80580EBC  3C A0 80 65 */	lis r5, lit_669@ha /* 0x80649A94@ha */
/* 80580EC0  38 C4 9A 90 */	addi r6, r4, lit_668@l /* 0x80649A90@l */
/* 80580EC4  C0 25 9A 94 */	lfs f1, lit_669@l(r5)  /* 0x80649A94@l */
/* 80580EC8  C0 06 00 00 */	lfs f0, 0(r6)
/* 80580ECC  3C 80 80 65 */	lis r4, lit_670@ha /* 0x80649A98@ha */
/* 80580ED0  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 80580ED4  C0 04 9A 98 */	lfs f0, lit_670@l(r4)  /* 0x80649A98@l */
/* 80580ED8  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 80580EDC  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 80580EE0  4E 80 00 20 */	blr 
