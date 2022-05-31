lbl_8055F8B4:
/* 8055F8B4  3C 80 80 65 */	lis r4, lit_540@ha /* 0x80649720@ha */
/* 8055F8B8  C0 04 97 20 */	lfs f0, lit_540@l(r4)  /* 0x80649720@l */
/* 8055F8BC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8055F8C0  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8055F8C4  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8055F8C8  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8055F8CC  4E 80 00 20 */	blr 
