lbl_803A5E98:
/* 803A5E98  80 03 00 04 */	lwz r0, 4(r3)
/* 803A5E9C  38 60 00 00 */	li r3, 0
/* 803A5EA0  2C 00 FF FF */	cmpwi r0, -1
/* 803A5EA4  4C 82 00 20 */	bnelr 
/* 803A5EA8  38 60 00 01 */	li r3, 1
/* 803A5EAC  4E 80 00 20 */	blr 
