lbl_805F6A24:
/* 805F6A24  7C A9 03 A6 */	mtctr r5
/* 805F6A28  2C 05 00 00 */	cmpwi r5, 0
/* 805F6A2C  4C 81 00 20 */	blelr 
lbl_805F6A30:
/* 805F6A30  88 04 00 00 */	lbz r0, 0(r4)
/* 805F6A34  38 84 00 01 */	addi r4, r4, 1
/* 805F6A38  88 A3 00 00 */	lbz r5, 0(r3)
/* 805F6A3C  7C A0 00 78 */	andc r0, r5, r0
/* 805F6A40  98 03 00 00 */	stb r0, 0(r3)
/* 805F6A44  38 63 00 01 */	addi r3, r3, 1
/* 805F6A48  42 00 FF E8 */	bdnz lbl_805F6A30
/* 805F6A4C  4E 80 00 20 */	blr 
