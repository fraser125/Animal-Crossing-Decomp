lbl_80513390:
/* 80513390  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80513394  20 00 58 4A */	subfic r0, r0, 0x584a
/* 80513398  7C 00 00 34 */	cntlzw r0, r0
/* 8051339C  54 03 D9 7E */	srwi r3, r0, 5
/* 805133A0  4E 80 00 20 */	blr 