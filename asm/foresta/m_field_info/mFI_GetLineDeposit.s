lbl_803A8D8C:
/* 803A8D8C  A0 03 00 00 */	lhz r0, 0(r3)
/* 803A8D90  7C 00 26 30 */	sraw r0, r0, r4
/* 803A8D94  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803A8D98  4E 80 00 20 */	blr 
