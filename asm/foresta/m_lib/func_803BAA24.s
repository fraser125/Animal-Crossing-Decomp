lbl_803BAA24:
/* 803BAA24  7C A9 03 A6 */	mtctr r5
/* 803BAA28  28 05 00 00 */	cmplwi r5, 0
/* 803BAA2C  4D 82 00 20 */	beqlr 
lbl_803BAA30:
/* 803BAA30  88 04 00 00 */	lbz r0, 0(r4)
/* 803BAA34  38 84 00 01 */	addi r4, r4, 1
/* 803BAA38  98 03 00 00 */	stb r0, 0(r3)
/* 803BAA3C  38 63 00 01 */	addi r3, r3, 1
/* 803BAA40  42 00 FF F0 */	bdnz lbl_803BAA30
/* 803BAA44  4E 80 00 20 */	blr 
