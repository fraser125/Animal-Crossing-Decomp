lbl_8049B980:
/* 8049B980  54 C7 06 3E */	clrlwi r7, r6, 0x18
/* 8049B984  38 C0 00 00 */	li r6, 0
/* 8049B988  7C 89 03 A6 */	mtctr r4
/* 8049B98C  2C 04 00 00 */	cmpwi r4, 0
/* 8049B990  4C 81 00 20 */	blelr 
lbl_8049B994:
/* 8049B994  38 86 00 04 */	addi r4, r6, 4
/* 8049B998  7C 03 20 AE */	lbzx r0, r3, r4
/* 8049B99C  7C 07 00 40 */	cmplw r7, r0
/* 8049B9A0  40 82 00 08 */	bne lbl_8049B9A8
/* 8049B9A4  7C A3 21 AE */	stbx r5, r3, r4
lbl_8049B9A8:
/* 8049B9A8  38 C6 00 0C */	addi r6, r6, 0xc
/* 8049B9AC  42 00 FF E8 */	bdnz lbl_8049B994
/* 8049B9B0  4E 80 00 20 */	blr 
