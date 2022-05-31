lbl_805EEE90:
/* 805EEE90  38 A0 00 00 */	li r5, 0
/* 805EEE94  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 805EEE98  90 A3 00 04 */	stw r5, 4(r3)
/* 805EEE9C  B0 83 00 34 */	sth r4, 0x34(r3)
/* 805EEEA0  41 82 00 10 */	beq lbl_805EEEB0
/* 805EEEA4  38 00 00 01 */	li r0, 1
/* 805EEEA8  90 03 00 30 */	stw r0, 0x30(r3)
/* 805EEEAC  4E 80 00 20 */	blr 
lbl_805EEEB0:
/* 805EEEB0  38 00 00 04 */	li r0, 4
/* 805EEEB4  90 03 00 30 */	stw r0, 0x30(r3)
/* 805EEEB8  4E 80 00 20 */	blr 
