lbl_803E8354:
/* 803E8354  28 05 00 00 */	cmplwi r5, 0
/* 803E8358  40 82 00 28 */	bne lbl_803E8380
/* 803E835C  38 00 00 00 */	li r0, 0
/* 803E8360  7C 89 03 A6 */	mtctr r4
/* 803E8364  2C 04 00 00 */	cmpwi r4, 0
/* 803E8368  40 81 00 10 */	ble lbl_803E8378
lbl_803E836C:
/* 803E836C  B0 03 00 00 */	sth r0, 0(r3)
/* 803E8370  38 63 00 02 */	addi r3, r3, 2
/* 803E8374  42 00 FF F8 */	bdnz lbl_803E836C
lbl_803E8378:
/* 803E8378  38 60 00 01 */	li r3, 1
/* 803E837C  4E 80 00 20 */	blr 
lbl_803E8380:
/* 803E8380  38 60 00 00 */	li r3, 0
/* 803E8384  4E 80 00 20 */	blr 
