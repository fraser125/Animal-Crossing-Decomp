lbl_805105E0:
/* 805105E0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805105E4  38 60 00 00 */	li r3, 0
/* 805105E8  28 00 08 0D */	cmplwi r0, 0x80d
/* 805105EC  4D 80 00 20 */	bltlr 
/* 805105F0  28 00 08 14 */	cmplwi r0, 0x814
/* 805105F4  4D 81 00 20 */	bgtlr 
/* 805105F8  38 60 00 01 */	li r3, 1
/* 805105FC  4E 80 00 20 */	blr 
