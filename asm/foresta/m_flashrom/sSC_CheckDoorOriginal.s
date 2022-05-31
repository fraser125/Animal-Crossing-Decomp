lbl_803ADEF4:
/* 803ADEF4  88 03 00 2F */	lbz r0, 0x2f(r3)
/* 803ADEF8  28 00 00 08 */	cmplwi r0, 8
/* 803ADEFC  41 80 00 0C */	blt lbl_803ADF08
/* 803ADF00  28 00 00 FF */	cmplwi r0, 0xff
/* 803ADF04  40 82 00 0C */	bne lbl_803ADF10
lbl_803ADF08:
/* 803ADF08  38 60 00 01 */	li r3, 1
/* 803ADF0C  4E 80 00 20 */	blr 
lbl_803ADF10:
/* 803ADF10  38 60 00 00 */	li r3, 0
/* 803ADF14  4E 80 00 20 */	blr 
