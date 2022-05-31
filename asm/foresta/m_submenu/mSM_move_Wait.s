lbl_803EFAD4:
/* 803EFAD4  80 83 00 20 */	lwz r4, 0x20(r3)
/* 803EFAD8  2C 04 00 00 */	cmpwi r4, 0
/* 803EFADC  41 82 00 0C */	beq lbl_803EFAE8
/* 803EFAE0  38 04 FF FF */	addi r0, r4, -1
/* 803EFAE4  90 03 00 20 */	stw r0, 0x20(r3)
lbl_803EFAE8:
/* 803EFAE8  88 83 01 66 */	lbz r4, 0x166(r3)
/* 803EFAEC  28 04 00 00 */	cmplwi r4, 0
/* 803EFAF0  4D 82 00 20 */	beqlr 
/* 803EFAF4  38 04 FF FF */	addi r0, r4, -1
/* 803EFAF8  98 03 01 66 */	stb r0, 0x166(r3)
/* 803EFAFC  4E 80 00 20 */	blr 
