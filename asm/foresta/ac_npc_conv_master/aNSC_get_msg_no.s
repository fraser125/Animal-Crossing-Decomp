lbl_80546CE4:
/* 80546CE4  2C 03 00 00 */	cmpwi r3, 0
/* 80546CE8  40 80 00 0C */	bge lbl_80546CF4
/* 80546CEC  38 60 08 2A */	li r3, 0x82a
/* 80546CF0  4E 80 00 20 */	blr 
lbl_80546CF4:
/* 80546CF4  2C 03 00 64 */	cmpwi r3, 0x64
/* 80546CF8  40 80 00 0C */	bge lbl_80546D04
/* 80546CFC  38 63 10 7B */	addi r3, r3, 0x107b
/* 80546D00  4E 80 00 20 */	blr 
lbl_80546D04:
/* 80546D04  2C 03 00 C8 */	cmpwi r3, 0xc8
/* 80546D08  40 80 00 0C */	bge lbl_80546D14
/* 80546D0C  38 63 2B AF */	addi r3, r3, 0x2baf
/* 80546D10  4E 80 00 20 */	blr 
lbl_80546D14:
/* 80546D14  2C 03 01 2C */	cmpwi r3, 0x12c
/* 80546D18  40 80 00 0C */	bge lbl_80546D24
/* 80546D1C  38 63 2D E6 */	addi r3, r3, 0x2de6
/* 80546D20  4E 80 00 20 */	blr 
lbl_80546D24:
/* 80546D24  38 63 3C D2 */	addi r3, r3, 0x3cd2
/* 80546D28  4E 80 00 20 */	blr 
