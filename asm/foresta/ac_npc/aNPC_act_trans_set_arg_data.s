lbl_80533DE0:
/* 80533DE0  A0 83 08 0C */	lhz r4, 0x80c(r3)
/* 80533DE4  38 00 00 04 */	li r0, 4
/* 80533DE8  B0 83 08 7E */	sth r4, 0x87e(r3)
/* 80533DEC  A0 83 08 0E */	lhz r4, 0x80e(r3)
/* 80533DF0  98 83 08 80 */	stb r4, 0x880(r3)
/* 80533DF4  A0 83 08 10 */	lhz r4, 0x810(r3)
/* 80533DF8  98 83 08 81 */	stb r4, 0x881(r3)
/* 80533DFC  98 03 08 7D */	stb r0, 0x87d(r3)
/* 80533E00  4E 80 00 20 */	blr 
