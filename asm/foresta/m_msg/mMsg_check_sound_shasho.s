lbl_803C1E6C:
/* 803C1E6C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803C1E70  38 60 00 00 */	li r3, 0
/* 803C1E74  80 04 00 04 */	lwz r0, 4(r4)
/* 803C1E78  2C 00 35 AF */	cmpwi r0, 0x35af
/* 803C1E7C  4D 80 00 20 */	bltlr 
/* 803C1E80  2C 00 35 BE */	cmpwi r0, 0x35be
/* 803C1E84  4D 81 00 20 */	bgtlr 
/* 803C1E88  38 60 00 01 */	li r3, 1
/* 803C1E8C  4E 80 00 20 */	blr 
