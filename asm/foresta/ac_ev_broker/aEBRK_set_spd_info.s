lbl_8051A238:
/* 8051A238  2C 04 00 02 */	cmpwi r4, 2
/* 8051A23C  40 82 00 24 */	bne lbl_8051A260
/* 8051A240  3C A0 80 65 */	lis r5, lit_587@ha /* 0x8064907C@ha */
/* 8051A244  3C 80 80 65 */	lis r4, lit_588@ha /* 0x80649080@ha */
/* 8051A248  C0 25 90 7C */	lfs f1, lit_587@l(r5)  /* 0x8064907C@l */
/* 8051A24C  C0 04 90 80 */	lfs f0, lit_588@l(r4)  /* 0x80649080@l */
/* 8051A250  D0 23 08 F8 */	stfs f1, 0x8f8(r3)
/* 8051A254  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8051A258  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8051A25C  4E 80 00 20 */	blr 
lbl_8051A260:
/* 8051A260  3C 80 80 65 */	lis r4, lit_589@ha /* 0x80649084@ha */
/* 8051A264  C0 04 90 84 */	lfs f0, lit_589@l(r4)  /* 0x80649084@l */
/* 8051A268  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8051A26C  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8051A270  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8051A274  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8051A278  4E 80 00 20 */	blr 