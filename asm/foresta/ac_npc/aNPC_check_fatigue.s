lbl_80535FB8:
/* 80535FB8  A0 03 00 06 */	lhz r0, 6(r3)
/* 80535FBC  38 80 00 00 */	li r4, 0
/* 80535FC0  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80535FC4  2C 00 00 0E */	cmpwi r0, 0xe
/* 80535FC8  40 82 00 3C */	bne lbl_80536004
/* 80535FCC  88 03 07 F7 */	lbz r0, 0x7f7(r3)
/* 80535FD0  2C 00 00 03 */	cmpwi r0, 3
/* 80535FD4  41 82 00 14 */	beq lbl_80535FE8
/* 80535FD8  40 80 00 2C */	bge lbl_80536004
/* 80535FDC  2C 00 00 00 */	cmpwi r0, 0
/* 80535FE0  41 82 00 08 */	beq lbl_80535FE8
/* 80535FE4  48 00 00 20 */	b lbl_80536004
lbl_80535FE8:
/* 80535FE8  80 03 07 D8 */	lwz r0, 0x7d8(r3)
/* 80535FEC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80535FF0  41 82 00 14 */	beq lbl_80536004
/* 80535FF4  A0 03 08 36 */	lhz r0, 0x836(r3)
/* 80535FF8  28 00 06 40 */	cmplwi r0, 0x640
/* 80535FFC  41 80 00 08 */	blt lbl_80536004
/* 80536000  38 80 00 01 */	li r4, 1
lbl_80536004:
/* 80536004  7C 83 23 78 */	mr r3, r4
/* 80536008  4E 80 00 20 */	blr 
