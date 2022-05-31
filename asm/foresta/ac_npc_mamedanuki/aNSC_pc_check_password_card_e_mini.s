lbl_8055ABB4:
/* 8055ABB4  88 03 00 05 */	lbz r0, 5(r3)
/* 8055ABB8  38 60 00 00 */	li r3, 0
/* 8055ABBC  28 00 00 01 */	cmplwi r0, 1
/* 8055ABC0  4C 82 00 20 */	bnelr 
/* 8055ABC4  38 60 00 06 */	li r3, 6
/* 8055ABC8  4E 80 00 20 */	blr 
