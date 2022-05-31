lbl_803BF72C:
/* 803BF72C  80 03 04 34 */	lwz r0, 0x434(r3)
/* 803BF730  7C 00 20 50 */	subf r0, r0, r4
/* 803BF734  7C 00 00 34 */	cntlzw r0, r0
/* 803BF738  54 03 D9 7E */	srwi r3, r0, 5
/* 803BF73C  4E 80 00 20 */	blr 
