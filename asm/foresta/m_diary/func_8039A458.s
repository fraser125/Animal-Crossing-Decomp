lbl_8039A458:
/* 8039A458  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8039A45C  7C A4 1A 14 */	add r5, r4, r3
/* 8039A460  7C 89 03 A6 */	mtctr r4
/* 8039A464  2C 04 00 00 */	cmpwi r4, 0
/* 8039A468  38 A5 FF FF */	addi r5, r5, -1
/* 8039A46C  41 82 00 24 */	beq lbl_8039A490
lbl_8039A470:
/* 8039A470  88 65 00 00 */	lbz r3, 0(r5)
/* 8039A474  7C 03 00 40 */	cmplw r3, r0
/* 8039A478  41 82 00 0C */	beq lbl_8039A484
/* 8039A47C  7C 83 23 78 */	mr r3, r4
/* 8039A480  4E 80 00 20 */	blr 
lbl_8039A484:
/* 8039A484  38 A5 FF FF */	addi r5, r5, -1
/* 8039A488  38 84 FF FF */	addi r4, r4, -1
/* 8039A48C  42 00 FF E4 */	bdnz lbl_8039A470
lbl_8039A490:
/* 8039A490  38 60 00 00 */	li r3, 0
/* 8039A494  4E 80 00 20 */	blr 
