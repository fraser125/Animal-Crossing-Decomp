lbl_805550A8:
/* 805550A8  3C 80 80 65 */	lis r4, lit_520@ha /* 0x806495C0@ha */
/* 805550AC  C0 04 95 C0 */	lfs f0, lit_520@l(r4)  /* 0x806495C0@l */
/* 805550B0  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 805550B4  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 805550B8  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 805550BC  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 805550C0  4E 80 00 20 */	blr 
