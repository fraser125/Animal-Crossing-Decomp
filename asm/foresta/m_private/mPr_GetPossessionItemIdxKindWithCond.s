lbl_803E0920:
/* 803E0920  28 03 00 00 */	cmplwi r3, 0
/* 803E0924  39 00 FF FF */	li r8, -1
/* 803E0928  41 82 00 60 */	beq lbl_803E0988
/* 803E092C  38 00 00 0F */	li r0, 0xf
/* 803E0930  39 23 00 68 */	addi r9, r3, 0x68
/* 803E0934  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 803E0938  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 803E093C  39 40 00 00 */	li r10, 0
/* 803E0940  38 80 00 00 */	li r4, 0
/* 803E0944  7C 09 03 A6 */	mtctr r0
lbl_803E0948:
/* 803E0948  A0 09 00 00 */	lhz r0, 0(r9)
/* 803E094C  7C 00 38 40 */	cmplw r0, r7
/* 803E0950  41 80 00 28 */	blt lbl_803E0978
/* 803E0954  7C 00 28 40 */	cmplw r0, r5
/* 803E0958  40 80 00 20 */	bge lbl_803E0978
/* 803E095C  80 03 00 88 */	lwz r0, 0x88(r3)
/* 803E0960  7C 00 24 30 */	srw r0, r0, r4
/* 803E0964  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E0968  7C 06 00 40 */	cmplw r6, r0
/* 803E096C  40 82 00 0C */	bne lbl_803E0978
/* 803E0970  7D 48 53 78 */	mr r8, r10
/* 803E0974  48 00 00 14 */	b lbl_803E0988
lbl_803E0978:
/* 803E0978  39 29 00 02 */	addi r9, r9, 2
/* 803E097C  39 4A 00 01 */	addi r10, r10, 1
/* 803E0980  38 84 00 02 */	addi r4, r4, 2
/* 803E0984  42 00 FF C4 */	bdnz lbl_803E0948
lbl_803E0988:
/* 803E0988  7D 03 43 78 */	mr r3, r8
/* 803E098C  4E 80 00 20 */	blr 