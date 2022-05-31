lbl_804FEE70:
/* 804FEE70  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804FEE74  84 04 F0 5C */	lwzu r0, ZeroSVec@l(r4)  /* 0x8065F05C@l */
/* 804FEE78  90 03 11 9A */	stw r0, 0x119a(r3)
/* 804FEE7C  A0 04 00 04 */	lhz r0, 4(r4)
/* 804FEE80  B0 03 11 9E */	sth r0, 0x119e(r3)
/* 804FEE84  4E 80 00 20 */	blr 
