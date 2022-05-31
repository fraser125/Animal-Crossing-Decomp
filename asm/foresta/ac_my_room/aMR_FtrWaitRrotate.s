lbl_8047CCCC:
/* 8047CCCC  A8 03 08 28 */	lha r0, 0x828(r3)
/* 8047CCD0  2C 00 00 00 */	cmpwi r0, 0
/* 8047CCD4  41 81 00 0C */	bgt lbl_8047CCE0
/* 8047CCD8  38 00 00 0B */	li r0, 0xb
/* 8047CCDC  B0 03 00 3C */	sth r0, 0x3c(r3)
lbl_8047CCE0:
/* 8047CCE0  A8 83 08 28 */	lha r4, 0x828(r3)
/* 8047CCE4  38 04 FF FF */	addi r0, r4, -1
/* 8047CCE8  B0 03 08 28 */	sth r0, 0x828(r3)
/* 8047CCEC  4E 80 00 20 */	blr 
