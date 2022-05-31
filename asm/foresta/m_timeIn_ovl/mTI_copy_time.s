lbl_805FF358:
/* 805FF358  38 00 00 05 */	li r0, 5
/* 805FF35C  7C 09 03 A6 */	mtctr r0
lbl_805FF360:
/* 805FF360  A0 04 00 00 */	lhz r0, 0(r4)
/* 805FF364  38 84 00 02 */	addi r4, r4, 2
/* 805FF368  B0 03 00 00 */	sth r0, 0(r3)
/* 805FF36C  38 63 00 02 */	addi r3, r3, 2
/* 805FF370  42 00 FF F0 */	bdnz lbl_805FF360
/* 805FF374  4E 80 00 20 */	blr 
