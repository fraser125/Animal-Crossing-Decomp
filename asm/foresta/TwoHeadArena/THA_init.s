lbl_80404B18:
/* 80404B18  80 03 00 04 */	lwz r0, 4(r3)
/* 80404B1C  90 03 00 08 */	stw r0, 8(r3)
/* 80404B20  80 83 00 04 */	lwz r4, 4(r3)
/* 80404B24  80 03 00 00 */	lwz r0, 0(r3)
/* 80404B28  7C 04 02 14 */	add r0, r4, r0
/* 80404B2C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80404B30  4E 80 00 20 */	blr 
