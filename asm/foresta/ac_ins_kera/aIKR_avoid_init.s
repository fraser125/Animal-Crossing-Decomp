lbl_8059DA44:
/* 8059DA44  3C A0 80 65 */	lis r5, lit_534@ha /* 0x8064A158@ha */
/* 8059DA48  3C 80 80 65 */	lis r4, lit_592@ha /* 0x8064A16C@ha */
/* 8059DA4C  C0 25 A1 58 */	lfs f1, lit_534@l(r5)  /* 0x8064A158@l */
/* 8059DA50  38 00 00 00 */	li r0, 0
/* 8059DA54  C0 04 A1 6C */	lfs f0, lit_592@l(r4)  /* 0x8064A16C@l */
/* 8059DA58  D0 23 01 EC */	stfs f1, 0x1ec(r3)
/* 8059DA5C  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 8059DA60  B0 03 00 DC */	sth r0, 0xdc(r3)
/* 8059DA64  4E 80 00 20 */	blr 
