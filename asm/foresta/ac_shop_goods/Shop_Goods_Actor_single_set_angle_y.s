lbl_8049D460:
/* 8049D460  2C 05 00 01 */	cmpwi r5, 1
/* 8049D464  4C 82 00 20 */	bnelr 
/* 8049D468  3C A0 81 1D */	lis r5, data_811CF3A8@ha /* 0x811CF3A8@ha */
/* 8049D46C  54 67 28 34 */	slwi r7, r3, 5
/* 8049D470  38 65 F3 A8 */	addi r3, r5, data_811CF3A8@l /* 0x811CF3A8@l */
/* 8049D474  54 80 08 3C */	slwi r0, r4, 1
/* 8049D478  7C 63 3A 14 */	add r3, r3, r7
/* 8049D47C  7C C3 03 2E */	sthx r6, r3, r0
/* 8049D480  4E 80 00 20 */	blr 
