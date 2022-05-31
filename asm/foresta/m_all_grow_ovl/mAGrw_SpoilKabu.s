lbl_80510B88:
/* 80510B88  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80510B8C  38 C0 00 00 */	li r6, 0
/* 80510B90  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 80510B94  2C 00 00 02 */	cmpwi r0, 2
/* 80510B98  40 82 00 3C */	bne lbl_80510BD4
/* 80510B9C  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 80510BA0  2C 00 00 0F */	cmpwi r0, 0xf
/* 80510BA4  40 82 00 30 */	bne lbl_80510BD4
/* 80510BA8  28 04 00 00 */	cmplwi r4, 0
/* 80510BAC  41 82 00 1C */	beq lbl_80510BC8
/* 80510BB0  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80510BB4  2C 00 00 01 */	cmpwi r0, 1
/* 80510BB8  40 82 00 18 */	bne lbl_80510BD0
/* 80510BBC  38 00 2F 03 */	li r0, 0x2f03
/* 80510BC0  B0 03 00 00 */	sth r0, 0(r3)
/* 80510BC4  48 00 00 0C */	b lbl_80510BD0
lbl_80510BC8:
/* 80510BC8  38 00 2F 03 */	li r0, 0x2f03
/* 80510BCC  B0 03 00 00 */	sth r0, 0(r3)
lbl_80510BD0:
/* 80510BD0  38 C0 00 01 */	li r6, 1
lbl_80510BD4:
/* 80510BD4  7C C3 33 78 */	mr r3, r6
/* 80510BD8  4E 80 00 20 */	blr 
