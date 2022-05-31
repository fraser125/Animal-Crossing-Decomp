lbl_8054E5FC:
/* 8054E5FC  2C 03 00 00 */	cmpwi r3, 0
/* 8054E600  40 80 00 0C */	bge lbl_8054E60C
/* 8054E604  38 60 08 2A */	li r3, 0x82a
/* 8054E608  4E 80 00 20 */	blr 
lbl_8054E60C:
/* 8054E60C  2C 03 00 64 */	cmpwi r3, 0x64
/* 8054E610  40 80 00 0C */	bge lbl_8054E61C
/* 8054E614  38 63 10 7B */	addi r3, r3, 0x107b
/* 8054E618  4E 80 00 20 */	blr 
lbl_8054E61C:
/* 8054E61C  2C 03 00 C8 */	cmpwi r3, 0xc8
/* 8054E620  40 80 00 0C */	bge lbl_8054E62C
/* 8054E624  38 63 2B AF */	addi r3, r3, 0x2baf
/* 8054E628  4E 80 00 20 */	blr 
lbl_8054E62C:
/* 8054E62C  2C 03 01 2C */	cmpwi r3, 0x12c
/* 8054E630  40 80 00 0C */	bge lbl_8054E63C
/* 8054E634  38 63 2D E6 */	addi r3, r3, 0x2de6
/* 8054E638  4E 80 00 20 */	blr 
lbl_8054E63C:
/* 8054E63C  38 63 3C D2 */	addi r3, r3, 0x3cd2
/* 8054E640  4E 80 00 20 */	blr 
