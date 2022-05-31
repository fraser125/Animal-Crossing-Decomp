lbl_805F88C8:
/* 805F88C8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F88CC  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805F88D0  88 03 03 F5 */	lbz r0, 0x3f5(r3)
/* 805F88D4  7C 05 00 00 */	cmpw r5, r0
/* 805F88D8  40 82 00 0C */	bne lbl_805F88E4
/* 805F88DC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 805F88E0  4E 80 00 20 */	blr 
lbl_805F88E4:
/* 805F88E4  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805F88E8  FC 20 00 50 */	fneg f1, f0
/* 805F88EC  4E 80 00 20 */	blr 
