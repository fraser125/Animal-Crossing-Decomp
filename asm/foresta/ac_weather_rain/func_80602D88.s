lbl_80602D88:
/* 80602D88  A8 63 01 7E */	lha r3, 0x17e(r3)
/* 80602D8C  2C 03 00 01 */	cmpwi r3, 1
/* 80602D90  40 82 00 0C */	bne lbl_80602D9C
/* 80602D94  38 60 00 01 */	li r3, 1
/* 80602D98  4E 80 00 20 */	blr 
lbl_80602D9C:
/* 80602D9C  38 03 FF FE */	addi r0, r3, -2
/* 80602DA0  30 00 FF FF */	addic r0, r0, -1
/* 80602DA4  7C 60 01 10 */	subfe r3, r0, r0
/* 80602DA8  38 63 00 03 */	addi r3, r3, 3
/* 80602DAC  4E 80 00 20 */	blr 
