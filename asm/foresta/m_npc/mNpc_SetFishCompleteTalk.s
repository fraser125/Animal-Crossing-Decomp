lbl_803D3AF0:
/* 803D3AF0  28 03 00 00 */	cmplwi r3, 0
/* 803D3AF4  4D 82 00 20 */	beqlr 
/* 803D3AF8  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 803D3AFC  38 80 00 01 */	li r4, 1
/* 803D3B00  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 803D3B04  98 03 00 1D */	stb r0, 0x1d(r3)
/* 803D3B08  4E 80 00 20 */	blr 
