lbl_805105A0:
/* 805105A0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805105A4  38 60 00 00 */	li r3, 0
/* 805105A8  28 00 08 1D */	cmplwi r0, 0x81d
/* 805105AC  4D 80 00 20 */	bltlr 
/* 805105B0  28 00 08 24 */	cmplwi r0, 0x824
/* 805105B4  4D 81 00 20 */	bgtlr 
/* 805105B8  38 60 00 01 */	li r3, 1
/* 805105BC  4E 80 00 20 */	blr 