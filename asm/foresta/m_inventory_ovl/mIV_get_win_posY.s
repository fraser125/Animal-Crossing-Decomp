lbl_805E43A4:
/* 805E43A4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E43A8  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805E43AC  88 03 03 F5 */	lbz r0, 0x3f5(r3)
/* 805E43B0  7C 05 00 00 */	cmpw r5, r0
/* 805E43B4  40 82 00 0C */	bne lbl_805E43C0
/* 805E43B8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 805E43BC  4E 80 00 20 */	blr 
lbl_805E43C0:
/* 805E43C0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805E43C4  FC 20 00 50 */	fneg f1, f0
/* 805E43C8  4E 80 00 20 */	blr 
