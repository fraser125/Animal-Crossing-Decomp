lbl_80545E14:
/* 80545E14  3C 80 80 65 */	lis r4, lit_641@ha /* 0x80649484@ha */
/* 80545E18  3C A0 80 65 */	lis r5, lit_642@ha /* 0x80649488@ha */
/* 80545E1C  38 C4 94 84 */	addi r6, r4, lit_641@l /* 0x80649484@l */
/* 80545E20  C0 25 94 88 */	lfs f1, lit_642@l(r5)  /* 0x80649488@l */
/* 80545E24  C0 06 00 00 */	lfs f0, 0(r6)
/* 80545E28  3C 80 80 65 */	lis r4, lit_643@ha /* 0x8064948C@ha */
/* 80545E2C  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 80545E30  C0 04 94 8C */	lfs f0, lit_643@l(r4)  /* 0x8064948C@l */
/* 80545E34  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 80545E38  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 80545E3C  4E 80 00 20 */	blr 