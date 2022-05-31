lbl_803E0990:
/* 803E0990  28 03 00 00 */	cmplwi r3, 0
/* 803E0994  38 A0 00 00 */	li r5, 0
/* 803E0998  41 82 00 2C */	beq lbl_803E09C4
/* 803E099C  38 00 00 0F */	li r0, 0xf
/* 803E09A0  38 C3 00 68 */	addi r6, r3, 0x68
/* 803E09A4  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 803E09A8  7C 09 03 A6 */	mtctr r0
lbl_803E09AC:
/* 803E09AC  A0 06 00 00 */	lhz r0, 0(r6)
/* 803E09B0  7C 00 18 40 */	cmplw r0, r3
/* 803E09B4  40 82 00 08 */	bne lbl_803E09BC
/* 803E09B8  38 A5 00 01 */	addi r5, r5, 1
lbl_803E09BC:
/* 803E09BC  38 C6 00 02 */	addi r6, r6, 2
/* 803E09C0  42 00 FF EC */	bdnz lbl_803E09AC
lbl_803E09C4:
/* 803E09C4  7C A3 2B 78 */	mr r3, r5
/* 803E09C8  4E 80 00 20 */	blr 
