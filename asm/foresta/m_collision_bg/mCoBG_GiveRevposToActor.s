lbl_803899F4:
/* 803899F4  28 03 00 00 */	cmplwi r3, 0
/* 803899F8  4D 82 00 20 */	beqlr 
/* 803899FC  80 A4 00 00 */	lwz r5, 0(r4)
/* 80389A00  80 04 00 04 */	lwz r0, 4(r4)
/* 80389A04  90 A3 00 00 */	stw r5, 0(r3)
/* 80389A08  90 03 00 04 */	stw r0, 4(r3)
/* 80389A0C  80 04 00 08 */	lwz r0, 8(r4)
/* 80389A10  90 03 00 08 */	stw r0, 8(r3)
/* 80389A14  4E 80 00 20 */	blr 