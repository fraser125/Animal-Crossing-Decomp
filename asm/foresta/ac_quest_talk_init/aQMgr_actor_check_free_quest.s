lbl_80489D28:
/* 80489D28  28 03 00 00 */	cmplwi r3, 0
/* 80489D2C  38 80 00 00 */	li r4, 0
/* 80489D30  41 82 00 18 */	beq lbl_80489D48
/* 80489D34  88 03 00 00 */	lbz r0, 0(r3)
/* 80489D38  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 80489D3C  28 00 00 03 */	cmplwi r0, 3
/* 80489D40  40 82 00 08 */	bne lbl_80489D48
/* 80489D44  38 80 00 01 */	li r4, 1
lbl_80489D48:
/* 80489D48  7C 83 23 78 */	mr r3, r4
/* 80489D4C  4E 80 00 20 */	blr 