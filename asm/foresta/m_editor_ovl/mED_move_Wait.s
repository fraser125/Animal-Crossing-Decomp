lbl_805DAB84:
/* 805DAB84  80 63 00 04 */	lwz r3, 4(r3)
/* 805DAB88  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805DAB8C  7C 03 00 00 */	cmpw r3, r0
/* 805DAB90  4D 82 00 20 */	beqlr 
/* 805DAB94  38 00 00 01 */	li r0, 1
/* 805DAB98  90 04 00 04 */	stw r0, 4(r4)
/* 805DAB9C  4E 80 00 20 */	blr 
