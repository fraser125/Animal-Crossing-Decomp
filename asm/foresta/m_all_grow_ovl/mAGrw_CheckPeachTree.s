lbl_805105C0:
/* 805105C0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805105C4  38 60 00 00 */	li r3, 0
/* 805105C8  28 00 08 15 */	cmplwi r0, 0x815
/* 805105CC  4D 80 00 20 */	bltlr 
/* 805105D0  28 00 08 1C */	cmplwi r0, 0x81c
/* 805105D4  4D 81 00 20 */	bgtlr 
/* 805105D8  38 60 00 01 */	li r3, 1
/* 805105DC  4E 80 00 20 */	blr 