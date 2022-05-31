lbl_803C0CD8:
/* 803C0CD8  80 03 04 34 */	lwz r0, 0x434(r3)
/* 803C0CDC  20 00 00 02 */	subfic r0, r0, 2
/* 803C0CE0  7C 00 00 34 */	cntlzw r0, r0
/* 803C0CE4  54 03 D9 7E */	srwi r3, r0, 5
/* 803C0CE8  4E 80 00 20 */	blr 
