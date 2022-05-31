lbl_8037B8A8:
/* 8037B8A8  80 03 01 18 */	lwz r0, 0x118(r3)
/* 8037B8AC  7C 09 03 A6 */	mtctr r0
/* 8037B8B0  2C 00 00 00 */	cmpwi r0, 0
/* 8037B8B4  4C 81 00 20 */	blelr 
lbl_8037B8B8:
/* 8037B8B8  A0 83 00 0E */	lhz r4, 0xe(r3)
/* 8037B8BC  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 8037B8C0  41 82 00 0C */	beq lbl_8037B8CC
/* 8037B8C4  60 80 00 01 */	ori r0, r4, 1
/* 8037B8C8  B0 03 00 0E */	sth r0, 0xe(r3)
lbl_8037B8CC:
/* 8037B8CC  38 63 00 14 */	addi r3, r3, 0x14
/* 8037B8D0  42 00 FF E8 */	bdnz lbl_8037B8B8
/* 8037B8D4  4E 80 00 20 */	blr 
