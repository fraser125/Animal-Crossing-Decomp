lbl_8038BA58:
/* 8038BA58  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8038BA5C  4C 41 13 82 */	cror 2, 1, 2
/* 8038BA60  40 82 00 10 */	bne lbl_8038BA70
/* 8038BA64  D0 23 00 00 */	stfs f1, 0(r3)
/* 8038BA68  D0 44 00 00 */	stfs f2, 0(r4)
/* 8038BA6C  4E 80 00 20 */	blr 
lbl_8038BA70:
/* 8038BA70  D0 43 00 00 */	stfs f2, 0(r3)
/* 8038BA74  D0 24 00 00 */	stfs f1, 0(r4)
/* 8038BA78  4E 80 00 20 */	blr 
