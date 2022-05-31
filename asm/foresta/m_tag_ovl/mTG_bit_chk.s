lbl_805F69C4:
/* 805F69C4  38 C0 00 00 */	li r6, 0
/* 805F69C8  7C A9 03 A6 */	mtctr r5
/* 805F69CC  2C 05 00 00 */	cmpwi r5, 0
/* 805F69D0  40 81 00 20 */	ble lbl_805F69F0
lbl_805F69D4:
/* 805F69D4  88 A3 00 00 */	lbz r5, 0(r3)
/* 805F69D8  38 63 00 01 */	addi r3, r3, 1
/* 805F69DC  88 04 00 00 */	lbz r0, 0(r4)
/* 805F69E0  38 84 00 01 */	addi r4, r4, 1
/* 805F69E4  7C A0 00 38 */	and r0, r5, r0
/* 805F69E8  7C C6 03 78 */	or r6, r6, r0
/* 805F69EC  42 00 FF E8 */	bdnz lbl_805F69D4
lbl_805F69F0:
/* 805F69F0  7C C3 33 78 */	mr r3, r6
/* 805F69F4  4E 80 00 20 */	blr 
