lbl_803B40F8:
/* 803B40F8  7C A9 03 A6 */	mtctr r5
/* 803B40FC  2C 05 00 00 */	cmpwi r5, 0
/* 803B4100  4D 82 00 20 */	beqlr 
lbl_803B4104:
/* 803B4104  80 A4 00 00 */	lwz r5, 0(r4)
/* 803B4108  38 84 00 04 */	addi r4, r4, 4
/* 803B410C  7C A0 1D 2C */	stwbrx r5, 0, r3
/* 803B4110  38 63 00 04 */	addi r3, r3, 4
/* 803B4114  42 00 FF F0 */	bdnz lbl_803B4104
/* 803B4118  4E 80 00 20 */	blr 
