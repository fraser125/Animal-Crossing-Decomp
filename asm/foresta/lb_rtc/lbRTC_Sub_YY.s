lbl_80406F24:
/* 80406F24  A0 03 00 06 */	lhz r0, 6(r3)
/* 80406F28  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80406F2C  7C 04 00 50 */	subf r0, r4, r0
/* 80406F30  B0 03 00 06 */	sth r0, 6(r3)
/* 80406F34  4E 80 00 20 */	blr 