lbl_803743C4:
/* 803743C4  A0 03 00 06 */	lhz r0, 6(r3)
/* 803743C8  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 803743CC  2C 00 00 0F */	cmpwi r0, 0xf
/* 803743D0  40 80 00 18 */	bge lbl_803743E8
/* 803743D4  2C 00 00 0D */	cmpwi r0, 0xd
/* 803743D8  40 80 00 08 */	bge lbl_803743E0
/* 803743DC  48 00 00 0C */	b lbl_803743E8
lbl_803743E0:
/* 803743E0  38 60 00 01 */	li r3, 1
/* 803743E4  4E 80 00 20 */	blr 
lbl_803743E8:
/* 803743E8  38 60 00 01 */	li r3, 1
/* 803743EC  4E 80 00 20 */	blr 
