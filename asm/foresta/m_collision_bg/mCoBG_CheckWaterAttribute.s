lbl_803942CC:
/* 803942CC  28 03 00 18 */	cmplwi r3, 0x18
/* 803942D0  40 82 00 0C */	bne lbl_803942DC
/* 803942D4  38 60 00 01 */	li r3, 1
/* 803942D8  4E 80 00 20 */	blr 
lbl_803942DC:
/* 803942DC  28 03 00 0C */	cmplwi r3, 0xc
/* 803942E0  41 80 00 14 */	blt lbl_803942F4
/* 803942E4  28 03 00 15 */	cmplwi r3, 0x15
/* 803942E8  41 81 00 0C */	bgt lbl_803942F4
/* 803942EC  38 60 00 01 */	li r3, 1
/* 803942F0  4E 80 00 20 */	blr 
lbl_803942F4:
/* 803942F4  38 60 00 00 */	li r3, 0
/* 803942F8  4E 80 00 20 */	blr 
