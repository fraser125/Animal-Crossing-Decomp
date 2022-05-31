lbl_804AC0B8:
/* 804AC0B8  80 04 01 4C */	lwz r0, 0x14c(r4)
/* 804AC0BC  7C 03 00 40 */	cmplw r3, r0
/* 804AC0C0  41 82 00 0C */	beq lbl_804AC0CC
/* 804AC0C4  38 60 00 00 */	li r3, 0
/* 804AC0C8  4E 80 00 20 */	blr 
lbl_804AC0CC:
/* 804AC0CC  90 A4 01 C0 */	stw r5, 0x1c0(r4)
/* 804AC0D0  38 60 00 01 */	li r3, 1
/* 804AC0D4  4E 80 00 20 */	blr 
