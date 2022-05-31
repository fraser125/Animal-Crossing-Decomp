lbl_803AF648:
/* 803AF648  3C 80 80 64 */	lis r4, tbl@ha /* 0x806420F8@ha */
/* 803AF64C  38 00 00 38 */	li r0, 0x38
/* 803AF650  38 A4 20 F8 */	addi r5, r4, tbl@l /* 0x806420F8@l */
/* 803AF654  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 803AF658  7C 09 03 A6 */	mtctr r0
lbl_803AF65C:
/* 803AF65C  88 05 00 00 */	lbz r0, 0(r5)
/* 803AF660  7C 00 20 40 */	cmplw r0, r4
/* 803AF664  40 82 00 0C */	bne lbl_803AF670
/* 803AF668  88 65 00 01 */	lbz r3, 1(r5)
/* 803AF66C  4E 80 00 20 */	blr 
lbl_803AF670:
/* 803AF670  38 A5 00 02 */	addi r5, r5, 2
/* 803AF674  42 00 FF E8 */	bdnz lbl_803AF65C
/* 803AF678  4E 80 00 20 */	blr 
