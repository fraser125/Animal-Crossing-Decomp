lbl_8057F8CC:
/* 8057F8CC  A8 03 00 B6 */	lha r0, 0xb6(r3)
/* 8057F8D0  2C 00 00 00 */	cmpwi r0, 0
/* 8057F8D4  40 80 00 10 */	bge lbl_8057F8E4
/* 8057F8D8  3C 60 80 65 */	lis r3, lit_626@ha /* 0x80649A40@ha */
/* 8057F8DC  C0 23 9A 40 */	lfs f1, lit_626@l(r3)  /* 0x80649A40@l */
/* 8057F8E0  4E 80 00 20 */	blr 
lbl_8057F8E4:
/* 8057F8E4  3C 60 80 65 */	lis r3, lit_627@ha /* 0x80649A44@ha */
/* 8057F8E8  C0 23 9A 44 */	lfs f1, lit_627@l(r3)  /* 0x80649A44@l */
/* 8057F8EC  4E 80 00 20 */	blr 
