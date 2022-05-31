lbl_804BAABC:
/* 804BAABC  80 03 00 00 */	lwz r0, 0(r3)
/* 804BAAC0  28 00 00 00 */	cmplwi r0, 0
/* 804BAAC4  4D 82 00 20 */	beqlr 
/* 804BAAC8  38 00 00 00 */	li r0, 0
/* 804BAACC  90 03 00 00 */	stw r0, 0(r3)
/* 804BAAD0  90 03 00 04 */	stw r0, 4(r3)
/* 804BAAD4  90 03 00 08 */	stw r0, 8(r3)
/* 804BAAD8  4E 80 00 20 */	blr 
