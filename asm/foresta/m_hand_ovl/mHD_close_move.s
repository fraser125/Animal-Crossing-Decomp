lbl_805DEA18:
/* 805DEA18  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DEA1C  80 83 09 80 */	lwz r4, 0x980(r3)
/* 805DEA20  80 04 00 88 */	lwz r0, 0x88(r4)
/* 805DEA24  2C 00 00 01 */	cmpwi r0, 1
/* 805DEA28  4C 82 00 20 */	bnelr 
/* 805DEA2C  38 60 00 01 */	li r3, 1
/* 805DEA30  38 00 00 03 */	li r0, 3
/* 805DEA34  B0 64 00 14 */	sth r3, 0x14(r4)
/* 805DEA38  B0 04 02 32 */	sth r0, 0x232(r4)
/* 805DEA3C  4E 80 00 20 */	blr 
