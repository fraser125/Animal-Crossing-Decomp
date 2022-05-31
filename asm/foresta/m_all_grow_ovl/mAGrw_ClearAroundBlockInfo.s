lbl_8050FDA8:
/* 8050FDA8  38 00 00 04 */	li r0, 4
/* 8050FDAC  38 80 00 00 */	li r4, 0
/* 8050FDB0  7C 09 03 A6 */	mtctr r0
lbl_8050FDB4:
/* 8050FDB4  90 83 00 00 */	stw r4, 0(r3)
/* 8050FDB8  38 63 00 04 */	addi r3, r3, 4
/* 8050FDBC  42 00 FF F8 */	bdnz lbl_8050FDB4
/* 8050FDC0  4E 80 00 20 */	blr 
