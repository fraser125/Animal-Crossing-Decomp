lbl_803C0CEC:
/* 803C0CEC  80 03 04 34 */	lwz r0, 0x434(r3)
/* 803C0CF0  7C 00 00 34 */	cntlzw r0, r0
/* 803C0CF4  54 03 D9 7E */	srwi r3, r0, 5
/* 803C0CF8  4E 80 00 20 */	blr 
