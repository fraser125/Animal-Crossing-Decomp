lbl_803BC664:
/* 803BC664  28 03 00 00 */	cmplwi r3, 0
/* 803BC668  38 E0 00 00 */	li r7, 0
/* 803BC66C  41 82 00 0C */	beq lbl_803BC678
/* 803BC670  38 00 00 00 */	li r0, 0
/* 803BC674  90 03 00 00 */	stw r0, 0(r3)
lbl_803BC678:
/* 803BC678  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 803BC67C  7C A9 03 A6 */	mtctr r5
/* 803BC680  2C 05 00 00 */	cmpwi r5, 0
/* 803BC684  41 82 00 30 */	beq lbl_803BC6B4
lbl_803BC688:
/* 803BC688  88 A4 00 00 */	lbz r5, 0(r4)
/* 803BC68C  38 E7 00 01 */	addi r7, r7, 1
/* 803BC690  7C 05 00 40 */	cmplw r5, r0
/* 803BC694  40 82 00 18 */	bne lbl_803BC6AC
/* 803BC698  28 03 00 00 */	cmplwi r3, 0
/* 803BC69C  41 82 00 18 */	beq lbl_803BC6B4
/* 803BC6A0  38 00 00 01 */	li r0, 1
/* 803BC6A4  90 03 00 00 */	stw r0, 0(r3)
/* 803BC6A8  48 00 00 0C */	b lbl_803BC6B4
lbl_803BC6AC:
/* 803BC6AC  38 84 00 01 */	addi r4, r4, 1
/* 803BC6B0  42 00 FF D8 */	bdnz lbl_803BC688
lbl_803BC6B4:
/* 803BC6B4  7C E3 3B 78 */	mr r3, r7
/* 803BC6B8  4E 80 00 20 */	blr 
