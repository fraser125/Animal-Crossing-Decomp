lbl_803BAA48:
/* 803BAA48  7C 89 03 A6 */	mtctr r4
/* 803BAA4C  28 04 00 00 */	cmplwi r4, 0
/* 803BAA50  4C 81 00 20 */	blelr 
lbl_803BAA54:
/* 803BAA54  98 A3 00 00 */	stb r5, 0(r3)
/* 803BAA58  38 63 00 01 */	addi r3, r3, 1
/* 803BAA5C  42 00 FF F8 */	bdnz lbl_803BAA54
/* 803BAA60  4E 80 00 20 */	blr 
