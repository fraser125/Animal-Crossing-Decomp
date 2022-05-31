lbl_803CB410:
/* 803CB410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB414  7C 08 02 A6 */	mflr r0
/* 803CB418  7C 85 23 79 */	or. r5, r4, r4
/* 803CB41C  7C 66 1B 78 */	mr r6, r3
/* 803CB420  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB424  41 82 00 3C */	beq lbl_803CB460
/* 803CB428  A0 65 00 00 */	lhz r3, 0(r5)
/* 803CB42C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803CB430  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CB434  40 82 00 2C */	bne lbl_803CB460
/* 803CB438  B0 66 00 00 */	sth r3, 0(r6)
/* 803CB43C  38 66 00 04 */	addi r3, r6, 4
/* 803CB440  38 85 00 04 */	addi r4, r5, 4
/* 803CB444  88 05 00 0C */	lbz r0, 0xc(r5)
/* 803CB448  98 06 00 0C */	stb r0, 0xc(r6)
/* 803CB44C  A0 05 00 02 */	lhz r0, 2(r5)
/* 803CB450  B0 06 00 02 */	sth r0, 2(r6)
/* 803CB454  88 05 00 0D */	lbz r0, 0xd(r5)
/* 803CB458  98 06 00 0D */	stb r0, 0xd(r6)
/* 803CB45C  4B FE 84 95 */	bl mLd_CopyLandName
lbl_803CB460:
/* 803CB460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB464  7C 08 03 A6 */	mtlr r0
/* 803CB468  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB46C  4E 80 00 20 */	blr 
