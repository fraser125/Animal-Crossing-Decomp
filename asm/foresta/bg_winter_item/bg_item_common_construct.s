lbl_804C5BEC:
/* 804C5BEC  3C A4 00 01 */	addis r5, r4, 1
/* 804C5BF0  38 80 00 13 */	li r4, 0x13
/* 804C5BF4  38 65 27 48 */	addi r3, r5, 0x2748
/* 804C5BF8  38 00 00 06 */	li r0, 6
/* 804C5BFC  90 65 25 CC */	stw r3, 0x25cc(r5)
/* 804C5C00  38 65 33 C0 */	addi r3, r5, 0x33c0
/* 804C5C04  B0 85 25 D0 */	sth r4, 0x25d0(r5)
/* 804C5C08  90 65 25 D4 */	stw r3, 0x25d4(r5)
/* 804C5C0C  B0 05 25 D8 */	sth r0, 0x25d8(r5)
/* 804C5C10  4E 80 00 20 */	blr 
