lbl_8039B210:
/* 8039B210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039B214  7C 08 02 A6 */	mflr r0
/* 8039B218  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039B21C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039B220  7C 9F 23 79 */	or. r31, r4, r4
/* 8039B224  B0 61 00 08 */	sth r3, 8(r1)
/* 8039B228  41 80 00 58 */	blt lbl_8039B280
/* 8039B22C  88 61 00 08 */	lbz r3, 8(r1)
/* 8039B230  4B FF FD A9 */	bl last_day_of_month
/* 8039B234  88 01 00 09 */	lbz r0, 9(r1)
/* 8039B238  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8039B23C  7C 60 FA 14 */	add r3, r0, r31
/* 8039B240  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8039B244  98 61 00 09 */	stb r3, 9(r1)
/* 8039B248  7C 00 20 40 */	cmplw r0, r4
/* 8039B24C  40 81 00 8C */	ble lbl_8039B2D8
/* 8039B250  88 61 00 08 */	lbz r3, 8(r1)
/* 8039B254  28 03 00 0C */	cmplwi r3, 0xc
/* 8039B258  40 82 00 0C */	bne lbl_8039B264
/* 8039B25C  38 60 00 01 */	li r3, 1
/* 8039B260  48 00 00 0C */	b lbl_8039B26C
lbl_8039B264:
/* 8039B264  38 03 00 01 */	addi r0, r3, 1
/* 8039B268  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8039B26C:
/* 8039B26C  88 01 00 09 */	lbz r0, 9(r1)
/* 8039B270  98 61 00 08 */	stb r3, 8(r1)
/* 8039B274  7C 04 00 50 */	subf r0, r4, r0
/* 8039B278  98 01 00 09 */	stb r0, 9(r1)
/* 8039B27C  48 00 00 5C */	b lbl_8039B2D8
lbl_8039B280:
/* 8039B280  88 01 00 09 */	lbz r0, 9(r1)
/* 8039B284  7C 60 FA 14 */	add r3, r0, r31
/* 8039B288  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8039B28C  98 61 00 09 */	stb r3, 9(r1)
/* 8039B290  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8039B294  40 82 00 0C */	bne lbl_8039B2A0
/* 8039B298  28 00 00 00 */	cmplwi r0, 0
/* 8039B29C  40 82 00 3C */	bne lbl_8039B2D8
lbl_8039B2A0:
/* 8039B2A0  88 61 00 08 */	lbz r3, 8(r1)
/* 8039B2A4  28 03 00 01 */	cmplwi r3, 1
/* 8039B2A8  40 82 00 0C */	bne lbl_8039B2B4
/* 8039B2AC  38 00 00 0C */	li r0, 0xc
/* 8039B2B0  48 00 00 0C */	b lbl_8039B2BC
lbl_8039B2B4:
/* 8039B2B4  38 03 FF FF */	addi r0, r3, -1
/* 8039B2B8  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_8039B2BC:
/* 8039B2BC  98 01 00 08 */	stb r0, 8(r1)
/* 8039B2C0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8039B2C4  4B FF FD 15 */	bl last_day_of_month
/* 8039B2C8  88 01 00 09 */	lbz r0, 9(r1)
/* 8039B2CC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8039B2D0  7C 00 1A 14 */	add r0, r0, r3
/* 8039B2D4  98 01 00 09 */	stb r0, 9(r1)
lbl_8039B2D8:
/* 8039B2D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039B2DC  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039B2E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039B2E4  7C 08 03 A6 */	mtlr r0
/* 8039B2E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8039B2EC  4E 80 00 20 */	blr 