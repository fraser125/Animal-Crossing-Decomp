lbl_80478270:
/* 80478270  38 00 00 03 */	li r0, 3
/* 80478274  38 A0 00 00 */	li r5, 0
/* 80478278  7C 09 03 A6 */	mtctr r0
lbl_8047827C:
/* 8047827C  38 05 03 8C */	addi r0, r5, 0x38c
/* 80478280  7C 03 00 AE */	lbzx r0, r3, r0
/* 80478284  7C 00 20 00 */	cmpw r0, r4
/* 80478288  40 82 00 0C */	bne lbl_80478294
/* 8047828C  38 60 00 01 */	li r3, 1
/* 80478290  4E 80 00 20 */	blr 
lbl_80478294:
/* 80478294  38 A5 00 20 */	addi r5, r5, 0x20
/* 80478298  42 00 FF E4 */	bdnz lbl_8047827C
/* 8047829C  38 60 00 00 */	li r3, 0
/* 804782A0  4E 80 00 20 */	blr 
