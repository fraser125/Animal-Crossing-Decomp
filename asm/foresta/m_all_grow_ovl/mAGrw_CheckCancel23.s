lbl_80513344:
/* 80513344  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80513348  20 00 58 44 */	subfic r0, r0, 0x5844
/* 8051334C  7C 00 00 34 */	cntlzw r0, r0
/* 80513350  54 03 D9 7E */	srwi r3, r0, 5
/* 80513354  4E 80 00 20 */	blr 