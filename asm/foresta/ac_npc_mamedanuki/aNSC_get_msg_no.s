lbl_8055B5DC:
/* 8055B5DC  2C 03 00 00 */	cmpwi r3, 0
/* 8055B5E0  40 80 00 0C */	bge lbl_8055B5EC
/* 8055B5E4  38 60 08 2A */	li r3, 0x82a
/* 8055B5E8  4E 80 00 20 */	blr 
lbl_8055B5EC:
/* 8055B5EC  2C 03 00 C8 */	cmpwi r3, 0xc8
/* 8055B5F0  40 80 00 0C */	bge lbl_8055B5FC
/* 8055B5F4  38 63 16 FD */	addi r3, r3, 0x16fd
/* 8055B5F8  4E 80 00 20 */	blr 
lbl_8055B5FC:
/* 8055B5FC  2C 03 01 2C */	cmpwi r3, 0x12c
/* 8055B600  40 80 00 0C */	bge lbl_8055B60C
/* 8055B604  38 63 2D E7 */	addi r3, r3, 0x2de7
/* 8055B608  4E 80 00 20 */	blr 
lbl_8055B60C:
/* 8055B60C  38 63 3C F0 */	addi r3, r3, 0x3cf0
/* 8055B610  4E 80 00 20 */	blr 
