lbl_803E0728:
/* 803E0728  28 03 00 00 */	cmplwi r3, 0
/* 803E072C  38 A0 FF FF */	li r5, -1
/* 803E0730  41 82 00 38 */	beq lbl_803E0768
/* 803E0734  38 00 00 0F */	li r0, 0xf
/* 803E0738  38 C3 00 68 */	addi r6, r3, 0x68
/* 803E073C  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 803E0740  38 80 00 00 */	li r4, 0
/* 803E0744  7C 09 03 A6 */	mtctr r0
lbl_803E0748:
/* 803E0748  A0 06 00 00 */	lhz r0, 0(r6)
/* 803E074C  7C 00 18 40 */	cmplw r0, r3
/* 803E0750  40 82 00 0C */	bne lbl_803E075C
/* 803E0754  7C 85 23 78 */	mr r5, r4
/* 803E0758  48 00 00 10 */	b lbl_803E0768
lbl_803E075C:
/* 803E075C  38 C6 00 02 */	addi r6, r6, 2
/* 803E0760  38 84 00 01 */	addi r4, r4, 1
/* 803E0764  42 00 FF E4 */	bdnz lbl_803E0748
lbl_803E0768:
/* 803E0768  7C A3 2B 78 */	mr r3, r5
/* 803E076C  4E 80 00 20 */	blr 
