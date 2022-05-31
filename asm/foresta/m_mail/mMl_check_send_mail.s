lbl_803BCB70:
/* 803BCB70  88 03 00 2E */	lbz r0, 0x2e(r3)
/* 803BCB74  20 00 00 01 */	subfic r0, r0, 1
/* 803BCB78  7C 00 00 34 */	cntlzw r0, r0
/* 803BCB7C  54 03 D9 7E */	srwi r3, r0, 5
/* 803BCB80  4E 80 00 20 */	blr 
