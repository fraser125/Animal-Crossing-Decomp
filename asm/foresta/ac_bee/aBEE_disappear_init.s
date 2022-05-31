lbl_8050D6A4:
/* 8050D6A4  3C 80 80 65 */	lis r4, lit_679@ha /* 0x80648EF8@ha */
/* 8050D6A8  38 00 00 00 */	li r0, 0
/* 8050D6AC  C0 04 8E F8 */	lfs f0, lit_679@l(r4)  /* 0x80648EF8@l */
/* 8050D6B0  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8050D6B4  B0 03 00 DC */	sth r0, 0xdc(r3)
/* 8050D6B8  B0 03 00 E0 */	sth r0, 0xe0(r3)
/* 8050D6BC  4E 80 00 20 */	blr 
