lbl_8047D900:
/* 8047D900  28 03 00 00 */	cmplwi r3, 0
/* 8047D904  4D 82 00 20 */	beqlr 
/* 8047D908  80 A4 00 00 */	lwz r5, 0(r4)
/* 8047D90C  80 04 00 04 */	lwz r0, 4(r4)
/* 8047D910  90 A3 00 00 */	stw r5, 0(r3)
/* 8047D914  90 03 00 04 */	stw r0, 4(r3)
/* 8047D918  80 04 00 08 */	lwz r0, 8(r4)
/* 8047D91C  90 03 00 08 */	stw r0, 8(r3)
/* 8047D920  4E 80 00 20 */	blr 
