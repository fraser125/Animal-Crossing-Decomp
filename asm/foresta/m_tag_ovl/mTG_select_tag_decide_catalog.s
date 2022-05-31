lbl_805FB468:
/* 805FB468  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FB46C  38 60 00 00 */	li r3, 0
/* 805FB470  80 05 00 40 */	lwz r0, 0x40(r5)
/* 805FB474  80 A4 09 CC */	lwz r5, 0x9cc(r4)
/* 805FB478  3C 85 00 01 */	addis r4, r5, 1
/* 805FB47C  88 84 D9 F4 */	lbz r4, -0x260c(r4)
/* 805FB480  1C 84 06 44 */	mulli r4, r4, 0x644
/* 805FB484  3C C4 00 01 */	addis r6, r4, 1
/* 805FB488  38 C6 A1 48 */	addi r6, r6, -24248
/* 805FB48C  7C C5 32 14 */	add r6, r5, r6
/* 805FB490  A8 86 00 02 */	lha r4, 2(r6)
/* 805FB494  7C 04 02 14 */	add r0, r4, r0
/* 805FB498  54 00 08 3C */	slwi r0, r0, 1
/* 805FB49C  7C 86 02 14 */	add r4, r6, r0
/* 805FB4A0  A0 04 00 08 */	lhz r0, 8(r4)
/* 805FB4A4  28 00 00 00 */	cmplwi r0, 0
/* 805FB4A8  4D 82 00 20 */	beqlr 
/* 805FB4AC  38 60 00 29 */	li r3, 0x29
/* 805FB4B0  4E 80 00 20 */	blr 
