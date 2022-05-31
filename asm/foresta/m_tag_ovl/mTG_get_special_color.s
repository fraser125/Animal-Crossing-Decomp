lbl_805FDAB0:
/* 805FDAB0  80 03 00 00 */	lwz r0, 0(r3)
/* 805FDAB4  38 60 00 00 */	li r3, 0
/* 805FDAB8  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FDABC  40 82 00 0C */	bne lbl_805FDAC8
/* 805FDAC0  38 60 00 02 */	li r3, 2
/* 805FDAC4  4E 80 00 20 */	blr 
lbl_805FDAC8:
/* 805FDAC8  2C 00 00 15 */	cmpwi r0, 0x15
/* 805FDACC  4C 82 00 20 */	bnelr 
/* 805FDAD0  38 60 00 03 */	li r3, 3
/* 805FDAD4  4E 80 00 20 */	blr 
