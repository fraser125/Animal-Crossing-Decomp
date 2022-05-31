lbl_805CFECC:
/* 805CFECC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805CFED0  80 64 03 28 */	lwz r3, 0x328(r4)
/* 805CFED4  80 04 03 54 */	lwz r0, 0x354(r4)
/* 805CFED8  7C 03 00 00 */	cmpw r3, r0
/* 805CFEDC  4C 82 00 20 */	bnelr 
/* 805CFEE0  38 00 00 03 */	li r0, 3
/* 805CFEE4  B0 05 00 1C */	sth r0, 0x1c(r5)
/* 805CFEE8  4E 80 00 20 */	blr 
