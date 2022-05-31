lbl_8047CCF0:
/* 8047CCF0  A8 03 08 28 */	lha r0, 0x828(r3)
/* 8047CCF4  2C 00 00 00 */	cmpwi r0, 0
/* 8047CCF8  41 81 00 0C */	bgt lbl_8047CD04
/* 8047CCFC  38 00 00 09 */	li r0, 9
/* 8047CD00  B0 03 00 3C */	sth r0, 0x3c(r3)
lbl_8047CD04:
/* 8047CD04  A8 83 08 28 */	lha r4, 0x828(r3)
/* 8047CD08  38 04 FF FF */	addi r0, r4, -1
/* 8047CD0C  B0 03 08 28 */	sth r0, 0x828(r3)
/* 8047CD10  4E 80 00 20 */	blr 
