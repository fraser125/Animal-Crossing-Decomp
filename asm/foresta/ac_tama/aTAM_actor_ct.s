lbl_805BDD0C:
/* 805BDD0C  A0 83 00 06 */	lhz r4, 6(r3)
/* 805BDD10  38 04 A7 CC */	addi r0, r4, -22580
/* 805BDD14  90 03 02 B4 */	stw r0, 0x2b4(r3)
/* 805BDD18  80 83 02 B4 */	lwz r4, 0x2b4(r3)
/* 805BDD1C  38 04 00 23 */	addi r0, r4, 0x23
/* 805BDD20  90 03 02 A8 */	stw r0, 0x2a8(r3)
/* 805BDD24  80 83 02 B4 */	lwz r4, 0x2b4(r3)
/* 805BDD28  38 04 00 4C */	addi r0, r4, 0x4c
/* 805BDD2C  90 03 02 AC */	stw r0, 0x2ac(r3)
/* 805BDD30  4E 80 00 20 */	blr 
