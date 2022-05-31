lbl_80581D88:
/* 80581D88  2C 03 00 00 */	cmpwi r3, 0
/* 80581D8C  40 80 00 0C */	bge lbl_80581D98
/* 80581D90  38 60 08 2A */	li r3, 0x82a
/* 80581D94  4E 80 00 20 */	blr 
lbl_80581D98:
/* 80581D98  2C 03 00 64 */	cmpwi r3, 0x64
/* 80581D9C  40 80 00 0C */	bge lbl_80581DA8
/* 80581DA0  38 63 10 7B */	addi r3, r3, 0x107b
/* 80581DA4  4E 80 00 20 */	blr 
lbl_80581DA8:
/* 80581DA8  2C 03 00 C8 */	cmpwi r3, 0xc8
/* 80581DAC  40 80 00 0C */	bge lbl_80581DB8
/* 80581DB0  38 63 2B AF */	addi r3, r3, 0x2baf
/* 80581DB4  4E 80 00 20 */	blr 
lbl_80581DB8:
/* 80581DB8  2C 03 01 2C */	cmpwi r3, 0x12c
/* 80581DBC  40 80 00 0C */	bge lbl_80581DC8
/* 80581DC0  38 63 2D E6 */	addi r3, r3, 0x2de6
/* 80581DC4  4E 80 00 20 */	blr 
lbl_80581DC8:
/* 80581DC8  38 63 3C D2 */	addi r3, r3, 0x3cd2
/* 80581DCC  4E 80 00 20 */	blr 
