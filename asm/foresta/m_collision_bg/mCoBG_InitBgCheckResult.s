lbl_80389794:
/* 80389794  88 03 00 00 */	lbz r0, 0(r3)
/* 80389798  38 80 00 00 */	li r4, 0
/* 8038979C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 803897A0  98 03 00 00 */	stb r0, 0(r3)
/* 803897A4  88 03 00 02 */	lbz r0, 2(r3)
/* 803897A8  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 803897AC  98 03 00 02 */	stb r0, 2(r3)
/* 803897B0  A0 03 00 00 */	lhz r0, 0(r3)
/* 803897B4  50 80 2D B4 */	rlwimi r0, r4, 5, 0x16, 0x1a
/* 803897B8  B0 03 00 00 */	sth r0, 0(r3)
/* 803897BC  88 03 00 00 */	lbz r0, 0(r3)
/* 803897C0  50 80 16 7A */	rlwimi r0, r4, 2, 0x19, 0x1d
/* 803897C4  98 03 00 00 */	stb r0, 0(r3)
/* 803897C8  88 03 00 01 */	lbz r0, 1(r3)
/* 803897CC  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 803897D0  98 03 00 01 */	stb r0, 1(r3)
/* 803897D4  88 03 00 02 */	lbz r0, 2(r3)
/* 803897D8  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 803897DC  98 03 00 02 */	stb r0, 2(r3)
/* 803897E0  80 03 00 00 */	lwz r0, 0(r3)
/* 803897E4  50 80 5B E8 */	rlwimi r0, r4, 0xb, 0xf, 0x14
/* 803897E8  90 03 00 00 */	stw r0, 0(r3)
/* 803897EC  88 03 00 01 */	lbz r0, 1(r3)
/* 803897F0  50 80 16 FA */	rlwimi r0, r4, 2, 0x1b, 0x1d
/* 803897F4  98 03 00 01 */	stb r0, 1(r3)
/* 803897F8  88 03 00 03 */	lbz r0, 3(r3)
/* 803897FC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80389800  98 03 00 03 */	stb r0, 3(r3)
/* 80389804  88 03 00 03 */	lbz r0, 3(r3)
/* 80389808  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8038980C  98 03 00 03 */	stb r0, 3(r3)
/* 80389810  88 03 00 03 */	lbz r0, 3(r3)
/* 80389814  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80389818  98 03 00 03 */	stb r0, 3(r3)
/* 8038981C  88 03 00 03 */	lbz r0, 3(r3)
/* 80389820  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80389824  98 03 00 03 */	stb r0, 3(r3)
/* 80389828  4E 80 00 20 */	blr 
