lbl_803BD474:
/* 803BD474  38 00 00 20 */	li r0, 0x20
/* 803BD478  38 80 00 00 */	li r4, 0
/* 803BD47C  7C 09 03 A6 */	mtctr r0
lbl_803BD480:
/* 803BD480  88 03 00 00 */	lbz r0, 0(r3)
/* 803BD484  28 00 00 CD */	cmplwi r0, 0xcd
/* 803BD488  40 82 00 18 */	bne lbl_803BD4A0
/* 803BD48C  88 03 00 0F */	lbz r0, 0xf(r3)
/* 803BD490  28 00 00 CD */	cmplwi r0, 0xcd
/* 803BD494  40 82 00 14 */	bne lbl_803BD4A8
/* 803BD498  38 83 00 01 */	addi r4, r3, 1
/* 803BD49C  48 00 00 0C */	b lbl_803BD4A8
lbl_803BD4A0:
/* 803BD4A0  38 63 00 01 */	addi r3, r3, 1
/* 803BD4A4  42 00 FF DC */	bdnz lbl_803BD480
lbl_803BD4A8:
/* 803BD4A8  7C 83 23 78 */	mr r3, r4
/* 803BD4AC  4E 80 00 20 */	blr 
