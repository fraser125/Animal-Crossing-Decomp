lbl_8037AA14:
/* 8037AA14  80 A3 01 18 */	lwz r5, 0x118(r3)
/* 8037AA18  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8037AA1C  7C 04 00 F8 */	nor r4, r0, r0
/* 8037AA20  7C A9 03 A6 */	mtctr r5
/* 8037AA24  2C 05 00 00 */	cmpwi r5, 0
/* 8037AA28  4C 81 00 20 */	blelr 
lbl_8037AA2C:
/* 8037AA2C  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037AA30  7C 00 20 38 */	and r0, r0, r4
/* 8037AA34  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8037AA38  38 63 00 14 */	addi r3, r3, 0x14
/* 8037AA3C  42 00 FF F0 */	bdnz lbl_8037AA2C
/* 8037AA40  4E 80 00 20 */	blr 
