lbl_806407A4:
/* 806407A4  2C 05 00 02 */	cmpwi r5, 2
/* 806407A8  40 82 00 0C */	bne lbl_806407B4
/* 806407AC  38 00 00 00 */	li r0, 0
/* 806407B0  90 06 00 00 */	stw r0, 0(r6)
lbl_806407B4:
/* 806407B4  38 60 00 01 */	li r3, 1
/* 806407B8  4E 80 00 20 */	blr 
