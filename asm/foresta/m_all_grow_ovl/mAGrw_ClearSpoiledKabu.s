lbl_80510BDC:
/* 80510BDC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80510BE0  38 80 00 00 */	li r4, 0
/* 80510BE4  28 00 2F 03 */	cmplwi r0, 0x2f03
/* 80510BE8  40 82 00 10 */	bne lbl_80510BF8
/* 80510BEC  38 00 00 00 */	li r0, 0
/* 80510BF0  38 80 00 01 */	li r4, 1
/* 80510BF4  B0 03 00 00 */	sth r0, 0(r3)
lbl_80510BF8:
/* 80510BF8  7C 83 23 78 */	mr r3, r4
/* 80510BFC  4E 80 00 20 */	blr 
