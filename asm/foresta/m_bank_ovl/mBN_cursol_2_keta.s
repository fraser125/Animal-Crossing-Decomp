lbl_805C381C:
/* 805C381C  20 03 00 05 */	subfic r0, r3, 5
/* 805C3820  38 80 00 01 */	li r4, 1
/* 805C3824  7C 09 03 A6 */	mtctr r0
/* 805C3828  2C 03 00 05 */	cmpwi r3, 5
/* 805C382C  40 80 00 0C */	bge lbl_805C3838
lbl_805C3830:
/* 805C3830  1C 84 00 0A */	mulli r4, r4, 0xa
/* 805C3834  42 00 FF FC */	bdnz lbl_805C3830
lbl_805C3838:
/* 805C3838  7C 83 23 78 */	mr r3, r4
/* 805C383C  4E 80 00 20 */	blr 
