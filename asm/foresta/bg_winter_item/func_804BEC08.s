lbl_804BEC08:
/* 804BEC08  7C A9 03 A6 */	mtctr r5
/* 804BEC0C  28 05 00 00 */	cmplwi r5, 0
/* 804BEC10  4D 82 00 20 */	beqlr 
lbl_804BEC14:
/* 804BEC14  C8 24 00 00 */	lfd f1, 0(r4)
/* 804BEC18  C8 04 00 08 */	lfd f0, 8(r4)
/* 804BEC1C  D8 23 00 00 */	stfd f1, 0(r3)
/* 804BEC20  D8 03 00 08 */	stfd f0, 8(r3)
/* 804BEC24  88 06 00 00 */	lbz r0, 0(r6)
/* 804BEC28  28 00 00 01 */	cmplwi r0, 1
/* 804BEC2C  40 82 00 14 */	bne lbl_804BEC40
/* 804BEC30  A8 04 00 00 */	lha r0, 0(r4)
/* 804BEC34  7C 00 3A 14 */	add r0, r0, r7
/* 804BEC38  B0 03 00 00 */	sth r0, 0(r3)
/* 804BEC3C  48 00 00 0C */	b lbl_804BEC48
lbl_804BEC40:
/* 804BEC40  A8 04 00 00 */	lha r0, 0(r4)
/* 804BEC44  B0 03 00 00 */	sth r0, 0(r3)
lbl_804BEC48:
/* 804BEC48  38 84 00 10 */	addi r4, r4, 0x10
/* 804BEC4C  38 63 00 10 */	addi r3, r3, 0x10
/* 804BEC50  38 C6 00 01 */	addi r6, r6, 1
/* 804BEC54  42 00 FF C0 */	bdnz lbl_804BEC14
/* 804BEC58  4E 80 00 20 */	blr 
