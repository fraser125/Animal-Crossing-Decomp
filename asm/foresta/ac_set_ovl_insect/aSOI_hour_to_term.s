lbl_8049AAD4:
/* 8049AAD4  2C 03 00 04 */	cmpwi r3, 4
/* 8049AAD8  38 00 00 00 */	li r0, 0
/* 8049AADC  41 80 00 50 */	blt lbl_8049AB2C
/* 8049AAE0  2C 03 00 08 */	cmpwi r3, 8
/* 8049AAE4  40 80 00 0C */	bge lbl_8049AAF0
/* 8049AAE8  38 00 00 01 */	li r0, 1
/* 8049AAEC  48 00 00 40 */	b lbl_8049AB2C
lbl_8049AAF0:
/* 8049AAF0  2C 03 00 10 */	cmpwi r3, 0x10
/* 8049AAF4  40 80 00 0C */	bge lbl_8049AB00
/* 8049AAF8  38 00 00 02 */	li r0, 2
/* 8049AAFC  48 00 00 30 */	b lbl_8049AB2C
lbl_8049AB00:
/* 8049AB00  2C 03 00 11 */	cmpwi r3, 0x11
/* 8049AB04  40 80 00 0C */	bge lbl_8049AB10
/* 8049AB08  38 00 00 03 */	li r0, 3
/* 8049AB0C  48 00 00 20 */	b lbl_8049AB2C
lbl_8049AB10:
/* 8049AB10  2C 03 00 13 */	cmpwi r3, 0x13
/* 8049AB14  40 80 00 0C */	bge lbl_8049AB20
/* 8049AB18  38 00 00 04 */	li r0, 4
/* 8049AB1C  48 00 00 10 */	b lbl_8049AB2C
lbl_8049AB20:
/* 8049AB20  2C 03 00 17 */	cmpwi r3, 0x17
/* 8049AB24  40 80 00 08 */	bge lbl_8049AB2C
/* 8049AB28  38 00 00 05 */	li r0, 5
lbl_8049AB2C:
/* 8049AB2C  7C 03 03 78 */	mr r3, r0
/* 8049AB30  4E 80 00 20 */	blr 
