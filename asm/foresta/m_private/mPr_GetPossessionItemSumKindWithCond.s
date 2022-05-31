lbl_803E0B68:
/* 803E0B68  28 03 00 00 */	cmplwi r3, 0
/* 803E0B6C  39 00 00 00 */	li r8, 0
/* 803E0B70  41 82 00 54 */	beq lbl_803E0BC4
/* 803E0B74  38 00 00 0F */	li r0, 0xf
/* 803E0B78  39 23 00 68 */	addi r9, r3, 0x68
/* 803E0B7C  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 803E0B80  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 803E0B84  38 80 00 00 */	li r4, 0
/* 803E0B88  7C 09 03 A6 */	mtctr r0
lbl_803E0B8C:
/* 803E0B8C  A0 09 00 00 */	lhz r0, 0(r9)
/* 803E0B90  7C 00 38 40 */	cmplw r0, r7
/* 803E0B94  41 80 00 24 */	blt lbl_803E0BB8
/* 803E0B98  7C 00 28 40 */	cmplw r0, r5
/* 803E0B9C  40 80 00 1C */	bge lbl_803E0BB8
/* 803E0BA0  80 03 00 88 */	lwz r0, 0x88(r3)
/* 803E0BA4  7C 00 24 30 */	srw r0, r0, r4
/* 803E0BA8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E0BAC  7C 06 00 40 */	cmplw r6, r0
/* 803E0BB0  40 82 00 08 */	bne lbl_803E0BB8
/* 803E0BB4  39 08 00 01 */	addi r8, r8, 1
lbl_803E0BB8:
/* 803E0BB8  39 29 00 02 */	addi r9, r9, 2
/* 803E0BBC  38 84 00 02 */	addi r4, r4, 2
/* 803E0BC0  42 00 FF CC */	bdnz lbl_803E0B8C
lbl_803E0BC4:
/* 803E0BC4  7D 03 43 78 */	mr r3, r8
/* 803E0BC8  4E 80 00 20 */	blr 
