lbl_8054DC4C:
/* 8054DC4C  88 03 00 05 */	lbz r0, 5(r3)
/* 8054DC50  38 60 00 00 */	li r3, 0
/* 8054DC54  28 00 00 01 */	cmplwi r0, 1
/* 8054DC58  4C 82 00 20 */	bnelr 
/* 8054DC5C  38 60 00 06 */	li r3, 6
/* 8054DC60  4E 80 00 20 */	blr 