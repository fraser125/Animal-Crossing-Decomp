lbl_80580E9C:
/* 80580E9C  3C 80 80 65 */	lis r4, data_80649A5C@ha /* 0x80649A5C@ha */
/* 80580EA0  C0 04 9A 5C */	lfs f0, data_80649A5C@l(r4)  /* 0x80649A5C@l */
/* 80580EA4  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80580EA8  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 80580EAC  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 80580EB0  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 80580EB4  4E 80 00 20 */	blr 
