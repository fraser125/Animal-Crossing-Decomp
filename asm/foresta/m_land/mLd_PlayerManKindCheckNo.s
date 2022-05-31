lbl_803B3AF0:
/* 803B3AF0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803B3AF4  38 60 00 01 */	li r3, 1
/* 803B3AF8  28 00 00 04 */	cmplwi r0, 4
/* 803B3AFC  4C 80 00 20 */	bgelr 
/* 803B3B00  38 60 00 00 */	li r3, 0
/* 803B3B04  4E 80 00 20 */	blr 
