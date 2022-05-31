lbl_8062C298:
/* 8062C298  7C C9 03 A6 */	mtctr r6
/* 8062C29C  2C 06 00 00 */	cmpwi r6, 0
/* 8062C2A0  41 82 00 18 */	beq lbl_8062C2B8
lbl_8062C2A4:
/* 8062C2A4  88 04 00 00 */	lbz r0, 0(r4)
/* 8062C2A8  38 84 00 01 */	addi r4, r4, 1
/* 8062C2AC  98 03 00 00 */	stb r0, 0(r3)
/* 8062C2B0  38 63 00 01 */	addi r3, r3, 1
/* 8062C2B4  42 00 FF F0 */	bdnz lbl_8062C2A4
lbl_8062C2B8:
/* 8062C2B8  7C E9 03 A6 */	mtctr r7
/* 8062C2BC  2C 07 00 00 */	cmpwi r7, 0
/* 8062C2C0  4D 82 00 20 */	beqlr 
lbl_8062C2C4:
/* 8062C2C4  88 05 00 00 */	lbz r0, 0(r5)
/* 8062C2C8  38 A5 00 01 */	addi r5, r5, 1
/* 8062C2CC  98 03 00 00 */	stb r0, 0(r3)
/* 8062C2D0  38 63 00 01 */	addi r3, r3, 1
/* 8062C2D4  42 00 FF F0 */	bdnz lbl_8062C2C4
/* 8062C2D8  4E 80 00 20 */	blr 
