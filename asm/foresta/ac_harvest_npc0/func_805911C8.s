lbl_805911C8:
/* 805911C8  A0 63 00 06 */	lhz r3, 6(r3)
/* 805911CC  3C 63 FF FF */	addis r3, r3, 0xffff
/* 805911D0  38 03 2F 7E */	addi r0, r3, 0x2f7e
/* 805911D4  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 805911D8  4E 80 00 20 */	blr 
