lbl_803B3C84:
/* 803B3C84  48 00 00 20 */	b lbl_803B3CA4
lbl_803B3C88:
/* 803B3C88  A0 C4 00 00 */	lhz r6, 0(r4)
/* 803B3C8C  38 84 00 02 */	addi r4, r4, 2
/* 803B3C90  A0 03 00 00 */	lhz r0, 0(r3)
/* 803B3C94  38 A5 FF FF */	addi r5, r5, -1
/* 803B3C98  50 C0 14 3A */	rlwimi r0, r6, 2, 0x10, 0x1d
/* 803B3C9C  B0 03 00 00 */	sth r0, 0(r3)
/* 803B3CA0  38 63 00 02 */	addi r3, r3, 2
lbl_803B3CA4:
/* 803B3CA4  2C 05 00 00 */	cmpwi r5, 0
/* 803B3CA8  4D 82 00 20 */	beqlr 
/* 803B3CAC  28 04 00 00 */	cmplwi r4, 0
/* 803B3CB0  4D 82 00 20 */	beqlr 
/* 803B3CB4  28 03 00 00 */	cmplwi r3, 0
/* 803B3CB8  40 82 FF D0 */	bne lbl_803B3C88
/* 803B3CBC  4E 80 00 20 */	blr 
