lbl_804E2328:
/* 804E2328  80 63 0F 30 */	lwz r3, 0xf30(r3)
/* 804E232C  28 03 00 00 */	cmplwi r3, 0
/* 804E2330  41 82 00 0C */	beq lbl_804E233C
/* 804E2334  80 63 02 38 */	lwz r3, 0x238(r3)
/* 804E2338  4E 80 00 20 */	blr 
lbl_804E233C:
/* 804E233C  38 60 00 06 */	li r3, 6
/* 804E2340  4E 80 00 20 */	blr 
