lbl_803D3DD0:
/* 803D3DD0  38 A0 FF FF */	li r5, -1
/* 803D3DD4  38 C0 00 00 */	li r6, 0
/* 803D3DD8  7C 89 03 A6 */	mtctr r4
/* 803D3DDC  2C 04 00 00 */	cmpwi r4, 0
/* 803D3DE0  40 81 00 24 */	ble lbl_803D3E04
lbl_803D3DE4:
/* 803D3DE4  A0 03 00 00 */	lhz r0, 0(r3)
/* 803D3DE8  28 00 00 00 */	cmplwi r0, 0
/* 803D3DEC  40 82 00 0C */	bne lbl_803D3DF8
/* 803D3DF0  7C C5 33 78 */	mr r5, r6
/* 803D3DF4  48 00 00 10 */	b lbl_803D3E04
lbl_803D3DF8:
/* 803D3DF8  38 63 00 02 */	addi r3, r3, 2
/* 803D3DFC  38 C6 00 01 */	addi r6, r6, 1
/* 803D3E00  42 00 FF E4 */	bdnz lbl_803D3DE4
lbl_803D3E04:
/* 803D3E04  7C A3 2B 78 */	mr r3, r5
/* 803D3E08  4E 80 00 20 */	blr 
