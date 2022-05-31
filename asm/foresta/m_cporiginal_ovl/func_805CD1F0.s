lbl_805CD1F0:
/* 805CD1F0  2C 03 00 08 */	cmpwi r3, 8
/* 805CD1F4  38 00 00 01 */	li r0, 1
/* 805CD1F8  41 80 00 0C */	blt lbl_805CD204
/* 805CD1FC  2C 03 00 68 */	cmpwi r3, 0x68
/* 805CD200  41 80 00 08 */	blt lbl_805CD208
lbl_805CD204:
/* 805CD204  38 00 00 00 */	li r0, 0
lbl_805CD208:
/* 805CD208  7C 03 03 78 */	mr r3, r0
/* 805CD20C  4E 80 00 20 */	blr 
