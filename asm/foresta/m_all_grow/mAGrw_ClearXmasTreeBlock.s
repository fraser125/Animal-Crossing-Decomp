lbl_80373CC0:
/* 80373CC0  38 00 01 00 */	li r0, 0x100
/* 80373CC4  38 A0 08 04 */	li r5, 0x804
/* 80373CC8  38 80 08 61 */	li r4, 0x861
/* 80373CCC  7C 09 03 A6 */	mtctr r0
lbl_80373CD0:
/* 80373CD0  A0 03 00 00 */	lhz r0, 0(r3)
/* 80373CD4  28 00 00 60 */	cmplwi r0, 0x60
/* 80373CD8  40 82 00 0C */	bne lbl_80373CE4
/* 80373CDC  B0 A3 00 00 */	sth r5, 0(r3)
/* 80373CE0  48 00 00 10 */	b lbl_80373CF0
lbl_80373CE4:
/* 80373CE4  28 00 00 82 */	cmplwi r0, 0x82
/* 80373CE8  40 82 00 08 */	bne lbl_80373CF0
/* 80373CEC  B0 83 00 00 */	sth r4, 0(r3)
lbl_80373CF0:
/* 80373CF0  38 63 00 02 */	addi r3, r3, 2
/* 80373CF4  42 00 FF DC */	bdnz lbl_80373CD0
/* 80373CF8  4E 80 00 20 */	blr 