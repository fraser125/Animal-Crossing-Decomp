lbl_804223BC:
/* 804223BC  7C 03 28 40 */	cmplw r3, r5
/* 804223C0  40 81 00 0C */	ble lbl_804223CC
/* 804223C4  38 60 00 00 */	li r3, 0
/* 804223C8  4E 80 00 20 */	blr 
lbl_804223CC:
/* 804223CC  7C 03 20 40 */	cmplw r3, r4
/* 804223D0  38 60 00 00 */	li r3, 0
/* 804223D4  4C 80 00 20 */	bgelr 
/* 804223D8  7C 04 28 40 */	cmplw r4, r5
/* 804223DC  4D 81 00 20 */	bgtlr 
/* 804223E0  38 60 00 01 */	li r3, 1
/* 804223E4  4E 80 00 20 */	blr 
