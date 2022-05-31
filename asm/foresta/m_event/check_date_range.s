lbl_8039B1A0:
/* 8039B1A0  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 8039B1A4  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 8039B1A8  7C 06 20 40 */	cmplw r6, r4
/* 8039B1AC  40 81 00 24 */	ble lbl_8039B1D0
/* 8039B1B0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8039B1B4  38 60 00 00 */	li r3, 0
/* 8039B1B8  7C 06 00 40 */	cmplw r6, r0
/* 8039B1BC  40 81 00 0C */	ble lbl_8039B1C8
/* 8039B1C0  7C 00 20 40 */	cmplw r0, r4
/* 8039B1C4  4D 81 00 20 */	bgtlr 
lbl_8039B1C8:
/* 8039B1C8  38 60 00 01 */	li r3, 1
/* 8039B1CC  4E 80 00 20 */	blr 
lbl_8039B1D0:
/* 8039B1D0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8039B1D4  38 60 00 00 */	li r3, 0
/* 8039B1D8  7C 06 00 40 */	cmplw r6, r0
/* 8039B1DC  4D 81 00 20 */	bgtlr 
/* 8039B1E0  7C 00 20 40 */	cmplw r0, r4
/* 8039B1E4  4D 81 00 20 */	bgtlr 
/* 8039B1E8  38 60 00 01 */	li r3, 1
/* 8039B1EC  4E 80 00 20 */	blr 
