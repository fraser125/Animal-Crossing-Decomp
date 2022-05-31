lbl_8061AA64:
/* 8061AA64  A8 03 00 00 */	lha r0, 0(r3)
/* 8061AA68  20 00 00 1A */	subfic r0, r0, 0x1a
/* 8061AA6C  7C 00 07 34 */	extsh r0, r0
/* 8061AA70  2C 00 00 04 */	cmpwi r0, 4
/* 8061AA74  4C 80 00 20 */	bgelr 
/* 8061AA78  3C 80 80 65 */	lis r4, lit_383@ha /* 0x8064C9F0@ha */
/* 8061AA7C  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 8061AA80  C0 04 C9 F0 */	lfs f0, lit_383@l(r4)  /* 0x8064C9F0@l */
/* 8061AA84  EC 01 00 2A */	fadds f0, f1, f0
/* 8061AA88  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8061AA8C  4E 80 00 20 */	blr 
