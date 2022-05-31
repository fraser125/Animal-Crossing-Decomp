lbl_803CC5BC:
/* 803CC5BC  88 03 08 99 */	lbz r0, 0x899(r3)
/* 803CC5C0  38 80 00 00 */	li r4, 0
/* 803CC5C4  28 00 00 FF */	cmplwi r0, 0xff
/* 803CC5C8  40 82 00 24 */	bne lbl_803CC5EC
/* 803CC5CC  88 03 08 9A */	lbz r0, 0x89a(r3)
/* 803CC5D0  28 00 00 FF */	cmplwi r0, 0xff
/* 803CC5D4  40 82 00 18 */	bne lbl_803CC5EC
/* 803CC5D8  A0 03 00 00 */	lhz r0, 0(r3)
/* 803CC5DC  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 803CC5E0  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CC5E4  41 82 00 08 */	beq lbl_803CC5EC
/* 803CC5E8  38 80 00 01 */	li r4, 1
lbl_803CC5EC:
/* 803CC5EC  7C 83 23 78 */	mr r3, r4
/* 803CC5F0  4E 80 00 20 */	blr 
