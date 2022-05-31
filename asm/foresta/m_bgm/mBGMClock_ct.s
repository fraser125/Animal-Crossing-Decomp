lbl_80378AE8:
/* 80378AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80378AEC  7C 08 02 A6 */	mflr r0
/* 80378AF0  38 80 00 08 */	li r4, 8
/* 80378AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80378AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80378AFC  7C 7F 1B 78 */	mr r31, r3
/* 80378B00  4B CE 45 69 */	bl bzero
/* 80378B04  7F E3 FB 78 */	mr r3, r31
/* 80378B08  4B FF FF 7D */	bl mBGMClock_now_set
/* 80378B0C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80378B10  90 1F 00 04 */	stw r0, 4(r31)
/* 80378B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80378B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80378B1C  7C 08 03 A6 */	mtlr r0
/* 80378B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80378B24  4E 80 00 20 */	blr 
