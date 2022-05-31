lbl_803CC6DC:
/* 803CC6DC  34 C5 FF FF */	addic. r6, r5, -1
/* 803CC6E0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803CC6E4  1C A6 09 88 */	mulli r5, r6, 0x988
/* 803CC6E8  38 06 00 01 */	addi r0, r6, 1
/* 803CC6EC  7C 63 2A 14 */	add r3, r3, r5
/* 803CC6F0  7C 09 03 A6 */	mtctr r0
/* 803CC6F4  41 80 00 24 */	blt lbl_803CC718
lbl_803CC6F8:
/* 803CC6F8  A0 03 00 00 */	lhz r0, 0(r3)
/* 803CC6FC  7C 00 20 40 */	cmplw r0, r4
/* 803CC700  40 82 00 0C */	bne lbl_803CC70C
/* 803CC704  7C C3 33 78 */	mr r3, r6
/* 803CC708  4E 80 00 20 */	blr 
lbl_803CC70C:
/* 803CC70C  38 63 F6 78 */	addi r3, r3, -2440
/* 803CC710  38 C6 FF FF */	addi r6, r6, -1
/* 803CC714  42 00 FF E4 */	bdnz lbl_803CC6F8
lbl_803CC718:
/* 803CC718  38 60 FF FF */	li r3, -1
/* 803CC71C  4E 80 00 20 */	blr 
