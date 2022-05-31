lbl_804E0DB4:
/* 804E0DB4  80 63 0F 30 */	lwz r3, 0xf30(r3)
/* 804E0DB8  28 03 00 00 */	cmplwi r3, 0
/* 804E0DBC  4D 82 00 20 */	beqlr 
/* 804E0DC0  90 83 02 34 */	stw r4, 0x234(r3)
/* 804E0DC4  4E 80 00 20 */	blr 
