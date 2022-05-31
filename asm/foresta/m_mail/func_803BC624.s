lbl_803BC624:
/* 803BC624  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803BC628  7C A4 1A 14 */	add r5, r4, r3
/* 803BC62C  7C 89 03 A6 */	mtctr r4
/* 803BC630  2C 04 00 00 */	cmpwi r4, 0
/* 803BC634  38 A5 FF FF */	addi r5, r5, -1
/* 803BC638  41 82 00 24 */	beq lbl_803BC65C
lbl_803BC63C:
/* 803BC63C  88 65 00 00 */	lbz r3, 0(r5)
/* 803BC640  7C 03 00 40 */	cmplw r3, r0
/* 803BC644  41 82 00 0C */	beq lbl_803BC650
/* 803BC648  7C 83 23 78 */	mr r3, r4
/* 803BC64C  4E 80 00 20 */	blr 
lbl_803BC650:
/* 803BC650  38 A5 FF FF */	addi r5, r5, -1
/* 803BC654  38 84 FF FF */	addi r4, r4, -1
/* 803BC658  42 00 FF E4 */	bdnz lbl_803BC63C
lbl_803BC65C:
/* 803BC65C  38 60 00 00 */	li r3, 0
/* 803BC660  4E 80 00 20 */	blr 
