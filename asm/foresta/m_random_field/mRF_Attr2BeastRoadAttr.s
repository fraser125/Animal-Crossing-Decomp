lbl_803E4B44:
/* 803E4B44  2C 03 00 04 */	cmpwi r3, 4
/* 803E4B48  40 80 00 18 */	bge lbl_803E4B60
/* 803E4B4C  2C 03 00 02 */	cmpwi r3, 2
/* 803E4B50  4C 80 00 20 */	bgelr 
/* 803E4B54  2C 03 00 00 */	cmpwi r3, 0
/* 803E4B58  40 80 00 14 */	bge lbl_803E4B6C
/* 803E4B5C  4E 80 00 20 */	blr 
lbl_803E4B60:
/* 803E4B60  2C 03 00 06 */	cmpwi r3, 6
/* 803E4B64  4C 80 00 20 */	bgelr 
/* 803E4B68  48 00 00 0C */	b lbl_803E4B74
lbl_803E4B6C:
/* 803E4B6C  38 60 00 02 */	li r3, 2
/* 803E4B70  4E 80 00 20 */	blr 
lbl_803E4B74:
/* 803E4B74  38 60 00 06 */	li r3, 6
/* 803E4B78  4E 80 00 20 */	blr 
