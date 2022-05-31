lbl_8050BEC4:
/* 8050BEC4  A8 A3 00 B6 */	lha r5, 0xb6(r3)
/* 8050BEC8  3C 80 80 65 */	lis r4, lit_438@ha /* 0x80648DF8@ha */
/* 8050BECC  C0 04 8D F8 */	lfs f0, lit_438@l(r4)  /* 0x80648DF8@l */
/* 8050BED0  3C A5 00 01 */	addis r5, r5, 1
/* 8050BED4  38 05 80 00 */	addi r0, r5, -32768
/* 8050BED8  B0 03 00 DE */	sth r0, 0xde(r3)
/* 8050BEDC  A8 03 00 DE */	lha r0, 0xde(r3)
/* 8050BEE0  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8050BEE4  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8050BEE8  D0 03 01 94 */	stfs f0, 0x194(r3)
/* 8050BEEC  4E 80 00 20 */	blr 
