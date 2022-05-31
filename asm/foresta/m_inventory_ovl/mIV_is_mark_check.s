lbl_805E3B6C:
/* 805E3B6C  38 00 00 01 */	li r0, 1
/* 805E3B70  A0 63 05 E0 */	lhz r3, 0x5e0(r3)
/* 805E3B74  7C 00 20 30 */	slw r0, r0, r4
/* 805E3B78  7C 63 00 38 */	and r3, r3, r0
/* 805E3B7C  30 03 FF FF */	addic r0, r3, -1
/* 805E3B80  7C 60 19 10 */	subfe r3, r0, r3
/* 805E3B84  4E 80 00 20 */	blr 
