lbl_804C6020:
/* 804C6020  7C A9 03 A6 */	mtctr r5
/* 804C6024  28 05 00 00 */	cmplwi r5, 0
/* 804C6028  4D 82 00 20 */	beqlr 
lbl_804C602C:
/* 804C602C  C8 24 00 00 */	lfd f1, 0(r4)
/* 804C6030  C8 04 00 08 */	lfd f0, 8(r4)
/* 804C6034  D8 23 00 00 */	stfd f1, 0(r3)
/* 804C6038  D8 03 00 08 */	stfd f0, 8(r3)
/* 804C603C  88 06 00 00 */	lbz r0, 0(r6)
/* 804C6040  28 00 00 01 */	cmplwi r0, 1
/* 804C6044  40 82 00 14 */	bne lbl_804C6058
/* 804C6048  A8 04 00 00 */	lha r0, 0(r4)
/* 804C604C  7C 00 3A 14 */	add r0, r0, r7
/* 804C6050  B0 03 00 00 */	sth r0, 0(r3)
/* 804C6054  48 00 00 0C */	b lbl_804C6060
lbl_804C6058:
/* 804C6058  A8 04 00 00 */	lha r0, 0(r4)
/* 804C605C  B0 03 00 00 */	sth r0, 0(r3)
lbl_804C6060:
/* 804C6060  38 84 00 10 */	addi r4, r4, 0x10
/* 804C6064  38 63 00 10 */	addi r3, r3, 0x10
/* 804C6068  38 C6 00 01 */	addi r6, r6, 1
/* 804C606C  42 00 FF C0 */	bdnz lbl_804C602C
/* 804C6070  4E 80 00 20 */	blr 