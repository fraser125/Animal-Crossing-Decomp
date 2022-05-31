lbl_803A21DC:
/* 803A21DC  38 00 01 25 */	li r0, 0x125
/* 803A21E0  38 C0 00 00 */	li r6, 0
/* 803A21E4  7C 67 1B 78 */	mr r7, r3
/* 803A21E8  7C 09 03 A6 */	mtctr r0
lbl_803A21EC:
/* 803A21EC  90 C7 00 00 */	stw r6, 0(r7)
/* 803A21F0  38 E7 00 04 */	addi r7, r7, 4
/* 803A21F4  42 00 FF F8 */	bdnz lbl_803A21EC
/* 803A21F8  7C A9 03 A6 */	mtctr r5
/* 803A21FC  2C 05 00 00 */	cmpwi r5, 0
/* 803A2200  4C 81 00 20 */	blelr 
lbl_803A2204:
/* 803A2204  A0 04 00 00 */	lhz r0, 0(r4)
/* 803A2208  28 00 01 25 */	cmplwi r0, 0x125
/* 803A220C  41 81 00 0C */	bgt lbl_803A2218
/* 803A2210  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 803A2214  7C 83 01 2E */	stwx r4, r3, r0
lbl_803A2218:
/* 803A2218  38 84 04 34 */	addi r4, r4, 0x434
/* 803A221C  42 00 FF E8 */	bdnz lbl_803A2204
/* 803A2220  4E 80 00 20 */	blr 
