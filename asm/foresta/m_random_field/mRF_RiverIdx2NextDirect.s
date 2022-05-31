lbl_803E4DE8:
/* 803E4DE8  2C 03 00 00 */	cmpwi r3, 0
/* 803E4DEC  41 80 00 1C */	blt lbl_803E4E08
/* 803E4DF0  2C 03 00 07 */	cmpwi r3, 7
/* 803E4DF4  40 80 00 14 */	bge lbl_803E4E08
/* 803E4DF8  3C 80 80 66 */	lis r4, l_river_next_direct@ha /* 0x8065C480@ha */
/* 803E4DFC  38 84 C4 80 */	addi r4, r4, l_river_next_direct@l /* 0x8065C480@l */
/* 803E4E00  7C 64 18 AE */	lbzx r3, r4, r3
/* 803E4E04  4E 80 00 20 */	blr 
lbl_803E4E08:
/* 803E4E08  38 60 00 02 */	li r3, 2
/* 803E4E0C  4E 80 00 20 */	blr 
