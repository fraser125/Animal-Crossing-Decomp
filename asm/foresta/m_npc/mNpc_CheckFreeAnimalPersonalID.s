lbl_803CB3DC:
/* 803CB3DC  A0 83 00 00 */	lhz r4, 0(r3)
/* 803CB3E0  38 A0 00 00 */	li r5, 0
/* 803CB3E4  28 04 00 00 */	cmplwi r4, 0
/* 803CB3E8  40 82 00 10 */	bne lbl_803CB3F8
/* 803CB3EC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 803CB3F0  28 00 00 FF */	cmplwi r0, 0xff
/* 803CB3F4  41 82 00 10 */	beq lbl_803CB404
lbl_803CB3F8:
/* 803CB3F8  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803CB3FC  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CB400  41 82 00 08 */	beq lbl_803CB408
lbl_803CB404:
/* 803CB404  38 A0 00 01 */	li r5, 1
lbl_803CB408:
/* 803CB408  7C A3 2B 78 */	mr r3, r5
/* 803CB40C  4E 80 00 20 */	blr 
