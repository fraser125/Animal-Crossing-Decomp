lbl_803B33A0:
/* 803B33A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B33A4  7C 08 02 A6 */	mflr r0
/* 803B33A8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803B33AC  38 E0 00 00 */	li r7, 0
/* 803B33B0  28 03 00 04 */	cmplwi r3, 4
/* 803B33B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B33B8  40 80 00 6C */	bge lbl_803B3424
/* 803B33BC  48 00 01 FD */	bl mHS_get_arrange_idx
/* 803B33C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B33C4  38 00 00 00 */	li r0, 0
/* 803B33C8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B33CC  38 E0 00 01 */	li r7, 1
/* 803B33D0  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803B33D4  7C 64 1A 14 */	add r3, r4, r3
/* 803B33D8  3C C3 00 02 */	addis r6, r3, 2
/* 803B33DC  7C 64 2A 14 */	add r3, r4, r5
/* 803B33E0  98 06 13 A0 */	stb r0, 0x13a0(r6)
/* 803B33E4  3C 83 00 01 */	addis r4, r3, 1
/* 803B33E8  88 04 9D 12 */	lbz r0, -0x62ee(r4)
/* 803B33EC  88 66 13 A0 */	lbz r3, 0x13a0(r6)
/* 803B33F0  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 803B33F4  7C 60 03 78 */	or r0, r3, r0
/* 803B33F8  98 06 13 A0 */	stb r0, 0x13a0(r6)
/* 803B33FC  88 04 9D 12 */	lbz r0, -0x62ee(r4)
/* 803B3400  88 66 13 A0 */	lbz r3, 0x13a0(r6)
/* 803B3404  54 00 0E B8 */	rlwinm r0, r0, 1, 0x1a, 0x1c
/* 803B3408  7C 60 03 78 */	or r0, r3, r0
/* 803B340C  98 06 13 A0 */	stb r0, 0x13a0(r6)
/* 803B3410  88 04 9D 13 */	lbz r0, -0x62ed(r4)
/* 803B3414  88 66 13 A0 */	lbz r3, 0x13a0(r6)
/* 803B3418  54 00 FE 72 */	rlwinm r0, r0, 0x1f, 0x19, 0x19
/* 803B341C  7C 60 03 78 */	or r0, r3, r0
/* 803B3420  98 06 13 A0 */	stb r0, 0x13a0(r6)
lbl_803B3424:
/* 803B3424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3428  7C E3 3B 78 */	mr r3, r7
/* 803B342C  7C 08 03 A6 */	mtlr r0
/* 803B3430  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3434  4E 80 00 20 */	blr 
