lbl_803FD578:
/* 803FD578  2C 03 00 10 */	cmpwi r3, 0x10
/* 803FD57C  41 82 00 28 */	beq lbl_803FD5A4
/* 803FD580  40 80 00 1C */	bge lbl_803FD59C
/* 803FD584  2C 03 00 0E */	cmpwi r3, 0xe
/* 803FD588  41 82 00 24 */	beq lbl_803FD5AC
/* 803FD58C  4C 80 00 20 */	bgelr 
/* 803FD590  2C 03 00 0D */	cmpwi r3, 0xd
/* 803FD594  40 80 00 10 */	bge lbl_803FD5A4
/* 803FD598  4E 80 00 20 */	blr 
lbl_803FD59C:
/* 803FD59C  2C 03 00 18 */	cmpwi r3, 0x18
/* 803FD5A0  4C 82 00 20 */	bnelr 
lbl_803FD5A4:
/* 803FD5A4  38 60 00 00 */	li r3, 0
/* 803FD5A8  4E 80 00 20 */	blr 
lbl_803FD5AC:
/* 803FD5AC  38 60 00 16 */	li r3, 0x16
/* 803FD5B0  4E 80 00 20 */	blr 
