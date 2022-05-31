lbl_805B3964:
/* 805B3964  3C 80 81 20 */	lis r4, staffroll_info@ha /* 0x811FA1D0@ha */
/* 805B3968  A8 04 A1 D0 */	lha r0, staffroll_info@l(r4)  /* 0x811FA1D0@l */
/* 805B396C  7C 00 18 50 */	subf r0, r0, r3
/* 805B3970  7C 00 00 34 */	cntlzw r0, r0
/* 805B3974  54 03 D9 7E */	srwi r3, r0, 5
/* 805B3978  4E 80 00 20 */	blr 
