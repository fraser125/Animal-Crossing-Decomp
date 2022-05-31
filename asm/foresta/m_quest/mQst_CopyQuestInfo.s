lbl_803E2A54:
/* 803E2A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2A58  7C 08 02 A6 */	mflr r0
/* 803E2A5C  7C 67 1B 78 */	mr r7, r3
/* 803E2A60  7C 86 23 78 */	mr r6, r4
/* 803E2A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2A68  38 67 00 02 */	addi r3, r7, 2
/* 803E2A6C  88 A4 00 00 */	lbz r5, 0(r4)
/* 803E2A70  38 86 00 02 */	addi r4, r6, 2
/* 803E2A74  88 07 00 00 */	lbz r0, 0(r7)
/* 803E2A78  50 A0 06 32 */	rlwimi r0, r5, 0, 0x18, 0x19
/* 803E2A7C  98 07 00 00 */	stb r0, 0(r7)
/* 803E2A80  88 A6 00 00 */	lbz r5, 0(r6)
/* 803E2A84  88 07 00 00 */	lbz r0, 0(r7)
/* 803E2A88  50 A0 06 BE */	rlwimi r0, r5, 0, 0x1a, 0x1f
/* 803E2A8C  98 07 00 00 */	stb r0, 0(r7)
/* 803E2A90  88 A6 00 01 */	lbz r5, 1(r6)
/* 803E2A94  88 07 00 01 */	lbz r0, 1(r7)
/* 803E2A98  50 A0 06 30 */	rlwimi r0, r5, 0, 0x18, 0x18
/* 803E2A9C  98 07 00 01 */	stb r0, 1(r7)
/* 803E2AA0  88 A6 00 01 */	lbz r5, 1(r6)
/* 803E2AA4  88 07 00 01 */	lbz r0, 1(r7)
/* 803E2AA8  50 A0 06 78 */	rlwimi r0, r5, 0, 0x19, 0x1c
/* 803E2AAC  98 07 00 01 */	stb r0, 1(r7)
/* 803E2AB0  88 A6 00 01 */	lbz r5, 1(r6)
/* 803E2AB4  88 07 00 01 */	lbz r0, 1(r7)
/* 803E2AB8  50 A0 07 7A */	rlwimi r0, r5, 0, 0x1d, 0x1d
/* 803E2ABC  98 07 00 01 */	stb r0, 1(r7)
/* 803E2AC0  48 02 47 75 */	bl lbRTC_TimeCopy
/* 803E2AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2AC8  7C 08 03 A6 */	mtlr r0
/* 803E2ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2AD0  4E 80 00 20 */	blr 
