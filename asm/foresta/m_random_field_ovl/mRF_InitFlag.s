lbl_805099E8:
/* 805099E8  38 00 00 00 */	li r0, 0
/* 805099EC  7C 89 03 A6 */	mtctr r4
/* 805099F0  2C 04 00 00 */	cmpwi r4, 0
/* 805099F4  4C 81 00 20 */	blelr 
lbl_805099F8:
/* 805099F8  98 03 00 00 */	stb r0, 0(r3)
/* 805099FC  38 63 00 01 */	addi r3, r3, 1
/* 80509A00  42 00 FF F8 */	bdnz lbl_805099F8
/* 80509A04  4E 80 00 20 */	blr 
