lbl_805F6A9C:
/* 805F6A9C  38 80 00 00 */	li r4, 0
/* 805F6AA0  7C A9 03 A6 */	mtctr r5
/* 805F6AA4  2C 05 00 00 */	cmpwi r5, 0
/* 805F6AA8  40 81 00 1C */	ble lbl_805F6AC4
lbl_805F6AAC:
/* 805F6AAC  88 03 00 00 */	lbz r0, 0(r3)
/* 805F6AB0  38 63 00 01 */	addi r3, r3, 1
/* 805F6AB4  7C 00 00 34 */	cntlzw r0, r0
/* 805F6AB8  54 00 D9 7E */	srwi r0, r0, 5
/* 805F6ABC  7C 84 03 78 */	or r4, r4, r0
/* 805F6AC0  42 00 FF EC */	bdnz lbl_805F6AAC
lbl_805F6AC4:
/* 805F6AC4  7C 83 23 78 */	mr r3, r4
/* 805F6AC8  4E 80 00 20 */	blr 
