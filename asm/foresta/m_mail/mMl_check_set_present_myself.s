lbl_803BCB84:
/* 803BCB84  88 03 00 2E */	lbz r0, 0x2e(r3)
/* 803BCB88  28 00 00 01 */	cmplwi r0, 1
/* 803BCB8C  41 82 00 14 */	beq lbl_803BCBA0
/* 803BCB90  28 00 00 03 */	cmplwi r0, 3
/* 803BCB94  41 82 00 0C */	beq lbl_803BCBA0
/* 803BCB98  28 00 00 04 */	cmplwi r0, 4
/* 803BCB9C  40 82 00 0C */	bne lbl_803BCBA8
lbl_803BCBA0:
/* 803BCBA0  38 60 00 01 */	li r3, 1
/* 803BCBA4  4E 80 00 20 */	blr 
lbl_803BCBA8:
/* 803BCBA8  38 60 00 00 */	li r3, 0
/* 803BCBAC  4E 80 00 20 */	blr 
