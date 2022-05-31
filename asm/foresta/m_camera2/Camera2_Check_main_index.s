lbl_8037F1AC:
/* 8037F1AC  80 03 1B E8 */	lwz r0, 0x1be8(r3)
/* 8037F1B0  7C 00 20 50 */	subf r0, r0, r4
/* 8037F1B4  7C 00 00 34 */	cntlzw r0, r0
/* 8037F1B8  54 03 D9 7E */	srwi r3, r0, 5
/* 8037F1BC  4E 80 00 20 */	blr 
