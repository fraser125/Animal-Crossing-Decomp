lbl_803D3AD4:
/* 803D3AD4  28 03 00 00 */	cmplwi r3, 0
/* 803D3AD8  38 00 00 01 */	li r0, 1
/* 803D3ADC  41 82 00 0C */	beq lbl_803D3AE8
/* 803D3AE0  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 803D3AE4  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
lbl_803D3AE8:
/* 803D3AE8  7C 03 03 78 */	mr r3, r0
/* 803D3AEC  4E 80 00 20 */	blr 
