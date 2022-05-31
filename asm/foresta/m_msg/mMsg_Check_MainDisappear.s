lbl_803C0CFC:
/* 803C0CFC  80 03 04 34 */	lwz r0, 0x434(r3)
/* 803C0D00  20 00 00 04 */	subfic r0, r0, 4
/* 803C0D04  7C 00 00 34 */	cntlzw r0, r0
/* 803C0D08  54 03 D9 7E */	srwi r3, r0, 5
/* 803C0D0C  4E 80 00 20 */	blr 
