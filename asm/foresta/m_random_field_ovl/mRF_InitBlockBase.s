lbl_80509EEC:
/* 80509EEC  38 00 00 46 */	li r0, 0x46
/* 80509EF0  38 80 00 00 */	li r4, 0
/* 80509EF4  7C 09 03 A6 */	mtctr r0
lbl_80509EF8:
/* 80509EF8  98 83 00 00 */	stb r4, 0(r3)
/* 80509EFC  38 63 00 01 */	addi r3, r3, 1
/* 80509F00  42 00 FF F8 */	bdnz lbl_80509EF8
/* 80509F04  4E 80 00 20 */	blr 