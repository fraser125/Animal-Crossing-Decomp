lbl_803EBCD0:
/* 803EBCD0  2C 03 00 00 */	cmpwi r3, 0
/* 803EBCD4  41 80 00 20 */	blt lbl_803EBCF4
/* 803EBCD8  2C 03 00 07 */	cmpwi r3, 7
/* 803EBCDC  40 80 00 18 */	bge lbl_803EBCF4
/* 803EBCE0  3C 80 80 66 */	lis r4, str_table@ha /* 0x8065D9C4@ha */
/* 803EBCE4  54 60 10 3A */	slwi r0, r3, 2
/* 803EBCE8  38 64 D9 C4 */	addi r3, r4, str_table@l /* 0x8065D9C4@l */
/* 803EBCEC  7C 63 00 2E */	lwzx r3, r3, r0
/* 803EBCF0  4E 80 00 20 */	blr 
lbl_803EBCF4:
/* 803EBCF4  3C 60 80 66 */	lis r3, dummy@ha /* 0x8065D994@ha */
/* 803EBCF8  38 63 D9 94 */	addi r3, r3, dummy@l /* 0x8065D994@l */
/* 803EBCFC  4E 80 00 20 */	blr 
