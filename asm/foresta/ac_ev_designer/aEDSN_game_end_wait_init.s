lbl_8051DCBC:
/* 8051DCBC  80 C3 09 AC */	lwz r6, 0x9ac(r3)
/* 8051DCC0  38 A0 00 00 */	li r5, 0
/* 8051DCC4  3C 80 80 65 */	lis r4, lit_703@ha /* 0x806490E4@ha */
/* 8051DCC8  38 00 04 38 */	li r0, 0x438
/* 8051DCCC  B0 A3 09 78 */	sth r5, 0x978(r3)
/* 8051DCD0  C0 04 90 E4 */	lfs f0, lit_703@l(r4)  /* 0x806490E4@l */
/* 8051DCD4  B0 03 09 A4 */	sth r0, 0x9a4(r3)
/* 8051DCD8  D0 03 09 A8 */	stfs f0, 0x9a8(r3)
/* 8051DCDC  90 A6 00 00 */	stw r5, 0(r6)
/* 8051DCE0  4E 80 00 20 */	blr 
