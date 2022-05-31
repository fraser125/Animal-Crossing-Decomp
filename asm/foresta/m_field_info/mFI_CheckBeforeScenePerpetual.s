lbl_803AB39C:
/* 803AB39C  3C 60 81 16 */	lis r3, l_mFI_climate@ha /* 0x81167D00@ha */
/* 803AB3A0  80 03 7D 00 */	lwz r0, l_mFI_climate@l(r3)  /* 0x81167D00@l */
/* 803AB3A4  2C 00 00 04 */	cmpwi r0, 4
/* 803AB3A8  41 82 00 24 */	beq lbl_803AB3CC
/* 803AB3AC  40 80 00 10 */	bge lbl_803AB3BC
/* 803AB3B0  2C 00 00 03 */	cmpwi r0, 3
/* 803AB3B4  40 80 00 10 */	bge lbl_803AB3C4
/* 803AB3B8  48 00 00 14 */	b lbl_803AB3CC
lbl_803AB3BC:
/* 803AB3BC  2C 00 00 06 */	cmpwi r0, 6
/* 803AB3C0  40 80 00 0C */	bge lbl_803AB3CC
lbl_803AB3C4:
/* 803AB3C4  38 60 00 01 */	li r3, 1
/* 803AB3C8  4E 80 00 20 */	blr 
lbl_803AB3CC:
/* 803AB3CC  38 60 00 00 */	li r3, 0
/* 803AB3D0  4E 80 00 20 */	blr 
