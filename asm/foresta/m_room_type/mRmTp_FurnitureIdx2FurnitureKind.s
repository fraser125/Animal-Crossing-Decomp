lbl_803E6A88:
/* 803E6A88  2C 03 00 00 */	cmpwi r3, 0
/* 803E6A8C  41 80 00 1C */	blt lbl_803E6AA8
/* 803E6A90  2C 03 04 F2 */	cmpwi r3, 0x4f2
/* 803E6A94  40 80 00 14 */	bge lbl_803E6AA8
/* 803E6A98  3C 80 80 66 */	lis r4, mRmTp_birth_type@ha /* 0x8065CDC4@ha */
/* 803E6A9C  38 84 CD C4 */	addi r4, r4, mRmTp_birth_type@l /* 0x8065CDC4@l */
/* 803E6AA0  7C 64 18 AE */	lbzx r3, r4, r3
/* 803E6AA4  4E 80 00 20 */	blr 
lbl_803E6AA8:
/* 803E6AA8  38 60 00 10 */	li r3, 0x10
/* 803E6AAC  4E 80 00 20 */	blr 
