lbl_803AF624:
/* 803AF624  38 03 FF 81 */	addi r0, r3, -127
/* 803AF628  38 60 00 01 */	li r3, 1
/* 803AF62C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803AF630  38 80 FF FF */	li r4, -1
/* 803AF634  7C 00 18 10 */	subfc r0, r0, r3
/* 803AF638  7C 04 01 91 */	subfze. r0, r4
/* 803AF63C  4C 82 00 20 */	bnelr 
/* 803AF640  38 60 00 00 */	li r3, 0
/* 803AF644  4E 80 00 20 */	blr 
