lbl_8057180C:
/* 8057180C  80 03 09 B8 */	lwz r0, 0x9b8(r3)
/* 80571810  38 60 00 15 */	li r3, 0x15
/* 80571814  2C 00 00 01 */	cmpwi r0, 1
/* 80571818  4C 82 00 20 */	bnelr 
/* 8057181C  38 60 00 2B */	li r3, 0x2b
/* 80571820  4E 80 00 20 */	blr 