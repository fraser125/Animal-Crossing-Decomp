lbl_80531A74:
/* 80531A74  A0 03 08 0C */	lhz r0, 0x80c(r3)
/* 80531A78  A8 83 08 00 */	lha r4, 0x800(r3)
/* 80531A7C  A8 A3 08 02 */	lha r5, 0x802(r3)
/* 80531A80  98 03 07 FD */	stb r0, 0x7fd(r3)
/* 80531A84  A0 03 08 0E */	lhz r0, 0x80e(r3)
/* 80531A88  B0 03 07 FE */	sth r0, 0x7fe(r3)
/* 80531A8C  A0 03 08 10 */	lhz r0, 0x810(r3)
/* 80531A90  B0 03 08 00 */	sth r0, 0x800(r3)
/* 80531A94  A0 03 08 12 */	lhz r0, 0x812(r3)
/* 80531A98  B0 03 08 02 */	sth r0, 0x802(r3)
/* 80531A9C  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80531AA0  28 00 00 FF */	cmplwi r0, 0xff
/* 80531AA4  4C 82 00 20 */	bnelr 
/* 80531AA8  A8 03 08 00 */	lha r0, 0x800(r3)
/* 80531AAC  7C 00 20 00 */	cmpw r0, r4
/* 80531AB0  40 82 00 1C */	bne lbl_80531ACC
/* 80531AB4  A8 03 08 02 */	lha r0, 0x802(r3)
/* 80531AB8  7C 00 28 00 */	cmpw r0, r5
/* 80531ABC  40 82 00 10 */	bne lbl_80531ACC
/* 80531AC0  88 03 07 F7 */	lbz r0, 0x7f7(r3)
/* 80531AC4  28 00 00 02 */	cmplwi r0, 2
/* 80531AC8  4C 82 00 20 */	bnelr 
lbl_80531ACC:
/* 80531ACC  38 00 00 00 */	li r0, 0
/* 80531AD0  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80531AD4  4E 80 00 20 */	blr 
