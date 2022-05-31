lbl_803BAA64:
/* 803BAA64  7C A9 03 A6 */	mtctr r5
/* 803BAA68  28 05 00 00 */	cmplwi r5, 0
/* 803BAA6C  41 82 00 28 */	beq lbl_803BAA94
lbl_803BAA70:
/* 803BAA70  88 A3 00 00 */	lbz r5, 0(r3)
/* 803BAA74  88 04 00 00 */	lbz r0, 0(r4)
/* 803BAA78  7C 05 00 40 */	cmplw r5, r0
/* 803BAA7C  41 82 00 0C */	beq lbl_803BAA88
/* 803BAA80  38 60 00 00 */	li r3, 0
/* 803BAA84  4E 80 00 20 */	blr 
lbl_803BAA88:
/* 803BAA88  38 63 00 01 */	addi r3, r3, 1
/* 803BAA8C  38 84 00 01 */	addi r4, r4, 1
/* 803BAA90  42 00 FF E0 */	bdnz lbl_803BAA70
lbl_803BAA94:
/* 803BAA94  38 60 00 01 */	li r3, 1
/* 803BAA98  4E 80 00 20 */	blr 
