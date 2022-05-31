lbl_803E7994:
/* 803E7994  28 03 00 00 */	cmplwi r3, 0
/* 803E7998  4D 82 00 20 */	beqlr 
/* 803E799C  38 00 00 00 */	li r0, 0
/* 803E79A0  7C 89 03 A6 */	mtctr r4
/* 803E79A4  2C 04 00 00 */	cmpwi r4, 0
/* 803E79A8  4C 81 00 20 */	blelr 
lbl_803E79AC:
/* 803E79AC  B0 03 00 00 */	sth r0, 0(r3)
/* 803E79B0  38 63 00 02 */	addi r3, r3, 2
/* 803E79B4  42 00 FF F8 */	bdnz lbl_803E79AC
/* 803E79B8  4E 80 00 20 */	blr 
