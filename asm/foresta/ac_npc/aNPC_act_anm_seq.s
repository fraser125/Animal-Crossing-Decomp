lbl_8053143C:
/* 8053143C  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80531440  38 60 00 01 */	li r3, 1
/* 80531444  2C 00 00 01 */	cmpwi r0, 1
/* 80531448  4C 82 00 20 */	bnelr 
/* 8053144C  38 60 00 00 */	li r3, 0
/* 80531450  4E 80 00 20 */	blr 
