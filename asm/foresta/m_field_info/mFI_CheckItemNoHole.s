lbl_803A90C8:
/* 803A90C8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803A90CC  38 80 00 00 */	li r4, 0
/* 803A90D0  28 00 00 11 */	cmplwi r0, 0x11
/* 803A90D4  41 80 00 0C */	blt lbl_803A90E0
/* 803A90D8  28 00 00 29 */	cmplwi r0, 0x29
/* 803A90DC  40 81 00 10 */	ble lbl_803A90EC
lbl_803A90E0:
/* 803A90E0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803A90E4  28 00 00 5D */	cmplwi r0, 0x5d
/* 803A90E8  40 82 00 08 */	bne lbl_803A90F0
lbl_803A90EC:
/* 803A90EC  38 80 00 01 */	li r4, 1
lbl_803A90F0:
/* 803A90F0  7C 83 23 78 */	mr r3, r4
/* 803A90F4  4E 80 00 20 */	blr 
