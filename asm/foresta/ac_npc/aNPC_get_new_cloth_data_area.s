lbl_8052C418:
/* 8052C418  38 00 00 0A */	li r0, 0xa
/* 8052C41C  38 80 00 00 */	li r4, 0
/* 8052C420  7C 09 03 A6 */	mtctr r0
lbl_8052C424:
/* 8052C424  88 03 00 07 */	lbz r0, 7(r3)
/* 8052C428  28 00 00 FF */	cmplwi r0, 0xff
/* 8052C42C  41 82 00 18 */	beq lbl_8052C444
/* 8052C430  A0 03 00 04 */	lhz r0, 4(r3)
/* 8052C434  28 00 00 00 */	cmplwi r0, 0
/* 8052C438  40 82 00 0C */	bne lbl_8052C444
/* 8052C43C  7C 83 23 78 */	mr r3, r4
/* 8052C440  4E 80 00 20 */	blr 
lbl_8052C444:
/* 8052C444  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8052C448  38 84 00 01 */	addi r4, r4, 1
/* 8052C44C  42 00 FF D8 */	bdnz lbl_8052C424
/* 8052C450  38 60 FF FF */	li r3, -1
/* 8052C454  4E 80 00 20 */	blr 
