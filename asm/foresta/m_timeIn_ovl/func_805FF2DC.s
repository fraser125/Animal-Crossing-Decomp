lbl_805FF2DC:
/* 805FF2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FF2E0  7C 08 02 A6 */	mflr r0
/* 805FF2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FF2E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FF2EC  7C 9F 23 78 */	mr r31, r4
/* 805FF2F0  93 C1 00 08 */	stw r30, 8(r1)
/* 805FF2F4  7C 7E 1B 78 */	mr r30, r3
/* 805FF2F8  A0 64 00 08 */	lhz r3, 8(r4)
/* 805FF2FC  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 805FF300  B0 1E 00 06 */	sth r0, 6(r30)
/* 805FF304  A0 04 00 04 */	lhz r0, 4(r4)
/* 805FF308  98 1E 00 05 */	stb r0, 5(r30)
/* 805FF30C  A0 04 00 06 */	lhz r0, 6(r4)
/* 805FF310  98 1E 00 03 */	stb r0, 3(r30)
/* 805FF314  A0 7E 00 06 */	lhz r3, 6(r30)
/* 805FF318  88 9E 00 05 */	lbz r4, 5(r30)
/* 805FF31C  88 BE 00 03 */	lbz r5, 3(r30)
/* 805FF320  4B E0 7E A9 */	bl lbRTC_Week
/* 805FF324  98 7E 00 04 */	stb r3, 4(r30)
/* 805FF328  38 00 00 00 */	li r0, 0
/* 805FF32C  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805FF330  98 7E 00 02 */	stb r3, 2(r30)
/* 805FF334  A0 7F 00 02 */	lhz r3, 2(r31)
/* 805FF338  98 7E 00 01 */	stb r3, 1(r30)
/* 805FF33C  98 1E 00 00 */	stb r0, 0(r30)
/* 805FF340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FF344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FF348  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FF34C  7C 08 03 A6 */	mtlr r0
/* 805FF350  38 21 00 10 */	addi r1, r1, 0x10
/* 805FF354  4E 80 00 20 */	blr 
