lbl_804C99CC:
/* 804C99CC  80 03 00 00 */	lwz r0, 0(r3)
/* 804C99D0  28 00 00 00 */	cmplwi r0, 0
/* 804C99D4  4D 82 00 20 */	beqlr 
/* 804C99D8  38 00 00 00 */	li r0, 0
/* 804C99DC  90 03 00 00 */	stw r0, 0(r3)
/* 804C99E0  90 03 00 04 */	stw r0, 4(r3)
/* 804C99E4  90 03 00 08 */	stw r0, 8(r3)
/* 804C99E8  4E 80 00 20 */	blr 
