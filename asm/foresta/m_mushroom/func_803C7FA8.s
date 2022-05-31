lbl_803C7FA8:
/* 803C7FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C7FAC  7C 08 02 A6 */	mflr r0
/* 803C7FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7FB4  38 00 00 00 */	li r0, 0
/* 803C7FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7FBC  7C 7F 1B 78 */	mr r31, r3
/* 803C7FC0  A0 A4 00 00 */	lhz r5, 0(r4)
/* 803C7FC4  54 A3 E5 3E */	rlwinm r3, r5, 0x1c, 0x14, 0x1f
/* 803C7FC8  B0 7F 00 06 */	sth r3, 6(r31)
/* 803C7FCC  88 64 00 01 */	lbz r3, 1(r4)
/* 803C7FD0  54 63 07 3E */	clrlwi r3, r3, 0x1c
/* 803C7FD4  98 7F 00 05 */	stb r3, 5(r31)
/* 803C7FD8  88 64 00 02 */	lbz r3, 2(r4)
/* 803C7FDC  54 63 EE FE */	rlwinm r3, r3, 0x1d, 0x1b, 0x1f
/* 803C7FE0  98 7F 00 03 */	stb r3, 3(r31)
/* 803C7FE4  88 64 00 03 */	lbz r3, 3(r4)
/* 803C7FE8  54 63 EE FE */	rlwinm r3, r3, 0x1d, 0x1b, 0x1f
/* 803C7FEC  98 7F 00 02 */	stb r3, 2(r31)
/* 803C7FF0  88 64 00 04 */	lbz r3, 4(r4)
/* 803C7FF4  54 63 E7 3E */	rlwinm r3, r3, 0x1c, 0x1c, 0x1f
/* 803C7FF8  1C 63 00 0F */	mulli r3, r3, 0xf
/* 803C7FFC  98 7F 00 01 */	stb r3, 1(r31)
/* 803C8000  98 1F 00 00 */	stb r0, 0(r31)
/* 803C8004  A0 7F 00 06 */	lhz r3, 6(r31)
/* 803C8008  88 9F 00 05 */	lbz r4, 5(r31)
/* 803C800C  88 BF 00 03 */	lbz r5, 3(r31)
/* 803C8010  48 03 F1 B9 */	bl lbRTC_Week
/* 803C8014  98 7F 00 04 */	stb r3, 4(r31)
/* 803C8018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C801C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C8020  7C 08 03 A6 */	mtlr r0
/* 803C8024  38 21 00 10 */	addi r1, r1, 0x10
/* 803C8028  4E 80 00 20 */	blr 
