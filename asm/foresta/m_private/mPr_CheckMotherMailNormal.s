lbl_803E1A80:
/* 803E1A80  7C 80 1E 70 */	srawi r0, r4, 3
/* 803E1A84  7C 00 01 94 */	addze r0, r0
/* 803E1A88  54 05 18 38 */	slwi r5, r0, 3
/* 803E1A8C  7C 03 00 AE */	lbzx r0, r3, r0
/* 803E1A90  7C 65 20 50 */	subf r3, r5, r4
/* 803E1A94  7C 00 1E 30 */	sraw r0, r0, r3
/* 803E1A98  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803E1A9C  4E 80 00 20 */	blr 
