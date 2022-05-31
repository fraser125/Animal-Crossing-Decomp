lbl_805EAB00:
/* 805EAB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EAB04  7C 08 02 A6 */	mflr r0
/* 805EAB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EAB0C  4B DB 01 29 */	bl mEv_CheckFirstJob
/* 805EAB10  2C 03 00 01 */	cmpwi r3, 1
/* 805EAB14  40 82 00 44 */	bne lbl_805EAB58
/* 805EAB18  4B DF 90 51 */	bl mQst_GetFirstJobData
/* 805EAB1C  28 03 00 00 */	cmplwi r3, 0
/* 805EAB20  41 82 00 38 */	beq lbl_805EAB58
/* 805EAB24  88 83 00 00 */	lbz r4, 0(r3)
/* 805EAB28  54 80 D7 BE */	rlwinm r0, r4, 0x1a, 0x1e, 0x1f
/* 805EAB2C  28 00 00 01 */	cmplwi r0, 1
/* 805EAB30  40 82 00 28 */	bne lbl_805EAB58
/* 805EAB34  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 805EAB38  28 00 00 09 */	cmplwi r0, 9
/* 805EAB3C  40 82 00 1C */	bne lbl_805EAB58
/* 805EAB40  88 83 00 01 */	lbz r4, 1(r3)
/* 805EAB44  54 80 EF 3F */	rlwinm. r0, r4, 0x1d, 0x1c, 0x1f
/* 805EAB48  41 82 00 10 */	beq lbl_805EAB58
/* 805EAB4C  38 00 00 00 */	li r0, 0
/* 805EAB50  50 04 1E 78 */	rlwimi r4, r0, 3, 0x19, 0x1c
/* 805EAB54  98 83 00 01 */	stb r4, 1(r3)
lbl_805EAB58:
/* 805EAB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EAB5C  7C 08 03 A6 */	mtlr r0
/* 805EAB60  38 21 00 10 */	addi r1, r1, 0x10
/* 805EAB64  4E 80 00 20 */	blr 
