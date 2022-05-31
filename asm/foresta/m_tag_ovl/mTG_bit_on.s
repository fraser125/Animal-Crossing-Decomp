lbl_805F69F8:
/* 805F69F8  7C A9 03 A6 */	mtctr r5
/* 805F69FC  2C 05 00 00 */	cmpwi r5, 0
/* 805F6A00  4C 81 00 20 */	blelr 
lbl_805F6A04:
/* 805F6A04  88 04 00 00 */	lbz r0, 0(r4)
/* 805F6A08  38 84 00 01 */	addi r4, r4, 1
/* 805F6A0C  88 A3 00 00 */	lbz r5, 0(r3)
/* 805F6A10  7C A0 03 78 */	or r0, r5, r0
/* 805F6A14  98 03 00 00 */	stb r0, 0(r3)
/* 805F6A18  38 63 00 01 */	addi r3, r3, 1
/* 805F6A1C  42 00 FF E8 */	bdnz lbl_805F6A04
/* 805F6A20  4E 80 00 20 */	blr 
