lbl_80404A74:
/* 80404A74  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80404A78  7C 00 28 38 */	and r0, r0, r5
/* 80404A7C  7C 04 00 50 */	subf r0, r4, r0
/* 80404A80  7C A0 00 38 */	and r0, r5, r0
/* 80404A84  90 03 00 0C */	stw r0, 0xc(r3)
/* 80404A88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80404A8C  4E 80 00 20 */	blr 
