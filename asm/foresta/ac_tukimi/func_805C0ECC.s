lbl_805C0ECC:
/* 805C0ECC  2C 05 00 07 */	cmpwi r5, 7
/* 805C0ED0  40 82 00 0C */	bne lbl_805C0EDC
/* 805C0ED4  38 00 00 00 */	li r0, 0
/* 805C0ED8  90 06 00 00 */	stw r0, 0(r6)
lbl_805C0EDC:
/* 805C0EDC  38 60 00 01 */	li r3, 1
/* 805C0EE0  4E 80 00 20 */	blr 
