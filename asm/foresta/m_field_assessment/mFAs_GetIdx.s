lbl_803A15A8:
/* 803A15A8  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803A15AC  38 C0 FF FF */	li r6, -1
/* 803A15B0  38 E0 00 00 */	li r7, 0
/* 803A15B4  7C A9 03 A6 */	mtctr r5
/* 803A15B8  2C 05 00 00 */	cmpwi r5, 0
/* 803A15BC  40 81 00 24 */	ble lbl_803A15E0
lbl_803A15C0:
/* 803A15C0  88 03 00 00 */	lbz r0, 0(r3)
/* 803A15C4  7C 04 00 40 */	cmplw r4, r0
/* 803A15C8  41 81 00 0C */	bgt lbl_803A15D4
/* 803A15CC  7C E6 3B 78 */	mr r6, r7
/* 803A15D0  48 00 00 10 */	b lbl_803A15E0
lbl_803A15D4:
/* 803A15D4  38 63 00 01 */	addi r3, r3, 1
/* 803A15D8  38 E7 00 01 */	addi r7, r7, 1
/* 803A15DC  42 00 FF E4 */	bdnz lbl_803A15C0
lbl_803A15E0:
/* 803A15E0  7C C3 33 78 */	mr r3, r6
/* 803A15E4  4E 80 00 20 */	blr 
