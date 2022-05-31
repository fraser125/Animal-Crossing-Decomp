lbl_803D3B0C:
/* 803D3B0C  28 03 00 00 */	cmplwi r3, 0
/* 803D3B10  4D 82 00 20 */	beqlr 
/* 803D3B14  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 803D3B18  38 80 00 01 */	li r4, 1
/* 803D3B1C  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 803D3B20  98 03 00 1D */	stb r0, 0x1d(r3)
/* 803D3B24  4E 80 00 20 */	blr 
