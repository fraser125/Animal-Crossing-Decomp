lbl_803AB104:
/* 803AB104  38 00 00 04 */	li r0, 4
/* 803AB108  7C 09 03 A6 */	mtctr r0
lbl_803AB10C:
/* 803AB10C  80 03 00 00 */	lwz r0, 0(r3)
/* 803AB110  7C 04 00 00 */	cmpw r4, r0
/* 803AB114  40 82 00 18 */	bne lbl_803AB12C
/* 803AB118  80 03 00 04 */	lwz r0, 4(r3)
/* 803AB11C  7C 05 00 00 */	cmpw r5, r0
/* 803AB120  40 82 00 0C */	bne lbl_803AB12C
/* 803AB124  38 60 00 00 */	li r3, 0
/* 803AB128  4E 80 00 20 */	blr 
lbl_803AB12C:
/* 803AB12C  38 63 00 08 */	addi r3, r3, 8
/* 803AB130  42 00 FF DC */	bdnz lbl_803AB10C
/* 803AB134  38 60 00 01 */	li r3, 1
/* 803AB138  4E 80 00 20 */	blr 
