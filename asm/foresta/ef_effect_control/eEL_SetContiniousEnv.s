lbl_804CE08C:
/* 804CE08C  88 03 00 0F */	lbz r0, 0xf(r3)
/* 804CE090  28 00 00 00 */	cmplwi r0, 0
/* 804CE094  40 82 00 20 */	bne lbl_804CE0B4
/* 804CE098  A8 03 00 00 */	lha r0, 0(r3)
/* 804CE09C  2C 00 00 01 */	cmpwi r0, 1
/* 804CE0A0  4D 81 00 20 */	bgtlr 
/* 804CE0A4  38 00 00 01 */	li r0, 1
/* 804CE0A8  98 03 00 0F */	stb r0, 0xf(r3)
/* 804CE0AC  B0 A3 00 00 */	sth r5, 0(r3)
/* 804CE0B0  4E 80 00 20 */	blr 
lbl_804CE0B4:
/* 804CE0B4  28 00 00 01 */	cmplwi r0, 1
/* 804CE0B8  4C 82 00 20 */	bnelr 
/* 804CE0BC  A8 03 00 00 */	lha r0, 0(r3)
/* 804CE0C0  2C 00 00 01 */	cmpwi r0, 1
/* 804CE0C4  4D 81 00 20 */	bgtlr 
/* 804CE0C8  38 00 00 01 */	li r0, 1
/* 804CE0CC  98 03 00 0F */	stb r0, 0xf(r3)
/* 804CE0D0  B0 A3 00 00 */	sth r5, 0(r3)
/* 804CE0D4  4E 80 00 20 */	blr 
