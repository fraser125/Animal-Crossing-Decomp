lbl_804CDE8C:
/* 804CDE8C  7C 89 03 A6 */	mtctr r4
/* 804CDE90  2C 04 00 00 */	cmpwi r4, 0
/* 804CDE94  4C 81 00 20 */	blelr 
lbl_804CDE98:
/* 804CDE98  98 A3 00 00 */	stb r5, 0(r3)
/* 804CDE9C  38 63 00 01 */	addi r3, r3, 1
/* 804CDEA0  42 00 FF F8 */	bdnz lbl_804CDE98
/* 804CDEA4  4E 80 00 20 */	blr 
