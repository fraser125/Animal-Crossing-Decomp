lbl_804B7110:
/* 804B7110  7C A9 03 A6 */	mtctr r5
/* 804B7114  28 05 00 00 */	cmplwi r5, 0
/* 804B7118  4D 82 00 20 */	beqlr 
lbl_804B711C:
/* 804B711C  C8 24 00 00 */	lfd f1, 0(r4)
/* 804B7120  C8 04 00 08 */	lfd f0, 8(r4)
/* 804B7124  D8 23 00 00 */	stfd f1, 0(r3)
/* 804B7128  D8 03 00 08 */	stfd f0, 8(r3)
/* 804B712C  88 06 00 00 */	lbz r0, 0(r6)
/* 804B7130  28 00 00 01 */	cmplwi r0, 1
/* 804B7134  40 82 00 14 */	bne lbl_804B7148
/* 804B7138  A8 04 00 00 */	lha r0, 0(r4)
/* 804B713C  7C 00 3A 14 */	add r0, r0, r7
/* 804B7140  B0 03 00 00 */	sth r0, 0(r3)
/* 804B7144  48 00 00 0C */	b lbl_804B7150
lbl_804B7148:
/* 804B7148  A8 04 00 00 */	lha r0, 0(r4)
/* 804B714C  B0 03 00 00 */	sth r0, 0(r3)
lbl_804B7150:
/* 804B7150  38 84 00 10 */	addi r4, r4, 0x10
/* 804B7154  38 63 00 10 */	addi r3, r3, 0x10
/* 804B7158  38 C6 00 01 */	addi r6, r6, 1
/* 804B715C  42 00 FF C0 */	bdnz lbl_804B711C
/* 804B7160  4E 80 00 20 */	blr 
