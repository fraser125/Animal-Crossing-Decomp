lbl_8037CACC:
/* 8037CACC  80 03 00 00 */	lwz r0, 0(r3)
/* 8037CAD0  2C 00 00 02 */	cmpwi r0, 2
/* 8037CAD4  40 82 00 10 */	bne lbl_8037CAE4
/* 8037CAD8  38 00 00 03 */	li r0, 3
/* 8037CADC  90 03 00 00 */	stw r0, 0(r3)
/* 8037CAE0  4E 80 00 20 */	blr 
lbl_8037CAE4:
/* 8037CAE4  2C 00 00 06 */	cmpwi r0, 6
/* 8037CAE8  4C 82 00 20 */	bnelr 
/* 8037CAEC  38 00 00 07 */	li r0, 7
/* 8037CAF0  90 03 00 00 */	stw r0, 0(r3)
/* 8037CAF4  4E 80 00 20 */	blr 
