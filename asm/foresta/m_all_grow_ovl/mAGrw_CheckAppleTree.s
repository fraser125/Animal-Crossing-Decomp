lbl_80510560:
/* 80510560  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80510564  38 60 00 00 */	li r3, 0
/* 80510568  28 00 08 05 */	cmplwi r0, 0x805
/* 8051056C  4D 80 00 20 */	bltlr 
/* 80510570  28 00 08 0C */	cmplwi r0, 0x80c
/* 80510574  4D 81 00 20 */	bgtlr 
/* 80510578  38 60 00 01 */	li r3, 1
/* 8051057C  4E 80 00 20 */	blr 