lbl_8037AA84:
/* 8037AA84  38 A0 00 00 */	li r5, 0
/* 8037AA88  7C 89 03 A6 */	mtctr r4
/* 8037AA8C  2C 04 00 00 */	cmpwi r4, 0
/* 8037AA90  40 81 00 20 */	ble lbl_8037AAB0
lbl_8037AA94:
/* 8037AA94  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037AA98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037AA9C  40 82 00 0C */	bne lbl_8037AAA8
/* 8037AAA0  7C 65 1B 78 */	mr r5, r3
/* 8037AAA4  48 00 00 0C */	b lbl_8037AAB0
lbl_8037AAA8:
/* 8037AAA8  38 63 00 14 */	addi r3, r3, 0x14
/* 8037AAAC  42 00 FF E8 */	bdnz lbl_8037AA94
lbl_8037AAB0:
/* 8037AAB0  7C A3 2B 78 */	mr r3, r5
/* 8037AAB4  4E 80 00 20 */	blr 
