lbl_80510580:
/* 80510580  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80510584  38 60 00 00 */	li r3, 0
/* 80510588  28 00 08 25 */	cmplwi r0, 0x825
/* 8051058C  4D 80 00 20 */	bltlr 
/* 80510590  28 00 08 2C */	cmplwi r0, 0x82c
/* 80510594  4D 81 00 20 */	bgtlr 
/* 80510598  38 60 00 01 */	li r3, 1
/* 8051059C  4E 80 00 20 */	blr 
