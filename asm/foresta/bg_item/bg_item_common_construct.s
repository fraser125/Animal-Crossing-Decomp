lbl_804BE0F4:
/* 804BE0F4  3C A4 00 01 */	addis r5, r4, 1
/* 804BE0F8  38 80 00 13 */	li r4, 0x13
/* 804BE0FC  38 65 27 48 */	addi r3, r5, 0x2748
/* 804BE100  38 00 00 06 */	li r0, 6
/* 804BE104  90 65 25 CC */	stw r3, 0x25cc(r5)
/* 804BE108  38 65 33 C0 */	addi r3, r5, 0x33c0
/* 804BE10C  B0 85 25 D0 */	sth r4, 0x25d0(r5)
/* 804BE110  90 65 25 D4 */	stw r3, 0x25d4(r5)
/* 804BE114  B0 05 25 D8 */	sth r0, 0x25d8(r5)
/* 804BE118  4E 80 00 20 */	blr 
