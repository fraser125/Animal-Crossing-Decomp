lbl_803CF05C:
/* 803CF05C  7C 03 28 00 */	cmpw r3, r5
/* 803CF060  38 00 00 01 */	li r0, 1
/* 803CF064  40 80 00 0C */	bge lbl_803CF070
/* 803CF068  7C 04 18 AE */	lbzx r0, r4, r3
/* 803CF06C  7C 00 07 74 */	extsb r0, r0
lbl_803CF070:
/* 803CF070  7C 03 03 78 */	mr r3, r0
/* 803CF074  4E 80 00 20 */	blr 
