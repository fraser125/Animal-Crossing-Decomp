lbl_803EFB00:
/* 803EFB00  80 03 00 00 */	lwz r0, 0(r3)
/* 803EFB04  2C 00 00 03 */	cmpwi r0, 3
/* 803EFB08  4D 80 00 20 */	bltlr 
/* 803EFB0C  38 00 00 02 */	li r0, 2
/* 803EFB10  90 03 00 0C */	stw r0, 0xc(r3)
/* 803EFB14  4E 80 00 20 */	blr 
