lbl_803D16DC:
/* 803D16DC  7C 89 03 A6 */	mtctr r4
/* 803D16E0  2C 04 00 00 */	cmpwi r4, 0
/* 803D16E4  4C 81 00 20 */	blelr 
lbl_803D16E8:
/* 803D16E8  28 03 00 00 */	cmplwi r3, 0
/* 803D16EC  41 82 00 18 */	beq lbl_803D1704
/* 803D16F0  A0 83 00 00 */	lhz r4, 0(r3)
/* 803D16F4  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803D16F8  2C 00 00 0E */	cmpwi r0, 0xe
/* 803D16FC  40 82 00 08 */	bne lbl_803D1704
/* 803D1700  98 83 00 0C */	stb r4, 0xc(r3)
lbl_803D1704:
/* 803D1704  38 63 09 88 */	addi r3, r3, 0x988
/* 803D1708  42 00 FF E0 */	bdnz lbl_803D16E8
/* 803D170C  4E 80 00 20 */	blr 
