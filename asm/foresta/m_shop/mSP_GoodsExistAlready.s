lbl_803E7CA4:
/* 803E7CA4  28 03 00 00 */	cmplwi r3, 0
/* 803E7CA8  41 82 00 34 */	beq lbl_803E7CDC
/* 803E7CAC  54 A6 04 3E */	clrlwi r6, r5, 0x10
/* 803E7CB0  38 A0 00 00 */	li r5, 0
/* 803E7CB4  7C 89 03 A6 */	mtctr r4
/* 803E7CB8  2C 04 00 00 */	cmpwi r4, 0
/* 803E7CBC  40 81 00 20 */	ble lbl_803E7CDC
lbl_803E7CC0:
/* 803E7CC0  7C 03 2A 2E */	lhzx r0, r3, r5
/* 803E7CC4  7C 06 00 40 */	cmplw r6, r0
/* 803E7CC8  40 82 00 0C */	bne lbl_803E7CD4
/* 803E7CCC  38 60 00 01 */	li r3, 1
/* 803E7CD0  4E 80 00 20 */	blr 
lbl_803E7CD4:
/* 803E7CD4  38 A5 00 02 */	addi r5, r5, 2
/* 803E7CD8  42 00 FF E8 */	bdnz lbl_803E7CC0
lbl_803E7CDC:
/* 803E7CDC  38 60 00 00 */	li r3, 0
/* 803E7CE0  4E 80 00 20 */	blr 
