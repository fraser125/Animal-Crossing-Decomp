lbl_803E1A58:
/* 803E1A58  7C 85 1E 70 */	srawi r5, r4, 3
/* 803E1A5C  38 00 00 01 */	li r0, 1
/* 803E1A60  7C E5 01 94 */	addze r7, r5
/* 803E1A64  54 E6 18 38 */	slwi r6, r7, 3
/* 803E1A68  7C A3 38 AE */	lbzx r5, r3, r7
/* 803E1A6C  7C 86 20 50 */	subf r4, r6, r4
/* 803E1A70  7C 00 20 30 */	slw r0, r0, r4
/* 803E1A74  7C A0 03 78 */	or r0, r5, r0
/* 803E1A78  7C 03 39 AE */	stbx r0, r3, r7
/* 803E1A7C  4E 80 00 20 */	blr 
