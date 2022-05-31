lbl_804AFD8C:
/* 804AFD8C  7C A9 03 A6 */	mtctr r5
/* 804AFD90  28 05 00 00 */	cmplwi r5, 0
/* 804AFD94  4D 82 00 20 */	beqlr 
lbl_804AFD98:
/* 804AFD98  C8 24 00 00 */	lfd f1, 0(r4)
/* 804AFD9C  C8 04 00 08 */	lfd f0, 8(r4)
/* 804AFDA0  D8 23 00 00 */	stfd f1, 0(r3)
/* 804AFDA4  D8 03 00 08 */	stfd f0, 8(r3)
/* 804AFDA8  88 06 00 00 */	lbz r0, 0(r6)
/* 804AFDAC  28 00 00 01 */	cmplwi r0, 1
/* 804AFDB0  40 82 00 14 */	bne lbl_804AFDC4
/* 804AFDB4  A8 04 00 00 */	lha r0, 0(r4)
/* 804AFDB8  7C 00 3A 14 */	add r0, r0, r7
/* 804AFDBC  B0 03 00 00 */	sth r0, 0(r3)
/* 804AFDC0  48 00 00 0C */	b lbl_804AFDCC
lbl_804AFDC4:
/* 804AFDC4  A8 04 00 00 */	lha r0, 0(r4)
/* 804AFDC8  B0 03 00 00 */	sth r0, 0(r3)
lbl_804AFDCC:
/* 804AFDCC  38 84 00 10 */	addi r4, r4, 0x10
/* 804AFDD0  38 63 00 10 */	addi r3, r3, 0x10
/* 804AFDD4  38 C6 00 01 */	addi r6, r6, 1
/* 804AFDD8  42 00 FF C0 */	bdnz lbl_804AFD98
/* 804AFDDC  4E 80 00 20 */	blr 
