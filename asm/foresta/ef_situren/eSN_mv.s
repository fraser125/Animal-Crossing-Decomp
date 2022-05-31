lbl_8061D974:
/* 8061D974  A8 03 00 00 */	lha r0, 0(r3)
/* 8061D978  A8 83 00 4C */	lha r4, 0x4c(r3)
/* 8061D97C  20 00 00 80 */	subfic r0, r0, 0x80
/* 8061D980  7C 05 07 34 */	extsh r5, r0
/* 8061D984  38 04 16 00 */	addi r0, r4, 0x1600
/* 8061D988  2C 05 00 08 */	cmpwi r5, 8
/* 8061D98C  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 8061D990  4C 80 00 20 */	bgelr 
/* 8061D994  3C 80 80 65 */	lis r4, lit_392@ha /* 0x8064CBAC@ha */
/* 8061D998  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8061D99C  C0 04 CB AC */	lfs f0, lit_392@l(r4)  /* 0x8064CBAC@l */
/* 8061D9A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8061D9A4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8061D9A8  4E 80 00 20 */	blr 
