lbl_803A22B4:
/* 803A22B4  38 C0 00 00 */	li r6, 0
/* 803A22B8  38 00 00 10 */	li r0, 0x10
lbl_803A22BC:
/* 803A22BC  7C 09 03 A6 */	mtctr r0
lbl_803A22C0:
/* 803A22C0  A0 A4 00 00 */	lhz r5, 0(r4)
/* 803A22C4  38 84 00 02 */	addi r4, r4, 2
/* 803A22C8  B0 A3 00 00 */	sth r5, 0(r3)
/* 803A22CC  38 63 00 02 */	addi r3, r3, 2
/* 803A22D0  42 00 FF F0 */	bdnz lbl_803A22C0
/* 803A22D4  38 C6 00 01 */	addi r6, r6, 1
/* 803A22D8  2C 06 00 10 */	cmpwi r6, 0x10
/* 803A22DC  41 80 FF E0 */	blt lbl_803A22BC
/* 803A22E0  4E 80 00 20 */	blr 
