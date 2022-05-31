lbl_803AB328:
/* 803AB328  3C 60 81 16 */	lis r3, l_mFI_climate@ha /* 0x81167D00@ha */
/* 803AB32C  80 03 7D 00 */	lwz r0, l_mFI_climate@l(r3)  /* 0x81167D00@l */
/* 803AB330  2C 00 00 06 */	cmpwi r0, 6
/* 803AB334  40 80 00 18 */	bge lbl_803AB34C
/* 803AB338  2C 00 00 02 */	cmpwi r0, 2
/* 803AB33C  40 80 00 08 */	bge lbl_803AB344
/* 803AB340  48 00 00 0C */	b lbl_803AB34C
lbl_803AB344:
/* 803AB344  38 60 00 00 */	li r3, 0
/* 803AB348  4E 80 00 20 */	blr 
lbl_803AB34C:
/* 803AB34C  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803AB350  4E 80 00 20 */	blr 
