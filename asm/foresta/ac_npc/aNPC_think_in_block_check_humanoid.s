lbl_80537698:
/* 80537698  88 03 09 40 */	lbz r0, 0x940(r3)
/* 8053769C  38 80 00 00 */	li r4, 0
/* 805376A0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805376A4  41 82 00 24 */	beq lbl_805376C8
/* 805376A8  80 63 09 3C */	lwz r3, 0x93c(r3)
/* 805376AC  88 03 00 02 */	lbz r0, 2(r3)
/* 805376B0  2C 00 00 05 */	cmpwi r0, 5
/* 805376B4  40 80 00 14 */	bge lbl_805376C8
/* 805376B8  2C 00 00 03 */	cmpwi r0, 3
/* 805376BC  40 80 00 08 */	bge lbl_805376C4
/* 805376C0  48 00 00 08 */	b lbl_805376C8
lbl_805376C4:
/* 805376C4  38 80 00 01 */	li r4, 1
lbl_805376C8:
/* 805376C8  7C 83 23 78 */	mr r3, r4
/* 805376CC  4E 80 00 20 */	blr 
