lbl_805D2D8C:
/* 805D2D8C  80 83 06 78 */	lwz r4, 0x678(r3)
/* 805D2D90  80 03 06 68 */	lwz r0, 0x668(r3)
/* 805D2D94  7C 04 00 00 */	cmpw r4, r0
/* 805D2D98  40 81 00 10 */	ble lbl_805D2DA8
/* 805D2D9C  80 03 06 50 */	lwz r0, 0x650(r3)
/* 805D2DA0  90 03 06 80 */	stw r0, 0x680(r3)
/* 805D2DA4  48 00 00 0C */	b lbl_805D2DB0
lbl_805D2DA8:
/* 805D2DA8  80 03 06 58 */	lwz r0, 0x658(r3)
/* 805D2DAC  90 03 06 80 */	stw r0, 0x680(r3)
lbl_805D2DB0:
/* 805D2DB0  80 83 06 7C */	lwz r4, 0x67c(r3)
/* 805D2DB4  80 03 06 6C */	lwz r0, 0x66c(r3)
/* 805D2DB8  7C 04 00 00 */	cmpw r4, r0
/* 805D2DBC  40 81 00 10 */	ble lbl_805D2DCC
/* 805D2DC0  80 03 06 54 */	lwz r0, 0x654(r3)
/* 805D2DC4  90 03 06 84 */	stw r0, 0x684(r3)
/* 805D2DC8  4E 80 00 20 */	blr 
lbl_805D2DCC:
/* 805D2DCC  80 03 06 5C */	lwz r0, 0x65c(r3)
/* 805D2DD0  90 03 06 84 */	stw r0, 0x684(r3)
/* 805D2DD4  4E 80 00 20 */	blr 
