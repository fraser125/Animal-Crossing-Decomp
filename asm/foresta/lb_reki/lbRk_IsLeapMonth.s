lbl_804074D8:
/* 804074D8  20 03 00 0D */	subfic r0, r3, 0xd
/* 804074DC  7C 00 00 34 */	cntlzw r0, r0
/* 804074E0  54 03 D9 7E */	srwi r3, r0, 5
/* 804074E4  4E 80 00 20 */	blr 
