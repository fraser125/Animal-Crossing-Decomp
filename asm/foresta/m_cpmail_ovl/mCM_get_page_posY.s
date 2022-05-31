lbl_805CC8A0:
/* 805CC8A0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CC8A4  80 63 09 C0 */	lwz r3, 0x9c0(r3)
/* 805CC8A8  A8 03 0B B0 */	lha r0, 0xbb0(r3)
/* 805CC8AC  2C 00 00 00 */	cmpwi r0, 0
/* 805CC8B0  41 82 00 10 */	beq lbl_805CC8C0
/* 805CC8B4  88 03 0B B2 */	lbz r0, 0xbb2(r3)
/* 805CC8B8  7C 05 00 00 */	cmpw r5, r0
/* 805CC8BC  40 82 00 0C */	bne lbl_805CC8C8
lbl_805CC8C0:
/* 805CC8C0  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 805CC8C4  4E 80 00 20 */	blr 
lbl_805CC8C8:
/* 805CC8C8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805CC8CC  FC 20 00 50 */	fneg f1, f0
/* 805CC8D0  4E 80 00 20 */	blr 
