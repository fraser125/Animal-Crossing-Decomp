lbl_803D3AB8:
/* 803D3AB8  28 03 00 00 */	cmplwi r3, 0
/* 803D3ABC  38 00 00 01 */	li r0, 1
/* 803D3AC0  41 82 00 0C */	beq lbl_803D3ACC
/* 803D3AC4  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 803D3AC8  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
lbl_803D3ACC:
/* 803D3ACC  7C 03 03 78 */	mr r3, r0
/* 803D3AD0  4E 80 00 20 */	blr 
