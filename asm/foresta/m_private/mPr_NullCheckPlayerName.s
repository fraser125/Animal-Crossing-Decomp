lbl_803DFEE0:
/* 803DFEE0  38 00 00 08 */	li r0, 8
/* 803DFEE4  38 80 00 00 */	li r4, 0
/* 803DFEE8  38 A0 00 00 */	li r5, 0
/* 803DFEEC  7C 09 03 A6 */	mtctr r0
lbl_803DFEF0:
/* 803DFEF0  88 03 00 00 */	lbz r0, 0(r3)
/* 803DFEF4  28 00 00 20 */	cmplwi r0, 0x20
/* 803DFEF8  40 82 00 10 */	bne lbl_803DFF08
/* 803DFEFC  38 63 00 01 */	addi r3, r3, 1
/* 803DFF00  38 A5 00 01 */	addi r5, r5, 1
/* 803DFF04  42 00 FF EC */	bdnz lbl_803DFEF0
lbl_803DFF08:
/* 803DFF08  2C 05 00 08 */	cmpwi r5, 8
/* 803DFF0C  40 82 00 08 */	bne lbl_803DFF14
/* 803DFF10  38 80 00 01 */	li r4, 1
lbl_803DFF14:
/* 803DFF14  7C 83 23 78 */	mr r3, r4
/* 803DFF18  4E 80 00 20 */	blr 
