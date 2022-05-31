lbl_803AF82C:
/* 803AF82C  3C 80 80 64 */	lis r4, data_80641F94@ha /* 0x80641F94@ha */
/* 803AF830  54 60 08 3C */	slwi r0, r3, 1
/* 803AF834  38 64 1F 94 */	addi r3, r4, data_80641F94@l /* 0x80641F94@l */
/* 803AF838  7C 63 02 14 */	add r3, r3, r0
/* 803AF83C  88 63 00 01 */	lbz r3, 1(r3)
/* 803AF840  7C 63 07 74 */	extsb r3, r3
/* 803AF844  4E 80 00 20 */	blr 
