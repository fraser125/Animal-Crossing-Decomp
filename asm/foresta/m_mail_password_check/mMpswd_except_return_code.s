lbl_803BD4B0:
/* 803BD4B0  38 00 00 1D */	li r0, 0x1d
/* 803BD4B4  38 A0 00 00 */	li r5, 0
/* 803BD4B8  7C 09 03 A6 */	mtctr r0
lbl_803BD4BC:
/* 803BD4BC  2C 05 00 0E */	cmpwi r5, 0xe
/* 803BD4C0  41 82 00 10 */	beq lbl_803BD4D0
/* 803BD4C4  88 04 00 00 */	lbz r0, 0(r4)
/* 803BD4C8  98 03 00 00 */	stb r0, 0(r3)
/* 803BD4CC  38 63 00 01 */	addi r3, r3, 1
lbl_803BD4D0:
/* 803BD4D0  38 A5 00 01 */	addi r5, r5, 1
/* 803BD4D4  38 84 00 01 */	addi r4, r4, 1
/* 803BD4D8  42 00 FF E4 */	bdnz lbl_803BD4BC
/* 803BD4DC  4E 80 00 20 */	blr 
