lbl_80509F08:
/* 80509F08  7C A9 03 A6 */	mtctr r5
/* 80509F0C  2C 05 00 00 */	cmpwi r5, 0
/* 80509F10  4D 82 00 20 */	beqlr 
lbl_80509F14:
/* 80509F14  B0 83 00 00 */	sth r4, 0(r3)
/* 80509F18  38 63 00 02 */	addi r3, r3, 2
/* 80509F1C  42 00 FF F8 */	bdnz lbl_80509F14
/* 80509F20  4E 80 00 20 */	blr 
