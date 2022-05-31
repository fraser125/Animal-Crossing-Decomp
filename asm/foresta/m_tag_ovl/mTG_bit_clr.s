lbl_805F6A7C:
/* 805F6A7C  38 00 00 00 */	li r0, 0
/* 805F6A80  7C A9 03 A6 */	mtctr r5
/* 805F6A84  2C 05 00 00 */	cmpwi r5, 0
/* 805F6A88  4C 81 00 20 */	blelr 
lbl_805F6A8C:
/* 805F6A8C  98 03 00 00 */	stb r0, 0(r3)
/* 805F6A90  38 63 00 01 */	addi r3, r3, 1
/* 805F6A94  42 00 FF F8 */	bdnz lbl_805F6A8C
/* 805F6A98  4E 80 00 20 */	blr 
